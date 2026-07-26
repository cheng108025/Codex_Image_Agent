---
name: story-extract
description: 拆分故事文本，抽取每個角色的外貌、服裝、道具與血緣細節，產出 CHARACTER_SPEC.md 草稿（產圖管線上游）。當使用者要「從故事/劇本/場次卡抽角色設定」「拆分文本建角色檔」「/story-extract」時使用。
---

# story-extract — 故事文本角色抽取

## 執行前先確認（強制，core.md §10）

開始前必須先向使用者確認三件事，缺一不可，不得憑空假設：

1. **輸入文本**：哪些檔案？（例：`output/Story_Character/角色文檔.md`、場次卡、新章節稿——請使用者給路徑或貼文）
2. **範圍**：抽取全部出場角色，還是指定名單？既有角色（`output/Story_Character/*/` 已有資料夾者）要不要做差異比對？
3. **輸出位置**：SPEC 草稿放對應陣營資料夾（預設），或另指定目錄？

三項確認後才開始。

## 執行方式

輸入確認後，**用 Agent tool 派發 `story-character-extractor` agent** 執行（規則、模板、標記鐵律都在該 agent 定義裡）；角色數量多時可按陣營拆批平行派發。

任務包必含：輸入文本路徑、角色範圍、輸出位置、「既有角色只出差異報告不覆蓋」的提醒。

## 完成後

1. 彙整 agent 回報：新建 SPEC 清單、差異報告清單、PENDING-USER-INPUT 總表
2. 提醒使用者：SPEC 草稿核准後，下一步才是 PROMPTS.md（交接規範兩階段流程）；血緣角色需依 §13 家族錨點順序生成
3. 依 `rules/subagent-context.md` 將摘要寫入 `.claude/context/decisions/`
