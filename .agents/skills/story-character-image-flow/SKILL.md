---
name: story-character-image-flow
description: 從 Codex_Image_Agent 專案自動尋找指定角色、檢查是否已有正式 PNG；有圖角色保持凍結，無圖角色依 01–07／01–06 新版角色包與 STYLE_ANCHOR 開始生成第一張 01，尚無角色包者從故事文字建立新版角色包。當使用者說「讀取這份專案，並開始生圖流程」「請先製作某角色的圖片」「開始生成角色圖」或同義要求時使用。
---

# Story Character Image Flow

## 目標

使用者只提供角色名字時，自行完成以下路由：

```text
尋找角色
  ├─ 角色已有正式 PNG → 凍結角色包，停止並回報
  ├─ 無 PNG＋已有 01–07／01–06 角色包 → sheets-to-codex → 先生成 01
  └─ 只有故事文本、沒有角色包
       → scene-to-characters
       → characters-to-sheets
       → sheets-to-codex
       → 先生成 01
```

第一張圖生成後一律停止，呈現給使用者核准。

## 單次生成政策（最高優先）

1. 使用者每次提出一次生圖要求，最多呼叫圖片生成工具一次，只產出一張新圖。
2. 生成後立即呈現並停止。依 `PROMPTS.md` 做的技術檢查只能列出可能偏差，不得觸發第二次生成。
3. 不自行淘汰、自動修改、自動重生，也不生成備選圖。只有使用者看過圖片後明確表示不滿意、要求修改或重生，才可再呼叫一次工具並只產出一張新候選。
4. 使用者明確要求修改時，保留上一張候選；需要歸檔時才移入 `rejects/`，不得覆蓋任何既有正式 PNG。
5. 本政策覆蓋角色 `PROMPTS.md` 或下游 Skill 中任何「REJECT 後重生成」的舊文字；該文字一律解讀為「回報偏差並等待使用者決定」。

## 入口輸入

從使用者訊息擷取 `{角色名字}`。如果使用者真的保留大括號、沒有填入名字，才詢問實際角色名。

此 repo 根目錄記為 `<repo-root>`。直接 clone `Codex_Image_Agent` 時，`<repo-root>` 就是目前 Git 根目錄，不得再加一層 `output/`。

## 步驟 1｜尋找角色

1. 在 `<repo-root>/Story_Character/` 與其他專案資料夾中搜尋直接包含 `CHARACTER_SPEC.md`、`PROMPTS.md` 的角色資料夾。
2. 排除 `.git/`、`_archive/`、`_archive*`、`rejects/`、`style/`。
3. 依序比對：
   - 資料夾中文名。
   - `CHARACTER_SPEC.md` 第一個標題的中文名或英文名。
   - `PROMPTS.md` 第一個標題的中文名或英文名。
4. 只有一個明確結果時直接採用，不再問路徑。
5. 有多個同名版本時，列出版本 ID／故事時期讓使用者選擇。
6. 找不到角色包時，再搜尋：
   - `<repo-root>/Story_Character/角色文檔.md`
   - `<repo-root>/Story_Character/預告片_按場次重新整理.md`
   - repo 內其他故事或場次 Markdown。

## 步驟 2｜先判定是否已有圖片

在找到的角色資料夾直接層級檢查 `*.png`，排除 `_archive/`、`_archive*`、`rejects/` 內圖片。

- 有一張以上正式 PNG：把角色標為 `FROZEN-HAS-IMAGES`。不修改 `CHARACTER_SPEC.md`、`PROMPTS.md`、README、PNG 或編號；回報現有圖片清單後停止。
- 上述凍結規則的唯一例外：使用者本輪明確表示不滿意、要求修改或重生上一張。此時只取得該張候選的重生授權，依步驟 5 歸檔舊候選並只生成一張新候選；其他檔案仍凍結。
- 完全沒有正式 PNG：才可繼續檢查新版角色包並生成。

這個檢查優先於角色包格式判定。不得改寫已有圖片的角色。

## 步驟 3｜無圖片角色流程

### A. 已有 01–07／01–06 角色包

符合以下特徵時走新版：

- `PROMPTS.md` 有 `## 01`–`## 07`；非人形為 `## 01`–`## 06`。
- 專案根有 `STYLE_ANCHOR.md`。

完整讀取：

1. 角色的 `CHARACTER_SPEC.md`。
2. 角色的 `PROMPTS.md`。
3. 專案的 `STYLE_ANCHOR.md`。
4. `<repo-root>/Story_Character/Story_Character_skill/sheets-to-codex/SKILL.md`。

依 `sheets-to-codex` 前提與閘門執行，只先生成角色 `01`。`STYLE_ANCHOR.md` 若為 `PENDING-FIRST-REQUEST`，本次指定的零圖片角色自動登記為首角色；生成其 01 後停止等待核准。若角色包缺少必要新版章節，視為交接資料錯誤，停止並回報缺項，不在生圖階段改寫角色設定。

### B. 只有故事文本、尚無角色包

完整讀取並依序執行：

1. `<repo-root>/Story_Character/Story_Character_skill/scene-to-characters/SKILL.md`
2. `<repo-root>/Story_Character/Story_Character_skill/characters-to-sheets/SKILL.md`
3. `<repo-root>/Story_Character/Story_Character_skill/sheets-to-codex/SKILL.md`

只處理使用者指定角色，輸出必須直接是 01–07／01–06。
repo 內已存在的來源路徑、專案名與角色名視為已提供，不重複詢問。遇到無法從文本判定、且會改變辨識度的 `PENDING-USER-INPUT` 時，才停下詢問該項。

## 步驟 4｜生圖能力檢查

開始前確認目前環境有可用的圖片生成工具或 ImageGen 能力。

- 有能力：讀取該工具的使用說明，帶入角色 Prompt 與必要參考圖後生成。
- 沒有能力：停止並回報「角色與流程已定位，但目前 Codex 環境沒有圖片生成工具」，同時列出已定位的角色資料夾與預定輸出檔名。

不得用空白檔、文字檔或假路徑冒充生成圖片。

## 步驟 5｜檔案安全與核准閘門

1. 預定正式檔不存在：只生成一次，存成文件規定的確切檔名。
2. 預定正式檔已存在：不得覆蓋，也不得另生候選；呈現既有圖與狀態，等待使用者決定。若本輪已收到使用者對上一張的明確不滿意或修改要求，改走第 5 項。
3. 生成後按角色 `PROMPTS.md` 的 REJECT 清單檢查，但只回報觀察結果，不自行移檔或重生成。
4. 第一張完成後停止，不自動繼續後續圖片。
5. 使用者明確要求修改或重生後，才把上一張未核准候選移到該角色 `rejects/`，檔名加 `-reject-<n>`；接著只生成一張新候選並再次停止。

## 回報格式

先報結果，再列最少必要資訊：

- 找到的角色與資料夾。
- 判定流程：已有圖片凍結、既有 01–07／01–06，或從文本新建。
- 實際讀取的 SPEC、PROMPTS、流程 Skill。
- 生成或找到的第一張圖片路徑。
- 技術檢查觀察（只回報，不自動重生）。
- 下一個必要動作：等待使用者核准，或回答一個阻塞型待確認問題。

不要把 Git 狀態、commit 分組或整份流程說明當成主要回覆，除非使用者另外詢問。
