# 馬爾科 Marco — Image Generation Prompts（STANDARD 7-file package: 00, 05, 06, 07, 08, 09, 10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（`CHARACTER_SPEC.md` 尚未填入正式版本 ID；服裝版本鎖定為「山谷／宮廷會議重甲版」，其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `00-marco-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風，不得被當成本角色的身份參考。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

本套為標準 7 表包（不含 01–04 單視圖）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-marco-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具 |
| 05 | `05-marco-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-marco-expression-sheet.png` | 八表情臉部表，4×2 網格，Kinship invariants 填 none |
| 07 | `07-marco-costume-detail-sheet.png` | 服裝細節表（外層拆解面板＋無外層軀幹視圖，零武器） |
| 08 | `08-marco-color-material-sheet.png` | 色票／材質表（色名為主，SPEC 無 hex） |
| 09 | `09-marco-prop-construction-sheet.png` | 道具表：闊劍（唯一出現位置）＋獒犬家紋徽記＋披風扣件 |
| 10 | `10-marco-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-marco-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Marco, a burly imposing middle-aged warlord-noble (apparent age 45-52), CANON height ~192cm, massive broad-shouldered heavyweight build (bull-necked, barrel-chested, NOT slender). CANON facial identity: a square jaw with a wide angular chin, a short trimmed beard and moustache, and fierce intimidating LOCKED steel-gray eyes with a menacing provoking gaze. Deep weather-beaten bronze skin, short stiff iron-gray-and-black hair. Costume version: valley/court council heavy-armor version (CANON direction) - he wears cold iron / steel plate armor even at the council table, never removing it: a full iron cuirass with the MASTIFF (獒犬) house crest LOCKED as a front-facing snarling mastiff-hound head with bared fangs in dark-gold relief, embossed/etched on the chest, huge pauldrons bearing the same mastiff-head motif, a tall steel gorget collar over dark inner cloth, plate bracers and steel gauntlets, an iron-buckled wide waist belt, knee-length tassets/faulds plus a heavy house-crest cloak in LOCKED ink-black, full leg plate and iron boots. Materials: cold iron and steel plate metal with dark-gold mastiff-crest etching; no silk, no gemstone finery. Palette: cold iron-gray / deep steel armor dominant with dark-gold crest etching and a LOCKED ink-black house-crest cloak, aligned with the whole story's converged gold / silver-blue / dark scheme. He carries NO weapon of any kind in this sheet - the LOCKED broadsword belongs exclusively to the prop construction sheet (09).

Body metrics:
Height approximately 192 cm (CANON). Approximately 7 to 7.5 heads tall (DESIGN-PROPOSAL proportion). Shoulder width is not specified numerically in CHARACTER_SPEC.md - no value invented; described qualitatively as massive and broad. Body-type override: the shared style baseline of "elegant slender proportions" is overridden for this character with a massive heavyweight build; the negative prompt must include slender build, thin frame, slim youth. No shoulder-width or scar-side asymmetry value is given; the cloak's main clasp side must stay consistent across views once established, but no specific side is specified in CHARACTER_SPEC.md.

Kinship invariants:
none (Marco has no blood-relative Kinship Lock in CHARACTER_SPEC.md).

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose;
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, massive heavyweight build overriding the shared style's default slender proportions for this character, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, polished metal material separation, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, slender build, thin frame, slim youth, wings, horns, tail, robe-only costume, unarmored, cloth robe without armor, crown, young boyish face, clean-shaven, ornate gemstone finery, jeweled rings, clergy silk robe, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel, weapon, sword, broadsword, scabbard, sheath, shield, staff, prop object, standalone prop, handheld item, belt-worn weapon, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (192cm burly heavyweight build, square jaw, short beard, fierce eyes, heavy iron/plate armor worn at all times, mastiff house crest on the chest).
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. The broadsword belongs exclusively to sheet 09.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Preserve the massive heavyweight build; do not render a slender or thin frame.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 05 — `05-marco-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-marco-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Marco containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same square-jawed weather-beaten face, short trimmed beard and moustache, fierce intimidating steel-gray eyes, deep bronze skin, short iron-gray-and-black hair, massive broad-shouldered ~192cm heavyweight build. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 192 cm. Approximately 7 to 7.5 heads tall. Shoulder width not specified numerically in CHARACTER_SPEC.md - no value invented; massive heavyweight build maintained in every view. The cloak's main clasp side (once established by Image 1) must stay on the same side in every view.

Costume invariants:
Every view wears the identical council heavy-armor from Image 1: full iron cuirass with the MASTIFF house crest on the chest, huge pauldrons, tall steel gorget collar, plate bracers and steel gauntlets, iron-buckled wide waist belt, knee-length tassets/faulds, ink-black heavy house-crest cloak, full leg plate and iron boots. Same count, positions, colors and materials in all four views. NO weapon, NO scabbard, NO belt-worn broadsword anywhere; the broadsword is reserved exclusively for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, slender build, thin frame, slim youth, wings, horns, tail, robe-only costume, unarmored, cloth robe without armor, crown, clean-shaven, weapon, sword, broadsword, scabbard, sheath, belt-worn weapon, standalone prop, handheld item, inconsistent scale between views, different height per view, mismatched costume between views, ornate gemstone finery, jeweled rings, clergy silk robe, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-marco-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-marco-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Marco into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, square jaw with wide angular chin, short trimmed beard and moustache, fierce intimidating steel-gray eyes, deep weather-beaten bronze skin tone, short iron-gray-and-black hair, thick bull-neck proportions, the tall steel gorget collar and the mastiff-crest cuirass edge visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
none (Marco has no blood-relative Kinship Lock in CHARACTER_SPEC.md).

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
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, removed beard, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, clean-shaven, removed beard, changed hair length, slender youthful face, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, tail, crown, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, ornate gemstone finery, clergy silk robe, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

## 07 — `07-marco-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含外層拆解，零武器）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-marco-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Marco's council heavy-armor, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the ink-black house-crest cloak drawn SEPARATELY as a flat garment piece, AND one torso view of the armor WITHOUT the cloak so the cuirass and back-plate silhouette are fully visible.
2. Cuirass front detail: the front-facing snarling mastiff-hound head crest in dark-gold relief on the chest plate.
3. Pauldron, bracer and gauntlet close-ups showing plate articulation, both bearing the mastiff-head motif.
4. Waist belt and tasset/faulds detail (no weapon attached - the broadsword belongs to sheet 09).
5. Leg plate and iron boot detail.
6. Gorget-collar area: the tall steel neck guard and dark inner cloth edge.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; deep bronze skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials from Image 1: cold iron-gray / deep steel plate, dark-gold mastiff-crest etching, ink-black cloak. Same construction as Image 1; no redesign; NO weapon anywhere (broadsword belongs to sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, broadsword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The cloak separation panel and the cloak-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-marco-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-marco-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Marco: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color (named colors only - CHARACTER_SPEC.md gives no hex codes, do not invent any):
- cold iron-gray / deep steel armor (main color)
- dark-gold mastiff-crest etching
- ink-black house-crest cloak (LOCKED)
- deep weather-beaten bronze skin
- iron-gray-and-black hair, short trimmed beard and moustache
- steel-gray eyes (LOCKED)
Each swatch pairs a flat color block with a small material patch (polished vs matte steel, cloak fabric weave, crest relief sheen).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, beard, proportions (~192cm, ~7-7.5 heads, massive heavyweight build).

Costume invariants:
Exact regalia from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for steel plate and cloth cloak, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, broadsword, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the CANON/DESIGN-PROPOSAL palette by name exactly; do not invent hex codes. Hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-marco-prop-construction-sheet.png`（STAGE 2 — 道具表：闊劍唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-marco-character-identity-anchor.png - use ONLY to match cold-steel and dark-gold material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Marco's canonical weapon, house crest and cloak hardware:
1. The BROADSWORD (LOCKED, sole appearance in the whole package): full front view, side view, and hilt/guard close-up - a heavy two-handed-capable broadsword with a cold-steel blade and an iron-buckled hilt, no gemstone finery; include its scabbard and the belt-hanger hardware as separate callouts.
2. The Mastiff (獒犬) house crest: enlarged flat emblem drawing, a front-facing snarling mastiff-hound head with bared fangs, dark-gold relief.
3. Cloak clasp hardware: the cloak's main fastening clasp, front and section views (exact side not specified in CHARACTER_SPEC.md - render one consistent side and flag for user confirmation).

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or cloak attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, cold steel and dark-gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, twin swords, dual swords, wrong palette, neon colors, gemstone finery, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the broadsword may appear in the entire package.
- Match the locked palette by name (cold steel, dark-gold relief, ink-black cloak); no gemstone finery.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-marco-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-marco-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Marco WITHOUT armor, cloak or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no cloak, no armor, no loose clothing.

Identity invariants:
Same character as Image 1: same square-jawed weather-beaten face, short trimmed beard and moustache, deep bronze skin, steel-gray eyes, short iron-gray-and-black hair. The body underneath must be consistent with the armored figure of the approved sheets: massive, broad-shouldered, heavyweight, bull-necked, barrel-chested.

Body metrics:
Height approximately 192 cm. Approximately 7 to 7.5 heads tall. Shoulder width not specified numerically in CHARACTER_SPEC.md - no value invented; massive heavyweight build preserved. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, slender build, thin frame, slim youth, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- Preserve the massive heavyweight build; do not render a slender or thin frame.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（方臉短鬚、目光凶悍）
- [ ] 髮型、髮色（鐵灰摻黑短髮）與短鬚一致
- [ ] 身材比例：192cm／約 7–7.5 頭身／魁梧壯碩體格（無滑向纖細）
- [ ] 服裝結構與 Costume Lock 一致（重甲層次、家紋位置、披風）
- [ ] 左右位置正確：胸前獒犬家紋置中、披風主扣側跨圖一致，無鏡像錯亂
- [ ] 色票未漂移（冷鐵灰／深鋼＋暗金家紋＋墨黑披風，對照 CHARACTER_SPEC.md 色名）
- [ ] 無任何武器道具出現（09 除外，包含闊劍）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：本角色無血緣 Kinship（見 SPEC），本項免檢

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 披風拆解面板＋無披風軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定色名完全一致（無 hex 可對照） |
| 09 | 闊劍唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；魁梧體格保留 |
