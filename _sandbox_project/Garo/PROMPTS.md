# PROMPTS.md — Garo（第二角色）

## 用途聲明

這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。純 AI img2vid 無法保證跨鏡頭一致；正式影片須先以本包建立同一個經核准的 Blender／VRM 模型作為唯一角色正本。

## Codex 生成清單（檔頭，機器可讀）

**(a) 確切檔名清單（人形，7 張）**
1. `01-garo-front-fullbody.png`
2. `02-garo-four-view-master.png`
3. `03-garo-expression-sheet.png`
4. `04-garo-costume-detail-sheet.png`
5. `05-garo-color-material-sheet.png`
6. `06-garo-prop-construction-sheet.png`
7. `07-garo-body-reference-sheet.png`

**(b) 兩階段閘門**
- 第一階段：只生 `01-garo-front-fullbody.png` → **停止，等使用者核准**。
- 本角色非首角色，核准後**不**登記畫風錨（畫風錨固定為 Lumi 01，不因 Garo 核准而變動）。
- 第二階段：核准後才生 02–07。
- 血緣角色順序：不適用（Kinship=無，與 Lumi 無血緣）。

**(c) 生成清單與各節標題檔名一致**：上列 (a) 七個檔名與下方 `## 01`–`## 07` 各節標題一一對應，無增減。

**(d) 雙層錨點 input images 說明（角色 2..N）**
- 本角色**不引用**專案 bootstrap 文字畫風描述，也**不引用**任何舊制三張 style 參考圖。
- 01：Image 1 = 空（本角色尚無自己的 01）；Image 2 = **`../Lumi/01-lumi-front-fullbody.png`**（專案畫風錨，僅供畫風參考，非身份參考）。
- 02–07：Image 1 = **Garo 自己的 `01-garo-front-fullbody.png`**（角色身份錨，鎖臉/髮/服裝身份）；Image 2 = **`../Lumi/01-lumi-front-fullbody.png`**（專案畫風錨，鎖線條/上色/材質/光影風格）。

**(e) 既有 PNG 標記**
- `01-garo-front-fullbody.png`：PENDING-GENERATION
- `02-garo-four-view-master.png`：PENDING-GENERATION
- `03-garo-expression-sheet.png`：PENDING-GENERATION
- `04-garo-costume-detail-sheet.png`：PENDING-GENERATION
- `05-garo-color-material-sheet.png`：PENDING-GENERATION
- `06-garo-prop-construction-sheet.png`：PENDING-GENERATION
- `07-garo-body-reference-sheet.png`：PENDING-GENERATION
- 無任何既有 PNG，不涉及覆蓋風險。

---

## 01 — `01-garo-front-fullbody.png`

- **Use case**：角色身份錨點建立（stage 1）。
- **Asset type**：正面全身 A-pose 零道具參考圖。
- **Input images**：Image 1 = 空（無自己的 01）；Image 2 = `../Lumi/01-lumi-front-fullbody.png`（畫風參考，僅供線條/上色/光影風格對照，非身份參考）。
- **Primary request**：Full-body front view of Garo, an adult male humanoid warrior, standing in standard A-pose, face clearly visible and identifiable. **No weapon or sword visible in this image.**
- **Identity invariants**：深棕短髮（short, practical soldier cut）；灰藍瞳（#7A8B9A）；小麥膚色（#C79A70）；成年男性臉型，方正下顎、粗眉。
- **Kinship invariants**：無血緣角色，與 Lumi 無血緣關係，不適用。
- **Body metrics**（01 必填）：身高 182cm；7.5 頭身；肩寬＝頭寬×1.8；全對稱，無不對稱特徵。
- **Costume invariants**：深棕皮甲（主色 #5A3A22）、焦棕滾邊縫線（#3E2814）、暗鐵灰扣具（#6B6B6B）、深灰麻布內襯（#4A4A4A）。**無長劍、無劍鞘、無任何佩掛武器**（武器僅於 06 出現）。
- **Composition**：Single character, centered, full body from head to feet visible, plain neutral flat background, orthographic front camera, no perspective distortion.
- **Positive style**：畫風完全對照 Image 2（Lumi 01）：refined Japanese anime fantasy character design, clean linework, soft cel shading, flat even ambient lighting. **不得引用 bootstrap 文字畫風描述或任何舊制 style 參考圖。**
- **Negative prompt**：`action pose, contrapposto, hands on hips, crossed arms, T-pose, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, cast shadows, strong highlights, rim light`
- **Constraints**：
  ```
  Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind.
  ```
  平光 flat even ambient lighting，無投影陰影、無強高光、無 rim light。

---

## 02 — `02-garo-four-view-master.png`

- **Use case**：四視圖總表，供 3D 建模比對輪廓。
- **Asset type**：四視圖總表（正面→左→右→背）。
- **Input images**：Image 1 = `01-garo-front-fullbody.png`（身份錨）；Image 2 = `../Lumi/01-lumi-front-fullbody.png`（畫風錨）。
- **Primary request**：Four-view orthographic master sheet of Garo: front → anatomical LEFT side → anatomical RIGHT side → back, same A-pose, true orthographic alignment across all four views. **No weapon visible.**
- **Identity invariants**：同 01（深棕短髮、灰藍瞳、小麥膚色、方正下顎）；四視圖臉部/髮型一致無漂移。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**（02 必填）：身高 182cm；7.5 頭身；肩寬＝頭寬×1.8；全對稱。四視圖頭頂線與腳底線水平對齊、同高度同尺寸同比例。
- **Costume invariants**：同 01，深棕皮甲、焦棕縫線、暗鐵灰扣具、深灰麻布內襯；無武器無佩掛；四視圖服裝結構一致。
- **Composition**：4 panels in one sheet, front / anatomical-left / anatomical-right / back, true orthographic, identical scale and vertical alignment across panels, plain neutral flat background.
- **Positive style**：畫風延續 Image 2（Lumi 01）與自己 01：clean linework, soft cel shading, flat even ambient lighting。
- **Negative prompt**：`action pose, contrapposto, hands on hips, crossed arms, T-pose, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, cast shadows, strong highlights, rim light, mismatched proportions between views`
- **Constraints**：零道具；平光無陰影；02 camera on anatomical LEFT side（非「畫面左」）。

---

## 03 — `03-garo-expression-sheet.png`

- **Use case**：表情參考，供動畫/表演調用。
- **Asset type**：八表情臉部表，固定 4×2 網格。
- **Input images**：Image 1 = `01-garo-front-fullbody.png`（身份錨，鎖臉型）；Image 2 = `../Lumi/01-lumi-front-fullbody.png`（畫風錨）。
- **Primary request**：8-expression facial sheet of Garo in a fixed 4x2 grid: neutral, smile, laugh/battle-cry, sad, angry, surprised, stern, determined.
- **Identity invariants**：深棕短髮、灰藍瞳、小麥膚色、方正下顎；每格臉型/髮型與 01 一致，僅表情肌肉變化。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：不適用（僅臉部特寫）。
- **Costume invariants**：不涉及服裝細節（頭肩以上特寫，若含肩線則需皮甲領口一致）。
- **Composition**：4x2 grid, 8 equal panels, head-and-shoulders framing, consistent camera distance and angle across all panels, plain neutral flat background per panel.
- **Positive style**：畫風延續 Image 2（Lumi 01）：clean linework, soft cel shading, flat even ambient lighting。
- **Negative prompt**：`inconsistent face shape, inconsistent hairstyle, cast shadows, strong highlights, rim light, mismatched panel sizes`
- **Constraints**：平光；八格臉型與髮型須與 01 完全一致，僅表情差異。

---

## 04 — `04-garo-costume-detail-sheet.png`

- **Use case**：服裝細節表，供服裝建模拆解。
- **Asset type**：服裝細節表；披風/外層拆解面板＋一組無外層軀幹視圖。
- **Input images**：Image 1 = `01-garo-front-fullbody.png`（身份錨＋服裝基準）；Image 2 = `../Lumi/01-lumi-front-fullbody.png`（畫風錨）。
- **Primary request**：Costume detail sheet for Garo's leather armor: chest plate seams, shoulder pauldron close-up, buckle/strap details, plus one torso view without the outer armor layer (undershirt/padding only). **No sword or scabbard shown.**
- **Identity invariants**：小麥膚色、成年男性體型，僅作服裝背景參照，不需完整臉部特寫。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：肩寬＝頭寬×1.8（供甲片肩線比例參照）。
- **Costume invariants**：深棕皮甲主體（#5A3A22）、焦棕縫線（#3E2814）、暗鐵灰扣具（#6B6B6B）、深灰麻布內襯（#4A4A4A）、外層皮甲＋內層麻布襯衣兩層結構；無武器無佩掛。
- **Composition**：Multi-panel detail sheet: close-up of chest plate seams, close-up of shoulder pauldron, close-up of buckle/strap details, one full torso view without outer armor layer, plain neutral flat background.
- **Positive style**：畫風延續 Image 2（Lumi 01）：clean linework, soft cel shading, flat even ambient lighting。
- **Negative prompt**：`weapon, sword, scabbard, sheath, prop object, cast shadows, strong highlights, rim light, extra garment layers not in spec`
- **Constraints**：平光；服裝結構（層次/配件數/位置）須與 CHARACTER_SPEC 服裝欄一致，不得新增未載配件；**長劍一律不得出現於本張**。

---

## 05 — `05-garo-color-material-sheet.png`

- **Use case**：色票／材質定案表，供 3D 貼圖上色。
- **Asset type**：色票／材質表，固定 hex。
- **Input images**：Image 1 = `01-garo-front-fullbody.png`（身份基準）；Image 2 = `../Lumi/01-lumi-front-fullbody.png`（畫風與色感基準）。
- **Primary request**：Color and material reference sheet for Garo with labeled swatches: primary leather, trim, metal buckle, fabric lining, skin, hair, eyes, each with fixed hex value.
- **Identity invariants**：膚色 #C79A70、髮色 #3B2A1E、瞳色 #7A8B9A，需與 01 一致。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：不適用。
- **Costume invariants**：主色 #5A3A22（皮甲）、輔色 #3E2814（縫線）、金屬 #6B6B6B（扣具）、布料 #4A4A4A（麻布內襯）；無寶石配件（標示 N/A）。
- **Composition**：Grid of labeled color swatches paired with small material texture patches (leather grain, metal, fabric weave), each swatch annotated with hex code, plain neutral background.
- **Positive style**：畫風延續 Image 2（Lumi 01）：clean linework, soft cel shading, flat even ambient lighting，色票區塊需平光無漸層誤導。
- **Negative prompt**：`unlabeled swatches, gradient color patches, cast shadows, strong highlights, rim light`
- **Constraints**：所有 hex 值須與 CHARACTER_SPEC.md 色票欄完全一致，不得自行調色。

---

## 06 — `06-garo-prop-construction-sheet.png`

- **Use case**：道具／特殊構造表——**長劍唯一出現位置**。
- **Asset type**：道具／特殊構造表；武器（含佩掛方式）。
- **Input images**：Image 1 = `01-garo-front-fullbody.png`（身份/比例參照）；Image 2 = `../Lumi/01-lumi-front-fullbody.png`（畫風錨，武器繪製線條/材質亦須對齊此畫風）。
- **Primary request**：Prop construction sheet for Garo's long sword: full blade + hilt + crossguard construction view, plus a small inset showing how it is worn/sheathed at the character's waist/back.
- **Identity invariants**：不適用（本張以道具為主體，非角色臉部特寫）。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：不適用（道具尺寸以角色身高 182cm 為比例參照，劍長約略等於角色軀幹長度，供比例校準）。
- **Costume invariants**：劍柄纏繩＋暗鐵灰護手（#6B6B6B）、劍鞘同皮甲色系（#5A3A22）；佩掛方式＝腰側斜背劍鞘。
- **Composition**：Single weapon construction panel (blade + hilt + crossguard, straight-on view) plus one small inset panel showing the sword sheathed at Garo's waist, plain neutral flat background.
- **Positive style**：畫風延續 Image 2（Lumi 01）：clean linework, soft cel shading, flat even ambient lighting。
- **Negative prompt**：`cast shadows, strong highlights, rim light, ornate unspecified engravings not in spec`
- **Constraints**：本張為長劍**唯一**合法出現位置；01/02/04/07 一律不得出現此武器。

---

## 07 — `07-garo-body-reference-sheet.png`

- **Use case**：素體參考圖，供 SMPL-X／參數化人體擬合。
- **Asset type**：素體參考圖（僅人形）；無鎧甲無外層、貼身素體衣。
- **Input images**：Image 1 = `01-garo-front-fullbody.png`（身份錨，保留臉部身份）；Image 2 = `../Lumi/01-lumi-front-fullbody.png`（畫風錨）。
- **Primary request**：Body reference sheet of Garo in a form-fitting bodysuit (no armor, no outer garment), front view + left side view, full body silhouette clearly visible. **No sword or scabbard shown.**
- **Identity invariants**：深棕短髮、灰藍瞳、小麥膚色、方正下顎，臉部身份與 01 一致。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**（07 必填）：身高 182cm；7.5 頭身；肩寬＝頭寬×1.8；全對稱，全身輪廓完全可見。
- **Costume invariants**：貼身素體衣（無花紋，中性淺灰 #D9D9D9，僅供輪廓參照，非正式服裝設定）、無鎧甲無外層、無武器。
- **Composition**：Two panels: front view + left side view, same A-pose, true orthographic, plain neutral flat background, full body head to feet.
- **Positive style**：畫風延續 Image 2（Lumi 01）：clean linework, soft cel shading, flat even ambient lighting。
- **Negative prompt**：`action pose, contrapposto, hands on hips, crossed arms, T-pose, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, cast shadows, strong highlights, rim light`
- **Constraints**：
  ```
  Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind.
  ```
  保留臉部身份；長劍不得出現於本張。

---

## 交給 Codex 的一鍵指令

```
專案資料夾：output/_sandbox_project/
角色資料夾：output/_sandbox_project/Garo/
規格檔：CHARACTER_SPEC.md
提示詞檔：PROMPTS.md

前提：Lumi 的 01-lumi-front-fullbody.png 已核准並登記為專案畫風錨（見 ../STYLE_ANCHOR.md）。

階段一：僅生成 01-garo-front-fullbody.png（依 PROMPTS.md「## 01」欄位；Image 2 固定引用 ../Lumi/01-lumi-front-fullbody.png 作畫風參考）。
生成後停止，交還使用者核准。

【使用者核准 01 後】：
1. 依序生成 02–07（依 PROMPTS.md 對應章節，Image 1＝自己 01、Image 2＝Lumi 01），每張生成後先過文末 REJECT 驗收清單再進下一張。
2. 長劍僅可出現於 06；其餘六張若偵測到武器即 REJECT。
```

---

## 逐張 REJECT 驗收清單（每生成一張先過此清單）

任一項漂移即 REJECT，存 `rejects/` 重生成本張，不得續下一張、不得覆蓋既有 PNG。

- [ ] 臉型/臉部身份與該角色 01 一致
- [ ] 髮型/瀏海/髮色一致
- [ ] 身材比例（身高/頭身比/肩寬）與 Body Metrics Lock 一致
- [ ] 服裝結構（層次/配件數/位置）與 Costume Lock 一致
- [ ] 左右不對稱位置正確、未鏡像
- [ ] 色票未漂移（對照固定 hex）
- [ ] 該張構圖規則（視圖數/順序/A-pose/零道具/平光）全滿足
- [ ] **畫風與專案畫風錨（首角色 Lumi 01）一致**（非本角色自創畫風）
- [ ] 血緣相似：不適用（Kinship＝無，與 Lumi 無血緣）
- [ ] 長劍僅出現於 06；01/02/04/07 未見任何武器
