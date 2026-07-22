# 歐文·迪克斯 Owen Dix — Image Generation Prompts (00 only)

> **Two-stage rule (mandatory).** Stage 1 generates ONLY `00-owen-character-identity-anchor.png` using the three shared style images to lock the common art style. The three style images control STYLE ONLY — never copy their characters' faces, hairstyles or costumes. Stop after 00 and wait for the user to approve or request changes.
> **01–09 are intentionally omitted here.** They will be added to this file only after the user approves 00. Once approved, `00-owen-character-identity-anchor.png` becomes the SOLE identity/costume authority (Image 1) for those later prompts; the three style images stay style-only.

Shared style references (style only, do not copy their characters):
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

---

## 00 — `00-owen-character-identity-anchor.png`  (STAGE 1 — generate this one only, then wait for approval)

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Owen Dix, an ordinary Hector expedition foot-soldier, one of three named decoy soldiers, apparent age 26 (locked default), slightly older than the youngest of the group, height ~175cm, average adult infantry build, ~seven-heads slender proportions. CANON facial identity: an adult male face more angular than a boy's, with light stubble; short slightly unkempt dark-brown hair (locked); his defining trait is a face of FEAR - wide grey-brown eyes (locked), high-raised anxious brows, a faint pale sheen of sweat on the forehead, mouth tense. Natural skin tone gone slightly pale with dread. Costume version: 1587 Hector expedition standard LIGHT armor (CANON) - a padded gambeson under a light leather cuirass with a few plain steel accents, padded high collar, small light leather or plain-steel shoulder pieces, leather bracers and plain gloves, a plain leather belt with a plain short dagger sheathed at the hip (locked), cloth or leather trousers with marching leather boots; small restrained Hector standard crest on the chest; no cloak. Materials are strictly standard-issue Hector expedition LIGHT armor plus a torch - no heavy or ornate elements. CANON prop: he carries a lit torch in one hand (wooden shaft, oil-soaked cloth head, warm orange flame). Deliberately plain and undecorated. Palette: dark brown-to-charcoal leather, muted dark cloth, dull steel fittings, warm orange torch flame; aligned with the story's converged gold / silver-blue / dark scheme but kept humble.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one straight-on full-body front view standing in a neutral pose (holding the lit torch), and one large straight-on head-and-shoulders portrait carrying his signature fearful expression (wide anxious eyes, raised brows). Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy plate, full plate armor, heavy armor, ornate armor, noble finery, royal regalia, crown, gemstones, gold pauldrons, wings, horns, tail, worshipful expression, adoring gaze, angry snarl, aggressive expression, smiling, elderly face, full thick beard, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
- Follow all CANON facts exactly (adult stubbled face, short dark-brown hair, fearful wide eyes and raised brows, standard light expedition armor, lit torch in hand).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```
