# Story_Character 產線 — 三段 Skill

從故事文本到角色設定圖，一條產線拆成三個獨立、可各自呼叫的 skill。圖片本體由 Codex／圖像模型生成（Claude 不生圖）。

```
故事場次文件
   │
   ▼  ① scene-to-characters   （上游）
每角色抽取檔（出場場次/台詞/外貌/血緣/情緒；CANON 帶 SCENE 出處）
   │
   ▼  ② characters-to-sheets  （中游）
每角色資料夾：CHARACTER_SPEC.md ＋ PROMPTS.md（01–07）
   │  首角色 01 ＝ 專案畫風錨；雙層錨點；Codex 生成清單
   ▼  ③ sheets-to-codex       （下游）
驅動 Codex 兩階段產圖＋逐張 REJECT 驗收 → 01–07 PNG
```

## 三段

| # | Skill | 段 | 輸入 → 輸出 |
| --- | --- | --- | --- |
| ① | [scene-to-characters](scene-to-characters/SKILL.md) | 上游 | 按場次文件 → 每角色抽取檔（`<name>.md`、`_INDEX.md`、`_background-and-crowd.md`） |
| ② | [characters-to-sheets](characters-to-sheets/SKILL.md) | 中游 | 角色檔 → `output/<專案名>/<角色>/`（`CHARACTER_SPEC.md`＋`PROMPTS.md` 01–07）＋`STYLE_ANCHOR.md` |
| ③ | [sheets-to-codex](sheets-to-codex/SKILL.md) | 下游 | 角色包 → 驅動 Codex 兩階段生圖＋驗收 → PNG |

三段可獨立呼叫：只拆角色跑①、已有角色檔跑②、已有提示詞跑③。

## 全產線共用約定

- **標記鐵律**：文本明載＝`CANON`＋出處；推測＝`DESIGN-PROPOSAL`；缺口/分歧＝`PENDING-USER-INPUT`（不自決）。
- **路徑＝暫定可改；檔名＝固定契約**：`STYLE_ANCHOR.md`、`CHARACTER_SPEC.md`、`PROMPTS.md`、`rejects/`、`_archive/`、圖片 `NN-<name>-<sheet>.png`。
- **雙層錨點**：專案首角色 01＝畫風錨（鎖全專案畫風，取代舊制三張 style 圖）；各角色自己的 01＝身份錨（鎖臉/服裝）。
- **7 張制**：01 正面全身／02 四視圖／03 八表情／04 服裝拆解／05 色票材質／06 道具（武器唯一位置）／07 素體（僅人形）。非人形 6 張。
- **兩階段**：產 MD（②，無圖，可一次寫完）↔ 生圖（③，Codex，有先後：首角色 01 先核准）。
- **鐵律**：Claude 不生圖；不刪不覆蓋 PNG（重生成存 `rejects/`）；改寫既有檔先備份 `_archive/`。
