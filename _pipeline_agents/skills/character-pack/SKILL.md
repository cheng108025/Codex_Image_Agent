---
name: character-pack
description: 把角色設定建成完整參考包——資料夾＋CHARACTER_SPEC.md＋PROMPTS.md（00–10，含 Codex 生成清單），可直接交 Codex 產圖。當使用者要「建角色包」「產角色設定與提示詞」「/character-pack」時使用。串接 story-extract（上游）與 Codex 產圖（下游）。
---

# character-pack — 角色參考包建置

Story_Character 產線的 Claude 端終點：`設定 → 資料夾＋SPEC＋PROMPTS.md`。圖片由 Codex 生成（Claude 生不了 PNG），本 skill 產出可直接交 Codex 的完整包。

## 執行前先確認（強制，core.md §10）

1. **角色來源**：(a) 原始故事文本（先走 story-extract）／(b) 已核准的 SPEC 草稿／(c) 使用者直接提供設定？
2. **範圍**：哪些角色？單一或批次？既有 31 位要不要動（預設不動，只建新的）？
3. **人形／非人形**：非人形走 00–09（無 A-pose、無素體圖）。
4. **輸出位置**：預設對應陣營資料夾。

## 流程

1. 來源是原始故事文本 → 先 `/story-extract`（派 story-character-extractor）產 SPEC 草稿 → **提醒使用者核准草稿**（辨識關鍵分歧未定不得往下）
2. 設定核准後 → **用 Agent tool 派 `character-spec-manager`**（多角色按陣營平行派）產資料夾＋SPEC＋PROMPTS.md
3. 血緣角色依 §13：家族錨點先建、先提醒其 00 須先核准

## 完成後

1. 彙整回報：完成角色清單、每角色版本 ID、PENDING-USER-INPUT 總表（哪些角色卡在「未定案不得生成 00」）
2. 對每個就緒角色，給出可直接複製的「交給 Codex 產圖」一鍵指令（兩階段：00 先生先核准 → 01–10；家族錨點先行）
3. 依 `rules/subagent-context.md` 摘要寫入 `.claude/context/decisions/`

## 邊界

- 不生任何 PNG、不動既有 PNG
- 不碰 text-to-images／image-to-images 那條獨立產線
