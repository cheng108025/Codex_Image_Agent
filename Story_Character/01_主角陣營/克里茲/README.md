# 克里茲角色設定包

視覺正本：`../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`

本資料夾以現有 character sheet 的外觀為準，角色文檔只用於表情與道具語意補充。

> 本包已依 FULL v2 範本（見奧德里奇 `CHARACTER_SPEC.md` / `PROMPTS.md`）升級為 00–10 完整結構。角色版本 ID：`KRITZ-V1-1587-EXPEDITION`。固定 hex 色票、Body Metrics Lock 與 anatomical left/right 鎖定見 `CHARACTER_SPEC.md`。

## 圖片索引

| 檔案 | 內容 | 狀態 |
| --- | --- | --- |
| `00-kritz-character-identity-anchor.png` | 身份母圖（三視圖：A-pose 正面全身＋正面頭肩＋45° 頭肩） | `PENDING-GENERATION` |
| `01-kritz-front-fullbody.png` | 正面獨立全身視圖 | 已核准 |
| `02-kritz-left-profile-fullbody.png` | 相機位於角色解剖學左側全身視圖 | 已核准 |
| `03-kritz-back-fullbody.png` | 背面獨立全身視圖 | 已核准（⚠️ 對應 `PROMPTS.md` 之 canonical 04 號內容，見下方「編號差異」） |
| `04-kritz-right-profile-fullbody.png` | 相機位於角色解剖學右側全身視圖 | 已核准（⚠️ 對應 `PROMPTS.md` 之 canonical 03 號內容，見下方「編號差異」） |
| `05-kritz-four-view-master.png` | 原始正／左／背／右四視圖總表，無損複製 | 已核准（⚠️ 順序與 canonical「正→左→右→背」不同） |
| `06-kritz-expression-sheet.png` | 冷靜、壓抑悲傷、冷酷命令、克制震怒 | 已核准 |
| `07-kritz-costume-detail-sheet.png` | 領口、肩甲鏈飾、袖口、腰封、披風下襬、靴與背部固定 | 已核准 |
| `08-kritz-color-material-sheet.png` | 色票（已補固定 hex）與布、皮、金屬、鏈條、寶石材質 | 已核准 |
| `09-kritz-prop-construction-sheet.png` | 雙生聖劍、劍鞘、配戴背帶、王室飾件、母親項鍊、披風扣件 | 已核准 |
| `10-kritz-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用，正面＋左側） | `PENDING-GENERATION` |

## 編號差異（不得靜默修正，僅記錄）

資料夾內既有 PNG 使用舊順序命名（正／左／背／右）。`PROMPTS.md` 的 01–04 依交接規範 canonical 結構撰寫（01 正面／02 解剖學左／03 解剖學右／04 背面），因此：

- canonical **03**（解剖學右側）對應既有檔案 **`04-kritz-right-profile-fullbody.png`**
- canonical **04**（背面）對應既有檔案 **`03-kritz-back-fullbody.png`**
- `05-kritz-four-view-master.png` 既有排列順序為「正／左／背／右」，與 canonical「正→左→右→背」不同

以上差異不影響既有 PNG 的視覺內容，僅是檔名編號與 canonical 範本不同；是否重新生成以統一編號，由使用者決定，本次不重新命名或覆蓋任何既有 PNG。

## 使用注意

- `05` 是使用者指定的原始外觀正本；其他圖片是依它延伸生成的製作參考。
- 後續生成應同時引用 `05` 與 `01`，並明確鎖定臉、髮型、紅金眼、黑金服裝與紫色寶石。
- 生成式圖片在細小刺繡與扣件位置仍可能有輕微差異；進入 3D 建模前，以 `05` 決定整體輪廓，以 `07`、`09` 決定細節結構。
- 完整提示詞保存於 `PROMPTS.md`；固定 hex 色票、Body Metrics Lock、anatomical left/right 鎖定與正典待確認事項保存於 `CHARACTER_SPEC.md`。

