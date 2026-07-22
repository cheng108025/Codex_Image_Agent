# 加爾雷斯 Galreth — Image Generation Prompts (MINIMAL: 00 only)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-galreth-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **This file intentionally contains ONLY prompt 00** (the identity anchor). Prompts 01–09 are addable after 00 is approved; once approved, `00-galreth-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for those later prompts.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-galreth-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Galreth, a senior Hector army officer (apparent age mid-40s, battle-hardened), height LOCKED at ~182cm, solid steady well-trained officer build. CANON facial identity: a solemn, composed, steady mature officer face - grave and calm, dignified but not scene-stealing, clearly middle-aged and NOT youthful. LOCKED identity defaults (overridable): gray-flecked graying military short hair with slightly grizzled temples, a short trimmed grizzled beard, deep-gray eyes with a calm sharp gaze, tanned weathered skin. Costume: standard-issue Hector OFFICER armor (finer than common infantry armor, with rank identification) - cloth/leather inner layer under regulation matte-steel officer plate, standard high steel gorget, officer steel shoulder guards with dark-gold rank trim, an officer matte-steel breastplate faintly bearing an embossed Hector army insignia (no gemstones), deep-brown leather bracers, a regulation leather belt with an officer's side sword, regulation steel greaves and deep-brown officer long boots; and a CANON command sash worn diagonally across one shoulder to the opposite waist, the sash LOCKED to dark-gold woven cloth. Materials: matte steel plate with restrained dark-gold rank trim, deep-brown leather, dark-gold woven sash cloth - no gemstones, no jewels. Palette: Hector military standard - steel gray with dark-gold accents, deep-brown leather, the command sash in dark-gold, aligned with the whole story's converged gold / silver-blue / dark scheme.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, ragged appearance, tattered clothing, common low-rank soldier look, no rank insignia, peasant clothing, youthful teenage face, gemstones, ornate gemstones, shining jewels, gold pauldrons, gilded pauldrons, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Follow all CANON facts exactly (solemn steady mature officer face, ~182cm solid build, standard officer armor with a command sash).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

---

> **01–09 addable after 00 approved.** After the user approves `00-galreth-character-identity-anchor.png`, add prompts 01–09 using the golden format (see 克里茲/PROMPTS.md), with the approved 00 image as Image 1 (sole identity/costume authority) and the three style images kept style-only.
