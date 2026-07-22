# 伊普拉新 Ipranshin — Image Generation Prompts (FULL: 00–09)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-ipranshin-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **05 and 06 must NOT be generated until the user has approved 00.** Once approved, `00-ipranshin-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> The original file supplied 00, 05 and 06. After the 00 identity anchor was approved on 2026-07-22, the workflow was expanded to the complete 00–09 package. Reusable prompts for 01–04 and 07–09 are stored in `FULL_WORKFLOW_PROMPTS.md`.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-ipranshin-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Ipranshin, a shadow-dwelling clergy schemer, a mid-aged man (apparent age read as a seasoned, deeply calculating advisor), height read ~180cm, slender seven-heads proportions whose body outline is deliberately swallowed and concealed by a wide loose robe. CANON silhouette: he wears a dark hooded clerical robe with an oversized hood and a heavy draped hooded mantle that hides his frame; the visible face is normally half-lit, half in shadow. CANON detail: wide long sleeves conceal rolled parchment scrolls and hidden orders tucked inside the cuffs. His whole presence is "voice-first, face-later" and enigmatic. IMPORTANT for this identity anchor: although the deployed design leans shadowed and half-lit, this anchor sheet MUST render a clear, fully identifiable face (it is the facial identity authority for later generations) — express the half-lit mood only as a soft shadow falling across one side of the face, never as obscured or hidden features. LOCKED identity defaults (concrete, no ambiguity): deep dark amber eyes; sleek near-black dark hair in a short-to-medium cut with the front hairline and the whole face fully exposed; the oversized hood is worn pushed back and low enough that the entire face and front hairline read clearly, so the hood frames but never covers the face; a single small restrained dark-gold embroidered circular Tiandi-Orthodox clerical sigil on the left chest. Costume: loose dark clerical robe over a high covered collar joined to the hood, the left-chest dark-gold clerical sigil as the only chest trim, a low understated sash at the waist, floor-length heavy draped robe with the hooded mantle over the back, dark soft boots barely visible under the hem, hands mostly hidden within the wide sleeves. Materials: matte dark woven wool cloth robe and draped mantle, minimal low-key dark-metal fittings only, absolutely no gemstones and no shining jewels. Palette: dark charcoal, deep indigo and dark brown dominant, with restrained dark-gold / dark-silver clerical trim, aligned with the whole story's converged dark scheme. No armor, no weapon.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations, so it must show the face clearly and unobscured even though the design mood is shadowed.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, fabric-focused material separation with minimal dark-metal fittings, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, bright cheerful lighting, sunny high-key lighting, armor, plate armor, weapon, sword, wings, horns, tail, crown, fully hidden face, blank void under hood, muscular warrior build, ornate gemstones, gold pauldrons, shining jewels, heavy metal armor, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Follow all CANON facts exactly (dark hooded clerical robe concealing the frame, half-lit mood shown as soft one-sided face shadow only, wide sleeves hiding scrolls and hidden orders, non-combatant schemer).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- The face must stay clear and identifiable in both views; never hide the face in shadow on this anchor.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

## 05 — `05-ipranshin-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Ipranshin containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose in every view. Keep the face clear and identifiable in the front and profile views as on Image 1; do not sink the face into shadow.

Identity invariants:
All four figures are the identical character from Image 1: same face, deep calm enigmatic gaze, half-lit mood expressed only as a soft one-sided face shadow, hair as seen under the hood on Image 1, fair cool skin, slender seven-heads proportions with the frame concealed by the wide robe. Identical head height and body scale across all four views, aligned to a common horizon and ground line.

Costume invariants:
Every view wears the identical shadow-schemer attire from Image 1: dark hooded clerical robe with oversized hood and draped hooded mantle, high covered collar joined to the hood, restrained subdued religious chest trim, wide long sleeves concealing scrolls and hidden orders, low understated waist sash, floor-length heavy draped robe, dark soft boots barely visible under the hem. Same count, positions, colors and materials in all four views. The back view must clarify how the hooded mantle drapes over the back.

Composition:
Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.
Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn robe and concealed sleeve contents, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, fabric-focused material separation with minimal dark-metal fittings, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, bright cheerful lighting, sunny high-key lighting, armor, plate armor, weapon, sword, wings, horns, tail, crown, fully hidden face, blank void under hood, muscular warrior build, inconsistent scale between views, different height per view, mismatched costume between views, ornate gemstones, gold pauldrons, shining jewels, heavy metal armor, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 06 — `06-ipranshin-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-ipranshin-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Ipranshin into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the head or hood. The head must occupy approximately 70-75 percent of each panel. The face must stay clear and fully readable in all eight panels; do not hide it in shadow.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, deep calm enigmatic eyes, fair cool skin tone, hair as seen under the hood on Image 1, neck proportions, the oversized hood framing the face, the high covered clerical collar and restrained religious collar trim. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. The face must remain clear and identifiable; the hood may frame the face but must never obscure it. The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, bright cheerful lighting, sunny high-key lighting, fully hidden face, blank void under hood, armor, weapon, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, ornate gemstones, gold pauldrons, shining jewels, heavy metal armor, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe
```
