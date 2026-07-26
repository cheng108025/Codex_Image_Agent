# 高文 Gawain

> Tier S ——《赫克托》聖騎士、克里茲摯友。本檔為文字版身份規格（新版七張制 01–07），供 `01-gawain-front-fullbody.png` 與 01–07 全套參考圖生成／校對之依據。
> 標記規則：`CANON`＝角色文檔或場次卡明載的外觀事實；`DESIGN-PROPOSAL`＝在正典線索上合理補完的視覺設計；`PENDING-USER-INPUT`＝會明顯改變辨識度、文檔無法決定的重大分歧。
> **用途聲明：本角色圖片組為 3D 建模參考包（modeling reference pack），不是完成的 3D 模型。正式影片必須以核准的 Blender／VRM 角色模型作為唯一角色正本。**
> 服裝版本鎖定：**全盛期聖騎士版**（赫克托銀白板甲＋藍披風＋聖劍＋胸口騎士徽章）。此為 01–07 的唯一預設外觀；本包不建置其他時期／服裝版本。

## 基本資料
- 中文名：高文
- 英文名：Gawain
- 角色版本 ID：**`GAWAIN-V1-FULL-GLORY-HOLY-KNIGHT`**（本版本鎖定；其他時期／服裝需另立版本 ID，不得混用）
- 性別：男
- 年齡／外觀年齡：青壯年，外觀年齡約 25–30 歲（`DESIGN-PROPOSAL`）
- 身高：約 185cm（`CANON`）
- 體型：高大壯碩、肩寬臂厚的正統騎士體格（`CANON`）
- 故事時期：全盛期（受逐前，佩劍聖騎士身份巔峰）（`CANON`）
- 服裝版本：全盛期聖騎士版 — 銀白板甲加藍披風、持聖劍、胸口騎士徽章（`CANON`）

## 身體量化鎖定 Body Metrics Lock
- 身高（cm）：**185**（`CANON`）
- 頭身比：**7.25**（既有規格「約七至七頭半身」鎖定為精確值；`DESIGN-PROPOSAL`，利於參數化人體擬合）
- 肩寬（頭寬倍數）：**約 2.6 倍頭寬**（高大壯碩、肩寬臂厚的正統騎士體格；`DESIGN-PROPOSAL`，可覆蓋）
- 左右不對稱特徵：**藍披風以單一肩扣固定於解剖學左肩；聖劍佩於解剖學右腰**（`DESIGN-PROPOSAL` 側別鎖定——SPEC 原文僅要求「披風主扣側須跨圖一致」未指定側別；此側別為既有 PROMPTS.md 已定案之設計提案，本次正式同步進 SPEC，使用者可事後覆蓋）

## 血緣關係鎖定 Kinship Lock
- 親屬清單：**無**——高文未登錄於任何家族註冊表（`ROYAL`、`ANDRE`），無血緣親屬
- 家族錨點：不適用
- 承襲特徵：不適用
- 刻意區分特徵：不適用
- 禁止混淆項：不適用
- **情感連結說明（非血緣，需明寫以避免誤植血緣機制）**：高文與葛洛莉雅之間是**情感／盟誓連結**（互贈同款騎士徽章作為承諾信物），並非血緣親屬關係；生成提示詞中的 `Kinship invariants` 一律填 `none`，不套用 §13 血緣相似規則。

## 參考圖片
- 初始角色外觀圖片：無
- 核准後的角色身份正本：`01-gawain-front-fullbody.png`（`PENDING-GENERATION`）
- 專案畫風唯一正本：`../../STYLE_ANCHOR.md`

## 設計來源標記
- `CANON`：角色文檔明確記載的外觀事實
- `DESIGN-PROPOSAL`：Claude 根據角色身分、時代與故事功能提出的視覺設計
- `PENDING-USER-INPUT`：會明顯改變角色辨識度、但無法由文檔決定的項目

## 外貌鎖定 Identity Lock
- 臉型：直率剛毅的男性臉型，輪廓端正、下頜有力（`CANON`「直率剛毅的面容」）
- 膚色：健康偏暖的膚色（`DESIGN-PROPOSAL`；hex 見下）
- 眼型與眼睛顏色：眼神熱烈、坦率有神（`CANON`「眼神熱烈」）；瞳色鎖定為**暖琥珀色 warm amber**（`DESIGN-PROPOSAL`，呼應棕金髮與金色力量）
- 髮型、髮色與固定髮束：**棕金色短髮**（`CANON`）；俐落、略帶自然層次的騎士短髮（`DESIGN-PROPOSAL`）
- 身材比例：見 Body Metrics Lock（185cm／7.25 頭身／肩寬約 2.6 倍頭寬，寬肩厚實壯碩）
- 標誌性輪廓：寬肩板甲剪影＋左肩藍披風垂墜＋右腰佩聖劍（`CANON` 元素；輪廓構成與側別為 `DESIGN-PROPOSAL`）
- 徽章紋樣：圓形銀質騎士徽章，中央一柄直立聖劍，外環月桂冠，銀底配少量金色邊飾（`DESIGN-PROPOSAL` 鎖定；須與葛洛莉雅胸前同款徽章保持一致，見「鎖定錨定預設值」）
- 不可改變特徵：棕金短髮、暖琥珀瞳、直率剛毅熱烈的面容、高大寬肩壯碩體格、胸口騎士徽章、聖劍
- **anatomical left／right 不對稱鎖定**：02 號視圖＝相機位於角色解剖學左側；03 號視圖＝相機位於角色解剖學右側。藍披風以單一肩扣固定於**解剖學左肩**，聖劍固定佩於**解剖學右腰**：02（左側視圖）可見披風肩扣正面，劍柄／劍鞘位於遠側；03（右側視圖）可見劍柄／劍鞘正面，披風肩扣位於遠側，披風主體垂墜可見於背後。跨圖不得鏡像互換。

## 鎖定錨定預設值（可覆蓋）

> 為讓 01 錨定圖完全確定、避免模型隨機決定，以下辨識度關鍵項鎖成具體預設值，寫入 01 的 Character definition。使用者可事後一眼覆蓋。

| 項目 | 鎖定值 | 英文（貼入 prompt） |
| :--- | :--- | :--- |
| 髮色 | 暖棕金色短髮 #7A5A34 | warm brown-gold short knight's hair (#7A5A34) |
| 瞳色 | 暖琥珀色 #C98A3E | warm amber eyes (#C98A3E) |
| 徽章紋樣 | 圓形銀質獎章，中央直立聖劍，外環月桂冠，銀底金邊 | a round silver knight badge engraved with a single upright holy sword at center, encircled by a laurel wreath, silver base with restrained gold rim |
| 徽章／聖劍鑲嵌 | 無鑲嵌寶石，僅少量金色邊飾 | no gemstone inlay, restrained gold trim only |
| 披風扣側 | 解剖學左肩 | fastened at the anatomical LEFT shoulder |
| 佩劍側 | 解剖學右腰 | worn at the anatomical RIGHT hip |

配色與全書金／銀藍／深色系一致。

## 服裝鎖定 Costume Lock（`GAWAIN-V1-FULL-GLORY-HOLY-KNIGHT` — 預設）
- 服裝層次：赫克托聖騎士全身板甲，內襯深色戰袍（`CANON` 銀白板甲；分層為 `DESIGN-PROPOSAL`）
- 領口：金屬護頸／立領護甲，內襯布料（`DESIGN-PROPOSAL`）
- 肩部：厚實金屬肩甲，藍披風以**解剖學左肩**肩扣固定（`CANON` 藍披風；扣法與側別為 `DESIGN-PROPOSAL`）
- 胸前：銀白胸甲，正中佩**騎士徽章**（與葛洛莉雅互贈的承諾同款信物，`CANON`）
- 袖口／手部：金屬臂甲與板甲手套（`DESIGN-PROPOSAL`）
- 腰部：騎士腰帶／劍帶，聖劍佩於**解剖學右腰**（`CANON` 聖劍；側別 `DESIGN-PROPOSAL`）
- 下襬／披風：**藍披風**及膝或及踝，背面完整可展（`CANON` 藍披風；長度為 `DESIGN-PROPOSAL`）
- 腿部／鞋靴：金屬腿甲與板甲戰靴（`DESIGN-PROPOSAL`）
- 背面結構：藍披風覆背、左肩扣可見，背後可見腰帶與劍鞘固定於右側（`DESIGN-PROPOSAL`）

## 替代服裝版本（`CANON`，非本輪預設，不建置於本包）
- `GAWAIN-V2-EXILE-BATTERED`（未建置）：流亡狼狽版——甲冑被收走、只餘破損內襯戰袍，滿身傷痕，形象由光亮轉為狼狽（`CANON`「甲冑被收走、只餘破損內襯」）；此為角色最低谷造型
- `GAWAIN-V3-GOLDEN-POWER-BURST`（未建置）：金色力量爆發狀態——爆發金色力量時光芒從傷口與聖劍溢出（`CANON`），屬情緒引爆的能量特效，非固定配件
- 本包（`GAWAIN-V1-FULL-GLORY-HOLY-KNIGHT`）之 01–07 一律採未爆發的平靜全盛期狀態，不出現上述兩版本的任何元素；若未來需要，須另開完整 SPEC＋PROMPTS 包，不可在本包內混合或默認切換

## 色票與材質（固定色票，跨全部圖片不得漂移）
- 主色：銀白／冷白板甲 **#D8DCE0**＋皇家藍披風 **#1F3B73**（`CANON`；hex 無既有 PNG 可取樣，依色名推定，`DESIGN-PROPOSAL`）
- 輔色：暖棕金髮色 **#7A5A34**、深色內襯戰袍 **#26241F**（`DESIGN-PROPOSAL`）
- 金屬：拋光銀白板甲 **#D8DCE0**、暗銀陰影 **#9AA0A6**、少量金色鑲邊飾件 **#B08D4E**（`DESIGN-PROPOSAL`）
- 寶石：**無鑲嵌寶石**；聖劍護手與徽章僅以少量金色邊飾表現，避免寶石鑲嵌感（`DESIGN-PROPOSAL` 鎖定）
- 布料：厚織皇家藍披風 **#1F3B73**、深色內襯 **#26241F**（`DESIGN-PROPOSAL`）
- 皮革：劍帶、腰帶、板甲內襯皮件 **#3A2C1F**（`DESIGN-PROPOSAL`）
- 特殊材質：金色力量溢光（傷口與聖劍）——發光能量特效，非實體材質，屬 `GAWAIN-V3-GOLDEN-POWER-BURST`（`CANON` 存在但不在本包）
- 膚色／髮色／瞳色（hex）：膚 **#F0D9BE**（健康偏暖）／髮 **#7A5A34**（暖棕金）／瞳 **#C98A3E**（暖琥珀）（`DESIGN-PROPOSAL`，無既有 PNG 可取樣，依色名推定）

## 道具與特殊構造（僅 06 出現（道具結構表））
- 武器：**聖劍 holy sword**——赫克托聖騎士配劍，佩於解剖學右腰（`CANON` 存在；側別 `DESIGN-PROPOSAL`）。**01–02 與 07 一律不出現**
- 飾品：**騎士徽章**——胸口佩戴，與葛洛莉雅互贈的承諾信物同款（`CANON`）
- 隨身道具：赫克托聖騎士板甲的連接構造（肩甲、胸甲、臂甲、腿甲扣接點）（`DESIGN-PROPOSAL`）
- 翅膀／角／尾巴／其他特殊構造：無（人類角色）
- 配戴或連接方式：聖劍以劍帶固定於解剖學右腰；藍披風以解剖學左肩金屬扣件連接；騎士徽章別於胸甲正中（`DESIGN-PROPOSAL`）

## 八種固定表情
1. 自然 Neutral — 直率坦然的預設神情
2. 輕笑 Gentle smile — 溫暖的一絲柔軟
3. 大笑、可見牙齒 Broad smile with visible teeth — 爽朗
4. 開懷大笑 Joyful open laughter
5. 驚訝 Surprise
6. 憤怒 Anger — 為同伴而燃的義憤
7. 悲傷 Sadness — 跪於焦坑旁的崩潰之痛
8. 眨眼 Wink

## 禁止特徵
- 不可新增的配件：翅膀、角、尾巴、王冠、額外武器、機械義肢
- 不可出現的性別呈現：女性化外貌、女性角色（此角色為男性壯碩騎士）
- 不可出現的顏色：高飽和螢光色、粉彩系、與全書金／銀藍／深色系衝突的鮮豔色
- 不可改變的左右位置：胸口徽章置中；藍披風扣件固定於解剖學左肩；聖劍固定佩於解剖學右腰，跨圖一致、不得鏡像互換
- 不可使用的風格：寫實攝影、3D／CGI、西方漫畫、Q版、厚黑邊、chibi
- 不可混入本版本的元素：`GAWAIN-V2-EXILE-BATTERED`（破損甲冑／傷痕）與 `GAWAIN-V3-GOLDEN-POWER-BURST`（金色溢光）之任何視覺元素

## 正典衝突與待確認事項
- **已決定**：
  - 服裝版本採全盛期聖騎士版（銀白板甲＋藍披風＋聖劍＋胸口騎士徽章），與 06 道具結構表所列 props 對齊。
  - 流亡狼狽版與金色力量爆發狀態正式拆分為獨立未建置版本 ID（`GAWAIN-V2-EXILE-BATTERED`、`GAWAIN-V3-GOLDEN-POWER-BURST`），本輪不採用、不混入本包任何一張圖。
  - 瞳色鎖定暖琥珀色；騎士徽章紋樣鎖定圓形銀質獎章、中央直立聖劍、外環月桂冠（須與葛洛莉雅同款徽章保持一致）；聖劍與徽章均無寶石鑲嵌，僅金色邊飾。
- **側別鎖定**：藍披風肩扣固定於解剖學左肩，聖劍固定佩於解剖學右腰；標記 `DESIGN-PROPOSAL`，使用者可覆蓋。
  - 全部固定色票已補齊 hex（無既有 PNG 可取樣，依色名推定，標記 `DESIGN-PROPOSAL`，可覆蓋）。
- **`PENDING-USER-INPUT`（不影響 01 辨識度，可續留）**：
  - 是否需要另出一版「金色力量爆發」動態設定稿（`GAWAIN-V3-GOLDEN-POWER-BURST`）——屬未來新版本開發，非本包待辦。
