# 皇后阿格妮絲 Agnes — Image Generation Prompts (LIGHT package: 00, 05, 06)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-agnes-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **05 and 06 must NOT be generated until the user has approved 00.** Once approved, `00-agnes-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for the prompts below; the three style images stay style-only.
> This is a LIGHT package: only 00, 05 and 06 are provided. Each prompt is independent and self-contained. Do not merge them.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-agnes-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Agnes, a frail and sickly adult queen (apparent age around 30), height read ~168cm but appearing smaller and diminished from illness and a hunched posture, slender-but-gaunt proportions with thin shoulders and a fragile neck. CANON facial identity: a wan, hollow-cheeked worn face marked by past trauma; HOLLOW GOLD eyes with an empty, unfocused gaze and faint bluish shadows beneath — these gold eyes are the origin of her son Kritz's gold (CANON, must read clearly). Pale-gold / light-blonde WAIST-LENGTH hair worn loose and disheveled, with the bangs and stray strands pushed aside so the hollow gold eyes stay fully clear and legible (CANON hair, waist length locked as anchor default). Translucent, near-transparent pale skin with a cold candlelit pallor (CANON). Costume version: the night-of-the-coup bedchamber attire (CANON) - a single thin white nightgown, soft and simple, with faded gold-thread embroidery at the collar and cuffs signifying a former grandeur now shattered; loose long sleeves; a floor-length soft-draping gown; no armor, no belt of hardware, bare feet or plain soft slippers. Palette: white / off-white dominant with tarnished faded gold-thread trim, aligned with the whole story's converged gold / silver-blue / dark scheme.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations, and must render the hollow gold eyes clearly and unobscured.

Sheet layout:
a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Materials:
Thin, plain, soft cloth nightgown fabric only, with faded gold-thread embroidery at collar and cuffs as the single trim; no metal, no gemstones, no jewels, no armor plating. She is unarmed and frail.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, fabric-focused material separation with minimal dark-metal fittings, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, weapon, sword, shield, wings, horns, tail, crown, robust healthy build, rosy cheeks, plump figure, athletic vigor, blue eyes, green eyes, vibrant saturated gown, ornate jewelry, gemstones, shining jewels, gold pauldrons, metal armor, gold shoulder plates, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Follow all CANON facts exactly (hollow gold eyes as the source of Kritz's gold, pale-gold disheveled waist-length hair, translucent pale skin, thin white nightgown with faded gold-thread trim, frail sickly build).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

## 05 — `05-agnes-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-agnes-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Agnes containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view, keeping her frail, slightly diminished posture consistent across all four.

Sheet layout:
a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.

Identity invariants:
All four figures are the identical character from Image 1: same gaunt worn face, hollow gold eyes with empty unfocused gaze and faint under-eye shadows, pale-gold / light-blonde loose disheveled waist-length hair, translucent near-transparent pale skin, thin slender-but-frail proportions with fragile neck and thin shoulders. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view wears the identical night-of-the-coup bedchamber attire from Image 1: a single thin white nightgown, faded gold-thread embroidery at the collar and cuffs, loose long sleeves, floor-length soft-draping gown, bare feet or plain soft slippers. No armor, no belt hardware, no added accessories. Same colors and materials in all four views; the loose disheveled hair falls consistently and is shown down the back in the 180-degree view.

Composition:
Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, fabric-focused material separation with minimal dark-metal fittings, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, weapon, sword, shield, wings, horns, tail, crown, robust healthy build, rosy cheeks, plump figure, athletic vigor, blue eyes, green eyes, vibrant saturated gown, ornate jewelry, gemstones, gold pauldrons, metal armor, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 06 — `06-agnes-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-agnes-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Agnes into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and gaunt worn face proportions, hollow gold eyes with faint under-eye shadows, translucent near-transparent pale skin, pale-gold / light-blonde loose disheveled long hair, bangs and hair length, fragile neck proportions, and the visible thin white nightgown collar with faded gold-thread embroidery. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the underlying frail, sickly and hollow-eyed quality remains.

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
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, armor, helmet, crown, wings, horns, tail, blue eyes, green eyes, rosy healthy cheeks, plump face, ornate jewelry, gemstones, gold pauldrons, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe
```
