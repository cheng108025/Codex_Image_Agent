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

**2026-07-26 驗證結果（三份全 MATCH）**：

| Skill | bytes | SHA-256 |
| --- | ---: | --- |
| `skills/scene-to-characters/SKILL.md` | 7727 | `76116398187F7C7642B1A1E8371328F0D06CEA2E7912639B57785F775885EE37` |
| `skills/characters-to-sheets/SKILL.md` | 10887 | `31AFBF180434FDA50DABAB9A8A3CEB22433BA6C8BA101A1B847F63A17C8DEB69` |
| `skills/sheets-to-codex/SKILL.md` | 6909 | `50D4C0844D9458E98A3A6089D0B0AE3EC89C1BC62B58E31DBFB6675C62A2A151` |

> **`<repo-root>`**：clone `Codex_Image_Agent` 時＝clone 的根目錄；從外層專案執行時＝`output/`。
> **兩者不可相加**，寫成 `output/output/...` 一定是錯的。

> **另一條產線** `text-to-images` / `image-to-images`（單角色多風格）與本包無關，不在此。

## 正式流程（三段，01–07）

```
場次文件
  │  ① scene-to-characters      ──可派──▶  story-character-extractor
  ▼
每角色抽取檔（characters_extracted/<name>.md）
  │  人工核准
  ▼
  │  ② characters-to-sheets     ──可派──▶  character-spec-manager
  ▼
<專案>/<角色>/CHARACTER_SPEC.md ＋ PROMPTS.md（01–07）＋ <專案>/STYLE_ANCHOR.md
  │
  ▼  ③ sheets-to-codex（交 Codex，兩階段）
01–07 PNG（非人形 01–06）
```

**圖片本體由 Codex／圖像模型生成，Claude Code 不生圖。** 本產線做到 PROMPTS.md 為止，③ 是產圖編排與驗收。

### 七張制（正式編號）

| 張號 | 內容 |
| --- | --- |
| 01 | 正面全身（**身份錨點**；專案首角色的 01 同時是**畫風錨**） |
| 02 | 四視圖總表（正面→左→右→背） |
| 03 | 八表情 |
| 04 | 服裝拆解 |
| 05 | 色票材質 |
| 06 | 道具（**武器唯一出現位置**） |
| 07 | 素體（僅人形；非人形無此張，共 6 張） |

### 畫風錨狀態

| 狀態 | 意義 |
| --- | --- |
| `PENDING-APPROVAL`＋首角色 `PENDING-FIRST-REQUEST` | 尚未收到第一次零圖片角色請求；第一次指定者自動登記為首角色 |
| `PENDING-APPROVAL`＋已登記首角色 | 首角色 01 未核准。全專案只能生首角色的 01，其餘擋住 |
| `ACTIVE` | 首角色 01 已核准並成為正式畫風錨。角色 2..N 開放，一律只認此圖為畫風參考 |

### 檔案安全鐵律

不刪不覆蓋既有 PNG；未過驗收的重生成一律存該角色 `rejects/`；已有正式 PNG 的角色整包凍結；零圖片角色只維護目前正本，不建立封存副本。

## 內容

| 檔案 | 類型 | 對應段 | 功能 |
| --- | --- | --- | --- |
| `skills/scene-to-characters/SKILL.md` | Skill 安裝副本 | ① | 場次文件 → 每角色抽取檔 |
| `skills/characters-to-sheets/SKILL.md` | Skill 安裝副本 | ② | 抽取檔 → SPEC＋PROMPTS（01–07）＋STYLE_ANCHOR |
| `skills/sheets-to-codex/SKILL.md` | Skill 安裝副本 | ③ | 交 Codex 兩階段產圖與逐張驗收 |
| `agents/story-character-extractor.md` | Agent 執行體 | ① | 逐場抽角色線索，CANON 帶 SCENE 出處、推測標 DESIGN-PROPOSAL、缺口標 PENDING-USER-INPUT |
| `agents/character-spec-manager.md` | Agent 執行體 | ② | 建資料夾＋SPEC＋PROMPTS.md（01–07），含 Codex 生成清單；單一角色為單位，可平行派多個 |

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

1. 有新場次文件 → `/scene-to-characters`（給文件路徑）→ 得到每角色抽取檔 → 人工核准
2. `/characters-to-sheets`（指定專案名與範圍；若尚未指定首角色則保留動態首次請求）→ 得到資料夾＋SPEC＋PROMPTS.md（01–07）＋STYLE_ANCHOR.md
3. `/sheets-to-codex` → 依各角色 PROMPTS.md 檔尾「交給 Codex 的一鍵指令」交 Codex 兩階段產圖
4. 首角色 01 先生先核准 → STYLE_ANCHOR 轉 ACTIVE → 才開放其餘角色

## 角色資產邊界

- 26 位零圖片角色使用 01–07／01–06，可進入 `sheets-to-codex`。
- 5 位已有正式 PNG 的角色整包凍結，不進入文字重建或生圖流程。
- 新角色一律由三段流程直接建立 01–07／01–06。
