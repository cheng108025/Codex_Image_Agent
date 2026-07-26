# Story Character 圖片生成專案

這個 repo 包含角色設定、圖片提示詞與 Codex 生圖流程。

專案 Repository：[`cheng108025/Codex_Image_Agent`](https://github.com/cheng108025/Codex_Image_Agent)

## 路徑寫法約定（重要）

本 repo 可以用兩種方式取得，路徑基準不同：

| 取得方式 | repo 根目錄 |
| --- | --- |
| `git clone https://github.com/cheng108025/Codex_Image_Agent.git` | **clone 出來的資料夾本身** |
| 從外層 `claude-Godzilla-z` 專案使用 | `output/` |

因此本 repo 內所有文件一律以 **`<repo-root>/`** 表示根目錄，例如 `<repo-root>/Story_Character/`。
直接 clone 的使用者請把 `<repo-root>/` 讀成「你 clone 出來的資料夾」，**不要**再加一層 `output/`
（會變成錯誤的 `output/Story_Character/`）。

## 主要內容

- [`Story_Character/`](Story_Character/)：角色資料與生圖資產（31 位角色）
- **26 位＝目前可生成格式**（人形 01–07、非人形 01–06）
- **5 位＝既有圖片凍結資產**（奧德里奇、伊普拉新、克里茲、班尼迪克、蕾瓦娜斯）——不進入本次文字或生圖流程
- [`Story_Character/Story_Character_skill/`](Story_Character/Story_Character_skill/)：**正式三段式產圖流程**
- [`_sandbox_project/`](_sandbox_project/)：新版 01–07 流程的最小完整範例（Lumi／Garo）
- [`_pipeline_agents/`](_pipeline_agents/)：Claude Code 端的 Agent 規格與安裝說明

## 正式流程：三段 Skill（01–07）

1. [`scene-to-characters`](Story_Character/Story_Character_skill/scene-to-characters/SKILL.md)
   從故事場次文件整理出每個角色的資料。

2. [`characters-to-sheets`](Story_Character/Story_Character_skill/characters-to-sheets/SKILL.md)
   將角色資料整理成 `CHARACTER_SPEC.md` 與 `PROMPTS.md`（01–07），並建立 `STYLE_ANCHOR.md`。

3. [`sheets-to-codex`](Story_Character/Story_Character_skill/sheets-to-codex/SKILL.md)
   讓 Codex 讀取角色設定與提示詞，依序生成圖片並逐張驗收。

完整流程定義請參考 [`Story_Character/Story_Character_skill/README.md`](Story_Character/Story_Character_skill/README.md)。

### 設定圖編號（七張制）

| 張號 | 內容 |
| --- | --- |
| 01 | 正面全身。**身份錨點**；專案首角色的 01 同時是**畫風錨** |
| 02 | 四視圖總表（正面→左→右→背） |
| 03 | 八表情 |
| 04 | 服裝拆解 |
| 05 | 色票材質 |
| 06 | 道具。**武器唯一出現位置** |
| 07 | 素體（僅人形；非人形共 6 張） |

### 兩階段與畫風錨

生圖時會先製作**專案首角色的 `01` 身份基準圖並等待使用者確認**；核准後：

- `<repo-root>/<專案名>/STYLE_ANCHOR.md` 狀態由 `PENDING-APPROVAL` 改為 `ACTIVE`
- 該 01 成為全專案唯一畫風錨，角色 2..N 一律只認它

失敗版本放入該角色的 `rejects/`，**不覆蓋已核准圖片**。

## 直接進入 sheets-to-codex 的條件

必須以下**六項全部成立**才能直接生圖：

- [ ] 設定圖為 01–07 格式（非人形 01–06）
- [ ] `CHARACTER_SPEC.md` 完整：版本 ID、Body Metrics Lock、固定 hex 色票、身份正本欄、Kinship Lock
- [ ] `PROMPTS.md` 完整：檔頭 Codex 生成清單五項齊（檔名／兩階段閘門／一致性聲明／input images／既有 PNG 標記）
- [ ] 專案根目錄有 `STYLE_ANCHOR.md`
- [ ] 沒有阻擋生圖的 `PENDING-USER-INPUT`（檔頭無「未定案不得生成 01」鎖）
- [ ] `PROMPTS.md` 中有明確的 `## 01`–`## 07` 生圖段落（非人形 `## 01`–`## 06`）

**任一項不成立** → 回報缺項並停止，不得直接生圖。

> 交接規則：`Story_Character/` 底下已有正式 PNG 的角色整包凍結不動；
> 完全沒有 PNG 的既有角色只保留 01–07／01–06。
> `_sandbox_project/` 的 Lumi 與 Garo 是符合新版格式的範例。

## 如何使用

使用者只需要使用 Codex 開啟這份專案，然後輸入：

```text
讀取這份專案，並開始生圖流程。
請先製作 {角色名字} 的圖片。
```

將 `{角色名字}` 換成實際角色名稱即可。Codex 會自行尋找角色資料、讀取對應 Skill，並按照專案規則開始生圖——
包含先判定角色包格式，再載入正確流程。

### Codex 自動入口

- [`AGENTS.md`](AGENTS.md)：Codex 開啟 repo 時自動載入的專案生圖路由。
- [`.agents/skills/story-character-image-flow/SKILL.md`](.agents/skills/story-character-image-flow/SKILL.md)：
  可由上述兩句話隱式觸發的一鍵生圖 Skill。

一鍵入口會依角色現況選擇：

- 已有正式 PNG 的角色：整個角色包先凍結，不修改提示詞或圖片。
- 沒有 PNG 的既有角色：讀取 01–07／01–06 角色包與 `STYLE_ANCHOR.md`，執行 `sheets-to-codex`，先生 01。
- 只有故事文本、尚無角色包：依序執行 `scene-to-characters` → `characters-to-sheets` → `sheets-to-codex`，直接建立新版格式。

不論走哪條路，第一張身份錨點圖完成後都會停止，等待使用者核准。

### 執行環境需求

接手者只需要把 clone 出來的 `Codex_Image_Agent` 資料夾本身開成 Codex 專案，再輸入上述兩句話。
該 Codex 環境必須具備圖片生成／ImageGen 能力；repo 能自動提供 Agent 路由、角色資料與提示詞，
但不能把外部圖片生成工具本身包進 Git。若環境缺少生圖能力，Agent 會定位角色與預定輸出檔名後明確停止，不會假裝已生成。
