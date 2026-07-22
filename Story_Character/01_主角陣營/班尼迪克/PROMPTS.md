# 班尼迪克 Benedict — Image Generation Prompts (00–09)

> **2026-07-22 視覺正本覆寫：本檔舊版文字造型已停用。** 班尼迪克已有核准四視圖 `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`；它是臉、髮型、服裝、配色與材質的唯一權威。凡下文涉及年長外貌、銀髮、深紫長袍、冠冕或聖劍的提示均不得執行。實際完成品與使用規則見 `README.md`。

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-benedict-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 must NOT be generated until the user has approved 00.** Once approved, `00-benedict-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for every prompt below; the three style images stay style-only.
> Each prompt below is independent and self-contained. Do not merge them.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-benedict-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Benedict, an ELDERLY regent-and-clergy mentor figure (apparent age 65-75), tall and upright at ~182cm with a straight back still carried like an old knight, lean and spare seven-to-seven-and-a-half-heads proportions. CANON facial identity: an aged, weathered face with deeply drawn brows and natural age lines - a genuinely OLD man, never a youthful anime face - with calm, sharp DEEP SLATE-BLUE eyes (locked identity default). CANON hair: long silver-white hair swept back to shoulder length, with a neat trimmed silver-white beard. Fair, warm-toned aged skin with fine wrinkles. Bearing is calm, dignified and authoritative, blending a regent's gravity with a mentor's warmth. Costume version: church-rooftop last-stand / regent guardianship attire (CANON direction) - a DEEP ROYAL-PURPLE (a rich dark violet, locked hue; not pale lilac, not blue-violet, not white-gold), gold-trimmed long ecclesiastical-and-regent robe reaching the ankles, dark inner lining, worn under a matching deep royal-purple ankle-length cloak fastened at the shoulder; a high gold-edged clergy standing collar; gold embroidery of the church/regent motif - a locked radiant-sun / halo emblem - running along the front placket and hem; a MODEST caretaker crown / coronet on the head (understated, a plain gold band set with a few small deep-blue gems, NOT a large ornate king's crown); a gold clergy pendant hanging on a chain against the chest outside the collar, a round medallion bearing the same radiant-sun motif (CANON pendant, locked motif); a cloth or metal-buckled belt cinching the robe; dark long boots mostly hidden under the robe. He wields a single PURPLE-GLOWING holy sword: a cold-steel blade emitting a soft purple magical luminescence (a glow, not neon), held in hand or worn at the side. Palette: deep royal-purple and gold dominant, dark lining, silver-white hair and beard, deep-slate-blue eyes, cold-steel blade with purple glow, aligned with the whole story's converged gold / silver-blue / dark scheme.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations. Keep the face clearly elderly in both views.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, young face, youthful anime face, teenager, no beard, wings, horns, tail, large ornate king's crown, two swords, non-glowing sword, blue glowing sword, muscular hulking build, hunched back, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Follow all CANON facts exactly (elderly weathered face, tall upright ~182cm straight back, long silver-white hair and neat beard, deep-royal-purple gold-trimmed robe, modest caretaker coronet, gold clergy pendant, purple-glowing holy sword).
- The face must remain clearly elderly; do not youthen it into a standard anime face.
- Follow approved DESIGN-PROPOSAL items and the locked identity defaults (deep-slate-blue eyes, deep-royal-purple robe hue, radiant-sun pendant/embroidery motif, deep-blue coronet gems) consistently.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

## 01 — `01-benedict-front-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single front full-body orthographic view

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Benedict as a single clean front full-body orthographic view, standing straight and upright in a neutral A-pose, facing the viewer at 0 degrees, full body from head to boots inside frame.

Identity invariants:
Exact elderly weathered face with deep brows and age lines, deep-slate-blue eyes, long silver-white hair swept back and neat silver-white beard, fair aged skin, tall upright ~182cm with a straight back, lean seven-to-seven-and-a-half-heads proportions - all identical to Image 1. The face stays clearly elderly.

Costume invariants:
Church-rooftop / regent attire from Image 1: deep-royal-purple gold-trimmed ankle-length robe with dark lining under a matching deep-royal-purple cloak fastened at the shoulder, high gold-edged clergy standing collar, gold radiant-sun embroidery along the front placket and hem, a modest caretaker coronet on the head, a gold clergy pendant on a chain against the chest, a belt cinching the robe, dark long boots. He holds a single purple-glowing holy sword. Same accessory count, same positions, same colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight-on front view, full body head-to-toe, centered, feet on an implied ground line, warm light-gray low-contrast background, balanced negative space, no props beyond the canonical worn equipment and the single holy sword.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, young face, youthful anime face, no beard, wings, horns, tail, large ornate king's crown, two swords, non-glowing sword, blue glowing sword, hunched back, back view, side view, three-quarter view, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 02 — `02-benedict-left-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic view

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Benedict as a single clean LEFT-side profile full-body orthographic view, standing straight and upright in a neutral pose, body turned to a true 90-degree left profile, full body head-to-boots inside frame.

Identity invariants:
Exact elderly weathered face, deep brow and age lines, deep-slate-blue eyes, long silver-white hair swept back and neat silver-white beard, fair aged skin, tall upright ~182cm straight back, lean seven-to-seven-and-a-half-heads proportions - identical to Image 1, only rotated to the left profile. The face stays clearly elderly.

Costume invariants:
Same regent attire as Image 1: deep-royal-purple gold-trimmed ankle-length robe with dark lining under a matching deep-royal-purple cloak, high gold-edged clergy collar, gold radiant-sun embroidery, modest caretaker coronet, gold clergy pendant at the chest, cinched belt, dark long boots, and the single purple-glowing holy sword (held or worn on the near side, reading in front on this profile). Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True left-side profile, full body head-to-toe, centered, cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment and the single holy sword.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, young face, youthful anime face, no beard, wings, horns, tail, large ornate king's crown, two swords, non-glowing sword, blue glowing sword, hunched back, front view, back view, three-quarter view, right profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 03 — `03-benedict-back-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single back full-body orthographic view

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Benedict as a single clean BACK full-body orthographic view, standing straight and upright in a neutral pose, back fully to the viewer at 180 degrees, full body head-to-boots inside frame, clarifying the rear construction of the robe and cloak.

Identity invariants:
Same tall upright elderly build, long silver-white hair from behind (back of head and neckline consistent with Image 1), fair aged skin, lean seven-to-seven-and-a-half-heads proportions, straight back. Face not visible but body identity unchanged; still clearly an old man.

Costume invariants:
Rear of the regent attire: deep-royal-purple ankle-length cloak covering the back, shoulder clasp visible from behind, high gold-edged clergy collar back, gold radiant-sun embroidery running down the placket seam and hem, modest caretaker coronet on the head from behind, dark long boots. Same count, positions, colors and materials as Image 1. If the holy sword is worn at the side its hilt reads at the hip.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. Straight back view, full body head-to-toe, centered, cloak back panel fully shown, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, young face, youthful anime face, wings, horns, tail, large ornate king's crown, two swords, hunched back, front view, side view, three-quarter view, visible face, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 04 — `04-benedict-right-profile-fullbody.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic view

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Benedict as a single clean RIGHT-side profile full-body orthographic view, standing straight and upright in a neutral pose, body turned to a true 90-degree right profile, full body head-to-boots inside frame.

Identity invariants:
Exact elderly weathered face, deep brow and age lines, deep-slate-blue eyes, long silver-white hair swept back and neat silver-white beard, fair aged skin, tall upright ~182cm straight back, lean seven-to-seven-and-a-half-heads proportions - identical to Image 1, only rotated to the right profile. The face stays clearly elderly.

Costume invariants:
Same regent attire as Image 1: deep-royal-purple gold-trimmed ankle-length robe with dark lining under a matching deep-royal-purple cloak, high gold-edged clergy collar, gold radiant-sun embroidery, modest caretaker coronet, gold clergy pendant at the chest, cinched belt, dark long boots, and the single purple-glowing holy sword (held or worn on the near side, reading in front on this profile). Identical count, positions, colors and materials.

Composition:
Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame. True right-side profile, full body head-to-toe, centered, cloak drape visible along the back, warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment and the single holy sword.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, young face, youthful anime face, no beard, wings, horns, tail, large ornate king's crown, two swords, non-glowing sword, blue glowing sword, hunched back, front view, back view, three-quarter view, left profile, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 05 — `05-benedict-four-view-master.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Benedict containing four full-body orthographic views of the SAME character in one row at a consistent scale and shared ground line: front (0 degrees), left profile (90 degrees), back (180 degrees), right profile (270 degrees), in that left-to-right order. Neutral standing upright pose in every view.

Identity invariants:
All four figures are the identical character from Image 1: same elderly weathered face, deep brows and age lines, deep-slate-blue eyes, long silver-white hair swept back and neat silver-white beard, fair aged skin, tall upright straight-backed ~182cm build, lean seven-to-seven-and-a-half-heads proportions. Identical head height and body scale across all four views, aligned to a common horizon and ground line. Every visible face stays clearly elderly.

Costume invariants:
Every view wears the identical regent attire from Image 1: deep-royal-purple gold-trimmed ankle-length robe with dark lining under a matching deep-royal-purple cloak, high gold-edged clergy collar, gold radiant-sun embroidery, modest caretaker coronet, gold clergy pendant at the chest, cinched belt, dark long boots, and the single purple-glowing holy sword. Same count, positions, colors and materials in all four views.

Composition:
Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping. Warm light-gray low-contrast background, balanced negative space, no props beyond canonical worn equipment, no grid lines and no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, young face, youthful anime face, no beard, wings, horns, tail, large ornate king's crown, two swords, non-glowing sword, blue glowing sword, hunched back, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character beyond the four turnaround views, no extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 06 — `06-benedict-expression-sheet.png`  (STAGE 2 — after 00 approved; eight-expression face sheet)

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-benedict-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Benedict into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same ELDERLY character in all eight portraits. Preserve the identical aged facial identity and face proportions, deep brows and age lines, deep-slate-blue eyes, long silver-white hair swept back, neat silver-white beard, fair aged skin tone, neck proportions, the high gold-edged clergy collar, the modest caretaker coronet and the gold clergy pendant visible at the collar. The face must stay clearly elderly in every panel - never youthen it into a standard anime face. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. Keep an elderly face in every panel. No different person, altered face, changed hairstyle, removed beard, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, young face, youthful anime face, teenager, no beard, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor
```

---

## 07 — `07-benedict-costume-detail-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: costume construction detail sheet

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Benedict's regent-and-clergy attire, presenting several clean close-up detail studies of the garment as they appear on Image 1: the high gold-edged clergy standing collar and shoulder cloak clasp, the deep-royal-purple robe front placket with its gold radiant-sun embroidery, the deep-royal-purple cloak fabric weave and hem, the wide gold-trimmed robe sleeve and cuff, the belt cinching the robe, the modest caretaker coronet, and the gold clergy pendant detail. Arrange the detail studies cleanly on one sheet at a consistent scale.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly, including elderly skin and silver-white hair where shown. No face-focused portrait is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: deep-royal-purple and gold palette, dark inner lining, gold radiant-sun embroidery of the church/regent motif, layered fabric of the robe and cloak, gold caretaker coronet form set with small deep-blue gems, gold clergy pendant form. Do not redesign, add or remove any element.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, large ornate king's crown, invented accessory, changed color scheme, different material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Preserve the exact approved costume from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 08 — `08-benedict-color-material-sheet.png`  (STAGE 2 — after 00 approved)

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Benedict in Image 1: neatly arranged color swatches and material sample chips showing the deep-royal-purple primary, the gold trim and embroidery, the dark robe lining, the cold-steel blade metal with its purple glow, the gold coronet and pendant metal, the deep-blue coronet gems, the cloak fabric, the inner-layer fabric, and the silver-white hair and beard color. Beside the swatches show small material studies illustrating the fabric-weave, gold-embroidery, polished-metal and gemstone finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme, with deep-royal-purple and gold dominant.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Sample colors and materials exactly from Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

---

## 09 — `09-benedict-prop-construction-sheet.png`  (STAGE 2 — after 00 approved; props only)

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Benedict's equipment: the single purple-glowing holy sword shown with front view, side view and an exploded/disassembled study of blade, guard, grip and pommel, clearly conveying the soft purple luminescence of the blade; the modest caretaker coronet shown in full and in close detail; and the gold clergy pendant shown in full and in close detail with its chain. Arrange the studies cleanly on one sheet at consistent scale.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All props must match Image 1's colors, materials and construction exactly.

Costume/props invariants:
The holy sword is a SINGLE sword (exactly one), a cold-steel blade emitting a soft purple magical glow with gold fittings; the caretaker coronet is modest and understated, a plain gold band set with small deep-blue gems (never a large ornate king's crown) and matches Image 1; the gold clergy pendant is a round medallion with a radiant-sun motif and matches Image 1. Do not add, remove or redesign any prop, and do not add a second sword.

Composition:
Neatly arranged prop studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for a belt/attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body character, miniature person, portrait, face, human silhouette, character scale inset, two swords, three swords, non-glowing sword, blue glowing sword, large ornate king's crown, invented prop, changed material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, black-gold battle pauldrons, plain white clergy robe, gemstone-encrusted plate armor

Constraints:
- Match the props' exact appearance to Image 1.
- Use Images 2-4 for visual style only.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Props only; no character body, face or silhouette anywhere except an optional blank headless tailor form for attachment studies.
- No text, captions, labels, logo, signature or watermark.
- Do not invent missing canonical details.
```
