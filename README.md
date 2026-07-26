# Story Character 圖片生成專案

這個資料夾包含角色設定、圖片提示詞與 Codex 生圖流程。主要內容位於：

- [`Story_Character/`](Story_Character/)：角色資料與生圖資產。
- [`Story_Character/Story_Character_skill/`](Story_Character/Story_Character_skill/)：完整的三段式產圖流程。

專案 Repository：[`cheng108025/Codex_Image_Agent`](https://github.com/cheng108025/Codex_Image_Agent)

## Story_Character_skill

產圖流程分為三個 Skill：

1. [`scene-to-characters`](Story_Character/Story_Character_skill/scene-to-characters/SKILL.md)
   從故事場次文件整理出每個角色的資料。

2. [`characters-to-sheets`](Story_Character/Story_Character_skill/characters-to-sheets/SKILL.md)
   將角色資料整理成 `CHARACTER_SPEC.md` 與 `PROMPTS.md`。

3. [`sheets-to-codex`](Story_Character/Story_Character_skill/sheets-to-codex/SKILL.md)
   讓 Codex 讀取角色設定與提示詞，依序生成圖片並逐張驗收。

如果指定角色已經有 `CHARACTER_SPEC.md` 與 `PROMPTS.md`，Codex 會直接從第三段 `sheets-to-codex` 開始生圖。

生圖時會先製作角色的 `01` 身份基準圖並等待使用者確認；核准後，才會以該圖片鎖定角色身份，繼續生成其餘設定圖。失敗版本放入 `rejects/`，不覆蓋已核准圖片。

## 如何使用

使用者只需要使用 Codex 開啟這份專案，然後輸入：

```text
讀取這份專案，並開始生圖流程。
請先製作 {角色名字} 的圖片。
```

將 `{角色名字}` 換成實際角色名稱即可。Codex 會自行尋找角色資料、讀取對應 Skill，並按照專案規則開始生圖。

完整流程定義請參考 [`Story_Character/Story_Character_skill/README.md`](Story_Character/Story_Character_skill/README.md)。
