# 加爾雷斯 Galreth — Image Generation Prompts (STANDARD package: 00/05/06/07/08/09/10, no 01–04)

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（CHARACTER_SPEC.md 尚未填寫「角色版本 ID」欄位；下次改版請補上 `GALRETH-V<n>-<描述>` 格式）

> **兩階段規則（強制）**：第一階段只生成 `00-galreth-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（本批次為 STANDARD 七表包，不含 01–04 單視圖）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-galreth-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 05 | `05-galreth-four-view-master.png` | 四視圖總表（正面→左→右→背），同一 A-pose，零道具 |
| 06 | `06-galreth-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-galreth-costume-detail-sheet.png` | 服裝細節表（含綬帶拆解與無綬帶軀幹視圖） |
| 08 | `08-galreth-color-material-sheet.png` | 色票／材質表（色名鎖定，SPEC 無 hex） |
| 09 | `09-galreth-prop-construction-sheet.png` | 道具表：制式佩劍（唯一出現位置）＋軍徽＋綬帶扣件拆解 |
| 10 | `10-galreth-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-galreth-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Galreth, a senior Hector army officer (apparent age mid-40s, battle-hardened), height LOCKED at approximately 182 cm, solid, steady, well-trained officer build. CANON facial identity: a solemn, composed, steady mature officer face - grave and calm, dignified but not scene-stealing, clearly middle-aged and NOT youthful. Locked identity defaults (overridable): gray-flecked graying military short hair with slightly grizzled temples, a short trimmed grizzled beard, deep-gray eyes with a calm sharp gaze, tanned weathered skin. Costume (locked): standard-issue Hector OFFICER armor - finer than common infantry armor, with rank identification - cloth/leather inner layer under regulation matte-steel officer plate, a standard high steel gorget, officer steel shoulder guards with dark-gold rank trim, an officer matte-steel breastplate faintly bearing an embossed Hector army insignia (no gemstones), deep-brown leather bracers, a regulation leather belt (empty scabbard loop only - no visible sword), regulation steel greaves, deep-brown officer long boots, and a CANON command sash worn diagonally across one shoulder to the opposite waist, locked to dark-gold woven cloth. Materials: matte steel plate with restrained dark-gold rank trim, deep-brown leather, dark-gold woven sash cloth - no gemstones, no jewels. He carries NO weapon and NO props of any kind.

Body metrics:
Height approximately 182 cm. Approximately 7.5 heads tall (solid steady officer proportions). Shoulder width not separately specified in canon - render as a solid, steady, well-trained build consistent with the stated height and 7.5-head ratio. Asymmetric feature: the command sash is worn diagonally from one shoulder to the opposite hip; whichever side is chosen at this anchor must remain identical in every later view (no mirroring).

Kinship invariants:
none.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only — no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise material separation for matte steel, leather and woven cloth, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, ragged appearance, tattered clothing, common low-rank soldier look, no rank insignia, peasant clothing, youthful teenage face, gemstones, ornate gemstones, shining jewels, gold pauldrons, gilded pauldrons, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (solemn steady mature officer face, ~182 cm solid build, standard officer armor with a command sash).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons and props belong exclusively to the prop construction sheet (09).
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 05 — `05-galreth-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-galreth-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Galreth containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same solemn, composed, mature officer face, gray-flecked graying short hair, grizzled short beard, deep-gray eyes, tanned weathered skin. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 182 cm. Approximately 7.5 heads tall. Solid, steady, well-trained officer build, identical in all four views. The command sash's diagonal direction (one shoulder to opposite hip) must stay identical across all four views - no mirroring between front, left, right and back.

Kinship invariants:
none.

Costume invariants:
Every view wears the identical officer regalia from Image 1: standard-issue Hector officer matte-steel plate, high steel gorget, officer shoulder guards with dark-gold rank trim, matte-steel breastplate with embossed Hector insignia (no gems, visible in the front view), deep-brown leather bracers, regulation leather belt with an empty scabbard loop only (no sword), steel greaves, deep-brown officer long boots, and the command sash (dark-gold woven cloth) draped diagonally - its back panel and shoulder crossing must be clearly shown in the back view. Same accessory count, positions, colors and materials in all four views. NO weapon anywhere; the officer's side sword is reserved for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise material separation for matte steel, leather and woven cloth, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, gemstones, gold pauldrons, youthful teenage face, inconsistent scale between views, different height per view, mismatched costume between views, mirrored sash direction, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-galreth-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, beard, costume-collar and color reference (the approved 00-galreth-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Galreth into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical solemn, composed, steady mature officer facial identity and face proportions, gray-flecked graying short hair, grizzled short beard, deep-gray sharp-eyed gaze, tanned weathered skin, neck proportions, and the visible steel gorget / command-sash collar edge. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the grave, steady officer bearing remains recognizable even in the more animated expressions.

Kinship invariants:
none.

Expression order, left to right and top to bottom:
1. neutral
2. gentle smile
3. broad smile with visible teeth
4. joyful open laughter
5. surprised
6. angry
7. sad
8. wink

Style:
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes, beard and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, changed beard, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, changed beard, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed facial proportions, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, youthful teenage face, gemstones, gold pauldrons, wings, horns, tail, crown, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

## 07 — `07-galreth-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含綬帶拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-accessory separation

Input images:
- Image 1: the approved 00-galreth-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Galreth's officer regalia, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the command sash (dark-gold woven cloth, diagonal from one shoulder to the opposite hip) drawn SEPARATELY as a flat garment piece, AND one torso view of the armor WITHOUT the sash so the breastplate insignia and body silhouette are fully visible.
2. Breastplate detail: the embossed Hector army insignia (no gemstones) on the matte-steel cuirass.
3. Shoulder guard and gorget close-up showing plate articulation and the dark-gold rank trim.
4. Bracer and glove/gauntlet detail with leather strapping.
5. Waist belt detail showing the empty scabbard loop (no sword attached here).
6. Greave and long-boot detail.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials: matte steel plate, dark-gold rank trim, deep-brown leather, dark-gold woven sash cloth - no gemstones. Same construction as Image 1; no redesign; NO weapon anywhere (the officer's side sword belongs to sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise material separation for matte steel, leather and woven cloth, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, gemstones, gold pauldrons, weapon, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The sash separation panel and the sash-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-galreth-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-galreth-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Galreth: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color (color names only - no hex codes are canon for this character):
- matte steel gray (armor plate)
- dark gold (rank trim, command sash cloth)
- deep brown (leather bracers, belt, boots)
- deep gray (graying hair and beard)
- deep gray (eyes)
- tanned weathered skin tone
Each swatch pairs a flat color block with a small material patch showing how that surface reads (matte metal sheen, woven cloth weave, leather grain).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, beard, proportions (approximately 182 cm, 7.5 heads).

Costume invariants:
Exact regalia from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for matte metal, woven cloth and leather, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, gemstones, gold pauldrons, weapon, sword, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked palette exactly (color names above); hue drift = reject. No hex codes are invented; use color-name matching only.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-galreth-prop-construction-sheet.png`（STAGE 2 — 道具表：佩劍唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-galreth-character-identity-anchor.png — use ONLY to match the matte-steel/dark-gold/deep-brown material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Galreth's equipment items:
1. The OFFICER'S SIDE SWORD (sole appearance in the whole package): full front view, side view, and hilt/guard close-up - matte-steel blade, dark-gold-trimmed hilt and guard, deep-brown leather grip; include its scabbard and belt-hanger hardware as separate callouts.
2. The Hector army insignia: enlarged flat emblem drawing (embossed, no gemstones).
3. Command-sash hardware: the sash's shoulder attachment point and hip-end clasp/buckle, front and section views.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, matte steel and dark-gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, twin swords, dual swords, gemstones, gold pauldrons, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the officer's side sword may appear in the entire package.
- Match the locked palette exactly (matte steel, dark gold, deep brown leather; no gemstones).
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-galreth-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-galreth-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Galreth WITHOUT armor, sash or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no sash, no armor, no loose clothing.

Identity invariants:
Same character as Image 1: same face, gray-flecked graying short hair and grizzled short beard, tanned weathered skin, deep-gray eyes. The body underneath must be consistent with the armored figure of the approved sheets: solid, steady, well-trained officer build.

Body metrics:
Height approximately 182 cm. Approximately 7.5 heads tall. Solid, steady officer build. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, sash, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No sash or armor on this sheet (bare head shows hair silhouette for fitting).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、鬢角斑白程度、鬍鬚樣式一致
- [ ] 身材比例：約 182cm／約 7.5 頭身
- [ ] 服裝結構與 Costume Lock 一致（層次、扣件數量、軍徽位置、綬帶方向）
- [ ] 左右位置正確：綬帶斜掛方向跨圖一致，未鏡像翻轉
- [ ] 色票未漂移（對照 08：矽鋼灰／暗金／深棕／深灰髮／深灰瞳／膚色）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：不適用（本角色無血緣親屬）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；綬帶方向未鏡像 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 綬帶拆解面板＋無綬帶軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定色名完全一致（無 hex，僅色名比對） |
| 09 | 佩劍唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；無綬帶、無軍徽 |
