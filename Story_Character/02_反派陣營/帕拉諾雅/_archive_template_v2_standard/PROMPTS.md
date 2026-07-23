# 帕拉諾雅 Paranoia — Image Generation Prompts（v2, STANDARD 7-sheet package: 00 / 05 / 06 / 07 / 08 / 09 / 10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（CHARACTER_SPEC.md 尚未列出正式版本 ID 欄位；服裝版本已鎖定為「篡位僭主戰裝版」）

> **兩階段規則（強制）**：第一階段只生成 `00-paranoia-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為本包其餘各表的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **Dragon rule（不變）**：帕拉諾雅操控的巨龍為獨立設定表，本角色任何一張圖都不得畫出巨龍。
> **Build rule（不變）**：高大肌肉壯碩體格（約 195cm）為 CANON，必須在 definition／invariants 中明確主張，**絕不可**出現在任何負面提示詞中；負面提示詞只排除 `slender bishonen build` 等纖細體型。
> 本包**不含 01–04 單視圖**；每條提示詞獨立完整，勿合併。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-paranoia-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具 |
| 05 | `05-paranoia-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-paranoia-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-paranoia-costume-detail-sheet.png` | 服裝細節表（披風拆解＋無披風軀幹視圖） |
| 08 | `08-paranoia-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-paranoia-prop-construction-sheet.png` | 道具表：沾血巨劍（唯一出現位置）＋僭主王冠／甲冑構件＋電弧特效研究 |
| 10 | `10-paranoia-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-paranoia-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Paranoia, a tall, violent, MUSCULAR hulking male warlord (apparent age 35-45), height read ~195cm, a heavyweight powerfully-built frame with broad shoulders, thick arms and an oppressive intimidating presence (this muscular hulking build is a CANON identity fact, not to be slimmed). CANON facial identity: a coarse, square, malicious and half-mad face, mad blood-shot eyes with an unpredictable violent glare; LOCKED cold grey-blue iris, whites shot with red. Wild, coarse, unkempt LOCKED near-black dark hair with coarse grey streaks, with a short rough beard. CANON signature power: ELECTRIC ARCS crawl over his knuckles and along his neck - cool blue-white lightning arcing across the skin. Costume version: usurper warlord battle attire (CANON direction) - RAGGED yet OSTENTATIOUSLY REGAL usurper armor that looks looted and assembled from a king's gear: blackened rusted heavyweight plate mixed with mismatched gilded/dark-gold royal pieces, an asymmetric shoulder (one looted ornate gilded pauldron, one crude battle plate), a battered breastplate with usurped royal crests and LOCKED deep blood-red gemstones crudely set into it, heavy vambraces and gloves, a wide belt with a hook for the greatsword, a tattered once-luxurious cloak with frayed gold-thread embroidery, heavy worn war boots. Palette: blackened rusted iron-grey plate, usurped tarnished gold ornaments, blood red, cool blue-white electric arcs. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields; the bloody greatsword belongs exclusively to sheet 09. NOTE: no dragon anywhere in the frame - the dragon he controls is a separate sheet.

Body metrics:
Height read ~195cm. Approximately 7.0-7.5 heads tall, heavyweight muscular hulking build with broad shoulders and thick arms. Shoulder width and the exact side of the asymmetric shoulder plates are not fixed in CHARACTER_SPEC.md - not yet locked; whichever side the anchor sheet renders becomes the locked side for all later sheets.

Kinship invariants:
None. Paranoia has no established blood relatives in the family registry; no kinship resemblance constraints apply.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, polished metal, leather and gemstone material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, pretty-boy face, dragon, winged creature, dragon in frame, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (tall muscular hulking ~195cm build, wild long hair, mad blood-shot eyes, electric arcs over knuckles and neck, ragged yet ostentatiously regal usurper armor).
- The muscular hulking build is CANON; render it fully and never slim it down; it must never appear in the negative prompt.
- Do NOT draw the dragon; it belongs to a separate sheet.
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons and props belong exclusively to the prop construction sheet (09).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 05 — `05-paranoia-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Paranoia containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same face, mad blood-shot eyes with cold grey-blue iris, wild coarse unkempt long dark hair with coarse grey streaks and short rough beard, tall MUSCULAR hulking ~195cm heavyweight build (never slimmed), cool blue-white electric arcs over knuckles and neck. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height read ~195cm. Approximately 7.0-7.5 heads tall, heavyweight muscular hulking build, broad shoulders.

Costume invariants:
Every view wears the identical usurper warlord attire from Image 1: ragged yet ostentatiously regal looted-and-assembled armor, blackened rusted plate mixed with gilded royal pieces, asymmetric shoulders (the side established in the approved 00 stays fixed across all four views), battered breastplate with usurped crests and deep blood-red gemstones, heavy vambraces and gloves, wide belt with an empty greatsword hook, tattered gold-embroidered cloak (back panel fully shown in the back view), heavy war boots. Same count, positions, colors and materials in all four views. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields; the greatsword is reserved for sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no dragon, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, dragon, winged creature, dragon in frame, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views, including the muscular hulking build (never slimmed).
- Do NOT draw the dragon; it belongs to a separate sheet.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-paranoia-expression-sheet.png`（STAGE 2 — 00 核准後；八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-paranoia-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Paranoia into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, mad blood-shot eyes with cold grey-blue iris, coarse weathered skin tone, wild coarse unkempt long dark hair with coarse grey streaks, short rough beard, thick neck, the high battered armor collar of the usurper gear, and the cool blue-white electric arcs crawling over the neck. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
None.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. Keep the muscular character's identity but never draw a dragon.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, slender bishonen build, feminine delicate face, pretty-boy face, dragon, winged creature, horns, tail, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs
```

---

## 07 — `07-paranoia-costume-detail-sheet.png`（STAGE 2 — 00 核准後；服裝細節表，含外層拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a professional costume construction sheet for Paranoia's usurper warlord attire, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the tattered once-luxurious cloak (frayed gold-thread embroidery, torn hem) drawn SEPARATELY as a flat garment piece, AND one torso view of the armor WITHOUT the cloak so the body silhouette and rear breastplate/back straps are fully visible.
2. Asymmetric shoulder detail: the looted ornate gilded pauldron on one side versus the crude battle plate on the other (same side as established in Image 1), shown close up.
3. Battered breastplate detail: crudely-set usurped royal crests and deep blood-red gemstones.
4. Vambrace and glove close-ups showing the electric-arc marks crawling over the knuckles.
5. Wide belt and empty greatsword-hook mount detail (no greatsword shown).
6. War boot and leg-plate detail.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly, including the muscular build proportions where limbs appear. No face-focused portrait is required. No dragon anywhere.

Kinship invariants:
None.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: blackened rusted iron-grey plate, usurped tarnished-gold ornaments, deep blood-red gemstones, tattered gold-embroidered cloak, heavy leather vambraces and belt. Do not redesign, add or remove any element; no weapon anywhere (greatsword belongs to sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, dragon, winged creature, weapon, sword, greatsword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The cloak separation panel and the cloak-less torso view are mandatory.
- Do NOT draw the dragon; it belongs to a separate sheet.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-paranoia-color-material-sheet.png`（STAGE 2 — 00 核准後；色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a production color-and-material sheet for Paranoia: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color: blackened rusted iron-grey plate, usurped tarnished gold ornament metal, deep blood-red gemstones and blood stains, tattered cloak fabric with frayed gold thread, dark leather straps, near-black hair with coarse grey streaks, weathered skin tone, cold grey-blue iris, and the cool blue-white electric-arc glow. Each swatch pairs a flat color block with a small material patch showing how that surface reads (rusted metal, tarnished gilt, torn fabric, worn leather, gem sparkle, electric-arc glow).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~195cm, 7.0-7.5 heads, muscular hulking build).

Kinship invariants:
None.

Costume invariants:
Exact regalia from Image 1; no redesign; no weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only), no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for metal, fabric, leather and gemstone, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, greatsword, scabbard, holding weapon, cast shadows, rim light, extra character, dragon, winged creature, copying any style-image character

Constraints:
- Colors must match the described locked palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- Do NOT draw the dragon; it belongs to a separate sheet.
- No text or watermark.
```

---

## 09 — `09-paranoia-prop-construction-sheet.png`（STAGE 2 — 00 核准後；道具表：武器唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png - use ONLY to match the tarnished-gold/blood-red material language and craftsmanship level; do not depict the character.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a props-only construction sheet for Paranoia's equipment:
1. The GREAT SWORD (sole appearance in the whole package): full front view, side view, and hilt/guard close-up - cold-steel blade smeared with dried and fresh blood, tarnished-gold-trimmed hilt and guard, dark leather grip; include its scabbard-less belt-hanger hardware as a separate callout.
2. The usurped royal crown / looted armor pieces: the ornate gilded pauldron and the crest-and-gemstone breastplate boss shown as standalone assembled-from-a-king's-gear studies (deep blood-red gemstones crudely set).
3. Electric-arc effect studies: abstract close studies of the cool blue-white lightning arcing across knuckle and neck skin (effect studies only, not on a full figure).

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset. No dragon anywhere.

Identity invariants:
Not applicable - this sheet shows objects and effects only. All props must match Image 1's colors, materials and construction exactly.

Kinship invariants:
None.

Costume/props invariants:
The bloody greatsword is a single large two-handed blade with blood-smeared steel; the usurped crown/armor pieces match the ostentatiously-regal-yet-ragged looted-and-assembled gear on Image 1; the electric-arc effect studies use the same cool blue-white lightning as on Image 1. Do not add, remove or redesign any prop.

Composition:
Neatly arranged prop studies and exploded views plus abstract electric-arc effect studies on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the belt/mount attachment study, no grid, no labels, no numbers, no text, no dragon.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork and gemstone rendering, tarnished gold and cold steel material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, dragon, winged creature, hands, arms, extra weapons, twin swords, dual swords, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the great sword may appear in the entire package.
- Match the locked palette exactly (tarnished gold, blackened rusted plate, deep blood-red gemstones, blood-smeared steel).
- No character depiction beyond an optional headless tailor form. No dragon. No text or watermark.
```

---

## 10 — `10-paranoia-body-reference-sheet.png`（STAGE 2 — 00 核准後；素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Paranoia WITHOUT armor, cloak or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no cloak, no armor, no loose clothing; the long hair must be gathered back so it does not cover the neck or shoulder outline. The electric-arc marks over the knuckles and neck remain visible as they are part of his own body, not costume.

Identity invariants:
Same character as Image 1: same face, wild coarse hair (gathered back for this sheet) with coarse grey streaks, weathered skin tone, cold grey-blue iris. The body underneath must be consistent with the armored figure of the approved sheets: broad-shouldered, heavyset, muscular, powerful.

Kinship invariants:
None.

Body metrics:
Height read ~195cm. Approximately 7.0-7.5 heads tall, heavyweight muscular hulking build. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no dragon, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, crown, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, slender bishonen build, thin frail body, dragon, winged creature, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No crown or headgear on this sheet.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- Do NOT draw the dragon; it belongs to a separate sheet.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、髮色（近黑＋粗硬灰白挑染）一致；蓄鬚樣式一致
- [ ] 身材比例：約 195cm／7.0–7.5 頭身／肌肉壯碩體格（絕不可被削瘦化）
- [ ] 服裝結構與 Costume Lock 一致（拼湊甲片層次、扣件數量、寶石位置）
- [ ] 左右不對稱特徵位置正確：不對稱肩甲側須跨圖一致（以 00 號實際生成側為準），未鏡像翻轉
- [ ] 色票未漂移：發黑鏽蝕鐵灰、暗金／鍍金、深血紅寶石、冷調銀灰藍虹膜
- [ ] 無任何武器道具出現（09 除外）；無巨龍出現於任一圖；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（本角色無血緣親屬，見 §13，跳過）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 披風拆解面板＋無披風軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定色系（鏽鐵灰／暗金／血紅／冷灰藍）完全一致 |
| 09 | 沾血巨劍唯一出現於此；無角色、無臉、無人物剪影、無巨龍 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；電弧痕跡保留（屬身體本身非服裝） |
