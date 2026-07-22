# 戴夫 Dave — Image Generation Prompts (MINIMAL: 00 only)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-dave-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **This file intentionally contains ONLY prompt 00** (the identity anchor). Prompts 01–09 are addable after 00 is approved; once approved, `00-dave-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for those later prompts.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-dave-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Dave, an ordinary Hector foot-soldier (apparent age mid-20s), one of Gawain's rank-and-file infantrymen. Build: stockier and sturdier, solidly broad, roughly six-and-a-half to seven heads, height LOCKED at about 175cm - the "sturdy one" of a tall-and-sturdy pair. CANON facial identity: a plain, unremarkable, brave common-soldier face with NO heroic aura - deliberately ordinary and honest, softly rounded and stout. LOCKED identity defaults (overridable): very short dark cropped hair suited to wearing a helmet, light hazel / gray-brown eyes with an earnest good-natured gaze, healthy weathered skin tone. Costume: standard-issue Hector infantry armor - cloth/leather inner layer under regulation matte-steel plate pieces, plain regulation steel gorget, standard steel shoulder guards with NO officer sash or ornament, a plain matte-steel breastplate bearing a small low-key embossed Hector army insignia (a simple geometric steel mark, no gemstones), deep-brown leather bracers, a regulation leather belt with a standard-issue short sword, regulation steel greaves and deep-brown leather military boots. Materials: matte steel plate, deep-brown leather, plain regulation cloth only - no gemstones, no gold, no jewels. Palette: Hector military standard - steel gray with dark-gold / dark accents, deep-brown leather, aligned with the whole story's converged gold / silver-blue / dark scheme. Deliberately austere, no decoration - his ordinariness is the point.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy hero armor, ornate heroic plate armor, wings, horns, tail, crown, cape, officer sash, command sash, gilded decoration, tall slender build, lanky build, gemstones, ornate gemstones, shining jewels, gold pauldrons, gilded pauldrons, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Follow all CANON facts exactly (plain unremarkable brave common-soldier face, stockier sturdier build, standard-issue Hector infantry armor).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

> **01–09 addable after 00 approved.** After the user approves `00-dave-character-identity-anchor.png`, add prompts 01–09 using the golden format (see 克里茲/PROMPTS.md), with the approved 00 image as Image 1 (sole identity/costume authority) and the three style images kept style-only.
