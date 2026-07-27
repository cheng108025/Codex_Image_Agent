# PROMPTS.md — Lumi（固定三張風格參考測試）

## 用途聲明

這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。純 AI img2vid 無法保證跨鏡頭一致；正式影片須先以本包建立同一個經核准的 Blender／VRM 模型作為唯一角色正本。

## Codex 生成清單（檔頭，機器可讀）

**(a) 確切檔名清單（人形，7 張）**
1. `01-lumi-front-fullbody.png`
2. `02-lumi-four-view-master.png`
3. `03-lumi-expression-sheet.png`
4. `04-lumi-costume-detail-sheet.png`
5. `05-lumi-color-material-sheet.png`
6. `06-lumi-prop-construction-sheet.png`
7. `07-lumi-body-reference-sheet.png`

**(b) 兩階段閘門**
- 第一階段：只生 `01-lumi-front-fullbody.png` → **停止，等使用者核准**。
- **Lumi 的 01 核准後**，該圖只作 Lumi 自己 02–07 的身份參考，並解鎖第二階段。
- 第二階段：核准後才生 02–07。
- 血緣角色順序：不適用（Kinship=無）。

**(c) 生成清單與各節標題檔名一致**：上列 (a) 七個檔名與下方 `## 01`–`## 07` 各節標題一一對應，無增減。

**(d) 固定 input images 說明**
- 01：Input images = `../../Story_Character/style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`、`../../Story_Character/style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`、`../../Story_Character/style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`（只控制風格）。
- 02–07：另加 Lumi 自己核准的 `01-lumi-front-fullbody.png` 作身份參考，並持續帶入固定三張風格圖。

**(e) 既有 PNG 標記**
- `01-lumi-front-fullbody.png`：PENDING-GENERATION
- `02-lumi-four-view-master.png`：PENDING-GENERATION
- `03-lumi-expression-sheet.png`：PENDING-GENERATION
- `04-lumi-costume-detail-sheet.png`：PENDING-GENERATION
- `05-lumi-color-material-sheet.png`：PENDING-GENERATION
- `06-lumi-prop-construction-sheet.png`：PENDING-GENERATION
- `07-lumi-body-reference-sheet.png`：PENDING-GENERATION
- 無任何既有 PNG，不涉及覆蓋風險。

---

## 01 — `01-lumi-front-fullbody.png`

- **Use case**：角色身份錨點建立（stage 1）。
- **Asset type**：正面全身 A-pose 零道具參考圖。
- **Input images**：無圖像輸入。文字畫風依據＝「refined Japanese anime fantasy character design, clean linework, soft cel shading」。
- **Primary request**：Full-body front view of Lumi, a young female humanoid character, standing in standard A-pose, face clearly visible and identifiable.
- **Identity invariants**：銀白短髮（short, chin-to-shoulder length, straight with soft inward curl at ends）；天藍瞳（#6FB7E0，圓潤大眼，anime 風格）；白皙膚色（#F5DCC9）；少女臉型，圓潤下顎、柔和眉弓。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**（01 必填）：身高 158cm；7 頭身；肩寬＝頭寬×1.4；全對稱，無不對稱特徵。
- **Costume invariants**：白色連身裙（主色 #F7F6F2）、裙擺滾邊銀灰（#C9CDD3）、無外層披風、無腰帶配件、赤足或簡單淺色便鞋（無金屬扣件）。
- **Composition**：Single character, centered, full body from head to feet visible, plain neutral flat background, orthographic front camera, no perspective distortion.
- **Positive style**：refined Japanese anime fantasy character design, clean linework, soft cel shading, flat even ambient lighting.
- **Negative prompt**：`action pose, contrapposto, hands on hips, crossed arms, T-pose, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, cast shadows, strong highlights, rim light`
- **Constraints**：
  ```
  Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind.
  ```
  平光 flat even ambient lighting，無投影陰影、無強高光、無 rim light。

---

## 02 — `02-lumi-four-view-master.png`

- **Use case**：四視圖總表，供 3D 建模比對輪廓。
- **Asset type**：四視圖總表（正面→左→右→背）。
- **Input images**：Image 1 = `01-lumi-front-fullbody.png`（身份錨，鎖臉/髮/服裝與畫風延續）。
- **Primary request**：Four-view orthographic master sheet of Lumi: front → anatomical LEFT side → anatomical RIGHT side → back, same A-pose, true orthographic alignment across all four views.
- **Identity invariants**：同 01（銀白短髮、天藍瞳、白皙膚色、少女臉型）；四視圖臉部/髮型一致無漂移。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**（02 必填）：身高 158cm；7 頭身；肩寬＝頭寬×1.4；全對稱。四視圖頭頂線與腳底線水平對齊、同高度同尺寸同比例。
- **Costume invariants**：同 01，白色連身裙、銀灰滾邊、無外層、無配件；四視圖服裝結構一致。
- **Composition**：4 panels in one sheet, front / anatomical-left / anatomical-right / back, true orthographic, identical scale and vertical alignment across panels, plain neutral flat background.
- **Positive style**：同 01 畫風延續：refined Japanese anime fantasy character design, clean linework, soft cel shading, flat even ambient lighting.
- **Negative prompt**：`action pose, contrapposto, hands on hips, crossed arms, T-pose, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, cast shadows, strong highlights, rim light, mismatched proportions between views`
- **Constraints**：
  ```
  Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind.
  ```
  零道具；平光無陰影；02 camera on anatomical LEFT side（非「畫面左」）。

---

## 03 — `03-lumi-expression-sheet.png`

- **Use case**：表情參考，供動畫/表演調用。
- **Asset type**：八表情臉部表，固定 4×2 網格。
- **Input images**：Image 1 = `01-lumi-front-fullbody.png`（身份錨，鎖臉型）。
- **Primary request**：8-expression facial sheet of Lumi in a fixed 4x2 grid: neutral, smile, laugh, sad, angry, surprised, shy/blush, determined.
- **Identity invariants**：銀白短髮、天藍瞳、白皙膚色、少女臉型；每格臉型/髮型與 01 一致，僅表情肌肉變化。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：不適用（僅臉部特寫）。
- **Costume invariants**：不涉及服裝（頭肩以上特寫即可，若含肩線則需與 01 一致的裙領口）。
- **Composition**：4x2 grid, 8 equal panels, head-and-shoulders framing, consistent camera distance and angle across all panels, plain neutral flat background per panel.
- **Positive style**：同 01 畫風延續：clean linework, soft cel shading, flat even ambient lighting.
- **Negative prompt**：`inconsistent face shape, inconsistent hairstyle, cast shadows, strong highlights, rim light, mismatched panel sizes`
- **Constraints**：平光；八格臉型與髮型須與 01 完全一致，僅表情差異。

---

## 04 — `04-lumi-costume-detail-sheet.png`

- **Use case**：服裝細節表，供服裝建模拆解。
- **Asset type**：服裝細節表；披風/外層拆解面板＋一組無外層軀幹視圖。
- **Input images**：Image 1 = `01-lumi-front-fullbody.png`（身份錨＋服裝基準）。
- **Primary request**：Costume detail sheet for Lumi's white dress: seam lines, hem trim, fabric layering close-ups, plus one torso view without any outer layer (Lumi has no outer layer, so this panel shows the dress bodice construction only).
- **Identity invariants**：白皙膚色、少女體型，僅作服裝背景參照，不需完整臉部特寫。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：肩寬＝頭寬×1.4（供裙裝肩線比例參照）。
- **Costume invariants**：白色連身裙主體（#F7F6F2）、裙擺滾邊銀灰（#C9CDD3）、單層無外披風、無腰帶金屬扣件、縫線與布紋細節須清楚標示。
- **Composition**：Multi-panel detail sheet: close-up of hem trim, close-up of bodice seams, close-up of sleeve/shoulder line, one full torso view without outer layer, plain neutral flat background.
- **Positive style**：同 01 畫風延續：clean linework, soft cel shading, flat even ambient lighting.
- **Negative prompt**：`weapon, sword, scabbard, sheath, prop object, cast shadows, strong highlights, rim light, extra garment layers not in spec`
- **Constraints**：平光；服裝結構（層次/配件數/位置）須與 CHARACTER_SPEC 服裝欄一致，不得新增未載配件。

---

## 05 — `05-lumi-color-material-sheet.png`

- **Use case**：色票／材質定案表，供 3D 貼圖上色。
- **Asset type**：色票／材質表，固定 hex。
- **Input images**：Image 1 = `01-lumi-front-fullbody.png`（畫風與色感基準）。
- **Primary request**：Color and material reference sheet for Lumi with labeled swatches: primary, secondary, fabric, skin, hair, eyes, each with fixed hex value.
- **Identity invariants**：膚色 #F5DCC9、髮色 #EDEDF2、瞳色 #6FB7E0，需與 01 一致。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：不適用。
- **Costume invariants**：主色 #F7F6F2（連身裙）、輔色 #C9CDD3（滾邊）、布料陰影色 #E4E2DC；無金屬、無寶石、無皮革配件（標示 N/A）。
- **Composition**：Grid of labeled color swatches paired with small material texture patches, each swatch annotated with hex code, plain neutral background.
- **Positive style**：同 01 畫風延續：clean linework, soft cel shading, flat even ambient lighting，色票區塊需平光無漸層誤導。
- **Negative prompt**：`unlabeled swatches, gradient color patches, cast shadows, strong highlights, rim light`
- **Constraints**：所有 hex 值須與 CHARACTER_SPEC.md 色票欄完全一致，不得自行調色。

---

## 06 — `06-lumi-prop-construction-sheet.png`

- **Use case**：道具／特殊構造表。
- **Asset type**：道具／特殊構造表（Lumi 無任何武器道具，本張標示為空）。
- **Input images**：Image 1 = `01-lumi-front-fullbody.png`（身份錨，僅供比例參照）。
- **Primary request**：Prop construction sheet for Lumi — **no weapons or props exist for this character**; this sheet is intentionally empty/placeholder, documenting "no props" as a design fact.
- **Identity invariants**：不適用（本張非角色本體特寫）。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**：不適用。
- **Costume invariants**：不適用（無道具/佩掛物）。
- **Composition**：Plain sheet with a single annotation panel stating "No weapons or props — Lumi carries no items", no illustrated objects.
- **Positive style**：不適用（無需生成插畫內容，僅文字標註版面）。
- **Negative prompt**：`any weapon, any prop, any accessory object not specified in CHARACTER_SPEC`
- **Constraints**：本張確認 Lumi 全流程（01/02/07）零道具規則無例外；若日後新增道具需求，須先更新 CHARACTER_SPEC.md 再重製本張。

---

## 07 — `07-lumi-body-reference-sheet.png`

- **Use case**：素體參考圖，供 SMPL-X／參數化人體擬合。
- **Asset type**：素體參考圖（僅人形）；無鎧甲無外層、貼身素體衣。
- **Input images**：Image 1 = `01-lumi-front-fullbody.png`（身份錨，保留臉部身份）。
- **Primary request**：Body reference sheet of Lumi in a form-fitting bodysuit (no dress, no outer garment), front view + left side view, full body silhouette clearly visible.
- **Identity invariants**：銀白短髮（收攏，不遮擋身體輪廓）、天藍瞳、白皙膚色、少女臉型，臉部身份與 01 一致。
- **Kinship invariants**：無血緣角色，不適用。
- **Body metrics**（07 必填）：身高 158cm；7 頭身；肩寬＝頭寬×1.4；全對稱，全身輪廓完全可見。
- **Costume invariants**：貼身素體衣（無花紋，中性淺灰 #D9D9D9，僅供輪廓參照，非正式服裝設定）、無鎧甲無外層。
- **Composition**：Two panels: front view + left side view, same A-pose, true orthographic, plain neutral flat background, full body head to feet.
- **Positive style**：同 01 畫風延續：clean linework, soft cel shading, flat even ambient lighting。
- **Negative prompt**：`action pose, contrapposto, hands on hips, crossed arms, T-pose, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, cast shadows, strong highlights, rim light, hair obscuring body silhouette`
- **Constraints**：
  ```
  Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind.
  ```
  長髮須收攏（Lumi 為短髮，天然無遮擋問題）；保留臉部身份。

---

## 交給 Codex 的一鍵指令

```
專案資料夾：<repo-root>/_sandbox_project/
角色資料夾：<repo-root>/_sandbox_project/Lumi/
（<repo-root>＝生圖 repo 根目錄。直接 clone Codex_Image_Agent 時就是 clone 根目錄；
　從外層 claude-Godzilla-z 執行時是 output/。）
規格檔：CHARACTER_SPEC.md
提示詞檔：PROMPTS.md

階段一：僅生成 01-lumi-front-fullbody.png（依 PROMPTS.md「## 01」欄位）。
生成後停止，交還使用者核准。

【使用者核准 01 後】：
1. 將 Lumi 的核准 01 作為 Lumi 自己 02–07 的身份參考。
2. 依序生成 02–07（依 PROMPTS.md 對應章節），每張持續帶入固定三張風格圖並在生成後先過文末 REJECT 驗收清單。
3. 全數通過後，Lumi 參考包視為完成。
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
- [ ] **畫風與固定三張風格參考一致**
- [ ] 血緣相似：不適用（Kinship＝無）
