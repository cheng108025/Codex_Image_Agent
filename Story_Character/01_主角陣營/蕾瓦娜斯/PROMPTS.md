# 蕾瓦娜斯 Revanas — Image Generation Prompts (00–09)

> **2026-07-22 視覺正本覆寫：本檔舊版文字造型已停用。** 蕾瓦娜斯已有核准四視圖 `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`；它是臉、髮型、角、翅膀、尾巴、服裝、配色與材質的唯一權威。凡下文涉及深色角、破舊囚服、手腕殘鏈或無尾的提示均不得執行。實際完成品與使用規則見 `README.md`。

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-revanas-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 must NOT be generated until the user has approved 00.** Once approved, `00-revanas-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> Each prompt below is independent and self-contained. Do not merge them.
> **Never-negate identity (CRITICAL):** a pair of backward-curving dark horns; a pair of membranous wings; heterochromia with the character's LEFT eye gold and RIGHT eye silver-blue; silver-white long hair; wrist remnant chains. The negatives exclude a tail, extra horns and extra wings, but must NEVER drop the horns or wings (she is not a plain human).

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-revanas-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Revanas, a petite timid girl (apparent age 15-17), height read ~155cm, slender delicate build, roughly six-and-a-half to seven heads youthful proportions. CANON identity: a pair of backward-curving dark solid horns (charcoal-to-deep-brown keratin) grow from the sides/top of her head, each about one-third of head-height, a single smooth backward curve with tips pointing back and slightly up, symmetric pair; a pair of retractable membranous wings attach at her shoulder blades, held FOLDED/naturally half-closed in this anchor (translucent membrane that emits cold silver-blue light only when spread). CANON heterochromia (LOCKED shades): the character's LEFT eye is warm amber-gold and her RIGHT eye is pale moonlit silver-blue (moon-angel motif); large innocent eyes; her expression stays pure and timid, a deliberate contrast to the demon-like horns and wings that humans fear. Waist-length silver-white / moonlit straight hair with bangs, parted so both dark horns stay fully visible and are never covered by hair, pale cool moonlit skin. Costume version: cave-captivity attire (CANON) - a single layer of torn ragged coarse cloth garment with frayed hems, thin shoulder strap or bare shoulders so the wing roots read, plain chest, a rope or cloth waist tie, ragged knee-to-calf hem, bare feet or simple cloth foot-wraps; CANON wrist remnant chains - rusted iron manacles on both wrists with broken chain links dangling from her captivity. Palette: silver-white and silver-blue moonlight dominant, dark horns, rusted-iron manacle chains, pale skin, aligned with the whole story's converged gold / silver-blue / dark scheme. She has NO tail.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, horns, folded wings, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations, and must clearly show the gold LEFT eye and silver-blue RIGHT eye and the pair of dark horns.

Sheet layout:
a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, tail, demon tail, devil tail, extra horns, third horn, more than two horns, single horn, hornless, missing horns, extra wings, more than two wings, extra pair of wings, single wing, wingless, missing wings, plain human without horns or wings, matching eyes, same-colored eyes, both eyes gold, both eyes silver-blue, heterochromia swapped, tall mature woman, muscular build, weapon, crown, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (a pair of backward-curving dark horns, a pair of membranous wings held folded, heterochromia with LEFT eye gold and RIGHT eye silver-blue, silver-white long hair, wrist remnant chains, petite ~155cm slender build, no tail).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

## 01 — `01-revanas-front-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single front full-body orthographic view

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Revanas as a single clean front full-body orthographic view, standing straight in a neutral A-pose, facing the viewer at 0 degrees, full body from head to feet inside frame, wings held folded/naturally half-closed against the back.

Identity invariants:
Exact face, heterochromia with the LEFT eye gold and the RIGHT eye silver-blue, pure timid expression, silver-white / moonlit long straight hair with bangs, pale cool skin, a pair of backward-curving dark horns, a pair of folded membranous wings, petite ~155cm slender youthful proportions - all identical to Image 1.

Costume invariants:
Cave-captivity attire from Image 1: single layer of torn ragged coarse cloth garment with frayed hems, thin shoulder strap or bare shoulders showing the wing roots, rope/cloth waist tie, ragged knee-to-calf hem, bare feet or cloth foot-wraps, and rusted iron wrist manacles with broken chain links on both wrists. Same accessory count, same positions, same colors and materials. No tail.

Composition:
Straight-on front view, full body head-to-feet, centered, feet on an implied ground line, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn cloth and wrist chains. Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, tail, demon tail, devil tail, extra horns, third horn, more than two horns, single horn, hornless, missing horns, extra wings, more than two wings, single wing, wingless, missing wings, plain human without horns or wings, matching eyes, same-colored eyes, both eyes gold, both eyes silver-blue, heterochromia swapped, back view, side view, three-quarter view, weapon, crown, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 02 — `02-revanas-left-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic view

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Revanas as a single clean LEFT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree left profile, full body head-to-feet inside frame, wings folded against the back and clearly readable in profile.

Identity invariants:
Exact face, the LEFT (near-side) eye gold, pure timid expression, silver-white / moonlit long straight hair, pale cool skin, a pair of backward-curving dark horns, a pair of folded membranous wings, petite ~155cm slender youthful proportions - identical to Image 1, only rotated to the left profile.

Costume invariants:
Same cave-captivity attire as Image 1: torn ragged coarse cloth garment with frayed hems, rope/cloth waist tie, ragged hem, bare feet or cloth wraps, rusted iron wrist manacles with broken chain links on both wrists, wing roots at the shoulder blades visible in profile. Identical count, positions, colors and materials. No tail.

Composition:
True left-side profile, full body head-to-feet, centered, folded wing silhouette and horn curve clearly visible along the profile, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn cloth and wrist chains. Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, tail, demon tail, devil tail, extra horns, third horn, more than two horns, single horn, hornless, missing horns, extra wings, more than two wings, single wing, wingless, missing wings, plain human without horns or wings, matching eyes, both eyes gold, both eyes silver-blue, front view, back view, three-quarter view, right profile, weapon, crown, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 03 — `03-revanas-back-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single back full-body orthographic view

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Revanas as a single clean BACK full-body orthographic view, standing straight in a neutral pose, back fully to the viewer at 180 degrees, full body head-to-feet inside frame, clarifying the rear construction of the wings, their shoulder-blade attachment roots, and the back of the horns.

Identity invariants:
Same petite slender build, silver-white / moonlit long straight hair from behind (back of head and the pair of backward-curving dark horns consistent with Image 1), pale cool skin. A pair of folded membranous wings attach at the shoulder blades. Face not visible but body identity unchanged. No tail.

Costume invariants:
Rear of the cave-captivity attire: torn ragged coarse cloth garment across the back with a cutout or straps letting the wing roots emerge, rope/cloth waist tie, ragged hem, and rusted iron wrist manacles readable at the wrists. Same count, positions, colors and materials as Image 1.

Composition:
Straight back view, full body head-to-feet, centered, the folded wings and their attachment to the back fully shown, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn cloth and wrist chains. Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, tail, demon tail, devil tail, extra horns, third horn, more than two horns, single horn, hornless, missing horns, extra wings, more than two wings, single wing, wingless, missing wings, plain human without horns or wings, front view, side view, three-quarter view, visible face, weapon, crown, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 04 — `04-revanas-right-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic view

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Revanas as a single clean RIGHT-side profile full-body orthographic view, standing straight in a neutral pose, body turned to a true 90-degree right profile, full body head-to-feet inside frame, wings folded against the back and clearly readable in profile.

Identity invariants:
Exact face, the RIGHT (near-side) eye silver-blue, pure timid expression, silver-white / moonlit long straight hair, pale cool skin, a pair of backward-curving dark horns, a pair of folded membranous wings, petite ~155cm slender youthful proportions - identical to Image 1, only rotated to the right profile.

Costume invariants:
Same cave-captivity attire as Image 1: torn ragged coarse cloth garment with frayed hems, rope/cloth waist tie, ragged hem, bare feet or cloth wraps, rusted iron wrist manacles with broken chain links on both wrists, wing roots at the shoulder blades visible in profile. Identical count, positions, colors and materials. No tail.

Composition:
True right-side profile, full body head-to-feet, centered, folded wing silhouette and horn curve clearly visible along the profile, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn cloth and wrist chains. Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, tail, demon tail, devil tail, extra horns, third horn, more than two horns, single horn, hornless, missing horns, extra wings, more than two wings, single wing, wingless, missing wings, plain human without horns or wings, matching eyes, both eyes gold, both eyes silver-blue, front view, back view, three-quarter view, left profile, weapon, crown, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 05 — `05-revanas-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Revanas containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing pose with folded wings in every view.

Identity invariants:
All four figures are the identical character from Image 1: same face, heterochromia with the LEFT eye gold and RIGHT eye silver-blue, pure timid expression, silver-white / moonlit long straight hair, pale cool skin, a pair of backward-curving dark horns, a pair of folded membranous wings, petite ~155cm slender youthful proportions. Identical head height and body scale across all four views, aligned to a common horizon and ground line. No tail in any view.

Costume invariants:
Every view wears the identical cave-captivity attire from Image 1: torn ragged coarse cloth garment with frayed hems, rope/cloth waist tie, ragged hem, bare feet or cloth wraps, rusted iron wrist manacles with broken chain links on both wrists, wing roots at the shoulder blades. Same count, positions, colors and materials in all four views.

Sheet layout:
a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.

Composition:
Four full-body figures side by side in one clean row, equal size, aligned feet and heads, generous even spacing, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn cloth and wrist chains, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, tail, demon tail, devil tail, extra horns, third horn, more than two horns, single horn, hornless, missing horns, extra wings, more than two wings, single wing, wingless, missing wings, plain human without horns or wings, matching eyes, both eyes gold, both eyes silver-blue, heterochromia swapped, inconsistent scale between views, different height per view, mismatched costume between views, weapon, crown, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 06 — `06-revanas-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, horns, wing-root/collar and color reference (the approved 00-revanas-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Revanas into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the horns. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, heterochromia with the LEFT eye gold and the RIGHT eye silver-blue, pure timid look, pale cool skin tone, silver-white / moonlit long straight hair with bangs and its length, the pair of backward-curving dark horns, the consistent visible wing-root/shoulder tops and the collar/neckline of the cave-captivity garment. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change. No tail relevant to this crop; keep both horns and the same neckline in every panel.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, changed horns, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. Keep the LEFT eye gold and RIGHT eye silver-blue in every panel. The three style images define lighting, linework, shading and material rendering ONLY; do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, extra horns, third horn, more than two horns, single horn, hornless, missing horns, matching eyes, both eyes gold, both eyes silver-blue, heterochromia swapped, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe
```

---

## 07 — `07-revanas-costume-detail-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Revanas presenting several clean close-up detail studies at a consistent scale. Show the primary cave-captivity attire as it appears on Image 1: the torn ragged coarse cloth garment weave and frayed hems, the neckline/shoulder-strap and the wing-root cutout where the wings emerge, the rope/cloth waist tie, and the rusted iron wrist manacles with broken chain links. Then, as a clearly separated second-costume study, show the moon-angel ritual robe (CANON alternate version): layered translucent silver-blue gauze robe drape and hem, and silver moon-angel ritual ornaments (a moon-circlet/headpiece and a neck ornament). Do NOT show a full character body; garment-and-accessory detail studies only.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Costume invariants:
Cave-captivity details must match Image 1 exactly in count, position, color and material: coarse torn cloth, rope waist tie, rusted-iron manacle chains. The moon-angel robe details stay in the story's silver-white / silver-blue moonlight scheme: translucent silver-blue gauze, silver ornaments, optional pale-blue moonstone gems. Both costumes must accommodate the same wing-root and horn structure. Do not redesign, add or remove any core element.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, the two costume versions grouped separately, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, tail, full-body character, portrait, face focus, invented accessory, changed color scheme, different material, saturated neon colors, warm demonic red palette, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Preserve the exact approved costume from Image 1 (cave-captivity primary; moon-angel robe as the CANON alternate).
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 08 — `08-revanas-color-material-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Revanas in Image 1: neatly arranged color swatches and material sample chips showing the silver-white / moonlit hair color, the silver-blue moonlight of the wing glow, the dark horn color (charcoal-to-deep-brown), the pale cool skin tone, the gold eye and the silver-blue eye, the coarse torn cloth fabric, and the rusted-iron manacle metal. Beside the swatches show small material studies illustrating the translucent membranous wing, the keratinous horn, the coarse cloth weave and the rusted-iron chain finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme. Show both distinct eye colors (gold and silver-blue) as separate swatches.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, hex codes, neon colors, pastel rainbow palette, warm demonic red palette, changed hue, wrong material, both eyes same color, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Sample colors and materials exactly from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 09 — `09-revanas-prop-construction-sheet.png`  (STAGE 2 — after 00 approved; props and structural studies only)

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole authority for the props' and structures' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Revanas covering three groups at a consistent scale on one sheet. Group 1 - captivity props: the rusted-iron wrist manacles shown as a matched pair with front view, side view and an exploded/disassembled study of the cuff, hinge and broken chain links. Group 2 - moon-angel ritual ornaments: the silver moon-circlet/headpiece and neck ornament shown in full and in close detail, with optional pale-blue moonstone gems. Group 3 - horn and wing structural studies: the pair of backward-curving dark horns in front, side and back views showing the curve and how they seat on the head; and the membranous wing shown folded and spread with a close attachment study of the wing root at the shoulder blade, illustrating the translucent membrane that emits silver-blue light when spread.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain the wing-root attachment on the back. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects and isolated anatomical structures only. All props and structures must match Image 1's colors, materials and construction exactly.

Props/structure invariants:
The wrist manacles are a matched symmetric PAIR (exactly two, rusted iron with broken chain links) matching Image 1. The horns are exactly ONE pair, backward-curving, dark keratin, matching Image 1's curve and color. The wings are exactly ONE pair of translucent membranous wings matching Image 1, glowing silver-blue only in the spread study. The moon-angel ornaments stay silver with the story's silver-blue scheme. Do not add, remove or redesign any prop or structure; no tail anywhere.

Composition:
Neatly arranged prop studies, exploded views and isolated horn/wing structural studies on a warm light-gray low-contrast background, the three groups grouped clearly, consistent scale, balanced negative space, optional blank headless tailor form only for the wing-root attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body character, miniature person, portrait, face, human silhouette, character scale inset, tail, extra horns, third horn, more than one pair of horns, single horn, extra wings, more than one pair of wings, single wing, mismatched pair, invented prop, changed material, warm demonic red palette, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, ice-crystal, white-gold pale-purple clergy robe, gold pauldrons, heavy metal armor, gemstone encrustation, clergy robe

Constraints:
- Match the props' and structures' exact appearance to Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Props and isolated structures only; no character body, face or silhouette anywhere except an optional blank headless tailor form for the wing-root attachment study.
- No text, captions, labels, logo, signature or watermark.
- Do not invent missing canonical details.
```
