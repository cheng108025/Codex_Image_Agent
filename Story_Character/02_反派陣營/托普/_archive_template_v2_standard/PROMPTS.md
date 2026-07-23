# 托普 Top — Image Generation Prompts（v2, STANDARD 7-sheet package: 00 / 05 / 06 / 07 / 08 / 09 / 10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（CHARACTER_SPEC.md 尚未列出正式版本 ID 欄位；服裝版本已鎖定為「斯托奇雅屋頂追逐戰版」）

> **兩階段規則（強制）**：第一階段只生成 `00-top-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為本包其餘各表的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **無固定武器**：托普沒有固定武器（其能力為場地操控），09 道具表改放小型工具袋、短披肩扣與軟底短靴等特殊構造細節。
> 本包**不含 01–04 單視圖**；每條提示詞獨立完整，勿合併。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-top-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具 |
| 05 | `05-top-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-top-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-top-costume-detail-sheet.png` | 服裝細節表（短披拆解＋無披軀幹視圖） |
| 08 | `08-top-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-top-prop-construction-sheet.png` | 特殊構造表：小型工具袋＋短披肩扣硬體＋軟底短靴／露指手套細節（無固定武器） |
| 10 | `10-top-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-top-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Top, a lithe agile young male enemy esper, height read ~175cm, slender-and-light honed seven-heads proportions built for high-speed rooftop movement. CANON facial identity: he ALWAYS wears a mischievous, mocking, playful grin - his signature expression, relaxed and self-assured. Messy short hair in dark charcoal, near-black, tousled boyish cut (LOCKED default). Neutral fair skin, narrow lively eyes with a teasing glint and cool silver-gray irises (LOCKED default). Posture is loose and languid, the leisurely stance of a hunter who has already reversed the roles with his prey. Costume version: Stochia rooftop-chase attire (DESIGN-PROPOSAL direction) - a dark, lightweight action outfit built for parkour across bell towers and roof tiles: a snug elastic bodysuit as the base layer, a short shoulder cape, and only minimal light armor plating; low or standing collar; light belt with a small tool pouch; snug long sleeves or fingerless gloves for climbing and gripping; slim trousers with soft-soled short boots for silent leaps. Palette: dark charcoal to deep blue-gray dominant with restrained cold-gray metal plating accents, aligned with the whole story's converged gold / silver-blue / dark scheme. He carries no fixed weapon (LOCKED default); his power is terrain manipulation, not a blade. Primary materials: tight dark stretch-cloth and leather action bodysuit plus a short lightweight woven cape - no rigid armor shell. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Body metrics:
Height read ~175cm. Approximately 7.0 heads tall, slender-and-light build. Shoulder width and any left-right asymmetric feature (e.g. the fixed side of the short cape's shoulder clasp) are not fixed in CHARACTER_SPEC.md - not yet locked; whichever side the anchor sheet renders becomes the locked side for all later sheets.

Kinship invariants:
None. Top has no established blood relatives in the family registry; no kinship resemblance constraints apply.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, polished metal, leather material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy armor, plate armor, bulky build, muscular hulking build, wings, horns, tail, crown, large weapon, greatsword, elderly face, gemstones, gold pauldrons, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (perpetual mischievous playful grin, messy short hair, lithe light build, dark lightweight action outfit).
- Materials are tight dark cloth/leather bodysuit plus a short cape only; no heavy armor, plate, gemstones or gold pauldrons.
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All accessories (tool pouch, cape clasp, boots) belong exclusively to the prop construction sheet (09).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 05 — `05-top-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-top-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Top containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same face, mischievous playful grin, narrow lively eyes with a teasing glint and cool silver-gray irises, messy short tousled near-black hair, neutral fair skin, lithe light seven-heads proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height read ~175cm. Approximately 7.0 heads tall, slender-and-light build.

Costume invariants:
Every view wears the identical rooftop-chase attire from Image 1: snug elastic bodysuit base layer, short shoulder cape (fastened on the same side as established in the approved 00 across all views), minimal light armor plating, low/standing collar, light belt with small tool pouch, snug sleeves or fingerless gloves, slim trousers, soft-soled short boots. Same count, positions, colors and materials in all four views. Character and costume only - no weapons, no handheld items, no standalone props.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal, leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy armor, plate armor, bulky build, muscular hulking build, wings, horns, tail, crown, large weapon, greatsword, gemstones, gold pauldrons, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-top-expression-sheet.png`（STAGE 2 — 00 核准後；八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-top-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Top into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, narrow lively eyes with a teasing glint and cool silver-gray irises, neutral fair skin tone, messy short tousled near-black hair, bangs and hair length, neck proportions, low/standing collar of the bodysuit and the short shoulder cape edge visible at the shoulders. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change. Even the neutral and sad panels retain a faint trace of his characteristic playful smirk at the mouth.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, heavy armor, plate armor, gemstones, gold pauldrons, wings, horns, tail, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs
```

---

## 07 — `07-top-costume-detail-sheet.png`（STAGE 2 — 00 核准後；服裝細節表，含外層拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-top-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a professional costume construction sheet for Top's rooftop-chase attire, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the short shoulder cape drawn SEPARATELY as a flat garment piece, AND one torso view of the bodysuit WITHOUT the cape so the body silhouette and back construction are fully visible.
2. Bodysuit collar and torso panel detail, showing the minimal light armor plating placement.
3. Sleeve/glove detail: snug sleeves or fingerless gloves for climbing and gripping.
4. Belt and small tool pouch detail.
5. Trouser and soft-soled short boot detail (sole tread pattern for silent leaps).

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Kinship invariants:
None.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: dark charcoal-to-blue-gray bodysuit, short lightweight woven cape, minimal cold-gray metal plating, leather belt and pouch, soft-soled boots. Do not redesign, add or remove any element; no weapon anywhere.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, layered fabric, polished metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, heavy armor, plate armor, gemstones, gold pauldrons, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The cape separation panel and the cape-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-top-color-material-sheet.png`（STAGE 2 — 00 核准後；色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-top-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a production color-and-material sheet for Top: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color: dark charcoal-to-deep-blue-gray bodysuit, cold-gray metal plating accents, dark leather (belt, gloves, boots), near-black tousled hair, neutral fair skin, cool silver-gray iris. Each swatch pairs a flat color block with a small material patch showing how that surface reads (stretch cloth, cold metal plate, leather grain).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~175cm, 7.0 heads, lithe light build).

Kinship invariants:
None.

Costume invariants:
Exact attire from Image 1; no redesign; no weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for cloth, metal plating and leather, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, scabbard, holding weapon, cast shadows, rim light, extra character, heavy armor, gemstones, gold pauldrons, copying any style-image character

Constraints:
- Colors must match the described locked palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-top-prop-construction-sheet.png`（STAGE 2 — 00 核准後；特殊構造表：無固定武器，改放飾品／構造）

```text
Use case: stylized-concept
Asset type: accessory and construction sheet (props only, no fixed weapon)

Input images:
- Image 1: the approved 00-top-character-identity-anchor.png - use ONLY to match the dark charcoal/cold-gray material language and craftsmanship level; do not depict the character.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Top has no fixed weapon; this sheet presents his non-weapon accessories and functional construction details only:
1. The small belt tool pouch: front view, side view and an opened-flap detail showing its compact interior compartments.
2. The short shoulder cape clasp hardware: front and section views of the fastening mechanism at the shoulder.
3. Fingerless glove construction: palm-and-knuckle detail for climbing grip.
4. Soft-soled short boot construction: sole tread pattern and ankle-cuff detail designed for silent rooftop leaps.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All items must match Image 1's colors, materials and construction exactly.

Kinship invariants:
None.

Costume/props invariants:
The tool pouch, cape clasp, gloves and boots match the dark charcoal-to-blue-gray palette and cold-gray metal plating accents on Image 1. Do not add, remove or redesign any item; no weapon of any kind appears anywhere on this sheet.

Composition:
Neatly arranged construction studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the cape-clasp attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise leather and metal-plating material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, weapon, sword, dagger, staff, greatsword, hands, arms, wrong palette, neon colors, cast shadows, rim light, gemstones, gold pauldrons

Constraints:
- No weapon of any kind may appear anywhere on this sheet - Top has no fixed weapon.
- Match the locked palette exactly (dark charcoal-to-blue-gray, cold-gray metal, dark leather).
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-top-body-reference-sheet.png`（STAGE 2 — 00 核准後；素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-top-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Top WITHOUT the cape, plating or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no cape, no plating, no loose clothing; the short hair already does not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, messy short tousled near-black hair, neutral fair skin, cool silver-gray iris. The body underneath must be consistent with the clothed figure of the approved sheets: lithe, light, honed for agility.

Kinship invariants:
None.

Body metrics:
Height read ~175cm. Approximately 7.0 heads tall, slender-and-light build. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, crown, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, heavy armor, muscular hulking build, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、髮色（近黑蓬亂短髮）一致；招牌玩世不恭笑容一致
- [ ] 身材比例：約 175cm／7.0 頭身／輕盈精瘦體型
- [ ] 服裝結構與 Costume Lock 一致（緊身衣＋短披＋少甲片層次、扣件數量）
- [ ] 左右不對稱特徵位置正確：短披主扣側須跨圖一致（以 00 號實際生成側為準），未鏡像翻轉
- [ ] 色票未漂移：暗炭黑至深藍灰、冷灰輕甲片、冷銀灰瞳色
- [ ] 無任何固定武器出現於任一圖（09 亦僅飾品／構造，非武器）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（本角色無血緣親屬，見 §13，跳過）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變（嘴角仍隱含玩味） |
| 07 | 短披拆解面板＋無披軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定色系（暗炭黑／深藍灰／冷灰金屬／冷銀瞳）完全一致 |
| 09 | 只有工具袋、披肩扣、手套、短靴等構造；無任何武器、無角色、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；短髮不遮頸肩線 |
