# 安德烈 Andre — Image Generation Prompts（STANDARD 7-file package: 00, 05, 06, 07, 08, 09, 10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（`CHARACTER_SPEC.md` 尚未填入正式版本 ID；服裝版本鎖定為「深色文士學者長袍版」，其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `00-andre-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風，不得被當成本角色的身份參考。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

本套為標準 7 表包（不含 01–04 單視圖）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-andre-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具 |
| 05 | `05-andre-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-andre-expression-sheet.png` | 八表情臉部表，4×2 網格，保留年長特徵與 Kinship invariants |
| 07 | `07-andre-costume-detail-sheet.png` | 服裝細節表（外袍拆解面板＋無外袍軀幹視圖） |
| 08 | `08-andre-color-material-sheet.png` | 色票／材質表（色名為主，SPEC 無 hex） |
| 09 | `09-andre-prop-construction-sheet.png` | 道具表：茶盞＋古籍＋梧桐家紋徽記（武器與道具唯一出現位置） |
| 10 | `10-andre-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-andre-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Andre, an ELDERLY lean composed scholar-noble (CANON elderly, apparent age 60-70), CANON height ~178cm, lean upright but aged frame. CANON facial identity: an aged lean face with visible age lines and defined cheekbones, gray hair neatly combed straight back, a LOCKED neatly-trimmed short gray beard, and fathomless calm half-lidded LOCKED deep-gray eyes that give nothing away; a poised, quiet, unreadable expression. Fair aged skin. Costume version: dark scholar-robe version (CANON direction) - a dark, understated PLANE-TREE (梧桐) house-crest scholar/literati robe, the crest LOCKED as a stylized five-lobed plane-tree (sycamore) leaf in dark-gold embroidery, unarmored and unshowy, layered inner and outer robe, a crossed or standing collar in muted dark tones, wide scholar sleeves, a plain cloth sash at the waist, ankle-length hem, simple soft shoes. Materials: dark matte cloth / literati woven fabric only, minimal metal (dark-gold crest thread only); no armor, no gemstone finery, no gold pauldrons. Palette: deep ink-green to charcoal-gray with dark-gold crest embroidery, dark-brown inner robe, aligned with the whole story's converged gold / silver-blue / dark scheme. He carries NO weapon and NO props of any kind - the tea cup and old book belong exclusively to the prop construction sheet (09).

Body metrics:
Height approximately 178 cm (CANON). Approximately 7 to 7.5 heads tall (DESIGN-PROPOSAL proportion). Shoulder width is not specified in CHARACTER_SPEC.md - no value invented. Fully symmetric design: the chest crest stays centered and the waist sash stays symmetric; no other left-right asymmetric feature is specified.

Kinship invariants:
Andre is the family anchor of house ANDRE. His son Philip and daughter Cecilia inherit a younger version of his clear cheekbones and jawline bone structure. His gray hair, neatly combed straight back, is NOT inherited by his children - Philip's hair is dark brown near-black, Cecilia's hair is chestnut. His locked deep-gray eyes are his own; his children's eye colors are locked separately and are not required to match his.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose;
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, beard, colors and costume, and must preserve the elderly aged features (age lines, gray hair, gray beard) in all three. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no tea cup, no book.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions overridden by an elderly aged lean frame for this character, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, fabric-focused material separation with minimal dark-metal crest thread, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, cuirass, gauntlets, wings, horns, tail, youthful face, young man, teenager, smooth wrinkle-free skin, de-aged face, removed gray hair, beardless, crown, gemstone finery, ornate jewels, gold pauldrons, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel, weapon, sword, scabbard, sheath, shield, staff, prop object, tea cup, teacup, old book, holding book, standalone prop, handheld item, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (elderly aged lean face with age lines, gray combed-back hair, fathomless calm eyes, dark plane-tree house-crest scholar robe).
- Character and costume only: no weapons, no handheld items, no standalone props. The tea cup and old book belong exclusively to prop sheet 09.
- Full-body view MUST use the standard neutral A-pose defined above; the two portraits are unaffected by the A-pose rule.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Keep the character clearly elderly; do not render a youthful or de-aged face.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 05 — `05-andre-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-andre-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Andre containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same elderly lean aged face with age lines, gray hair neatly combed straight back, neatly-trimmed short gray beard, fathomless calm half-lidded deep-gray eyes, fair aged skin. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 178 cm. Approximately 7 to 7.5 heads tall. Shoulder width not specified in CHARACTER_SPEC.md - no value invented. Fully symmetric design (chest crest centered, waist sash symmetric).

Costume invariants:
Every view wears the identical dark scholar robe from Image 1: understated plane-tree house-crest literati robe, muted dark crossed/standing collar, wide scholar sleeves, plain cloth waist sash, ankle-length hem, simple soft shoes. Same count, positions, colors and materials in all four views. NO weapon, NO tea cup, NO book anywhere; all props are reserved for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-metal crest thread, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, cuirass, gauntlets, wings, horns, tail, youthful face, young man, de-aged face, smooth wrinkle-free skin, removed gray hair, beardless, crown, gemstone finery, gold pauldrons, weapon, sword, scabbard, sheath, staff, shield, tea cup, old book, handheld item, standalone prop, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-andre-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, beard, costume-collar and color reference (the approved 00-andre-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Andre into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same ELDERLY character in all eight portraits. Preserve the identical aged facial identity and face proportions, visible age lines, gray hair neatly combed straight back, neatly-trimmed short gray beard, fathomless calm deep-gray eyes, fair aged skin tone, neck proportions, and the muted dark scholar-robe collar with the plane-tree crest visible at the collar. Keep the elderly aged features in every panel; do not de-age or smooth the face. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
Andre's clear cheekbones and jawline are the paternal origin of his children Philip's and Cecilia's younger facial bone structure - this is a constant fact of his own face in every panel. His gray hair and gray beard stay gray in every panel; never de-age to a youthful dark-haired look. His eyes stay locked deep-gray in every panel.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, de-aged youthful face, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, youthful face, young man, de-aged face, smooth wrinkle-free skin, removed gray hair, beardless, changed hair length, armor, plate collar, gorget, wings, horns, tail, crown, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, gemstone finery, gold pauldrons, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, tea cup, old book
```

---

## 07 — `07-andre-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含外袍拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-andre-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Andre's dark scholar-robe regalia, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the outer literati robe drawn SEPARATELY as a flat garment piece, AND one torso view of the character WITHOUT the outer robe so the inner robe silhouette and body outline are fully visible.
2. Chest crest detail: the stylized five-lobed plane-tree (sycamore) leaf crest in dark-gold embroidery.
3. Collar and sleeve detail: the crossed/standing collar and wide scholar sleeves.
4. Waist sash detail: the plain cloth sash, tied at the waist, no weapon attached.
5. Hem and footwear detail: the ankle-length hem and simple soft shoes.
6. Back structure: the robe's back drape and sash tie.

Identity invariants:
All partial-figure panels depict the same elderly character body from Image 1; the aged skin tone may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials from Image 1: deep ink-green to charcoal-gray robe, dark-gold crest embroidery, dark-brown inner robe. Same construction as Image 1; no redesign; NO weapon, NO tea cup, NO book anywhere (both reserved for sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, fabric-focused material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, scabbard, sheath, tea cup, old book, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The outer-robe separation panel and the outer-robe-less torso view are mandatory.
- No weapons or props on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-andre-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-andre-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Andre: a medium-size neutral A-pose front figure (character and costume only, no props) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color (named colors only - CHARACTER_SPEC.md gives no hex codes, do not invent any):
- deep ink-green to charcoal-gray robe (main color)
- dark-gold crest embroidery thread
- dark-brown inner robe
- fair aged skin tone
- gray hair and gray beard
- deep-gray eyes
Each swatch pairs a flat color block with a small material patch (matte woven cloth texture, embroidery thread sheen).

Identity invariants:
The reference figure is the identical character from Image 1; same aged face, gray hair, gray beard, proportions (~178cm, ~7-7.5 heads).

Costume invariants:
Exact regalia from Image 1; no redesign; NO weapon, NO tea cup, NO book anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for matte cloth and embroidery thread, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, tea cup, old book, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the CANON/DESIGN-PROPOSAL palette by name exactly; do not invent hex codes. Hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-andre-prop-construction-sheet.png`（STAGE 2 — 道具表：茶盞／古籍唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-andre-character-identity-anchor.png - use ONLY to match material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Andre's canonical hand props and family crest:
1. The TEA CUP (sole appearance in the whole package): a simple ceramic or lacquered scholar's tea cup, front and side views, understated craftsmanship matching the robe's restrained aesthetic.
2. The OLD BOOK (alternative canonical prop, sole appearance in the whole package): a bound literati book/scroll, closed and slightly open views, plain cover, no ornate jewels.
3. The Paulownia (plane-tree) house crest: enlarged flat emblem drawing, stylized five-lobed plane-tree leaf, dark-gold embroidery/relief.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain how the book or cup is customarily held. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise material rendering for ceramic, paper and cloth-bound book, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, weapon, sword, armor, gemstone finery, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the tea cup and old book may appear in the entire package.
- Match the locked palette by name (dark-gold crest, matte cloth-consistent restraint); no gemstone finery, no metal armor.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-andre-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-andre-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Andre WITHOUT the outer robe or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no robe, no loose clothing.

Identity invariants:
Same character as Image 1: same aged face, gray hair neatly combed straight back, neatly-trimmed short gray beard, fair aged skin, deep-gray eyes. The body underneath must be consistent with the robed figure of the approved sheets: lean, upright, aged frame.

Body metrics:
Height approximately 178 cm. Approximately 7 to 7.5 heads tall. Shoulder width not specified in CHARACTER_SPEC.md - no value invented. Fully symmetric. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, robe, outer garment, loose clothing, weapon, props, accessories, jewelry, tea cup, old book, folds, drapery, nudity, different face, different hairstyle, youthful face, de-aged face, smooth wrinkle-free skin, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- Keep the character clearly elderly (aged skin, gray hair, gray beard); do not de-age.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（年長清瘦、皺紋、灰白後梳髮、灰白短鬚）
- [ ] 髮型、髮色（灰白）一致；鬚型一致
- [ ] 身材比例：178cm／約 7–7.5 頭身
- [ ] 服裝結構與 Costume Lock 一致（文士長袍層次、家紋位置）
- [ ] 左右位置正確：胸前梧桐家紋置中、腰封對稱，無鏡像錯亂
- [ ] 色票未漂移（深墨綠—炭灰／暗金家紋／深褐內袍，對照 CHARACTER_SPEC.md 色名）
- [ ] 無任何道具出現（09 除外，包含茶盞與古籍）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：作為家族 ANDRE 錨點本人，臉部骨架（顴骨與下頜線）須可辨識地供子女承襲比對；灰白髮不外流至子女的 00

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變、年長特徵不得回春 |
| 07 | 外袍拆解面板＋無外袍軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定色名完全一致（無 hex 可對照） |
| 09 | 茶盞與古籍唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外袍；身體輪廓完全可見；正面＋左側兩視圖 |
