# 帕拉諾雅 Paranoia — Image Generation Prompts (00–09)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-paranoia-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 must NOT be generated until the user has approved 00.** Once approved, `00-paranoia-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> **Dragon rule:** the dragon Paranoia controls is a SEPARATE sheet. NEVER draw the dragon in any prompt below.
> **Build rule:** Paranoia's tall, muscular, hulking build (~195cm) is CANON — it must be asserted in the definition/invariants and must NEVER appear in any negative prompt. Only `slender bishonen build` is negated.
> Each prompt below is independent and self-contained. Do not merge them.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-paranoia-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Paranoia, a tall, violent, MUSCULAR hulking male warlord (apparent age 35-45), height read ~195cm, a heavyweight powerfully-built frame with broad shoulders, thick arms and an oppressive intimidating presence (this muscular hulking build is a CANON identity fact, not to be slimmed). CANON facial identity: a coarse, square, malicious and half-mad face, mad blood-shot eyes with an unpredictable violent glare; LOCKED cold grey-blue iris, whites shot with red. Wild, coarse, unkempt LOCKED near-black dark hair with coarse grey streaks, with a short rough beard. CANON signature power: ELECTRIC ARCS crawl over his knuckles and along his neck - cool blue-white lightning arcing across the skin. Costume version: usurper warlord battle attire (CANON direction) - RAGGED yet OSTENTATIOUSLY REGAL usurper armor that looks looted and assembled from a king's gear: blackened rusted heavyweight plate mixed with mismatched gilded/dark-gold royal pieces, an asymmetric shoulder (one looted ornate gilded pauldron, one crude battle plate), a battered breastplate with usurped royal crests and LOCKED deep blood-red gemstones crudely set into it, heavy vambraces and gloves, a wide belt with a hook for the greatsword, a tattered once-luxurious cloak with frayed gold-thread embroidery, heavy worn war boots. He carries a large two-handed BLOODY GREATSWORD, its blade smeared with dried and fresh blood. Palette: blackened rusted iron-grey plate, usurped tarnished gold ornaments, blood red, cool blue-white electric arcs. NOTE: no dragon anywhere in the frame - the dragon he controls is a separate sheet.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, pretty-boy face, dragon, winged creature, dragon in frame, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (tall muscular hulking ~195cm build, wild long hair, mad blood-shot eyes, electric arcs over knuckles and neck, ragged yet ostentatiously regal usurper armor, bloody greatsword).
- The muscular hulking build is CANON; render it fully and never slim it down.
- Do NOT draw the dragon; it belongs to a separate sheet.
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

## 01 — `01-paranoia-front-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single front full-body orthographic view

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Paranoia as a single clean front full-body orthographic view, standing straight in a neutral A-pose, facing the viewer at 0 degrees, full body from head to boots inside frame.

Identity invariants:
Exact face, mad blood-shot eyes with a cold-toned iris and violent glare, wild coarse unkempt long dark hair with short rough beard, tall MUSCULAR hulking ~195cm heavyweight build with broad shoulders and thick arms (identical to Image 1, never slimmed), cool blue-white electric arcs crawling over the knuckles and neck - all identical to Image 1.

Costume invariants:
Usurper warlord attire from Image 1: ragged yet ostentatiously regal looted-and-assembled armor, blackened rusted plate mixed with mismatched gilded royal pieces, asymmetric shoulders (one ornate gilded pauldron, one crude battle plate), battered breastplate with crudely set usurped crests and gemstones, heavy vambraces and gloves, wide belt with greatsword hook, tattered once-luxurious cloak with frayed gold-thread embroidery, heavy war boots. He holds or rests his large two-handed bloody greatsword. Same accessory count, same positions, same colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight-on front view, full body head-to-toe, centered, feet on an implied ground line, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn equipment and greatsword, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, pretty-boy face, dragon, winged creature, dragon in frame, back view, side view, three-quarter view, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Preserve the exact approved character identity from Image 1, including the muscular hulking build (never slimmed).
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 02 — `02-paranoia-left-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic view

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Paranoia as a single clean LEFT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree left profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, mad blood-shot eye with cold-toned iris and violent glare, wild coarse unkempt long dark hair with short rough beard, tall MUSCULAR hulking ~195cm heavyweight build (identical to Image 1, never slimmed), cool blue-white electric arcs over the knuckles and neck - identical to Image 1, only rotated to the left profile.

Costume invariants:
Same usurper warlord attire as Image 1: ragged yet ostentatiously regal looted-and-assembled armor, blackened rusted plate mixed with gilded royal pieces, asymmetric shoulders (the ornate gilded pauldron and the crude battle plate read consistently on this profile), battered breastplate with usurped crests and gemstones, heavy vambraces and gloves, wide belt with greatsword hook, tattered gold-embroidered cloak, heavy war boots, the bloody greatsword held or belted. Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True left-side profile, full body head-to-toe, centered, tattered cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment and greatsword, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, pretty-boy face, dragon, winged creature, dragon in frame, front view, back view, three-quarter view, right profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Preserve the exact approved character identity from Image 1, including the muscular hulking build (never slimmed).
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 03 — `03-paranoia-back-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single back full-body orthographic view

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Paranoia as a single clean BACK full-body orthographic view, standing straight in a neutral pose, back fully to the viewer at 180 degrees, full body head-to-boots inside frame, clarifying the rear construction of the costume.

Identity invariants:
Same tall MUSCULAR hulking ~195cm heavyweight build with broad thick back and shoulders (identical to Image 1, never slimmed), wild coarse unkempt long dark hair seen from behind (back of head and neckline consistent with Image 1), cool blue-white electric arcs still visible over the neck. Face not visible but body identity unchanged.

Costume invariants:
Rear of the usurper warlord attire: tattered once-luxurious gold-embroidered cloak covering the back with frayed torn hem, asymmetric shoulder plates visible from behind (one gilded ornate, one crude), rear of the battered breastplate and belt, greatsword hook and mismatched armor back-straps readable, heavy war boots. Same count, positions, colors and materials as Image 1.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight back view, full body head-to-toe, centered, torn cloak back panel fully shown, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment and greatsword, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, dragon, winged creature, dragon in frame, front view, side view, three-quarter view, visible face, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Preserve the exact approved character identity from Image 1, including the muscular hulking build (never slimmed).
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 04 — `04-paranoia-right-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic view

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Paranoia as a single clean RIGHT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree right profile, full body head-to-boots inside frame.

Identity invariants:
Exact face, mad blood-shot eye with cold-toned iris and violent glare, wild coarse unkempt long dark hair with short rough beard, tall MUSCULAR hulking ~195cm heavyweight build (identical to Image 1, never slimmed), cool blue-white electric arcs over the knuckles and neck - identical to Image 1, only rotated to the right profile.

Costume invariants:
Same usurper warlord attire as Image 1: ragged yet ostentatiously regal looted-and-assembled armor, blackened rusted plate mixed with gilded royal pieces, asymmetric shoulders (the ornate gilded pauldron and crude battle plate read consistently on this profile), battered breastplate with usurped crests and gemstones, heavy vambraces and gloves, wide belt with greatsword hook, tattered gold-embroidered cloak, heavy war boots, the bloody greatsword held or belted. Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True right-side profile, full body head-to-toe, centered, tattered cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment and greatsword, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, pretty-boy face, dragon, winged creature, dragon in frame, front view, back view, three-quarter view, left profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Preserve the exact approved character identity from Image 1, including the muscular hulking build (never slimmed).
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 05 — `05-paranoia-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Paranoia containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view.

Identity invariants:
All four figures are the identical character from Image 1: same face, mad blood-shot eyes with cold-toned iris, wild coarse unkempt long dark hair with short rough beard, tall MUSCULAR hulking ~195cm heavyweight build (never slimmed), cool blue-white electric arcs over knuckles and neck. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view wears the identical usurper warlord attire from Image 1: ragged yet ostentatiously regal looted-and-assembled armor, blackened rusted plate mixed with gilded royal pieces, asymmetric shoulders, battered breastplate with usurped crests and gemstones, heavy vambraces and gloves, wide belt with greatsword hook, tattered gold-embroidered cloak, heavy war boots, the bloody greatsword held or belted. Same count, positions, colors and materials in all four views.

Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.

Composition:
Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment and greatsword, no dragon, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, slender bishonen build, feminine delicate frame, thin frail body, dragon, winged creature, dragon in frame, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views, including the muscular hulking build (never slimmed).
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 06 — `06-paranoia-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-paranoia-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Paranoia into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, mad blood-shot eyes with cold-toned iris, coarse weathered skin tone, wild coarse unkempt long dark hair, short rough beard, thick neck, the high battered armor collar of the usurper gear, and the cool blue-white electric arcs crawling over the neck. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. Keep the muscular character's identity but never draw a dragon. The three style images define lighting, linework, shading and material rendering ONLY; do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, slender bishonen build, feminine delicate face, pretty-boy face, dragon, winged creature, horns, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling
```

---

## 07 — `07-paranoia-costume-detail-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Paranoia's usurper warlord attire, presenting several clean close-up detail studies of the armor and garments as they appear on Image 1: the high battered armor collar, the asymmetric shoulders (one looted ornate gilded pauldron and one crude battle plate), the blackened rusted breastplate with crudely-set usurped royal crests and gemstones, the tattered once-luxurious cloak fabric with frayed gold-thread embroidery and torn hem, the heavy vambraces and gloves, and the wide belt with the greatsword hook and mount. Arrange the detail studies cleanly on one sheet at a consistent scale.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly, including the muscular build proportions where limbs appear. No face-focused portrait is required. No dragon anywhere.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: blackened rusted iron-grey plate, usurped tarnished-gold ornaments, blood stains, tattered gold-embroidered cloak, heavy leather vambraces and belt. Do not redesign, add or remove any element.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, dragon, winged creature, dragon in frame, invented accessory, changed color scheme, different material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Preserve the exact approved costume from Image 1.
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 08 — `08-paranoia-color-material-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Paranoia in Image 1: neatly arranged color swatches and material sample chips showing the blackened rusted iron-grey plate, the usurped tarnished-gold ornament metal, blood red, deep charcoal-brown leather, tattered cloak fabric, dark coarse hair color, weathered skin tone, cold-toned iris color, and the cool blue-white electric-arc glow. Beside the swatches show small material studies illustrating the rusted-plate, tarnished-gilt, torn-fabric, worn-leather, gemstone and electric-arc finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep the dark, blood-and-tarnished-gold warlord scheme with cool electric-arc accents.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, dragon, winged creature, dragon in frame, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Sample colors and materials exactly from Image 1.
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 09 — `09-paranoia-prop-construction-sheet.png`  (STAGE 2 — after 00 approved; props only)

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-paranoia-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Paranoia's equipment: the large two-handed BLOODY GREATSWORD shown with front view, side view and an exploded/disassembled study of blade, cross-guard, grip and pommel, blade smeared with dried and fresh blood; the usurper CROWN and looted royal ARMOR PIECES (the ornate gilded pauldron, the crest-and-gemstone breastplate boss, the greatsword belt-hook) shown as standalone assembled-from-a-king's-gear studies; and ELECTRIC-ARC EFFECT studies showing how the cool blue-white lightning arcs crawl across knuckles and neck (as abstract arc/effect studies, not on a full figure). Arrange the studies cleanly on one sheet at consistent scale.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset. No dragon anywhere.

Identity invariants:
Not applicable - this sheet shows objects and effects only. All props must match Image 1's colors, materials and construction exactly.

Costume/props invariants:
The bloody greatsword is a single large two-handed blade with blood-smeared steel; the usurper crown and armor pieces match the ostentatiously-regal-yet-ragged looted-and-assembled gear on Image 1; the electric-arc effect studies use the same cool blue-white lightning as on Image 1. Do not add, remove or redesign any prop. Do not draw the dragon.

Composition:
Neatly arranged prop studies and exploded views plus abstract electric-arc effect studies on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the belt/mount attachment study, no grid, no labels, no numbers, no text, no dragon.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body character, miniature person, portrait, face, human silhouette, character scale inset, dragon, winged creature, dragon in frame, invented prop, changed material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe, ornate gemstone finery, clergy silk, neat black-gold pauldron styling

Constraints:
- Match the props' exact appearance to Image 1.
- Do NOT draw the dragon; it belongs to a separate sheet.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Props only; no character body, face or silhouette anywhere except an optional blank headless tailor form for attachment studies.
- No text, captions, labels, logo, signature or watermark.
- Do not invent missing canonical details.
```
