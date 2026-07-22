# 克里茲 Kritz — Image Generation Prompts (00–09)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-kritz-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 must NOT be generated until the user has approved 00.** Once approved, `00-kritz-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> Each prompt below is independent and self-contained. Do not merge them.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-kritz-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Kritz, a lean young prince (apparent age 18-19), height read ~178cm, slender-but-honed seven-heads proportions. CANON facial identity: he inherits his mother's warm RED-GOLD eyes (red-tinged gold, locked per existing-image canon); his gaze is cold and suppressed with faint shadows under the eyes. Dark-gold / flax-colored short hair, slightly tousled boyish cut. Fair, cool-toned skin. CANON detail: his lips show cracked, faintly bloody chapping (a skin texture, not an accessory). Costume version: 1587 exile / expedition battle attire (CANON direction) - dark combat leather armor (inner layer plus leather chest piece) worn under a black-and-gold cloak; high leather protective collar; asymmetric cloak fastened at the shoulder with a dark-gold metal clasp; a restrained wartime version of the Hector royal crest on the chest (locked motif: crossed twin holy swords beneath a simplified crown outline, rendered in dark-gold); his late mother's necklace worn close against the chest inside the collar (CANON); a twin sword-belt at the waist bearing a matched pair of twin holy swords, one on each side, left-right symmetric (CANON), symbol of kingship; snug leather bracers or gloves for gripping; dark leather long boots. Materials: black-gold leather, polished dark metal fittings, and restrained deep-purple gemstone accents on the sword guards and shoulder clasp only. Palette: dark-gold / black-gold dominant, deep brown-to-charcoal leather, cold-steel blades, restrained deep-purple gem accents, aligned with the whole story's converged gold / silver-blue / dark scheme.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, single sword, three swords, blue eyes, green eyes, elderly face, muscular hulking build, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (red-gold eyes, dark-gold short hair, cracked bloody lips, twin holy swords, mother's necklace, black-gold cloak battle attire).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 01 — `01-kritz-front-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single front full-body orthographic view

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Kritz as a single clean front full-body orthographic view, standing straight in a neutral A-pose, facing the viewer at 0 degrees, full body from head to boots inside frame.

Identity invariants:
Exact face, red-gold eyes with cold gaze and faint under-eye shadows, dark-gold / flax short tousled hair, fair cool skin, cracked bloody lips, seven-heads lean-honed proportions - all identical to Image 1.

Costume invariants:
1587 exile battle attire from Image 1: dark combat leather armor under a black-and-gold cloak, high leather collar, shoulder metal clasp, restrained Hector crest on chest, mother's necklace inside the collar, twin sword-belt bearing a matched pair of twin holy swords one on each side (left-right symmetric), leather bracers/gloves, dark leather long boots. Same accessory count, same positions, same colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight-on front view, full body head-to-toe, centered, feet on an implied ground line, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, single sword, three swords, blue eyes, back view, side view, three-quarter view, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 02 — `02-kritz-left-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic view

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Kritz as a single clean LEFT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree left profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, red-gold eye, cold gaze with faint under-eye shadow, dark-gold / flax short tousled hair, fair cool skin, cracked bloody lips, seven-heads lean-honed proportions - identical to Image 1, only rotated to the left profile.

Costume invariants:
Same 1587 exile attire as Image 1: dark leather armor under black-and-gold cloak, high leather collar, shoulder clasp, restrained Hector crest, mother's necklace at the chest, twin sword-belt with the matched pair of twin holy swords (the sword on the left side reads in front on this profile, the mirrored one behind), leather bracers/gloves, dark leather long boots. Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True left-side profile, full body head-to-toe, centered, cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, single sword, three swords, blue eyes, front view, back view, three-quarter view, right profile, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 03 — `03-kritz-back-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single back full-body orthographic view

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Kritz as a single clean BACK full-body orthographic view, standing straight in a neutral pose, back fully to the viewer at 180 degrees, full body head-to-boots inside frame, clarifying the rear construction of the costume.

Identity invariants:
Same character build, dark-gold / flax short tousled hair from behind (back of head and neckline consistent with Image 1), fair cool skin, seven-heads lean-honed proportions. Face not visible but body identity unchanged.

Costume invariants:
Rear of the 1587 exile attire: black-and-gold cloak covering the back, shoulder clasp visible from behind, twin sword-belt crossing or running along the lower back with both twin holy swords hilts readable at the hips (left-right symmetric), high leather collar back, dark leather long boots. Same count, positions, colors and materials as Image 1.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight back view, full body head-to-toe, centered, cloak back panel fully shown, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, single sword, three swords, front view, side view, three-quarter view, visible face, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 04 — `04-kritz-right-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic view

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Kritz as a single clean RIGHT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree right profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, red-gold eye, cold gaze with faint under-eye shadow, dark-gold / flax short tousled hair, fair cool skin, cracked bloody lips, seven-heads lean-honed proportions - identical to Image 1, only rotated to the right profile.

Costume invariants:
Same 1587 exile attire as Image 1: dark leather armor under black-and-gold cloak, high leather collar, shoulder clasp, restrained Hector crest, mother's necklace at the chest, twin sword-belt with the matched pair of twin holy swords (the sword on the right side reads in front on this profile, the mirrored one behind), leather bracers/gloves, dark leather long boots. Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True right-side profile, full body head-to-toe, centered, cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, single sword, three swords, blue eyes, front view, back view, three-quarter view, left profile, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 05 — `05-kritz-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Kritz containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view.

Identity invariants:
All four figures are the identical character from Image 1: same face, red-gold eyes, cold gaze with faint under-eye shadows, dark-gold / flax short tousled hair, fair cool skin, cracked bloody lips, seven-heads lean-honed proportions. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view wears the identical 1587 exile attire from Image 1: dark leather armor under black-and-gold cloak, high leather collar, shoulder clasp, restrained Hector crest, mother's necklace at the chest, twin sword-belt with the matched pair of twin holy swords (left-right symmetric), leather bracers/gloves, dark leather long boots. Same count, positions, colors and materials in all four views.

Composition:
Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.
Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, single sword, three swords, blue eyes, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 06 — `06-kritz-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-kritz-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Kritz into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, red-gold eyes, fair cool skin tone, dark-gold / flax short tousled hair, bangs and hair length, cracked bloody lips, neck proportions, high leather collar and the mother's necklace visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. The three style images define lighting, linework, shading and material rendering ONLY; do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, blue eyes, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk
```

---

## 07 — `07-kritz-costume-detail-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Kritz's 1587 exile battle attire, presenting several clean close-up detail studies of the garment and armor as they appear on Image 1: the high leather collar and shoulder clasp, the dark combat leather chest piece with the restrained Hector royal crest, the black-and-gold cloak fabric weave and hem, the leather bracers/gloves, the twin sword-belt attachment at the waist, and the mother's necklace detail. Arrange the detail studies cleanly on one sheet at a consistent scale.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: dark-gold / black-gold palette, deep brown-to-charcoal leather, cold-steel fittings, restrained embroidery of the Hector crest, layered fabric of the cloak, mother's necklace form. Do not redesign, add or remove any element.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, invented accessory, changed color scheme, different material, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Preserve the exact approved costume from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 08 — `08-kritz-color-material-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Kritz in Image 1: neatly arranged color swatches and material sample chips showing the dark-gold / black-gold primary, deep brown-to-charcoal leather, cold-steel blade metal, dark-gold metal fittings, cloak fabric, inner-layer fabric, dark-gold / flax hair color and red-gold eye color. Beside the swatches show small material studies illustrating the leather, polished-metal, fabric-weave and gemstone finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Sample colors and materials exactly from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 09 — `09-kritz-prop-construction-sheet.png`  (STAGE 2 — after 00 approved; props only)

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Kritz's equipment: the twin holy swords shown as a matched pair with front view, side view and an exploded/disassembled study of blade, guard, grip and pommel; the Hector royal crest as a standalone emblem study; the mother's necklace shown in full and in close detail; and the sword-mount points on the cloak / twin sword-belt shown as attachment studies. Arrange the studies cleanly on one sheet at consistent scale.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All props must match Image 1's colors, materials and construction exactly.

Costume/props invariants:
Twin holy swords are a matched symmetric PAIR (exactly two, identical to each other), cold-steel blades with dark-gold fittings; the Hector crest matches the chest emblem on Image 1; the mother's necklace matches Image 1; the cloak sword-mount points and twin sword-belt match Image 1's attachment method. Do not add, remove or redesign any prop.

Composition:
Neatly arranged prop studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the belt/mount attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body character, miniature person, portrait, face, human silhouette, character scale inset, single sword, three swords, mismatched sword pair, invented prop, changed material, reference character face, copying any style-image character, blending the three reference characters, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, clergy silk

Constraints:
- Match the props' exact appearance to Image 1.
- Use Images 2-4 for visual style only.
- Props only; no character body, face or silhouette anywhere except an optional blank headless tailor form for attachment studies.
- No text, captions, labels, logo, signature or watermark.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```
