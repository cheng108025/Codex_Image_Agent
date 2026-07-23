# 艾維斯 Elvis — Image Generation Prompts（v2 STANDARD package: 00, 05–10 — no 01–04 single views）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **版本 ID：待 SPEC v2 補**（服裝版本：赫克托主力戰將散漫重甲實戰版；散漫穿法為刻意辨識特徵，不得畫成整齊筆挺甲冑）

> **兩階段規則（強制）**：第一階段只生成 `00-elvis-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（STANDARD package：不含 01–04 單視圖）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-elvis-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 05 | `05-elvis-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-elvis-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-elvis-costume-detail-sheet.png` | 服裝細節表（含磨損披風拆解與無披風軀幹視圖） |
| 08 | `08-elvis-color-material-sheet.png` | 色票／材質表（色名鎖定，SPEC 無 hex 值） |
| 09 | `09-elvis-prop-construction-sheet.png` | 道具表：大型闊劍（唯一出現位置）＋大型戰斧（備選）＋甲片扣件拆解 |
| 10 | `10-elvis-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-elvis-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Elvis, a big, rugged, imposing veteran general of the Hector main force (apparent age 35-45), height ~190cm, heavy build: broad-shouldered, thick heavy muscle, powerful and physically dominating (NOT slender). Rugged weather-beaten square-jawed face with sun-darkened bronze/tan skin, deep-set sharp DEEP-BROWN eyes (locked) carrying a lazy, roguish air. Locked signature face: messy unkempt short beard/stubble and messy tousled DARK-BROWN hair (locked), plus an OLD BATTLE SCAR running diagonally across the LEFT side of the face (from the left brow across the left cheek; locked to the left side, must never be mirrored to the right). Costume: heavy full plate armor (breastplate, pauldrons, bracers, leg plates) worn CARELESSLY and SLOPPILY over a worn, frayed cloak; this deliberately messy fit is a core identity trait - some straps left unfastened, one pauldron's strap loose and slightly drooping, no gorget or an open loose collar showing the inner lining, the cloak frayed and battle-stained; a restrained Hector-faction gold crest sits on the chest; thick leather-and-plate bracers and heavy gauntlets for gripping large weapons; a broad battle belt fastened loosely; plate leg armor and heavy leather war boots. IMPORTANT: the armor must look worn carelessly and loosely fitted, never neat, tidy or pristine; keep the heavy muscular physique. He carries NO weapon and NO props of any kind - the broadsword and war-axe belong exclusively to the prop sheet (09).

Body metrics:
Height approximately 190 cm. Approximately 7.0-8.0 heads tall, broad-shouldered heavy muscular build. Locked asymmetric feature: the old battle scar sits on the LEFT side of the face only, never mirrored. No shoulder-width numeric value is specified in the character spec; do not invent one.

Kinship invariants:
None. Elvis has no blood relatives registered in the family tables.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume, with the scar consistently on the LEFT. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, weathered but readable design, polished-and-scuffed metal and leather material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, slender build, thin lean physique, skinny frame, youthful boyish face, clean-shaven, neat pristine armor, tidy polished plate, brand-new spotless armor, fully-fastened tidy straps, ornate jeweled decoration, scar mirrored to right side, scar removed, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, broadsword, war-axe, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow the locked identity exactly (big ~190cm heavy muscular build, messy beard and hair, old scar on the LEFT of the face, carelessly worn heavy plate, frayed cloak).
- The armor must read as worn carelessly and loosely, never neat or pristine; keep the imposing muscular physique.
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons belong exclusively to sheet 09.
- Full-body view MUST use the standard neutral A-pose defined above; the two portraits are unaffected by the A-pose rule.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 05 — `05-elvis-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-elvis-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Elvis containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same rugged weather-beaten face, sun-darkened bronze/tan skin, deep-set sharp deep-brown eyes, messy unkempt short beard/stubble, messy tousled dark-brown hair, big broad-shouldered heavy muscular ~190cm build. The old battle scar stays on the LEFT side of the face in the front, left-profile and three-quarter-facing views, and reads only faintly/turned-away on the right profile - never mirrored onto the right side. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 190 cm. Approximately 7.0-8.0 heads tall. No shoulder-width value specified; do not invent one.

Kinship invariants:
None.

Costume invariants:
Every view wears the identical Hector main-force attire from Image 1: heavy full plate worn carelessly and loosely over a worn frayed cloak, one pauldron strap loose and drooping, open/loose collar, restrained Hector-faction gold chest crest, leather-and-plate bracers and heavy gauntlets, broad loosely fastened belt, plate leg armor, heavy leather war boots. Same count, positions, colors, materials and sloppy fit in all four views. NO weapon anywhere; the broadsword and war-axe are reserved for sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished-and-scuffed metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, slender build, clean-shaven, neat pristine armor, tidy polished plate, brand-new spotless armor, fully-fastened tidy straps, scar mirrored per view, scar removed, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, broadsword, war-axe, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-elvis-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-elvis-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Elvis into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, rugged square-jawed weather-beaten features, sun-darkened bronze/tan skin tone, deep-set sharp eyes, messy unkempt short beard/stubble, messy tousled dark hair, old battle scar diagonally across the LEFT side of the face, thick neck, and the loose open plate collar visible at the neckline. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
None.

Expression order, left to right and top to bottom:
1. neutral - lazy, roguish default expression
2. gentle smile - a rough, easygoing hint of a smile
3. broad smile with visible teeth - a broad, brash grin
4. joyful open laughter - hearty, booming laughter
5. surprised
6. angry - a commander's roar, temper unleashed
7. sad - rare, weighty grief beneath the rough exterior
8. wink

Style:
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, removed beard, mirrored or moved scar, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, changed bangs, changed hair length, clean-shaven, removed beard, moved scar, mirrored scar, scar on right side, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, slender face, youthful boyish face, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

## 07 — `07-elvis-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含磨損披風拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-elvis-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Elvis's Hector main-force battle attire, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the worn, frayed cloak drawn SEPARATELY as a flat garment piece (showing its battle-stained, frayed hem), AND one torso view of the armor WITHOUT the cloak so the breastplate, open collar and body silhouette are fully visible.
2. Breastplate detail: the restrained Hector-faction gold crest on the chest.
3. Pauldron detail: the deliberately loose/unfastened strap on one shoulder, shown drooping.
4. Bracer and gauntlet close-ups showing plate articulation and leather strapping.
5. Battle-belt detail: the broad, loosely fastened belt with its mounts (no weapon attached).
6. Leg plate and heavy war-boot detail.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; sun-darkened skin may appear at neck/collar edges only as needed. No full standalone face portrait panel is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: battle-worn steel-grey scuffed plate, dark charcoal/deep-brown frayed cloak, deep-brown leather, restrained dark-gold fittings. Keep the intentionally unfastened straps and worn, careless fit; do not tidy up, redesign, add or remove any element. NO weapon anywhere (broadsword and war-axe belong to sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished-and-scuffed metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, neat pristine armor, tidy polished plate, brand-new spotless armor, fully-fastened tidy straps, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, broadsword, war-axe, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1, including its deliberately careless loose fit; Images 2-4 are style only.
- The cloak separation panel and the cloak-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-elvis-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-elvis-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Elvis: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color, named by color only (no hex codes, none are specified in the character spec):
- battle-worn steel-grey scuffed plate
- dark charcoal / deep-brown frayed cloak fabric
- deep-brown leather
- restrained dark-gold fittings
- sun-darkened bronze/tan skin tone
- dark-brown hair and beard
- deep-brown eyes
Each swatch pairs a flat color block with a small material patch showing how that surface reads (scuffed plate metal, worn leather grain, frayed fabric weave, dark-gold fitting finish).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~190 cm, ~7.0-8.0 heads).

Costume invariants:
Exact costume from Image 1; no redesign, and keep the worn, scuffed look rather than a pristine finish; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels, no hex codes (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for metal, fabric and leather, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, pristine polished plate, weapon, sword, broadsword, war-axe, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the character's established palette exactly, using color names only (no hex, per spec); hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-elvis-prop-construction-sheet.png`（STAGE 2 — 道具表：大型闊劍唯一出現位置，戰斧為備選）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-elvis-character-identity-anchor.png — use ONLY to match the steel-grey/dark-gold/leather material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Elvis's equipment:
1. The LARGE BROADSWORD (his locked primary weapon, sole appearance in the whole package): front view, side view and an exploded/disassembled study of blade, guard, grip and pommel - battle-worn steel-grey blade with dark-gold fittings and a deep-brown leather grip.
2. The LARGE WAR-AXE (his alternate weapon): standalone front and side view studies, matching the same battle-worn steel and dark-gold/leather material language.
3. Carelessly-strapped hardware studies: the breastplate, a pauldron with its deliberately loose/unfastened strap, a bracer/gauntlet, and the broad battle belt with its weapon-mount points and buckles.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, battle-worn steel and dark-gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, neat pristine armor, tidy polished plate, brand-new spotless armor, fully-fastened tidy straps, ornate jeweled decoration, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the broadsword and the war-axe may appear in the entire package.
- Match the established steel-grey/dark-gold/leather palette exactly; keep the worn, scuffed look, never pristine.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-elvis-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-elvis-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Elvis WITHOUT the plate armor, cloak or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no cloak, no armor, no loose clothing.

Identity invariants:
Same character as Image 1: same face, sun-darkened bronze/tan skin, deep-brown eyes, messy beard/stubble, messy tousled dark hair, old battle scar on the LEFT side of the face. The body underneath must be consistent with the armored figure of the approved sheets: broad-shouldered, thick, heavy muscular, powerfully built.

Body metrics:
Height approximately 190 cm. Approximately 7.0-8.0 heads tall. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views. No shoulder-width value specified; do not invent one.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, folds, drapery, nudity, slender build, thin lean physique, different face, different hairstyle, different proportions than approved sheets, scar mirrored or removed, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No armor or cloak on this sheet (bare torso/limbs show the true silhouette for fitting).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06 的人像面板亦同）
- [ ] 髮型、雜髮、鬚型、髮色（深棕）一致
- [ ] 身材比例：約 190cm／約 7.0–8.0 頭身、魁梧厚肌
- [ ] 服裝結構與 Costume Lock 一致（散漫不扣齊的重板甲、磨損披風、鬆脫肩甲扣帶）
- [ ] 左右位置正確：舊戰疤固定臉部左側，跨圖不得翻面或消失
- [ ] 色票未漂移（戰痕鋼灰／磨損炭褐披風／深棕皮革／暗金扣件／古銅膚色）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：不適用（無血緣角色）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；戰疤僅在左側可見視圖清楚呈現 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 磨損披風拆解面板＋無披風軀幹視圖必須存在；鬆脫扣帶等散漫穿法須保留 |
| 08 | 色票方塊與既定色名完全一致（無 hex，SPEC 未提供） |
| 09 | 大型闊劍唯一出現於此；戰斧為備選同列於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；魁梧體格與戰疤保留 |
