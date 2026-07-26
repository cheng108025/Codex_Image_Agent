# 艾維斯 Elvis — Image Generation Prompts（新版七張制 01–07）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`ELVIS-V1-MAIN-FORCE-BATTLEWORN`**（赫克托主力戰將散漫重甲實戰版；散漫穿法為刻意辨識特徵，不得畫成整齊筆挺甲冑）

> **無既有 PNG 說明**：本角色資料夾目前無任何已核准圖片。01 號圖為本角色的第一張生成圖，`Character definition` 全數依 `CHARACTER_SPEC.md` 之 `CANON` 與 `DESIGN-PROPOSAL` 鎖定值撰寫；hex 色票為依色名描述推定之近似值，使用者可於核准 01 時一併覆蓋。

> **06 道具結構表待決事項（不阻擋 01–05、07）**：簽名武器仍為大型闊劍／大型戰斧二選一，`CHARACTER_SPEC.md` 已給出推薦（大型闊劍）與理由，但正式定案仍為 `PENDING-USER-INPUT`。**此項僅限縮於 06 道具結構表段落，01–05、07 之生成與驗收不受影響、不需等待此項決定。**

> **兩階段規則（強制）**：第一階段只生成 `01-elvis-front-fullbody.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 01 成為 02–07 的 Image 1 身份／服裝唯一正本。畫風輸入一律依 `../../STYLE_ANCHOR.md` 決定。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **既有 PNG 狀態**：本角色 01–07（非人形 01–06）全部為 `PENDING-GENERATION`。

畫風參考唯一正本：
- `../../STYLE_ANCHOR.md`
- 若本角色是 `PENDING-FIRST-REQUEST` 登記的首角色，01 才使用 STYLE_ANCHOR 的三張 bootstrap 圖。
- 若畫風錨已為 `ACTIVE` 且本角色不是首角色，01 只引用已核准的首角色 01 作為畫風參考。
- 02–07（非人形至 06）使用自己的 01 作為身份參考；非首角色另加首角色 01 作為畫風參考。

生成順序與檔名（新版七張制 01–07）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 01 | `01-elvis-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-elvis-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-elvis-expression-sheet.png` | 表情表 |
| 04 | `04-elvis-costume-detail-sheet.png` | 服裝細節 |
| 05 | `05-elvis-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-elvis-prop-construction-sheet.png` | 道具結構 |
| 07 | `07-elvis-body-reference-sheet.png` | 身體參考（SMPL-X） |

---

## 01 — `01-elvis-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Character definition:
Elvis, a big, rugged, imposing veteran general of the Hector main force (apparent age 35-45), height ~190cm, heavy build: broad-shouldered, thick heavy muscle, powerful and physically dominating (NOT slender). Rugged weather-beaten square-jawed face with sun-darkened bronze/tan skin (#C08856), deep-set sharp DEEP-BROWN eyes (#3E2A1E) carrying a lazy, roguish air. Locked signature face: messy unkempt short beard/stubble and messy tousled DARK-BROWN hair (#4A3A2E), plus an OLD BATTLE SCAR running diagonally across the LEFT side of the face (from the left brow across the left cheek; locked to the left side, must never be mirrored to the right). Costume: heavy full plate armor (breastplate, pauldrons, bracers, leg plates), battle-worn steel-grey (#6B6E72), worn CARELESSLY and SLOPPILY over a worn, frayed dark charcoal/deep-brown cloak (#3B332C); this deliberately messy fit is a core identity trait - some straps left unfastened, the RIGHT pauldron's strap loose and slightly drooping, no gorget or an open loose collar showing the inner lining, the cloak frayed and battle-stained; a restrained dark-gold (#8A7040) Hector-faction crest sits on the chest; thick deep-brown leather (#5C4530) and plate bracers and heavy gauntlets for gripping large weapons; a broad battle belt fastened loosely; plate leg armor and heavy leather war boots. IMPORTANT: the armor must look worn carelessly and loosely fitted, never neat, tidy or pristine; keep the heavy muscular physique. He carries NO weapon and NO props of any kind - the signature weapon belongs exclusively to the prop sheet (06).

Primary request:
Render Elvis as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same rugged weather-beaten face, sun-darkened bronze/tan skin (#C08856), deep-set sharp deep-brown eyes (#3E2A1E), messy unkempt short beard/stubble, messy tousled dark-brown hair (#4A3A2E). The old battle scar is visible on the LEFT side of the face.

Kinship invariants:
None. Elvis has no blood relatives registered in the family tables.

Body metrics:
Height approximately 190 cm. Approximately 7.5 heads tall. Shoulder width approximately 2.6 head-widths. Asymmetric features: scar on LEFT face, loose pauldron strap on RIGHT shoulder.

Costume invariants:
Identical Hector main-force attire per the Character definition above: heavy full plate (#6B6E72) worn carelessly and loosely over a worn frayed cloak (#3B332C), RIGHT pauldron strap loose and drooping, open/loose collar, restrained dark-gold (#8A7040) Hector-faction chest crest, deep-brown leather (#5C4530) and plate bracers and heavy gauntlets, broad loosely fastened belt, plate leg armor, heavy leather war boots. NO weapon anywhere.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished-and-scuffed metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, slender build, clean-shaven, neat pristine armor, tidy polished plate, brand-new spotless armor, fully-fastened tidy straps, scar mirrored to right, scar removed, loose strap on left shoulder, reference character face, copying any style-image character, weapon, sword, broadsword, war-axe, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact identity per the Character definition above; the input images are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-elvis-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 01-elvis-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of Elvis containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same rugged weather-beaten face, sun-darkened bronze/tan skin (#C08856), deep-set sharp deep-brown eyes (#3E2A1E), messy unkempt short beard/stubble, messy tousled dark-brown hair (#4A3A2E), big broad-shouldered heavy muscular ~190cm build. The old battle scar stays on the LEFT side of the face in the front, left-profile and back views, and reads only faintly/turned-away on the right profile - never mirrored onto the right side. The loose pauldron strap stays on the RIGHT shoulder in every view - never mirrored to the left. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 190 cm. Approximately 7.5 heads tall. Shoulder width approximately 2.6 head-widths.

Kinship invariants:
None.

Costume invariants:
Every view wears the identical Hector main-force attire from Image 1: heavy full plate (#6B6E72) worn carelessly and loosely over a worn frayed cloak (#3B332C), RIGHT pauldron strap loose and drooping, open/loose collar, restrained dark-gold Hector-faction chest crest (#8A7040), leather-and-plate bracers and heavy gauntlets (#5C4530), broad loosely fastened belt, plate leg armor, heavy leather war boots. Same count, positions, colors, materials and sloppy fit in all four views. NO weapon anywhere; the signature weapon is reserved for sheet 06.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished-and-scuffed metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, slender build, clean-shaven, neat pristine armor, tidy polished plate, brand-new spotless armor, fully-fastened tidy straps, scar mirrored per view, scar removed, loose strap mirrored to left, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, broadsword, war-axe, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-elvis-expression-sheet.png`（STAGE 2 — 八表情臉部表）


```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 01-elvis-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose Elvis into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, rugged square-jawed weather-beaten features, sun-darkened bronze/tan skin tone (#C08856), deep-set sharp eyes (#3E2A1E), messy unkempt short beard/stubble, messy tousled dark hair (#4A3A2E), old battle scar diagonally across the LEFT side of the face, thick neck, and the loose open plate collar visible at the neckline. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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

---

## 04 — `04-elvis-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含磨損披風拆解）


```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 01-elvis-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional costume construction sheet for Elvis's Hector main-force battle attire, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the worn, frayed cloak drawn SEPARATELY as a flat garment piece (showing its battle-stained, frayed hem), AND one torso view of the armor WITHOUT the cloak so the breastplate, open collar and body silhouette are fully visible.
2. Breastplate detail: the restrained Hector-faction dark-gold crest (#8A7040) on the chest.
3. Pauldron detail: the deliberately loose/unfastened strap on the RIGHT shoulder, shown drooping.
4. Bracer and gauntlet close-ups showing plate articulation and leather strapping.
5. Battle-belt detail: the broad, loosely fastened belt with its mounts (no weapon attached).
6. Leg plate and heavy war-boot detail.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; sun-darkened skin (#C08856) may appear at neck/collar edges only as needed. No full standalone face portrait panel is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: battle-worn steel-grey scuffed plate (#6B6E72), dark charcoal/deep-brown frayed cloak (#3B332C), deep-brown leather (#5C4530), restrained dark-gold fittings (#8A7040). Keep the intentionally unfastened straps and worn, careless fit; do not tidy up, redesign, add or remove any element. NO weapon anywhere (signature weapon belongs to sheet 06).

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

---

## 05 — `05-elvis-color-material-sheet.png`（STAGE 2 — 色票／材質表，已補固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-elvis-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for Elvis: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- battle-worn steel-grey scuffed plate #6B6E72
- dark charcoal / deep-brown frayed cloak fabric #3B332C
- deep-brown leather #5C4530
- restrained dark-gold fittings #8A7040
- sun-darkened bronze/tan skin tone #C08856
- dark-brown hair and beard #4A3A2E
- deep-brown eyes #3E2A1E
Each swatch pairs a flat color block with a small material patch showing how that surface reads (scuffed plate metal, worn leather grain, frayed fabric weave, dark-gold fitting finish).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~190 cm, ~7.5 heads, ~2.6 head-widths shoulders).

Costume invariants:
Exact costume from Image 1; no redesign, and keep the worn, scuffed look rather than a pristine finish; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for metal, fabric and leather, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, pristine polished plate, weapon, sword, broadsword, war-axe, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

---

## 06 — `06-elvis-prop-construction-sheet.png`（STAGE 2 — 道具表：簽名武器待決，唯一出現位置）


```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 01-elvis-front-fullbody.png — use ONLY to match the steel-grey/dark-gold/leather material language and craftsmanship level; do not depict the character.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Note (PENDING-USER-INPUT, does not block sheets 01–05 and 07): Elvis's signature weapon is still undecided between a LARGE BROADSWORD and a LARGE WAR-AXE (CHARACTER_SPEC.md documents both as canon options). CHARACTER_SPEC.md recommends the broadsword for stronger silhouette consistency with his armor's vertical lines, but the user has final say. Render the RECOMMENDED broadsword as the primary study below; if the user instead confirms the war-axe, substitute it as the sole signature weapon using the same material language and construction-study format.

Primary request:
Create a props-only construction sheet for Elvis's equipment:
1. The LARGE BROADSWORD (recommended locked primary weapon, sole appearance in the whole package unless the user selects the war-axe instead): front view, side view and an exploded/disassembled study of blade, guard, grip and pommel - battle-worn steel-grey blade (#6B6E72) with dark-gold fittings (#8A7040) and a deep-brown leather grip (#5C4530).
2. Carelessly-strapped hardware studies: the breastplate, the RIGHT-shoulder pauldron with its deliberately loose/unfastened strap, a bracer/gauntlet, and the broad battle belt with its weapon-mount points and buckles.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, battle-worn steel and dark-gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, neat pristine armor, tidy polished plate, brand-new spotless armor, fully-fastened tidy straps, ornate jeweled decoration, two different weapons shown as co-equal primaries, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the signature weapon (broadsword, or war-axe if the user selects it) may appear in the entire package; only ONE weapon type is the final signature weapon, not both as co-equal primaries.
- Match the established steel-grey/dark-gold/leather palette exactly; keep the worn, scuffed look, never pristine.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

---

## 07 — `07-elvis-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）


```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 01-elvis-front-fullbody.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render Elvis WITHOUT the plate armor, cloak or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view (camera at the character's anatomical left side). Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no cloak, no armor, no loose clothing.

Identity invariants:
Same character as Image 1: same face, sun-darkened bronze/tan skin (#C08856), deep-brown eyes (#3E2A1E), messy beard/stubble, messy tousled dark hair (#4A3A2E), old battle scar on the LEFT side of the face (visible in the left-profile view). The body underneath must be consistent with the armored figure of the approved sheets: broad-shouldered, thick, heavy muscular, powerfully built.

Body metrics:
Height approximately 190 cm. Approximately 7.5 heads tall. Shoulder width approximately 2.6 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

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

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：01 →（使用者核准）→ 02 → 03 → 04 → 05 → 06 → 07。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 01 號正本一致（03 的人像面板亦同）
- [ ] 髮型、雜髮、鬚型、髮色 #4A3A2E 一致
- [ ] 身材比例：約 190cm／約 7.5 頭身、肩寬約 2.6 倍頭寬、魁梧厚肌
- [ ] 服裝結構與 Costume Lock 一致（散漫不扣齊的重板甲、磨損披風、右肩鬆脫肩甲扣帶）
- [ ] 左右位置正確：舊戰疤固定臉部左側、肩甲鬆脫扣帶固定右肩，跨圖不得翻面或互換side
- [ ] 色票未漂移：#6B6E72／#3B332C／#5C4530／#8A7040／#C08856／#4A3A2E／#3E2A1E
- [ ] 無任何武器道具出現（06 除外，且 06 之簽名武器選定為 PENDING-USER-INPUT）；平光無投影陰影（03 攝影棚柔光除外）
- [ ] 血緣相似：不適用（無血緣角色）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面、A-pose、正交；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；戰疤僅在左側可見視圖清楚呈現，鬆脫扣帶僅在右側可見視圖清楚呈現；相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；戰疤清晰可見；相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；鬆脫肩甲扣帶清晰可見；背面、A-pose、正交；鬆脫肩甲扣帶（右肩）從背面仍可辨識 |
| 03 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 04 | 磨損披風拆解面板＋無披風軀幹視圖必須存在；鬆脫扣帶等散漫穿法須保留 |
| 05 | 色票方塊與鎖定 hex 完全一致 |
| 06 | 簽名武器（闊劍或戰斧，二選一）唯一出現於此，不得兩者並列為同等主武器；無角色、無臉、無人物剪影 |
| 07 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；魁梧體格與戰疤保留 |
