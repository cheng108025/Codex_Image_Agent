# 葛洛莉雅 Gloria — Image Generation Prompts (00–09)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-gloria-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 must NOT be generated until the user has approved 00.** Once approved, `00-gloria-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> Each prompt below is independent and self-contained. Do not merge them.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-gloria-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Gloria, a refined young noblewoman (apparent age 20-25), height read ~165cm, medium build, elegant and graceful yet quietly resilient, roughly seven-and-a-half-heads slender feminine proportions. CANON facial identity: fair warm-toned skin, a delicate refined oval face, almond-shaped gentle eyes whose softness hides a firm resolve. LOCKED eye color: warm chestnut-brown eyes (locked anchor default, overridable). CANON hair with LOCKED shade: warm medium chestnut-brown LONG hair, usually tied up or braided - a single neat side braid / low braided gather worn over one shoulder. Costume version: refined practical travel wear of noble quality (CANON direction) - a fitted bodice-top under a short travel jacket or over-tunic, a modest high-to-mid neckline with soft inner lining, gentle no-armor shoulder line, a waist belt or cinch shaping the silhouette, an ankle-to-knee travel skirt, low walking boots. CANON signature accessory with LOCKED motif: Gawain's promise badge - a small round warm-gold / brass knight-style token engraved with a paired-vow clasped-hands emblem and set with a single small deep silver-blue stone at its center, matching the token she and Gawain exchanged - pinned at the LEFT chest. Palette: soft chestnut-brown, warm beige and ivory with a low-saturation muted blue or wine travel tone, warm-gold badge and fittings, aligned with the whole story's converged gold / silver-blue / dark scheme.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, plate armor, weapon, sword, crown, short hair, blonde hair, neon colors, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (chestnut-brown long braided hair, gentle eyes hiding resolve, ~165cm medium build, refined travel wear, Gawain's promise badge pinned at the left chest).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 01 — `01-gloria-front-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single front full-body orthographic view

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gloria as a single clean front full-body orthographic view, standing straight in a neutral A-pose, facing the viewer at 0 degrees, full body from head to boots inside frame.

Identity invariants:
Exact face, gentle almond eyes with warm chestnut-brown color and a hidden firm resolve, chestnut-brown long hair tied in a single neat side braid, fair warm skin, refined oval face, seven-and-a-half-heads slender feminine proportions - all identical to Image 1.

Costume invariants:
Refined practical travel wear from Image 1: fitted bodice-top under a short travel jacket / over-tunic, modest neckline, no-armor soft shoulders, waist belt/cinch, ankle-to-knee travel skirt, low walking boots, and Gawain's promise badge pinned at the LEFT chest. Same accessory count, same positions, same colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight-on front view, full body head-to-toe, centered, feet on an implied ground line, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, weapon, sword, crown, short hair, blonde hair, back view, side view, three-quarter view, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 02 — `02-gloria-left-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic view

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gloria as a single clean LEFT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree left profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, gentle almond eye with warm chestnut-brown color and hidden resolve, chestnut-brown long side-braided hair, fair warm skin, refined oval face, seven-and-a-half-heads slender feminine proportions - identical to Image 1, only rotated to the left profile.

Costume invariants:
Same refined travel wear as Image 1: fitted bodice-top under short travel jacket, modest neckline, soft no-armor shoulders, waist belt/cinch, ankle-to-knee travel skirt, low walking boots, and Gawain's promise badge on the LEFT chest (reads at the front edge on this profile). Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True left-side profile, full body head-to-toe, centered, braid drape and skirt fall visible, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, weapon, sword, crown, short hair, blonde hair, front view, back view, three-quarter view, right profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 03 — `03-gloria-back-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single back full-body orthographic view

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gloria as a single clean BACK full-body orthographic view, standing straight in a neutral pose, back fully to the viewer at 180 degrees, full body head-to-boots inside frame, clarifying the rear construction of the costume.

Identity invariants:
Same character build, chestnut-brown long hair seen from behind as a single neat side braid falling down the back (back of head and neckline consistent with Image 1), fair warm skin, seven-and-a-half-heads slender feminine proportions. Face not visible but body identity unchanged.

Costume invariants:
Rear of the refined travel wear: back of the short travel jacket / over-tunic and bodice, waist belt/cinch tie readable at the back, ankle-to-knee travel skirt back panel, low walking boots, modest neckline back. The promise badge is on the front left chest and thus not visible from behind. Same count, positions, colors and materials as Image 1.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight back view, full body head-to-toe, centered, braid and skirt back fully shown, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, weapon, sword, crown, short hair, blonde hair, front view, side view, three-quarter view, visible face, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 04 — `04-gloria-right-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic view

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gloria as a single clean RIGHT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree right profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, gentle almond eye with warm chestnut-brown color and hidden resolve, chestnut-brown long side-braided hair, fair warm skin, refined oval face, seven-and-a-half-heads slender feminine proportions - identical to Image 1, only rotated to the right profile.

Costume invariants:
Same refined travel wear as Image 1: fitted bodice-top under short travel jacket, modest neckline, soft no-armor shoulders, waist belt/cinch, ankle-to-knee travel skirt, low walking boots, and Gawain's promise badge on the LEFT chest (reads at the rear edge on this profile). Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True right-side profile, full body head-to-toe, centered, braid drape and skirt fall visible, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, weapon, sword, crown, short hair, blonde hair, front view, back view, three-quarter view, left profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 05 — `05-gloria-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Gloria containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view.

Identity invariants:
All four figures are the identical character from Image 1: same face, gentle almond eyes with warm chestnut-brown color and hidden resolve, chestnut-brown long side-braided hair, fair warm skin, refined oval face, seven-and-a-half-heads slender feminine proportions. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view wears the identical refined travel wear from Image 1: fitted bodice-top under short travel jacket, modest neckline, soft no-armor shoulders, waist belt/cinch, ankle-to-knee travel skirt, low walking boots, and Gawain's promise badge on the LEFT chest. Same count, positions, colors and materials in all four views.

Composition:
Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping. Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, weapon, sword, crown, short hair, blonde hair, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 06 — `06-gloria-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-gloria-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Gloria into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, gentle almond eyes with warm chestnut-brown color and hidden resolve, fair warm skin tone, chestnut-brown long hair worn in a neat side braid, bangs and hair length, refined oval face, neck proportions, modest neckline and the promise badge visible at the upper chest. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, male, masculine face, short hair, blonde hair, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts
```

---

## 07 — `07-gloria-costume-detail-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Gloria's refined travel wear, presenting several clean close-up detail studies of the garment as it appears on Image 1: the modest neckline and bodice-top, the short travel jacket / over-tunic construction and hem, the waist belt/cinch and its fastening, the sleeve cuffs and optional travel gloves, the ankle-to-knee travel skirt fabric fall, the low walking boots, and Gawain's promise badge pinned at the left chest shown in detail. Arrange the detail studies cleanly on one sheet at a consistent scale.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: soft chestnut-brown / warm beige / ivory palette with a low-saturation muted blue or wine travel tone, fine noble-quality fabric, travel jacket weave, leather belt and boots, warm-gold promise badge. Do not redesign, add or remove any element.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, armor plate, weapon, invented accessory, changed color scheme, different material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved costume from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 08 — `08-gloria-color-material-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Gloria in Image 1: neatly arranged color swatches and material sample chips showing the chestnut-brown / warm beige / ivory primary, the low-saturation muted blue or wine travel tone, warm-gold badge and fittings metal, leather belt and boots, noble-quality fabric, travel jacket weave, chestnut-brown hair color and warm chestnut-brown eye color. Beside the swatches show small material studies illustrating the fabric-weave, leather, polished-metal and gemstone finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Sample colors and materials exactly from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 09 — `09-gloria-prop-construction-sheet.png`  (STAGE 2 — after 00 approved; props only)

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Gloria's personal items: Gawain's promise badge shown as a standalone emblem study with front view, side view and an exploded/disassembled study of the pin, plate and any set gemstone; the plain dark infiltration cloak's neck clasp shown in full and in close attachment detail; and any carried documents / sealed letters used in her double-agent line shown as flat and rolled studies. Arrange the studies cleanly on one sheet at consistent scale.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain the cloak clasp or garment attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All props must match Image 1's colors, materials and construction exactly.

Costume/props invariants:
The promise badge is a single warm-gold knight-style token matching the badge on Image 1's left chest; the infiltration cloak clasp is a plain dark fastening in muted metal; the carried documents are plain parchment/letters. Do not add, remove or redesign any prop, and do not add weapons or armor.

Composition:
Neatly arranged prop studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the cloak-clasp attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body character, miniature person, portrait, face, human silhouette, character scale inset, wings, horns, tail, weapon, sword, armor plate, invented prop, changed material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts

Constraints:
- Match the props' exact appearance to Image 1.
- Use Images 2-4 for visual style only.
- Props only; no character body, face or silhouette anywhere except an optional blank headless tailor form for attachment studies.
- No text, captions, labels, logo, signature or watermark.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```
