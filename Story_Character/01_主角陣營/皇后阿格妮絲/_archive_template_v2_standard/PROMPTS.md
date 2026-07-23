# 皇后阿格妮絲 Agnes — Image Generation Prompts（v2 STANDARD package: 00, 05–10 — no 01–04 single views）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **版本 ID：待 SPEC v2 補**（服裝版本：政變之夜寢房版；文檔唯一明載造型，不得混用其他時期／服裝）

> **兩階段規則（強制）**：第一階段只生成 `00-agnes-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **家族生成順序（§13）**：本角色屬 `ROYAL` 家族，家族錨點為**克里茲**。克里茲的 00 已核准（既有 `01-kritz-front-fullbody.png` 等）；本角色的 00 現在才進入生成階段。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（STANDARD package：不含 01–04 單視圖）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-agnes-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 05 | `05-agnes-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-agnes-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-agnes-costume-detail-sheet.png` | 服裝細節表（單層寢衣，無外層可拆解） |
| 08 | `08-agnes-color-material-sheet.png` | 色票／材質表（色名鎖定，SPEC 無 hex 值） |
| 09 | `09-agnes-prop-construction-sheet.png` | 構造表：褪色金線繡與寢衣構造細節（本角色無武器無飾品，見下方說明） |
| 10 | `10-agnes-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-agnes-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Agnes, a frail and sickly adult queen (apparent age around 30), height read ~168cm but often appearing smaller and diminished from illness and a slightly hunched posture, slender-but-gaunt proportions with thin shoulders and a fragile neck. Locked facial identity: a wan, hollow-cheeked worn face marked by past trauma; HOLLOW GOLD eyes with an empty, unfocused gaze and faint bluish shadows beneath - these gold eyes are the origin of her son Kritz's gold. Pale-gold / light-blonde WAIST-LENGTH hair worn loose and disheveled, with the bangs and stray strands pushed aside so the hollow gold eyes stay fully clear and legible. Translucent, near-transparent pale skin with a cold candlelit pallor. Costume (locked, the night-of-the-coup bedchamber attire, the only documented look): a single thin white nightgown, soft and simple, with faded gold-thread embroidery at the collar and cuffs signifying a former grandeur now shattered; loose long sleeves; a floor-length soft-draping gown; no armor, no belt hardware, bare feet or plain soft slippers. She is unarmed and carries no props of any kind.

Body metrics:
Height approximately 168 cm (note: often appears smaller due to her frail, slightly hunched posture). No head-to-body ratio value is specified in the character spec; do not invent one.

Kinship invariants:
She is the mother of Kritz (family ROYAL; family resemblance anchor = Kritz, whose identity is already approved). Her hollow gold eyes are the origin of Kritz's warm red-gold eyes - the eye shape may echo his. Distinguishing traits that must NOT be confused with her son: pure hollow, unfocused gold (never Kritz's warmer red-gold with a cold, sharp gaze); pale-gold waist-length loose hair (never Kritz's dark-gold short hair); a frail, translucent pale build (never Kritz's healthy cool-toned complexion).

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait, rendering the hollow gold eyes clearly and unobscured;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, fabric-focused material separation with minimal fittings, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, weapon, sword, shield, wings, horns, tail, crown, robust healthy build, rosy cheeks, plump figure, athletic vigor, red-gold eyes, blue eyes, green eyes, vibrant saturated gown, ornate jewelry, gemstones, shining jewels, gold pauldrons, metal armor, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow the locked identity exactly (hollow gold eyes as the source of Kritz's gold, pale-gold disheveled waist-length hair, translucent pale skin, thin white nightgown with faded gold-thread trim, frail sickly build).
- Character and costume only: no weapons, no handheld items, no standalone props. All construction/material studies belong exclusively to sheet 09.
- Full-body view MUST use the standard neutral A-pose defined above; the two portraits are unaffected by the A-pose rule.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 05 — `05-agnes-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-agnes-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Agnes containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose, while keeping her frail, slightly diminished posture consistent across all four views.

Identity invariants:
All four figures are the identical character from Image 1: same gaunt worn face, hollow gold eyes with an empty unfocused gaze and faint under-eye shadows, pale-gold/light-blonde loose disheveled waist-length hair, translucent near-transparent pale skin, thin slender-but-frail proportions with a fragile neck and thin shoulders. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 168 cm. No head-to-body ratio value specified; do not invent one.

Kinship invariants:
Same as Image 1: hollow gold eyes are the origin of her son Kritz's warm red-gold. Must not show red-gold eyes, dark-gold short hair or a healthy ruddy build in any of the four views.

Costume invariants:
Every view wears the identical night-of-the-coup bedchamber attire from Image 1: a single thin white nightgown, faded gold-thread embroidery at the collar and cuffs, loose long sleeves, floor-length soft-draping gown, bare feet or plain soft slippers. No armor, no belt hardware, no added accessories. Same colors and materials in all four views; the loose disheveled hair falls consistently and is shown down the back in the 180-degree view.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, weapon, sword, shield, wings, horns, tail, crown, robust healthy build, rosy cheeks, plump figure, red-gold eyes, blue eyes, green eyes, vibrant saturated gown, ornate jewelry, gemstones, gold pauldrons, metal armor, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-agnes-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-agnes-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Agnes into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and gaunt worn face proportions, hollow gold eyes with faint under-eye shadows, translucent near-transparent pale skin, pale-gold/light-blonde loose disheveled hair, bangs and hair length, fragile neck proportions, and the visible thin white nightgown collar with faded gold-thread embroidery. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the underlying frail, sickly and hollow-eyed quality remains.

Kinship invariants:
Her hollow gold eyes are the origin of her son Kritz's red-gold and must stay pure hollow gold in every panel, never warming into Kritz's red-gold tone.

Expression order, left to right and top to bottom:
1. neutral - empty, unfocused default expression of illness
2. gentle smile - fragile and strained softness
3. broad smile with visible teeth
4. joyful open laughter
5. surprised
6. angry
7. sad - grief from past trauma surfacing
8. wink

Style:
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, armor, helmet, crown, wings, horns, tail, red-gold eyes, blue eyes, green eyes, rosy healthy cheeks, plump face, ornate jewelry, gemstones, gold pauldrons, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

## 07 — `07-agnes-costume-detail-sheet.png`（STAGE 2 — 服裝細節表；單層寢衣，無外層可拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-agnes-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Note: Agnes wears a single-layer nightgown with no outer garment (no cloak/coat to separate); this sheet documents the one garment's construction directly, without an outer-layer-removed panel.

Primary request:
Render a costume construction detail sheet for Agnes's thin white nightgown, presenting several clean close-up detail studies of the garment as it appears on Image 1: the soft collar with its faded gold-thread embroidery, the loose long sleeve and cuff embroidery, the floor-length skirt's soft drape and fall, the plain unadorned waist area (no belt), the back of the gown (plain, no fastenings shown), and bare feet or plain soft slippers. Arrange the detail studies cleanly on one sheet at a consistent scale.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's pale translucent skin and colors exactly. No face-focused portrait is required.

Costume invariants:
All details must match Image 1 exactly in position, color and material: white / off-white thin nightgown fabric, faded dark-gold thread embroidery at collar and cuffs only, no metal, no gemstones, no armor. Do not redesign, add or remove any element.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, weapon, crown, invented accessory, changed color scheme, different material, gold pauldrons, ornate jewelry, reference character face, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- No outer-layer separation panel is required (single-layer garment, no cloak/coat).
- No weapons or jewelry on this sheet (none exist for this character). No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-agnes-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-agnes-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Agnes: a medium-size neutral A-pose front figure (character and costume only, no accessories) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color, named by color only (no hex codes, none are specified in the character spec):
- white / off-white (nightgown)
- faded dark gold (collar and cuff thread embroidery)
- translucent pale skin tone
- pale-gold / light-blonde hair
- hollow gold eyes
Each swatch pairs a flat color block with a small material patch showing how that surface reads (thin soft nightgown fabric weave, faded embroidery thread sheen).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions.

Costume invariants:
Exact costume from Image 1; no redesign; no armor, weapon or jewelry anywhere (none exist for this character).

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels, no hex codes (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise fabric material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, saturated vibrant palette, costume redesign, weapon, armor, jewelry, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the character's established palette exactly, using color names only (no hex, per spec); hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-agnes-prop-construction-sheet.png`（STAGE 2 — 構造表；本角色無武器無飾品）

```text
Use case: stylized-concept
Asset type: garment construction and material detail sheet (no weapons or jewelry exist for this character)

Input images:
- Image 1: the approved 00-agnes-character-identity-anchor.png — use ONLY to match the white/faded-gold material language; do not depict the character's face.
- Images 2-4: shared style references only; do not copy their characters.

Note: Agnes carries no weapon, no jewelry and no handheld props (CANON: unarmed, frail, no documented accessories). This sheet therefore documents garment construction and embroidery motif only, in place of a weapon/jewelry study.

Primary request:
Create a construction-and-material sheet for Agnes's nightgown: an enlarged flat study of the faded gold-thread embroidery motif used at the collar and cuffs, a flat pattern-style study of the collar construction, a flat pattern-style study of the cuff construction, and a study of the floor-length skirt's fabric drape and fall shown as a headless mannequin or draped-fabric study (no face, no full character).

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form or a draped-fabric study stand is allowed only to explain garment construction. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows garment/material studies only.

Costume invariants:
All studies must match Image 1's colors and materials exactly: white/off-white thin nightgown fabric, faded dark-gold thread embroidery. Do not add metal, gemstones, weapons or jewelry that do not exist on this character.

Composition:
Neatly arranged construction and material studies on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form or draped-fabric stand, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy garment design, professional production construction sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise fabric and embroidery rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, weapon, sword, armor, jewelry, gemstones, gold pauldrons, invented prop, changed material, wrong palette, neon colors, cast shadows, rim light

Constraints:
- No weapons or jewelry appear anywhere in this package (none exist for this character); do not invent any.
- Match the established white/faded-gold palette exactly.
- No character depiction beyond an optional headless tailor form or draped-fabric stand. No text or watermark.
```

---

## 10 — `10-agnes-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-agnes-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Agnes WITHOUT the nightgown or any garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no gown, no loose clothing; the long hair must be gathered back and tied so it does not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, hollow gold eyes, pale-gold hair (gathered back for this sheet), translucent pale skin. The body underneath must be consistent with the frail, gaunt, thin-shouldered figure of the approved sheets.

Body metrics:
Height approximately 168 cm. No head-to-body ratio value specified; do not invent one. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, crown, boots, folds, drapery, nudity, robust healthy build, rosy cheeks, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Hair gathered back and tied for this sheet so the body silhouette reads clearly for fitting.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06 的人像面板亦同）
- [ ] 髮型、瀏海、髮色（淺金／亞麻金及腰散髮）一致
- [ ] 身材比例：約 168cm（頭身比 SPEC 未提供，僅要求跨圖一致）
- [ ] 服裝結構與 Costume Lock 一致（單薄白色寢衣、褪色金線繡領口與袖口）
- [ ] 左右位置正確、未鏡像翻轉（本角色無左右不對稱配件）
- [ ] 色票未漂移（白／褪色暗金／淺金髮色／空洞金瞳／半透明蒼白膚色）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：空洞金瞳與克里茲已核准 00 的紅金瞳可辨識地同源；刻意區分特徵（純金瞳無焦、淺金長髮、蒼白病弱）未與克里茲混淆

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 單層寢衣構造細節完整（領口、袖口、裙擺、背面）；本角色無外層可拆解，已於檔頭註明 |
| 08 | 色票方塊與既定色名完全一致（無 hex，SPEC 未提供） |
| 09 | 僅呈現寢衣刺繡紋樣與構造研究；本角色無武器無飾品，不得無故新增；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；長髮須收攏於背後 |
