# Story_Character 產線 — 三段 Skill

從故事文本到角色設定圖，一條產線拆成三個獨立、可各自呼叫的 skill。圖片本體由 Codex／圖像模型生成（Claude 不生圖）。

```
故事場次文件
   │
   ▼  ① scene-to-characters   （上游）
角色表＋每角色抽取檔＋依角色表補建缺少的空角色資料夾
   │
   ▼  ② characters-to-sheets  （中游）
在上游既有角色資料夾寫入：CHARACTER_SPEC.md ＋ PROMPTS.md（01–07）
   │  固定三張風格圖＋本角色 01 身份錨；Codex 生成清單
   ▼  ③ sheets-to-codex       （下游）
驅動 Codex 兩階段產圖＋逐張 REJECT 驗收 → 01–07 PNG
```

## 三段

| # | Skill | 段 | 輸入 → 輸出 |
| --- | --- | --- | --- |
| ① | [scene-to-characters](scene-to-characters/SKILL.md) | 上游 | 按場次文件 → 角色表、每角色抽取檔，並依角色表補建 `<repo-root>/Story_Character/<分類>/<角色>/` |
| ② | [characters-to-sheets](characters-to-sheets/SKILL.md) | 中游 | 角色檔＋上游既有角色資料夾 → `CHARACTER_SPEC.md`＋`PROMPTS.md` 01–07 |
| ③ | [sheets-to-codex](sheets-to-codex/SKILL.md) | 下游 | 角色包 → 驅動 Codex 兩階段生圖＋驗收 → PNG |

三段可獨立呼叫：只拆角色與補資料夾跑①、已有角色檔且上游資料夾已存在才跑②、已有提示詞跑③。

## 路徑基準：`<repo-root>`

本產線文件一律以 `<repo-root>/` 表示**生圖 repo 的根目錄**，不寫死 `output/`：

| 取得方式 | `<repo-root>` 是什麼 |
| --- | --- |
| `git clone .../Codex_Image_Agent.git` | clone 出來的資料夾本身 |
| 從外層 `claude-Godzilla-z` 專案使用 | `output/` |

直接 clone 的使用者**不要**在 `<repo-root>` 前再加 `output/`（會變成錯誤的 `output/<專案名>/`）。

## 全產線共用約定

- **標記鐵律**：文本明載＝`CANON`＋出處；推測＝`DESIGN-PROPOSAL`；缺口/分歧＝`PENDING-USER-INPUT`（不自決）。
- **資料夾責任**：上游以核准角色表為唯一清單，只補建不存在的角色資料夾；既有資料夾完全不動。中游不得建、改名、移動或重新分類角色資料夾。
- **路徑＝固定專案契約**：風格圖位於 `Story_Character/style/`；每角色使用 `CHARACTER_SPEC.md`、`PROMPTS.md`、`rejects/` 與圖片 `NN-<name>-<sheet>.png`。
- **風格與身份分離**：三張固定參考圖控制畫風；各角色自己的 01＝身份錨（鎖臉／服裝）。
- **7 張制**：01 正面全身／02 四視圖／03 八表情／04 服裝拆解／05 色票材質／06 道具（武器唯一位置）／07 素體（僅人形）。非人形 6 張。
- **兩階段**：產 MD（②，無圖，可一次寫完）↔ 生圖（③，Codex；每位角色自己的 01 先核准）。
- **鐵律**：Claude 不生圖；不刪不覆蓋 PNG（重生成存 `rejects/`）；已有正式 PNG 的角色整包凍結；零圖片角色只維護目前正本，不建立封存副本。
