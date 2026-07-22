# 馬修 Matthew — Image Generation Prompts (00–09)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-matthew-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 must NOT be generated until the user has approved 00.** Once approved, `00-matthew-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> Each prompt below is independent and self-contained. Do not merge them.
> Costume version 1 (white-and-gold clergy robe) is the primary identity and is used in 00–06. Costume version 2 (pre-battle leather armor swap) is shown only in the 07 costume detail sheet and the 09 prop sheet. The gold "moon-angel" pendant is worn on the chest in BOTH versions and never changes.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-matthew-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Matthew, a tall, lean, elegant male theocratic mastermind (apparent age 35-45), height read ~180cm, slender seven-to-eight-heads proportions. CANON facial identity: a pale, handsome face with faintly serpentine features; thin lips wearing a composed, calculating, faintly looking-down-from-above smile; narrow calculating eyes. LOCKED anchor defaults (user-overridable): neatly combed long hair in cool SILVER, swept back; pale cool-toned skin; cold PALE-GREY eyes. Costume version 1 (CANON direction, primary identity): a high-ranking white-and-gold silk clergy robe of layered ecclesiastical vestments, with WIDE DRAPING SLEEVES reaching below the wrists; a high clergy collar and shoulder mantle with gold-thread trim; a gold embroidered religious insignia of the orthodox church on the chest (LOCKED default emblem: a circular crest of a crescent moon cradling a single radiant star, ringed with gold thread). CANON SIGNATURE, never omit: a single prominent GOLD pendant hangs at the center of the chest, a "moon-angel" religious emblem (a stylized upright angelic figure fused with an upturned crescent moon), set with one small cold pale-blue gemstone (LOCKED default gem color), worn close against the chest - this is his repeated recognizable signature. Long elegant fingers (he habitually strokes the pendant). Palette: white and gold dominant, cool silver hair, dark accents, aligned with the whole story's converged gold / silver-blue / dark scheme. He is fully human: no wings, no horns, no tail, no crown, no halo - the "moon-angel" is only the image on the pendant.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, feathered wings, angel wings, missing chest pendant, elderly wrinkled face, muscular hulking build, beard, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (pale faintly serpentine handsome face, thin calculating smile, wide-sleeved white-and-gold clergy robe, prominent gold moon-angel chest pendant as the repeated signature).
- Use the LOCKED anchor defaults exactly (silver combed-back long hair, cold pale-grey eyes, small pale-blue pendant gem, crescent-moon-and-star chest insignia, ~180cm lean elegant build); do not invent other unresolved details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- His only rich materials are the white-and-gold silk robe and the gold moon-angel pendant (metal and gem allowed on the pendant only); no black pauldrons, no chains, no horns, no wings, no heavy plate armor.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

## 01 — `01-matthew-front-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single front full-body orthographic view

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Matthew as a single clean front full-body orthographic view, standing straight in a neutral pose, facing the viewer at 0 degrees, full body from head to hem inside frame.

Identity invariants:
Exact face, pale faintly serpentine handsome features, thin composed calculating smile, narrow cold pale eyes, silver combed-back long hair, pale cool skin, lean elegant seven-to-eight-heads proportions - all identical to Image 1.

Costume invariants:
Costume version 1 from Image 1: high-ranking white-and-gold clergy robe with wide draping sleeves below the wrists, high clergy collar and shoulder mantle with gold-thread trim, gold embroidered religious insignia on the chest, and the prominent gold "moon-angel" pendant hanging at the center of the chest. Same accessory count, same positions, same colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight-on front view, full body head-to-hem, centered, feet on an implied ground line, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn vestments and pendant.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, missing chest pendant, elderly wrinkled face, muscular hulking build, back view, side view, three-quarter view, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```

---

## 02 — `02-matthew-left-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic view

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Matthew as a single clean LEFT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree left profile, full body head-to-hem inside frame.

Identity invariants:
Exact face, pale faintly serpentine handsome features, thin composed calculating smile, narrow cold pale eye, silver combed-back long hair, pale cool skin, lean elegant seven-to-eight-heads proportions - identical to Image 1, only rotated to the left profile.

Costume invariants:
Same costume version 1 as Image 1: high-ranking white-and-gold clergy robe with wide draping sleeves, high clergy collar and shoulder mantle with gold-thread trim, gold embroidered chest insignia, and the prominent gold "moon-angel" chest pendant (reads at the chest center in profile). Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True left-side profile, full body head-to-hem, centered, robe drape and mantle visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn vestments and pendant.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, missing chest pendant, elderly wrinkled face, muscular hulking build, front view, back view, three-quarter view, right profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```

---

## 03 — `03-matthew-back-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single back full-body orthographic view

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Matthew as a single clean BACK full-body orthographic view, standing straight in a neutral pose, back fully to the viewer at 180 degrees, full body head-to-hem inside frame, clarifying the rear construction of the robe.

Identity invariants:
Same character build, silver combed-back long hair from behind (back of head and neckline consistent with Image 1), pale cool skin, lean elegant seven-to-eight-heads proportions. Face not visible but body identity unchanged.

Costume invariants:
Rear of costume version 1: white-and-gold clergy robe covering the back, shoulder mantle and gold-thread trim visible from behind, wide draping sleeves reading at the sides, robe hem to the ground. The gold moon-angel pendant hangs at the front and is not visible from behind. Same count, positions, colors and materials as Image 1.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight back view, full body head-to-hem, centered, robe back panel and mantle fully shown, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn vestments.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, elderly wrinkled face, muscular hulking build, front view, side view, three-quarter view, visible face, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```

---

## 04 — `04-matthew-right-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic view

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Matthew as a single clean RIGHT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree right profile, full body head-to-hem inside frame.

Identity invariants:
Exact face, pale faintly serpentine handsome features, thin composed calculating smile, narrow cold pale eye, silver combed-back long hair, pale cool skin, lean elegant seven-to-eight-heads proportions - identical to Image 1, only rotated to the right profile.

Costume invariants:
Same costume version 1 as Image 1: high-ranking white-and-gold clergy robe with wide draping sleeves, high clergy collar and shoulder mantle with gold-thread trim, gold embroidered chest insignia, and the prominent gold "moon-angel" chest pendant (reads at the chest center in profile). Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True right-side profile, full body head-to-hem, centered, robe drape and mantle visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn vestments and pendant.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, missing chest pendant, elderly wrinkled face, muscular hulking build, front view, back view, three-quarter view, left profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```

---

## 05 — `05-matthew-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Matthew containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view.

Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.

Identity invariants:
All four figures are the identical character from Image 1: same face, pale faintly serpentine handsome features, thin composed calculating smile, narrow cold pale eyes, silver combed-back long hair, pale cool skin, lean elegant seven-to-eight-heads proportions. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view wears the identical costume version 1 from Image 1: high-ranking white-and-gold clergy robe with wide draping sleeves, high clergy collar and shoulder mantle with gold-thread trim, gold embroidered chest insignia, and the prominent gold "moon-angel" chest pendant. Same count, positions, colors and materials in all four views.

Composition:
Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn vestments and pendant, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, missing chest pendant, elderly wrinkled face, muscular hulking build, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```

---

## 06 — `06-matthew-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-matthew-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Matthew into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, pale faintly serpentine handsome features, thin lips, narrow cold pale eyes, pale cool skin tone, silver combed-back long hair, hairline and hair length, neck proportions, the high clergy collar and shoulder mantle, and the top of the gold moon-angel pendant visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed hairline, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, halo, crown, elderly wrinkled face, beard, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor
```

---

## 07 — `07-matthew-costume-detail-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Matthew's two costume versions, presenting several clean close-up detail studies at a consistent scale. Version 1 (primary): the high clergy collar and shoulder mantle with gold-thread trim, the wide draping sleeve construction and hem, the white-and-gold layered robe fabric weave, the gold embroidered religious insignia on the chest, and the gold moon-angel chest pendant. Version 2 (pre-battle swap): the dark leather armor pieces worn after shedding the robe - leather chest piece, pauldrons, bracers and belt - with the SAME gold moon-angel pendant worn over the chest armor. Arrange the detail studies cleanly on one sheet.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: white-and-gold robe palette, gold-thread embroidery, layered ecclesiastical fabric, wide draping sleeves, and the gold moon-angel pendant form. The version-2 leather armor uses deep brown-to-charcoal leather with white-and-gold accents, and always keeps the same gold moon-angel pendant on the chest. Do not redesign, add or remove any element; the pendant is identical across both versions.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, invented accessory, changed color scheme, different material, changed pendant, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved costume from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```

---

## 08 — `08-matthew-color-material-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Matthew in Image 1: neatly arranged color swatches and material sample chips showing the white-and-gold robe primary, gold-thread embroidery, gold pendant metal, layered ecclesiastical fabric, inner-layer silk vestment, deep brown-to-charcoal leather (version-2 armor), silver hair color, pale skin tone and cold pale eye color. Beside the swatches show small material studies illustrating the fabric-weave, gold polished-metal, leather and gemstone finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Sample colors and materials exactly from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```

---

## 09 — `09-matthew-prop-construction-sheet.png`  (STAGE 2 — after 00 approved; props only)

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Matthew's signature items: the gold "moon-angel" pendant shown large in front view, side view and a close detail study of the crescent-moon-and-angel emblem and its chain; the orthodox-church religious insignia / ecclesiastical emblem as a standalone study; and the robe-to-leather-armor swap pieces shown as attachment studies (the version-1 clergy robe collar/mantle/wide sleeve fastenings and the version-2 leather armor chest piece, pauldrons, bracers and belt), demonstrating how the same gold moon-angel pendant transfers onto both. Arrange the studies cleanly on one sheet at consistent scale.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a garment or armor attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All props must match Image 1's colors, materials and construction exactly.

Costume/props invariants:
The gold moon-angel pendant is a single prominent piece (a stylized angelic figure combined with a crescent moon) with dark-gold-to-bright-gold finish, identical to the pendant on Image 1; the religious insignia matches the chest embroidery on Image 1; the robe pieces and leather-armor pieces match Image 1's version-1 and version-2 construction and attachment method. Do not add, remove or redesign any prop.

Composition:
Neatly arranged prop studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the robe/armor attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body character, miniature person, portrait, face, human silhouette, character scale inset, wings, horns, tail, crown, halo, invented prop, changed material, changed pendant, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Match the props' exact appearance to Image 1.
- Use Images 2-4 for visual style only.
- Props only; no character body, face or silhouette anywhere except an optional blank headless tailor form for attachment studies.
- No text, captions, labels, logo, signature or watermark.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Do not invent missing canonical details.
```
