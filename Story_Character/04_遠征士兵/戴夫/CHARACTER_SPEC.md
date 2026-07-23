# 戴夫 Dave

> Tier C — 遠征士兵（有名字的犧牲者）。本檔為文字版身份規格（FULL v2 package），供 `00-dave-character-identity-anchor.png` 與 01–10 全套參考圖生成／校對之依據。
> 標記規則：`CANON`＝角色文檔或場次卡明載的外觀事實；`DESIGN-PROPOSAL`＝在正典線索上合理補完的視覺設計；`PENDING-USER-INPUT`＝會明顯改變辨識度、文檔無法決定的重大分歧。
> **用途聲明：本角色圖片組為 3D 建模參考包（modeling reference pack），不是完成的 3D 模型。正式影片必須以核准的 Blender／VRM 角色模型作為唯一角色正本。**
> 角色文檔 heading：`### 文森特（Vincent）／ 戴夫（Dave）`（同一段涵蓋文森特與戴夫兩人）。本檔為其中「一壯」的戴夫。
> **簽名武器 PENDING-USER-INPUT（稽核 §7）**：文檔僅載「短劍或斧」二選一，未定案。本檔於 09 道具表提出**短劍**為推薦方案（附理由，見下），但正式標記為 `PENDING-USER-INPUT`，待使用者決定；武器僅出現於 09，不阻擋 00–08／10 其他表結構生成。

## 基本資料
- 中文名：戴夫
- 英文名：Dave
- 角色版本 ID：**`DAVE-V1-EXPEDITION-INFANTRY`**（本版本鎖定；其他時期／服裝需另立版本 ID，不得混用）
- 性別：男
- 年齡／外觀年齡：青壯年步兵，約 20 多歲（`DESIGN-PROPOSAL`）
- 身高：中等，約 175cm（`DESIGN-PROPOSAL`；文檔僅相對描述「一高一壯」中的「壯」）
- 體型：**較壯實敦厚**的尋常步兵體格（`CANON` 相對「壯」；細節 `DESIGN-PROPOSAL`）
- 故事時期：荒野戰場遠征期（`CANON`；本版本鎖定此時期外觀，其他時期需另立版本 ID）
- 服裝版本：赫克托制式步兵甲，單一服裝版本，不與其他時期混用（`CANON`）

## 身體量化鎖定 Body Metrics Lock
- 身高（cm）：**175**（`DESIGN-PROPOSAL`）
- 頭身比：**6.8**（`DESIGN-PROPOSAL`，偏敦實，利於參數化人體擬合）
- 肩寬（頭寬倍數）：**約 2.6 倍頭寬**（三人中肩寬最寬，呼應「較壯實敦厚」正典；`DESIGN-PROPOSAL`，可覆蓋）
- 左右不對稱特徵：**佩劍側＝解剖學右側腰際（`DESIGN-PROPOSAL`，SPEC 原未定，本次提案）**。00–05 與 10 全身視圖零道具，佩劍與劍鞘掛點不出現，故此側別僅影響 07（腰帶掛點細節）與 09（道具表）；00–05／10 的零道具全身視圖本身仍呈現對稱輪廓。

## 參考圖片
- 初始角色外觀圖片：無
- 核准後的角色身份正本：`00-dave-character-identity-anchor.png`（`PENDING-GENERATION`）
- 共用畫風參考 1：`../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- 共用畫風參考 2：`../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- 共用畫風參考 3：`../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

## 設計來源標記
- `CANON`：角色文檔明確記載的外觀事實
- `DESIGN-PROPOSAL`：Claude 根據角色身分、時代與故事功能提出的視覺設計
- `PENDING-USER-INPUT`：會明顯改變角色辨識度、但無法由文檔決定的項目

## 血緣關係鎖定 Kinship Lock
- 親屬清單：**無**——普通士兵，無血緣關係人物
- 家族錨點：不適用
- 承襲特徵：不適用
- 刻意區分特徵：不適用
- 禁止混淆項：不適用

## 外貌鎖定 Identity Lock
- 臉型：**平凡、無英雄氣派**的普通士兵臉（`CANON`「面孔平凡、無英雄氣派」）；圓潤敦厚、線條樸實（`DESIGN-PROPOSAL`）
- 膚色：健康自然膚色、略帶風霜（`DESIGN-PROPOSAL`；hex 見下）
- 眼型與眼睛顏色：淺褐或灰褐色、憨厚勇毅的眼神（`DESIGN-PROPOSAL`）
- 髮型、髮色與固定髮束：深色極短平頭、便於戴盔（`DESIGN-PROPOSAL`）
- 身材比例：約六個半到七頭身、日系奇幻設定稿比例，偏敦實；見 Body Metrics Lock（175cm／6.8 頭身／肩寬約 2.6 倍頭寬）
- 標誌性輪廓：壯實敦厚的身形剪影＋制式步兵甲肩線（`CANON` 一壯；輪廓構成為 `DESIGN-PROPOSAL`）
- 不可改變特徵：平凡樸實的普通臉、赫克托制式步兵甲、壯實敦厚身形
- **anatomical left／right 不對稱鎖定**：佩劍側鎖定為解剖學右側腰際（`DESIGN-PROPOSAL`，本次提案，見 Body Metrics Lock）。00–05 與 10 全身視圖零道具，武器與掛點不出現，視覺上呈現對稱輪廓；此側別僅供 07／09 的腰帶掛點與武器佩戴細節參考。02 號視圖＝相機位於角色解剖學左側；03 號視圖＝相機位於角色解剖學右側。

## 鎖定錨定預設值（可覆蓋）
> 以下項目原為 `PENDING-USER-INPUT`，因會影響 00 錨定圖的辨識度，已鎖成具體預設值寫入 00。使用者可事後覆蓋。
- 髮色：深色極短平頭、便於戴盔
- 眼睛顏色：淺褐／灰褐、憨厚勇毅
- 確切身高：約 175cm
- 軍徽紋樣：胸甲上一枚低調壓印的簡單幾何鋼色軍徽（無寶石）
- 主要材質：霧面鋼甲片、深棕皮革、制式布料（無寶石、無金飾）
- Body Metrics：175cm／6.8 頭身／約 2.6 倍頭寬肩寬（`DESIGN-PROPOSAL`）
- 佩劍側：解剖學右側腰際（`DESIGN-PROPOSAL`，見上）

## 服裝鎖定 Costume Lock
- 服裝層次：赫克托制式步兵甲——布／皮內襯外罩制式甲片（`CANON` 制式甲；分層 `DESIGN-PROPOSAL`）
- 領口：制式護頸、內襯布料（`DESIGN-PROPOSAL`）
- 肩部：制式肩甲、無指揮官綬帶或裝飾（`DESIGN-PROPOSAL`，刻意樸素以呼應「尋常步兵」）
- 胸前：制式胸甲，可有低調的赫克托軍徽（`DESIGN-PROPOSAL`）
- 袖口／手部：皮革護臂或制式手套（`DESIGN-PROPOSAL`）
- 腰部：制式腰帶，右側腰際佩劍掛點（空掛點，`DESIGN-PROPOSAL`；劍本身僅入 09）
- 下襬／披風：無披風或僅短布甲裙（`DESIGN-PROPOSAL`）
- 腿部／鞋靴：制式護脛、軍靴（`DESIGN-PROPOSAL`）
- 背面結構：制式甲背片，無特殊構造（`DESIGN-PROPOSAL`）

## 色票與材質（固定色票，跨全部圖片不得漂移）
> 角色文檔僅以色名描述，以下 hex 為 Claude 由色名推定之近似值，標記 `DESIGN-PROPOSAL`，使用者可覆蓋。
- 主色：赫克托軍制式配色——鋼灰 **#5F6368**（`DESIGN-PROPOSAL`；與全書金／銀藍／深色系一致）
- 輔色：深棕皮革 **#3D2E22**、暗金軍徽配色 **#7A6A42**（`DESIGN-PROPOSAL`）
- 金屬：制式甲片鋼、扣件 **#5F6368**（`DESIGN-PROPOSAL`）
- 寶石：無（`DESIGN-PROPOSAL`）
- 布料：制式軍服布料 **#4A4238**（`DESIGN-PROPOSAL`）
- 皮革：護臂、腰帶、軍靴 **#3D2E22**（`DESIGN-PROPOSAL`）
- 特殊材質：無
- 膚色／髮色／瞳色（hex）：膚 **#E8C09E**（健康自然、略帶風霜）／髮 **#2B211A**（深色極短平頭）／瞳 **#8A7256**（淺褐／灰褐色）（`DESIGN-PROPOSAL`）

## 道具與特殊構造（僅出現在 09 道具表）
- 武器：**`PENDING-USER-INPUT`**——制式短劍或斧二選一。推薦方案：**短劍（standard-issue short sword）**——理由：短劍更符合「制式」步兵標準化裝備語言，闊斧視覺上偏向蠻族／伐木意象，與「平凡、無英雄氣派」的正典基調略有落差；短劍與同組文森特（`PENDING-USER-INPUT`：短劍或長矛）、鮑曼（`PENDING-USER-INPUT`：短劍或匕首）的短刃形制一致，便於同組步兵裝備語言統一。**此為推薦，非定案，待使用者決定**；09 道具表以短劍為主要呈現，同時保留提案理由供覆核。**00–05 與 10 一律不出現**
- 飾品：無（刻意樸素）
- 隨身道具：低調赫克托軍徽（`DESIGN-PROPOSAL`）
- 翅膀／角／尾巴／其他特殊構造：**無（人類尋常步兵）**
- 配戴或連接方式：制式腰帶佩劍於右側腰際（`DESIGN-PROPOSAL`）

## 八種固定表情
1. 自然 Neutral — 憨厚的常態
2. 輕笑 Gentle smile
3. 大笑、可見牙齒 Broad smile with visible teeth
4. 開懷大笑 Joyful open laughter
5. 驚訝 Surprise
6. 憤怒 Anger
7. 悲傷 Sadness
8. 眨眼 Wink

## 禁止特徵
- 不可新增的配件：**重型英雄鎧甲、翅膀、角、尾巴**、王冠、指揮官綬帶、華麗裝飾、機械義肢
- 不可出現的顏色：高飽和螢光色、粉彩系、與全書金／銀藍／深色系衝突的鮮豔色
- 不可改變的左右位置：制式佩劍側鎖定為右側腰際，須跨圖一致（`DESIGN-PROPOSAL`）
- 不可使用的風格：寫實攝影、3D／CGI、西方漫畫、Q版、厚黑邊、chibi

## 正典衝突與待確認事項
- **已決定**：
  - 戴夫為「身形一高一壯」中的「壯」，文森特為「高」，兩人共用同段角色文檔但分為不同角色包。
  - 服裝定為赫克托制式步兵甲，刻意樸素無英雄裝飾，以呼應「平凡步兵」的正典描寫。
  - Body Metrics Lock、固定 hex 色票、佩劍側（解剖學右側腰際）已鎖定為 `DESIGN-PROPOSAL`，使用者可覆蓋。
  - 無血緣關係，Kinship Lock＝無。
- **`PENDING-USER-INPUT`**：
  - **主武器為短劍或斧（稽核 §7 特殊衝突）**——本檔推薦短劍（理由見「道具與特殊構造」），但正式定案需使用者決定；不阻擋 00–08／10 生成，僅影響 09 道具表最終呈現。
  - 制式步兵甲的確切樣式與軍徽紋樣（文檔未給圖形）。
