param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [switch]$Apply
)

$ErrorActionPreference = 'Stop'

function Get-CanonicalSummary {
    param([string]$PromptText)

    $match = [regex]::Match(
        $PromptText,
        '(?s)<!-- MASTER-TABLE-CANON-REFRESH:BEGIN -->\s*(.*?)\s*<!-- MASTER-TABLE-CANON-REFRESH:END -->'
    )
    if (-not $match.Success) {
        throw 'Missing MASTER-TABLE-CANON-REFRESH block.'
    }

    $paragraphs = New-Object System.Collections.Generic.List[string]
    $buffer = New-Object System.Collections.Generic.List[string]
    foreach ($rawLine in ($match.Groups[1].Value -split '\r?\n')) {
        $line = $rawLine -replace '^\s*>\s?', ''
        if ([string]::IsNullOrWhiteSpace($line)) {
            if ($buffer.Count -gt 0) {
                $paragraphs.Add(($buffer -join ' ').Trim())
                $buffer.Clear()
            }
            continue
        }
        $buffer.Add($line.Trim())
    }
    if ($buffer.Count -gt 0) {
        $paragraphs.Add(($buffer -join ' ').Trim())
    }
    if ($paragraphs.Count -lt 2) {
        throw 'Canonical block has no role-specific summary paragraph.'
    }

    for ($index = $paragraphs.Count - 1; $index -ge 0; $index--) {
        $paragraph = $paragraphs[$index]
        if ($paragraph -match '^\*\*Authoritative story') {
            continue
        }
        if ($paragraph -match '^Source SHA-256:') {
            continue
        }
        if ($paragraph -match '^Only facts stated above are CANON') {
            continue
        }
        if ($paragraph -match '^The master-table record below has the highest content priority') {
            continue
        }
        return $paragraph
    }
    throw 'Unable to identify the role-specific canonical summary.'
}

function Get-FirstCapture {
    param(
        [string]$Text,
        [string]$Pattern,
        [string]$Fallback
    )

    $match = [regex]::Match($Text, $Pattern)
    if ($match.Success) {
        return $match.Groups[1].Value.Trim()
    }
    return $Fallback
}

function Get-CanonicalBlock {
    param(
        [string]$Summary,
        [string]$SourceHash,
        [string]$SyncId
    )

    return @"
<!-- MASTER-TABLE-CANON-REFRESH:BEGIN -->
> **Authoritative story canon — source: <repo-root>/全角色總表.md**
>
> Source SHA-256: $SourceHash
> Pair sync ID: $SyncId
>
> $Summary
>
> Only facts stated above are CANON. Unstated visual details are DESIGN-PROPOSAL or PENDING-USER-INPUT; they must never be promoted to Canon by inference.
<!-- MASTER-TABLE-CANON-REFRESH:END -->
"@
}

function Get-MetricLine {
    param(
        [string]$SpecText,
        [string]$LabelPattern,
        [string]$Fallback
    )

    $match = [regex]::Match($SpecText, "(?im)^-\s*$LabelPattern[^\r\n]*$")
    if ($match.Success) {
        $valueMatch = [regex]::Match($match.Value, '\*\*([^*]+)\*\*')
        if ($valueMatch.Success) {
            return "- ${Fallback}：**$($valueMatch.Groups[1].Value.Trim())**（DESIGN-PROPOSAL；只保留數值，不沿用舊體型敘述）"
        }
    }
    return "- ${Fallback}：PENDING-USER-INPUT"
}

function Get-HexCandidates {
    param(
        [string]$SpecText,
        [string]$Summary
    )

    $colorMap = @(
        @{ Pattern = 'champagne-gold'; Label = 'champagne gold'; Hex = '#C8A96A' },
        @{ Pattern = 'mist-brown'; Label = 'mist brown'; Hex = '#75645B' },
        @{ Pattern = 'gray-silver'; Label = 'gray silver'; Hex = '#A7AAB3' },
        @{ Pattern = 'silver-purple'; Label = 'silver purple'; Hex = '#B8B0C9' },
        @{ Pattern = 'deep-crimson'; Label = 'deep crimson'; Hex = '#861F2E' },
        @{ Pattern = 'blood-red'; Label = 'blood red'; Hex = '#8C1D2C' },
        @{ Pattern = 'dark-red'; Label = 'dark red'; Hex = '#5B1F28' },
        @{ Pattern = 'cold red'; Label = 'cold red'; Hex = '#A9152B' },
        @{ Pattern = 'deep-brown'; Label = 'deep brown'; Hex = '#4B3028' },
        @{ Pattern = 'deep-blue'; Label = 'deep blue'; Hex = '#243B67' },
        @{ Pattern = 'yellow-brown'; Label = 'yellow brown'; Hex = '#98713B' },
        @{ Pattern = 'pure-white'; Label = 'pure white'; Hex = '#F7F7F2' },
        @{ Pattern = '\bgolden\b'; Label = 'golden'; Hex = '#D4AF37' },
        @{ Pattern = '\bgold\b'; Label = 'gold'; Hex = '#C8A24A' },
        @{ Pattern = '\bwhite\b'; Label = 'white'; Hex = '#F2F0EA' },
        @{ Pattern = '\bblack\b'; Label = 'black'; Hex = '#17181C' },
        @{ Pattern = '\bbrown\b'; Label = 'brown'; Hex = '#5A3A2E' },
        @{ Pattern = '\bpurple\b'; Label = 'purple'; Hex = '#5B3B78' },
        @{ Pattern = '\bsilver\b'; Label = 'silver'; Hex = '#C3CAD4' },
        @{ Pattern = '\bgray\b|\bgrey\b'; Label = 'gray'; Hex = '#888B92' },
        @{ Pattern = '\bred\b'; Label = 'red'; Hex = '#9E2F3B' },
        @{ Pattern = '\bblue\b'; Label = 'blue'; Hex = '#395C8A' },
        @{ Pattern = '\byellow\b'; Label = 'yellow'; Hex = '#D2AE45' },
        @{ Pattern = '\bcrimson\b'; Label = 'crimson'; Hex = '#861F2E' }
    )
    $proposals = New-Object System.Collections.Generic.List[string]
    $seenHex = @{}
    foreach ($entry in $colorMap) {
        if ($Summary -match $entry.Pattern -and -not $seenHex.ContainsKey($entry.Hex)) {
            $proposals.Add("$($entry.Label) $($entry.Hex)")
            $seenHex[$entry.Hex] = $true
        }
    }
    if ($proposals.Count -gt 0) {
        return "- Canon 命名色之候選 hex（DESIGN-PROPOSAL）：$($proposals -join '、')"
    }

    $values = [regex]::Matches($SpecText, '#[0-9A-Fa-f]{6}') |
        ForEach-Object { $_.Value.ToUpperInvariant() } |
        Select-Object -Unique
    if (@($values).Count -eq 0) {
        return '- 候選色票：PENDING-USER-INPUT'
    }
    return "- Canon 未指定色名；沿用的舊版候選 hex 全部為 DESIGN-PROPOSAL：$($values -join '、')"
}

function Get-SheetPrompt {
    param(
        [int]$Number,
        [string]$FileName,
        [string]$Summary,
        [bool]$NonHuman
    )

    $identity = "Canonical character facts (do not add or contradict): $Summary"
    $style = 'refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art'
    $negative = 'photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light'

    switch ($Number) {
        1 {
            if ($NonHuman) {
                $request = 'Render exactly one complete front view of the non-human subject in a neutral natural standing pose, true orthographic projection, entire silhouette inside frame. No rider, harness, weapon, removable prop, text, or extra view.'
            }
            else {
                $request = 'Render exactly one complete front full-body view in a standard neutral A-pose: feet shoulder-width apart, arms straight 30-45 degrees away from the torso, open hands, even weight, true orthographic projection. Character and locked costume only; no removable prop.'
            }
        }
        2 {
            $pose = if ($NonHuman) { 'the same neutral natural standing pose' } else { 'the same neutral A-pose' }
            $request = "Create one four-view turnaround sheet in this exact order: front, anatomical-left profile, anatomical-right profile, back. Use $pose, identical scale and proportions, aligned head-top and ground lines, true orthographic views, zero removable props."
        }
        3 {
            $subject = if ($NonHuman) { 'head and upper anatomy' } else { 'head-and-shoulders portrait' }
            $request = "Create exactly eight $subject panels in a clean 4x2 grid: neutral, gentle/relaxed, broad positive, joyful, surprised, angry, sad, alert/wink-equivalent. Change expression only; preserve identity and anatomy."
        }
        4 {
            if ($NonHuman) {
                $request = 'Create an anatomy and surface-construction detail sheet: head, limbs, joints, back, underside, and any Canon special structures. No invented equipment, rider, text, or labels.'
            }
            else {
                $request = 'Create a costume construction detail sheet showing only Canon garment layers, front/back construction, collar, sleeves, waist, hem, footwear, fastenings, and material close-ups. No weapons or removable props.'
            }
        }
        5 {
            $request = 'Create a color-and-material reference sheet using only Canon named colors plus explicitly marked SPEC design-proposal hex candidates. Include clean swatches/material patches and one neutral reference subject. Do not render visible text or hex labels.'
        }
        6 {
            $request = 'Create a props/special-construction sheet containing only removable weapons, pendants, tools, tack, or special structures explicitly permitted by the Canon summary. If none are Canon, show only non-invented construction/material studies. No full character, portrait, face, text, or labels.'
        }
        7 {
            $request = 'Create a human body-reference sheet for modeling: front and anatomical-left profile at identical scale, neutral A-pose, plain tight dark-gray bodysuit, hair secured away from the silhouette, no costume outer layers, accessories, jewelry, weapons, props, text, or labels.'
        }
        default {
            throw "Unsupported sheet number: $Number"
        }
    }

    return @"
## $("{0:D2}" -f $Number) — **$FileName**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet $("{0:D2}" -f $Number)

$identity

Primary request:
$request

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
$style

Negative prompt:
$negative
~~~
"@
}

$resolvedRoot = (Resolve-Path -LiteralPath $RepoRoot).Path
$storyRoot = Join-Path $resolvedRoot 'Story_Character'
$masterPath = Join-Path $resolvedRoot '全角色總表.md'
if (-not (Test-Path -LiteralPath $storyRoot -PathType Container)) {
    throw "Story_Character folder not found under $resolvedRoot"
}
if (-not (Test-Path -LiteralPath $masterPath -PathType Leaf)) {
    throw "Master table not found: $masterPath"
}

$masterHash = (Get-FileHash -LiteralPath $masterPath -Algorithm SHA256).Hash
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$packageDirs = Get-ChildItem -LiteralPath $storyRoot -Directory -Recurse |
    Where-Object {
        $_.FullName -notmatch '[\\/]_archive' -and
        (Test-Path -LiteralPath (Join-Path $_.FullName 'CHARACTER_SPEC.md') -PathType Leaf) -and
        (Test-Path -LiteralPath (Join-Path $_.FullName 'PROMPTS.md') -PathType Leaf)
    } |
    Sort-Object FullName

$outputs = New-Object System.Collections.Generic.List[object]
foreach ($package in $packageDirs) {
    $specPath = Join-Path $package.FullName 'CHARACTER_SPEC.md'
    $promptPath = Join-Path $package.FullName 'PROMPTS.md'
    $oldSpec = [IO.File]::ReadAllText($specPath, [Text.Encoding]::UTF8)
    $oldPrompt = [IO.File]::ReadAllText($promptPath, [Text.Encoding]::UTF8)

    $summary = Get-CanonicalSummary -PromptText $oldPrompt
    $slug = Get-FirstCapture -Text $oldPrompt -Pattern '(?i)01-([a-z0-9-]+)-front-fullbody\.png' -Fallback ($package.Name.ToLowerInvariant())
    $versionId = Get-FirstCapture -Text $oldSpec -Pattern '(?i)\b([A-Z0-9]+-V[0-9]+-[A-Z0-9-]+)\b' -Fallback "$($slug.ToUpperInvariant())-V1-MASTER-REFRESH"
    if ($versionId -match '-V1-MASTER-REFRESH$') {
        $relativeSpecPath = $specPath.Substring($resolvedRoot.Length + 1).Replace('\', '/')
        $headSpec = (& git -C $resolvedRoot show "HEAD:$relativeSpecPath" 2>$null) -join "`n"
        if (-not [string]::IsNullOrWhiteSpace($headSpec)) {
            $versionId = Get-FirstCapture -Text $headSpec -Pattern '(?i)\b([A-Z0-9]+-V[0-9]+-[A-Z0-9-]+)\b' -Fallback $versionId
        }
    }
    $nonHuman = -not [regex]::IsMatch($oldPrompt, '(?m)^## 07\b')
    $sheetCount = if ($nonHuman) { 6 } else { 7 }
    $syncId = "$slug-$($masterHash.Substring(0, 12))"
    $canonicalBlock = Get-CanonicalBlock -Summary $summary -SourceHash $masterHash -SyncId $syncId
    $pngFiles = @(Get-ChildItem -LiteralPath $package.FullName -File -Filter '*.png' | Sort-Object Name)
    $imageState = if ($pngFiles.Count -gt 0) {
        "IMAGE-DRIFT-REVIEW-REQUIRED — $($pngFiles.Count) existing PNG file(s); documents refreshed by explicit user authorization, PNGs untouched."
    }
    else {
        'PENDING-GENERATION — no direct PNG exists.'
    }
    $gate = if ($summary -match 'BLOCKING SOURCE MISMATCH') {
        'BLOCKED-PENDING-USER-INPUT'
    }
    elseif ($summary -match 'all PENDING-USER-INPUT|sex, gender presentation.*PENDING-USER-INPUT') {
        'PENDING-USER-INPUT'
    }
    else {
        'READY-FOR-DOWNSTREAM-CHECK'
    }

    $heightLine = Get-MetricLine -SpecText $oldSpec -LabelPattern '身高（cm）' -Fallback '身高（cm）'
    $ratioLine = Get-MetricLine -SpecText $oldSpec -LabelPattern '頭身比' -Fallback '頭身比'
    $shoulderLine = Get-MetricLine -SpecText $oldSpec -LabelPattern '肩寬' -Fallback '肩寬（頭寬倍數）'
    $hexLine = Get-HexCandidates -SpecText $oldSpec -Summary $summary

    $specContent = @"
# $($package.Name) — CHARACTER_SPEC

$canonicalBlock

> 本檔與同資料夾 PROMPTS.md 由同一份 Canonical Fact Map 成對重建。用途為 3D 建模參考包；正式影片仍以核准的 Blender／VRM 模型為唯一身份正本。

## 同步與狀態

- 操作模式：REFRESH-PAIR
- Pair sync ID：$syncId
- 角色版本 ID：$versionId
- 生成閘門：$gate
- 圖片狀態：$imageState
- 身份正本：01-$slug-front-fullbody.png
- 專案畫風正本：../../STYLE_ANCHOR.md

## Canonical Fact Map

- 名稱／別名、外貌、體型、服裝、道具、關係、時期與 PENDING：以上方權威 Canon 摘要為唯一故事事實。
- 未被摘要明載的臉、髮、瞳、年齡、身材、服裝、武器、血緣或歷史：PENDING-USER-INPUT，不得自行升格為 Canon。
- 舊角色包中的非衝突視覺補完全部降級為 DESIGN-PROPOSAL。

## Body Metrics Lock

$heightLine
$ratioLine
$shoulderLine
- 左右不對稱：只採用 Canon 摘要明載內容；未指定側別時為 PENDING-USER-INPUT。

## Identity Lock

- CANON：$summary
- 臉部身份、髮型、瞳色、膚色與體型不得加入摘要未載的固定事實。
- 若已有核准 01，後續圖片維持該圖身份；若與新 Canon 衝突，先處理 IMAGE-DRIFT-REVIEW-REQUIRED。

## Costume Lock

- 只鎖定 Canon 摘要明載的服裝版本與材質方向。
- 摘要列出兩個時期／服裝時，必須分開建立版本，不得混穿。
- 未載細節均為 DESIGN-PROPOSAL 或 PENDING-USER-INPUT。

## 固定色票與材質

- Canon 明載的色名優先；任何 hex 僅為建模候選，不得反向覆蓋 Canon 色名。
$hexLine
- Canon 色名與候選 hex 發生衝突時：PENDING-USER-INPUT，不得生圖定案。

## 道具與特殊構造

- 只允許 Canon 摘要明載的可拆卸武器、飾品、工具、坐騎裝具或特殊構造。
- 所有可拆卸道具只出現在 06-$slug-prop-construction-sheet.png。
- 01–05 與人形 07 一律零可拆卸道具。

## Kinship Lock

- 親屬、婚姻、父子女、手足與陣營關係只採 Canon 摘要明載內容。
- 摘要未明載可視化承襲特徵時，不得自行發明家族臉。

## 八種表情／狀態

neutral／gentle or relaxed／broad positive／joyful／surprised／angry／sad／alert or wink-equivalent。只改表情或狀態，不改身份與 Canon 特徵。

## 禁止與待確認

- 禁止任何與權威 Canon 摘要相反的舊髮色、瞳色、體型、服裝、道具、關係或時期設定。
- BLOCKING SOURCE MISMATCH 或重大身份 PENDING 未解決前，不得生成 01。
- 有既有 PNG 的角色須先完成圖片漂移複核；本輪不修改、不刪除、不重新命名任何 PNG。
"@

    $fileRows = for ($number = 1; $number -le $sheetCount; $number++) {
        $suffix = switch ($number) {
            1 { 'front-fullbody' }
            2 { 'four-view-master' }
            3 { 'expression-sheet' }
            4 { 'costume-detail-sheet' }
            5 { 'color-material-sheet' }
            6 { 'prop-construction-sheet' }
            7 { 'body-reference-sheet' }
        }
        "| $('{0:D2}' -f $number) | $('{0:D2}' -f $number)-$slug-$suffix.png |"
    }
    $sheetPrompts = for ($number = 1; $number -le $sheetCount; $number++) {
        $suffix = switch ($number) {
            1 { 'front-fullbody' }
            2 { 'four-view-master' }
            3 { 'expression-sheet' }
            4 { 'costume-detail-sheet' }
            5 { 'color-material-sheet' }
            6 { 'prop-construction-sheet' }
            7 { 'body-reference-sheet' }
        }
        Get-SheetPrompt -Number $number -FileName "$('{0:D2}' -f $number)-$slug-$suffix.png" -Summary $summary -NonHuman $nonHuman
    }

    $promptContent = @"
# $($package.Name) — Image Generation Prompts

$canonicalBlock

## Codex 生成清單

- 操作模式：REFRESH-PAIR
- Pair sync ID：$syncId
- 生成閘門：$gate
- 圖片狀態：$imageState
- 一致性：本檔與 CHARACTER_SPEC.md 使用完全相同的 Canonical Fact Map。
- Input images：先讀 ../../STYLE_ANCHOR.md。01 依畫風錨狀態決定畫風輸入；02 之後以核准的本角色 01 作身份參考，非首角色另加專案畫風錨。
- 單次生成：使用者每次要求最多呼叫一次圖片生成工具，只產出一張；生成後立即呈現並停止。技術檢查只回報，不自動重生。

| 編號 | 確切檔名 |
| --- | --- |
$($fileRows -join "`n")

第一階段只生成 01-$slug-front-fullbody.png，生成後停止等待使用者核准。核准後才逐次生成下一張；每次仍只生成一張。

---

$($sheetPrompts -join "`n`n---`n`n")

---

## 逐張驗收清單

- [ ] Canon 身份、外貌、體型、服裝、道具、關係與時期未被推測內容覆蓋。
- [ ] SPEC 與 PROMPTS 的 Pair sync ID 完全相同。
- [ ] 01 為單一正面身份錨；02 為四視圖；03 恰好八格；其餘構圖符合各節。
- [ ] 所有可拆卸武器、墜飾、工具與道具只出現在 06。
- [ ] 圖片只用 Canon 命名色；候選 hex 不得覆蓋 Canon。
- [ ] 無文字、標籤、logo、簽名或浮水印。
- [ ] 有 PNG 的角色已完成 IMAGE-DRIFT-REVIEW-REQUIRED 複核。

驗收只回報偏差並等待使用者，不得自行移檔或重生成。只有使用者明確要求修改時，才歸檔上一張未核准候選並只生成一張新圖。
"@

    $outputs.Add([pscustomobject]@{
        Package = $package.FullName
        SpecPath = $specPath
        PromptPath = $promptPath
        SpecContent = ($specContent -replace "`r`n", "`n").Trim() + "`n"
        PromptContent = ($promptContent -replace "`r`n", "`n").Trim() + "`n"
        SyncId = $syncId
        Gate = $gate
        PngCount = $pngFiles.Count
        SheetCount = $sheetCount
    })
}

if ($outputs.Count -ne 31) {
    throw "Expected 31 active packages, found $($outputs.Count)."
}
if (@($outputs | Group-Object SyncId | Where-Object Count -ne 1).Count -gt 0) {
    throw 'Pair sync IDs are not unique.'
}

foreach ($output in $outputs) {
    if (-not $output.SpecContent.Contains($output.SyncId) -or -not $output.PromptContent.Contains($output.SyncId)) {
        throw "Pair sync ID missing from generated pair: $($output.Package)"
    }
    if ($output.PromptContent -notmatch "(?m)^## $($output.SheetCount.ToString('D2'))\b") {
        throw "Final sheet missing: $($output.Package)"
    }
    if ($output.SheetCount -eq 6 -and $output.PromptContent -match '(?m)^## 07\b') {
        throw "Non-human package unexpectedly contains sheet 07: $($output.Package)"
    }
}

if ($Apply) {
    foreach ($output in $outputs) {
        [IO.File]::WriteAllText($output.SpecPath, $output.SpecContent, $utf8NoBom)
        [IO.File]::WriteAllText($output.PromptPath, $output.PromptContent, $utf8NoBom)
    }
}

$outputs |
    Select-Object Package, SyncId, Gate, PngCount, SheetCount |
    ConvertTo-Json -Depth 3
