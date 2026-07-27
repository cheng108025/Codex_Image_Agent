# Story_Character 產線工具包（Claude Code 端）

驅動 Story_Character 產線所需的**完整安裝包**：三段 Skill ＋ 兩個 Agent 執行體。
可直接複製到任一 Claude Code 專案的 `.claude/`，不需要再去別的資料夾撿檔案。

## 正本與副本（改動前必讀）

| | 位置 | 角色 |
| --- | --- | --- |
| **正本** | [`../Story_Character/Story_Character_skill/`](../Story_Character/Story_Character_skill/) | 三段 Skill 的**唯一正本**。要改流程規則**只改這裡** |
| **副本** | `skills/`（本包內） | **交接安裝副本**，內容與正本逐位元相同，供直接安裝 |
| **Agent** | `agents/`（本包內） | Agent 執行體正本，只有這一份 |

> **鐵律：正本有修改時，副本必須同步更新。**
> 本包存在的理由是「交接時 `_pipeline_agents/` 必須自足」，代價就是同一份規則存兩處。
> 因此每次改完正本，**必須**跑下方〈副本同步驗證〉確認 SHA-256 一致，否則交接出去的是舊規則。

```powershell
# 副本同步（正本 → 副本，逐位元覆蓋）
$src = "<repo-root>\Story_Character\Story_Character_skill"
$dst = "<repo-root>\_pipeline_agents\skills"
foreach ($s in 'scene-to-characters','characters-to-sheets','sheets-to-codex') {
  New-Item -ItemType Directory -Force "$dst\$s" | Out-Null
  Copy-Item "$src\$s\SKILL.md" "$dst\$s\SKILL.md" -Force
}
```

### 副本同步驗證（每次改完正本必跑）

```powershell
foreach ($s in 'scene-to-characters','characters-to-sheets','sheets-to-codex') {
  $a = (Get-FileHash "$src\$s\SKILL.md" -Algorithm SHA256).Hash
  $b = (Get-FileHash "$dst\$s\SKILL.md" -Algorithm SHA256).Hash
  "{0,-22} {1}" -f $s, $(if ($a -eq $b) { "MATCH" } else { "MISMATCH — 副本已過期，重跑同步" })
}
```

**2026-07-27 驗證結果（正本與安裝副本 MATCH）**：

| Skill | bytes | SHA-256 |
| --- | ---: | --- |
| `skills/scene-to-characters/SKILL.md` | 10830 | `51E78B1CC6CBBB696146CD2DC5F1BE095361C300C47245C97F43B56564FAC804` |
| `skills/characters-to-sheets/SKILL.md` | 15531 | `0D200934F002DC4D30E56474EC7DE339F962500D7D3B35E4DA290F5737F7C1D2` |
| `skills/sheets-to-codex/SKILL.md` | 10632 | `F2D8393B361A06BCE99A69D344CB069B7D5B0980EAC501EA466471C7D233D94E` |

> **`<repo-root>`**：clone `Codex_Image_Agent` 時＝clone 的根目錄；從外層專案執行時＝`output/`。
> **兩者不可相加**，寫成 `output/output/...` 一定是錯的。

> **另一條產線** `text-to-images` / `image-to-images`（單角色多風格）與本包無關，不在此。

## 正式流程（三段，01–07）

```
場次文件
  │  ① scene-to-characters      ──可派──▶  story-character-extractor
  ▼
角色表＋每角色抽取檔（characters_extracted/<name>.md）
  │  依角色表批次補建缺少的 Story_Character/<分類>/<角色>/ 空資料夾
  │  人工核准
  ▼
  │  ② characters-to-sheets     ──逐角色──▶  character-spec-manager
  ▼
在上游既有角色資料夾寫入 CHARACTER_SPEC.md ＋ PROMPTS.md（01–07）
  │
  ▼  ③ sheets-to-codex（交 Codex，兩階段）
01–07 PNG（非人形 01–06）
```

**圖片本體由 Codex／圖像模型生成，Claude Code 不生圖。** 本產線做到 PROMPTS.md 為止，③ 是產圖編排與驗收。

### 七張制（正式編號）

| 張號 | 內容 |
| --- | --- |
| 01 | 正面全身，作為該角色自己的**身份錨點** |
| 02 | 四視圖總表（正面→左→右→背） |
| 03 | 八表情 |
| 04 | 服裝拆解 |
| 05 | 色票材質 |
| 06 | 道具（**武器唯一出現位置**） |
| 07 | 素體（僅人形；非人形無此張，共 6 張） |

### 固定風格參考

所有角色、所有張次固定引用 `Story_Character/style/` 內三張原始風格圖。每位角色自己的 01 只作該角色身份錨；不同角色不互相作畫風參考，也不維護 `PENDING／ACTIVE` 專案狀態。

### 檔案安全鐵律

不刪不覆蓋既有 PNG；未過驗收的重生成一律存該角色 `rejects/`；已有正式 PNG 的角色整包凍結；零圖片角色只維護目前正本，不建立封存副本。

## 內容

| 檔案 | 類型 | 對應段 | 功能 |
| --- | --- | --- | --- |
| `skills/scene-to-characters/SKILL.md` | Skill 安裝副本 | ① | 場次文件 → 角色表與每角色抽取檔；依角色表補建缺少的角色資料夾 |
| `skills/characters-to-sheets/SKILL.md` | Skill 安裝副本 | ② | 抽取檔＋上游既有角色資料夾 → SPEC＋PROMPTS（01–07），寫入固定三張風格圖路徑 |
| `skills/sheets-to-codex/SKILL.md` | Skill 安裝副本 | ③ | 交 Codex 兩階段產圖與逐張驗收 |
| `agents/story-character-extractor.md` | Agent 執行體 | ① | 逐場抽角色線索，並依核准角色表批次補建缺少的角色資料夾 |
| `agents/character-spec-manager.md` | Agent 執行體 | ② | 每次接一份角色抽取檔，在上游既有角色資料夾寫 SPEC＋PROMPTS.md（01–07）；缺資料夾即停止 |

③ sheets-to-codex 是產圖編排，逐張要等使用者核准，不派 agent（但 Skill 本身仍需安裝）。

## 安裝（在使用本產線的 Claude Code 專案）

**全部從本包複製，本包自足**：

```
.claude/skills/scene-to-characters/SKILL.md    ← skills/scene-to-characters/SKILL.md
.claude/skills/characters-to-sheets/SKILL.md   ← skills/characters-to-sheets/SKILL.md
.claude/skills/sheets-to-codex/SKILL.md        ← skills/sheets-to-codex/SKILL.md
.claude/agents/story-character-extractor.md    ← agents/story-character-extractor.md
.claude/agents/character-spec-manager.md       ← agents/character-spec-manager.md
```

```powershell
# 一次裝完（在目標專案根目錄執行，<pkg> 指向本包）
$pkg = "<repo-root>\_pipeline_agents"
foreach ($s in 'scene-to-characters','characters-to-sheets','sheets-to-codex') {
  New-Item -ItemType Directory -Force ".claude\skills\$s" | Out-Null
  Copy-Item "$pkg\skills\$s\SKILL.md" ".claude\skills\$s\SKILL.md" -Force
}
New-Item -ItemType Directory -Force ".claude\agents" | Out-Null
Copy-Item "$pkg\agents\*.md" ".claude\agents\" -Force
```

新增後於下個 session 生效（harness 註冊時機）。skill 用 `/scene-to-characters`、`/characters-to-sheets`、`/sheets-to-codex` 觸發。

> 安裝時讀 `skills/` 副本即可。**但要修改流程規則，一律改正本**
> （`../Story_Character/Story_Character_skill/`），改完再同步副本。直接改副本會在下次同步時被覆蓋。

## 用法

1. 有新場次文件 → `/scene-to-characters`（給文件路徑）→ 得到角色表與每角色抽取檔，並依角色表批次補建缺少的空角色資料夾 → 人工核准
2. `/characters-to-sheets`（指定單一角色檔；多個新角色逐一執行）→ 在上游既有角色資料夾成對寫入 SPEC＋PROMPTS.md（01–07），統一引用固定三張風格圖
3. `/sheets-to-codex` → 依各角色 PROMPTS.md 檔尾「交給 Codex 的一鍵指令」交 Codex 兩階段產圖
4. 每位角色自己的 01 先核准 → 才開放該角色 02–07；不同角色互不阻塞

## 角色資產邊界

- 26 位零圖片角色使用 01–07／01–06，可進入 `sheets-to-codex`。
- 5 位已有正式 PNG 的角色整包凍結，不進入文字重建或生圖流程。
- 新角色一律由三段流程直接建立 01–07／01–06。
