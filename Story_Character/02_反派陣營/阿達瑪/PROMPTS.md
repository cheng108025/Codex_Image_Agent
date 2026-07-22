# 阿達瑪 Adama — Image Generation Prompts (LIGHT: 00, 05, 06)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-adama-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **05 and 06 must NOT be generated until the user has approved 00.** Once approved, `00-adama-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> This is the LIGHT prompt set (00, 05, 06 only). Each prompt below is independent and self-contained. Do not merge them.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-adama-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Adama, a non-human regenerating enemy in a wiry-strong male humanoid form, baseline height ~188cm, lean-and-honed seven-heads proportions whose body shifts as it regenerates. CANON identity - this is his defining, non-negotiable feature: his healing wounds are visibly rendered as semi-translucent CRYSTAL growth combined with exposed, raw regenerating flesh; his limbs and torso commonly show translucent crystalline formations and exposed muscle texture - concentrated on the right forearm and hand, the left shoulder and collarbone, and along the right ribs and flank (LOCKED default distribution), with exposed dark-red regenerating flesh at those same wound sites - reading as a body that is broken and growing back at once. This crystal-and-flesh feature is HIS OWN body (not external adornment) and must be present and clearly visible - never replace it with intact ordinary human skin, and never negate it. CANON: he wears a SILVER pendant on a chain at his neck, the artifact he uses to control the great dragon. Overall palette: silver-gray dominant body with dark-red exposed flesh and healing wounds. Face: a lean, sharp humanoid face wearing a cold, oppressive smile, with narrow cold eyes of dark-red irises (LOCKED default) and short silver-gray hair (LOCKED default). Costume version: Stochia battlefield state - a battered, half-bare humanoid frame covered only by limited torn cloth wraps and broken armor fragments, deliberately leaving the regenerating crystal and exposed tissue visible; low or open collar to reveal the silver dragon-control pendant against the crystalline chest. Aligned with the whole story's converged gold / silver-blue / dark scheme, here weighted to silver-gray and dark-red. He carries no handheld weapon (LOCKED default); his threat is his regeneration and his control of the great dragon through the pendant. Primary materials: his own semi-translucent crystalline body plus exposed regenerating flesh, and a silver neck pendant - NOT ordinary intact skin, not a clergy robe, not gold pauldrons.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories, including the identical placement of the semi-translucent crystal growth and exposed regenerating flesh. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, smooth unbroken skin covering the whole body, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, crown, gold pauldrons, clergy robe, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Follow all CANON facts exactly (semi-translucent crystal growth plus exposed regenerating flesh at healing wounds, silver dragon-control pendant, silver-gray and dark-red palette, cold smile). Never negate the crystalline / exposed-flesh feature.
- The crystalline body and exposed flesh are HIS OWN canon anatomy: the "Revanas ice-crystal horns / crystalline wings / tail" exclusions refer to those specific external structures (which he lacks) and must never be read as negating his own crystal body or exposed flesh.
- Materials are his crystalline body, exposed regenerating flesh and the silver pendant in dark-red / silver-gray tones; no wings, horns, tail, fully-intact ordinary skin, clergy robe or gold pauldrons.
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details (hair, eye color, fixed weapon).
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

## 05 — `05-adama-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Adama containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view.

Identity invariants:
All four figures are the identical character from Image 1: same lean sharp humanoid face, cold oppressive smile, silver-gray body with dark-red exposed regenerating flesh, and the SAME semi-translucent crystal growth and exposed tissue on limbs and torso in the same locations, wiry-strong seven-heads proportions. The crystal-and-flesh feature must remain clearly visible in every view - never replaced by intact ordinary skin. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view shows the identical battlefield state from Image 1: battered half-bare frame with limited torn cloth wraps and broken armor fragments, low/open collar, and the SILVER dragon-control pendant on a chain at the neck. Same count, positions, colors and materials in all four views. The pendant stays at the same neck position across all views.

Composition:
Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping. Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, smooth unbroken skin covering the whole body, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, crown, gold pauldrons, clergy robe, inconsistent scale between views, different height per view, mismatched crystal placement between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views, including the crystal-and-flesh regenerating feature.
- His crystalline body and exposed flesh are canon anatomy and must stay visible; the Revanas wings/horns/tail exclusions never override it.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 06 — `06-adama-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-adama-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Adama into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the head. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, silver-gray skin tone with dark-red exposed regenerating flesh, and the SAME semi-translucent crystal growth and exposed tissue visible on the face, neck and shoulders in the same locations - this crystal-and-flesh feature must remain clearly visible in every panel and must never be replaced by intact ordinary human skin. Preserve the same hairstyle, hair length, neck proportions, open/low collar and the silver dragon-control pendant visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. The semi-translucent crystal and exposed regenerating flesh must stay visible on face/neck in all eight panels. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, fully intact ordinary human skin only, smooth unbroken skin, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, gold pauldrons, clergy robe, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits

Constraints:
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- His own crystalline body and exposed regenerating flesh are canon and must remain visible in all eight panels; the wings/horns/tail exclusions never negate them.
```
