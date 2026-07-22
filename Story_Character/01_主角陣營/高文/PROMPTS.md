# 高文 Gawain — Image Generation Prompts (00–09)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-gawain-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 must NOT be generated until the user has approved 00.** Once approved, `00-gawain-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> Each prompt below is independent and self-contained. Do not merge them.
> Default depiction is the full-glory holy-knight version (silver-white plate armor + blue cloak). The post-exile stripped-armor version is an alternate costume noted in CHARACTER_SPEC.md and is NOT used here unless the user asks.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-gawain-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Gawain, a tall and sturdy proper knight (apparent age 25-30), height ~185cm, broad shoulders and thick arms, powerful seven-to-seven-and-a-half-heads knightly build (CANON). CANON facial identity: forthright, earnest and resolute masculine face with a strong jaw and an ardent, honest gaze; warm brown-gold short hair in a clean, lightly layered knight's cut (CANON). Warm healthy skin tone; locked warm amber eyes (LOCKED default). Costume version: full-glory Hector holy-knight attire (CANON) - a full suit of silver-white polished plate armor (pauldrons, breastplate, vambraces, leg armor, plated boots) worn over a dark inner surcoat; a metal gorget / standing armored collar; a royal-blue woven-cloth cloak fastened at the shoulder with a metal clasp; a round silver knight badge worn centered on the breastplate, engraved with a single upright holy sword at center encircled by a laurel wreath, silver base with restrained gold rim, no gemstone inlay (the same token he and Gloria exchanged as a promise, CANON glyph LOCKED default); a knight's sword-belt at the waist bearing his holy sword (CANON). Palette: silver / cool-white plate plus royal blue cloak, warm brown-gold hair, dark inner surcoat, cold-steel blade with restrained gold-trim fittings, aligned with the whole story's converged gold / silver-blue / dark scheme. Depict him in a calm, un-powered state (no active glow).

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, female, feminine face, slender frail build, stripped armor, torn tunic, visible wounds, glowing wounds, elderly face, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (tall broad-shouldered sturdy knight, brown-gold short hair, forthright earnest face, silver-white plate armor, blue cloak, chest knight badge, holy sword).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 01 — `01-gawain-front-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single front full-body orthographic view

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gawain as a single clean front full-body orthographic view, standing straight in a neutral A-pose, facing the viewer at 0 degrees, full body from head to plated boots inside frame.

Identity invariants:
Exact face, forthright earnest resolute expression, warm amber eyes with an ardent honest gaze, warm brown-gold short knight's hair, warm skin, tall broad-shouldered sturdy knightly build - all identical to Image 1.

Costume invariants:
Full-glory holy-knight attire from Image 1: silver-white polished plate armor (pauldrons, breastplate, vambraces, leg armor, plated boots) over a dark inner surcoat, metal gorget / armored collar, royal-blue cloak fastened at the shoulder with a metal clasp, knight badge centered on the breastplate, knight's sword-belt bearing the holy sword at the waist. Same accessory count, same positions, same colors and materials. Calm un-powered state, no active glow.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight-on front view, full body head-to-toe, centered, feet on an implied ground line, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, female, feminine face, slender frail build, stripped armor, torn tunic, visible wounds, glowing wounds, back view, side view, three-quarter view, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 02 — `02-gawain-left-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic view

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gawain as a single clean LEFT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree left profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, forthright earnest expression, warm amber eye with ardent honest gaze, warm brown-gold short knight's hair, warm skin, tall broad-shouldered sturdy knightly build - identical to Image 1, only rotated to the left profile.

Costume invariants:
Same full-glory holy-knight attire as Image 1: silver-white plate armor over dark inner surcoat, metal gorget / armored collar, royal-blue cloak fastened at the shoulder, knight badge on the breastplate, knight's sword-belt bearing the holy sword (the sword reads at the near hip on this profile), plated boots. Identical count, positions, colors and materials. Calm un-powered state, no active glow.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True left-side profile, full body head-to-toe, centered, blue cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, female, feminine face, slender frail build, stripped armor, torn tunic, visible wounds, glowing wounds, front view, back view, three-quarter view, right profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 03 — `03-gawain-back-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single back full-body orthographic view

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gawain as a single clean BACK full-body orthographic view, standing straight in a neutral pose, back fully to the viewer at 180 degrees, full body head-to-boots inside frame, clarifying the rear construction of the armor and cloak.

Identity invariants:
Same character build, warm brown-gold short knight's hair from behind (back of head and neckline consistent with Image 1), warm skin, tall broad-shouldered sturdy knightly build. Face not visible but body identity unchanged.

Costume invariants:
Rear of the full-glory holy-knight attire: royal-blue cloak covering the back, shoulder clasp visible from behind, back plates of the silver-white armor, sword-belt and holy-sword scabbard readable at the hip from behind, plated boots. Same count, positions, colors and materials as Image 1. Calm un-powered state, no active glow.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight back view, full body head-to-toe, centered, blue cloak back panel fully shown, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, female, feminine face, slender frail build, stripped armor, torn tunic, visible wounds, glowing wounds, front view, side view, three-quarter view, visible face, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 04 — `04-gawain-right-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic view

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Gawain as a single clean RIGHT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree right profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, forthright earnest expression, warm amber eye with ardent honest gaze, warm brown-gold short knight's hair, warm skin, tall broad-shouldered sturdy knightly build - identical to Image 1, only rotated to the right profile.

Costume invariants:
Same full-glory holy-knight attire as Image 1: silver-white plate armor over dark inner surcoat, metal gorget / armored collar, royal-blue cloak fastened at the shoulder, knight badge on the breastplate, knight's sword-belt bearing the holy sword (the sword reads at the near hip on this profile), plated boots. Identical count, positions, colors and materials. Calm un-powered state, no active glow.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True right-side profile, full body head-to-toe, centered, blue cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, female, feminine face, slender frail build, stripped armor, torn tunic, visible wounds, glowing wounds, front view, back view, three-quarter view, left profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 05 — `05-gawain-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Gawain containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view.

Identity invariants:
All four figures are the identical character from Image 1: same face, forthright earnest expression, warm amber eyes, warm brown-gold short knight's hair, warm skin, tall broad-shouldered sturdy knightly build. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view wears the identical full-glory holy-knight attire from Image 1: silver-white plate armor over dark inner surcoat, metal gorget / armored collar, royal-blue cloak fastened at the shoulder, knight badge on the breastplate, knight's sword-belt bearing the holy sword, plated boots. Same count, positions, colors and materials in all four views. Calm un-powered state, no active glow.

Composition:
Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.
Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, female, feminine face, slender frail build, stripped armor, torn tunic, visible wounds, glowing wounds, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 06 — `06-gawain-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-gawain-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Gawain into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, forthright earnest masculine features, warm amber eyes, warm skin tone, warm brown-gold short knight's hair, bangs and hair length, neck proportions, the metal gorget / armored collar and the knight badge visible at the top of the breastplate. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, tail, crown, female, feminine face, glowing wounds, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 07 — `07-gawain-costume-detail-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Gawain's full-glory holy-knight attire, presenting several clean close-up detail studies of the armor and garment as they appear on Image 1: the metal gorget / armored collar and pauldron, the silver-white breastplate with the centered knight badge, the royal-blue cloak fabric weave, shoulder clasp and hem, the vambraces and plated gauntlets, the knight's sword-belt attachment at the waist, and the leg-armor / plated-boot construction. Arrange the detail studies cleanly on one sheet at a consistent scale.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: silver / cool-white polished plate, royal-blue cloak, dark inner surcoat, cold-steel fittings with restrained gold trim, the knight badge form, the holy-sword belt attachment. Do not redesign, add or remove any element. No stripped-armor or torn-tunic variant here.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, female, stripped armor, torn tunic, visible wounds, glowing wounds, invented accessory, changed color scheme, different material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Preserve the exact approved costume from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 08 — `08-gawain-color-material-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Gawain in Image 1: neatly arranged color swatches and material sample chips showing the silver / cool-white plate primary, royal-blue cloak, dark inner-surcoat fabric, cold-steel blade metal, restrained gold-trim fittings, warm brown-gold hair color and warm amber eye color. Beside the swatches show small material studies illustrating the polished-plate, cloak fabric-weave, leather belt and restrained gold-trim metal finishes as they appear on the character (no gemstones).

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Sample colors and materials exactly from Image 1.
- Use Images 2-4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```

---

## 09 — `09-gawain-prop-construction-sheet.png`  (STAGE 2 — after 00 approved; props only)

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-gawain-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Gawain's equipment: the holy sword shown with front view, side view and an exploded/disassembled study of blade, guard, grip and pommel; the knight badge as a standalone emblem study shown in full and in close detail (the token he and Gloria exchanged); the plate-armor attachment points (pauldron, breastplate, vambrace and leg-armor buckles and straps) shown as construction studies; and the royal-blue cloak clasp shown as an attachment study. Arrange the studies cleanly on one sheet at consistent scale.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All props must match Image 1's colors, materials and construction exactly.

Costume/props invariants:
The holy sword is a single cold-steel blade with restrained gold-trim fittings matching Image 1; the knight badge matches the chest emblem on Image 1; the plate-armor buckles, straps and attachment points match Image 1's construction; the blue cloak clasp matches Image 1's shoulder fastening. Do not add, remove or redesign any prop.

Composition:
Neatly arranged prop studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the armor/cloak attachment studies, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body character, miniature person, portrait, face, human silhouette, character scale inset, wings, horns, tail, crown, glowing wounds, invented prop, changed material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, gemstone encrustation, black-and-gold pauldron styling, clergy silk, crystalline parts

Constraints:
- Match the props' exact appearance to Image 1.
- Use Images 2-4 for visual style only.
- Props only; no character body, face or silhouette anywhere except an optional blank headless tailor form for attachment studies.
- No text, captions, labels, logo, signature or watermark.
- Do not invent missing canonical details.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```
