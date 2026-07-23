# 鮑曼 Bowman — Image Generation Prompts（FULL v2 package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`BOWMAN-V1-FIRST-RECON`**（第一次偵察任務期制式偵察輕甲版；其他時期／服裝需另立版本，不得混用）

> **特殊正典（貫穿 00–05、07–10）**：鮑曼「不以本人清晰出場」，只存在於克里茲記憶閃回裡——**臉部刻意保持柔和虛化、五官逐漸淡去成空白**，這是設定本身（象徵被遺忘的身份），**不是瑕疵，不得替換成清晰具體五官**。模糊僅限臉部；身體、甲冑、輪廓在每一張圖都必須清晰可讀。00–05、07–10 全部圖片的臉部處理必須一致地維持此虛化正典。

> **簽名武器已定案（2026-07-23 使用者核准，貫穿 09）**：主武器＝**匕首（dagger）**，短劍選項刪除。09 道具表以匕首為唯一呈現；此定案不影響 00–08／10（本就零道具或無需武器本身）。

> **06 八表情表已定案（2026-07-23 使用者核准）——八種輪廓／光影狀態版**：臉部虛化正典維持不解除，06 放棄「表情」框架，改為八張以頭部角度、肩頸姿態、光影方向與強度、氛圍傳達情緒的「輪廓／光影狀態表」，順序對應全域規範 §6.3。06 正常生成，不省略。

> **兩階段規則（強制）**：第一階段只生成 `00-bowman-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成；臉部維持虛化正典），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-bowman-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩（臉部虛化）＋45° 三分之四頭肩（臉部虛化），零道具 |
| 01 | `01-bowman-front-fullbody.png` | 正面全身，A-pose，零道具，臉部虛化與 00 一致 |
| 02 | `02-bowman-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具 |
| 03 | `03-bowman-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具 |
| 04 | `04-bowman-back-fullbody.png` | 背面全身，A-pose，零道具 |
| 05 | `05-bowman-four-view-master.png` | 四視圖總表（正面→左→右→背），臉部虛化、身體甲冑清晰，零道具 |
| 06 | `06-bowman-expression-sheet.png` | 八種輪廓／光影狀態表，4×2 網格，臉部維持虛化正典（2026-07-23 定案） |
| 07 | `07-bowman-costume-detail-sheet.png` | 服裝細節表（含左側腰際佩刃掛點） |
| 08 | `08-bowman-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-bowman-prop-construction-sheet.png` | 道具表：匕首（已定案，2026-07-23；全書唯一出現位置） |
| 10 | `10-bowman-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用，臉部維持虛化） |

---

## 00 — `00-bowman-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views; deliberately obscured face - intentional canon)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Bowman, a young Hector scout (apparent age early 20s), a soldier killed on the very first reconnaissance mission who survives only as a fading memory. Build: lean, agile, scout's physique, approximately 7.0 heads, height LOCKED at about 175cm. SPECIAL CANON facial identity (LOCKED as intentionally unresolved — do NOT settle on any definite face): his face is DELIBERATELY INDISTINCT — softly blurred, features fading toward blank, as if a face that memory can no longer reassemble; the eyes, brows, nose and mouth dissolve into a soft haze while the head silhouette remains. This deliberately obscured / soft-fading face IS the locked character canon (it embodies his forgotten identity), NOT a rendering defect and NOT to be replaced with a sharp face. The blur is strictly limited to the FACE; the body, armor and overall silhouette stay clear, crisp and fully readable. An indistinct scout's short-hair silhouette with faded, unresolved hair color (kept intentionally unresolved); soft natural skin left partly unresolved by the facial haze. Costume: standard-issue light reconnaissance armor — lightweight cloth/leather inner layer (#4A463F) under a few light matte-steel armor plates for stealth (#6A6E73), a light steel gorget or cloth collar, light steel shoulder pieces with NO officer sash, a light matte-steel breastplate bearing a small low-key Hector army insignia (no gemstones), snug deep-brown leather bracers/gloves for climbing (#3D2E22), a light leather belt with an empty mount point at the left hip and NO weapon attached (his signature blade — a dagger, approved 2026-07-23 — is reserved exclusively for the prop-construction sheet), light steel greaves and soft-soled deep-brown marching boots. No cloak. Materials: lightweight matte steel plate, deep-brown leather, light recon cloth only — no gemstones, no gold, no jewels, no heavy plate. Palette: understated Hector scout standard — muted steel gray (#6A6E73) and dark tones, deep-brown leather (#3D2E22). Character and costume only — no weapon, no handheld items, no standalone props of any kind anywhere on this sheet.

Body metrics:
Height 175 cm. Approximately 7.0 heads tall (design proportion, lean agile build). Shoulder width approximately 2.0 head-widths (the leanest build among the named expedition soldiers). Fully symmetric build visually on this zero-prop sheet (face is intentionally indistinct by canon, not an asymmetry); his signature blade (still undecided) will be mounted at the left hip in sheet 09 only.

Kinship invariants:
none

Primary request:
Design one character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
In ALL THREE views the face is deliberately indistinct / softly blurred with features fading toward blank (intentional canon), while the body, armor and silhouette remain clear, crisp and identical between the views. Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. The straight-on head-and-shoulders portrait (with its deliberately obscured face) is the identity authority for later generations — later prompts must reproduce the SAME degree of facial blur, not a sharper or blurrier face.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, restrained material separation for leather and steel, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, sharp fully-detailed facial features, crisp defined eyes, clearly rendered face, distinct recognizable face, wings, horns, tail, crown, heavy hero armor, blurred body, blurred armor, out-of-focus whole image, fully blurry image, gemstones, ornate gemstones, shining jewels, gold pauldrons, gilded pauldrons, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, weapon, sword, dagger, scabbard, sheath, staff, shield, prop object, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly, including the DELIBERATELY indistinct/fading face in all three views (this is intended, not a defect).
- Keep the deliberate blur ONLY on the face; the body and armor stay clear and sharp in all three views.
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved open-item details (blur intensity beyond the locked baseline, hair color, exact armor pattern, insignia pattern all remain open); the signature blade (dagger, approved) is reserved exclusively for sheet 09 — show only an empty belt mount point here, no weapon.
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons belong exclusively to the prop construction sheet (09).
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; the body must not drift between views (only the face is intentionally indistinct, consistently, in all three). Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 01 — `01-bowman-front-fullbody.png`（STAGE 2 — 正面全身，臉部虛化與 00 一致）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference (deliberately obscured face - intentional canon)

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Bowman as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The face stays deliberately indistinct / softly blurred exactly as in Image 1 (intentional canon, not a defect); the body and armor stay clear and sharp.

Identity invariants:
Identical character from Image 1: same indistinct hair silhouette, same soft natural skin left partly unresolved by the facial haze. The facial blur intensity must match Image 1 exactly.

Body metrics:
Height 175 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Identical light reconnaissance armor from Image 1: lightweight cloth/leather inner layer (#4A463F), light matte-steel plates (#6A6E73), light steel gorget, light steel shoulder pieces, matte-steel breastplate with the small Hector insignia, deep-brown leather bracers/gloves (#3D2E22), light leather belt with an empty mount point at the left hip and NO weapon attached, light steel greaves, soft-soled deep-brown boots. NO weapon anywhere; the signature blade (dagger, approved) is reserved exclusively for prop sheet 09.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, sharp fully-detailed facial features, crisp defined eyes, clearly rendered face, distinct recognizable face, blurred body, blurred armor, out-of-focus whole image, heavy plate, ornate armor, gemstones, gold pauldrons, wings, horns, tail, holding weapon, weapon in hand, weapon, sword, dagger, scabbard, sheath, staff, shield, prop object, reference character face, copying any style-image character, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- The facial blur must match Image 1's intensity exactly — not sharper, not blurrier; body and armor stay clear and sharp.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-bowman-left-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學左側）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference (deliberately obscured face - intentional canon)

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Bowman as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens. This profile view naturally shows no clear facial features regardless of angle; keep the head silhouette consistent with Image 1's indistinct styling. Note: his signature blade's mount point sits at this LEFT hip (per CHARACTER_SPEC.md DESIGN-PROPOSAL); the blade itself (dagger, approved) must NOT appear on this sheet — render the belt with an empty mount point only.

Identity invariants:
Identical character from Image 1: same lean agile build, same indistinct scout hair silhouette.

Body metrics:
Height 175 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: light matte-steel cuirass silhouette (#6A6E73), shoulder piece and climbing bracer in profile (#3D2E22), light leather belt with an empty mount point and NO weapon attached, soft-soled boots. NO weapon anywhere; the signature blade (dagger, approved) is reserved exclusively for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurred body, blurred armor, out-of-focus whole image, heavy plate, ornate armor, gemstones, gold pauldrons, wings, horns, tail, holding weapon, weapon in hand, weapon, sword, dagger, scabbard, sheath, staff, shield, prop object, reference character face, copying any style-image character, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- No weapon visible even though the mount point sits on this side; weapon belongs to sheet 09 only.
- Body and armor stay clear and sharp.
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-bowman-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference (deliberately obscured face - intentional canon)

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Bowman as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. This profile view naturally shows no clear facial features regardless of angle; keep the head silhouette consistent with Image 1's indistinct styling. Note: his signature blade (dagger, approved) is mounted at the LEFT hip (not visible from this right-side view) and is reserved exclusively for sheet 09; this sheet shows the belt with no weapon.

Identity invariants:
Identical character from Image 1: same lean agile build, same indistinct scout hair silhouette.

Body metrics:
Height 175 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: light matte-steel cuirass silhouette (#6A6E73), shoulder piece and climbing bracer in profile (#3D2E22), light leather belt with NO weapon attached, soft-soled boots. NO weapon anywhere; the signature blade (dagger, approved) is reserved exclusively for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurred body, blurred armor, out-of-focus whole image, heavy plate, ornate armor, gemstones, gold pauldrons, wings, horns, tail, holding weapon, weapon in hand, weapon, sword, dagger, scabbard, sheath, staff, shield, prop object, reference character face, copying any style-image character, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- Body and armor stay clear and sharp.
- No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-bowman-back-fullbody.png`（STAGE 2 — 背面全身）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Bowman as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer (no facial features are visible from behind regardless of the facial-blur canon).

Identity invariants:
Identical character from Image 1: same indistinct scout hair silhouette seen from behind, same lean agile build and proportions.

Body metrics:
Height 175 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Identical attire from Image 1 seen from behind: light matte-steel back plate (#6A6E73), no cloak, no ornament, shoulder pieces symmetric, light leather belt with an empty mount point at the left hip and NO weapon attached, soft-soled boots seen from behind. NO weapon anywhere; the signature blade (dagger, approved) is reserved exclusively for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurred body, blurred armor, out-of-focus whole image, heavy plate, ornate armor, gemstones, gold pauldrons, wings, horns, tail, holding weapon, weapon in hand, weapon, sword, dagger, scabbard, sheath, staff, shield, prop object, reference character face, copying any style-image character, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- Body and armor stay clear and sharp.
- No text or watermark. Do not invent missing canonical details.
```

---

## 05 — `05-bowman-four-view-master.png`（STAGE 2 — 四視圖總表）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet (deliberately obscured face - intentional canon)

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Bowman containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose. In the FRONT view only, the face stays deliberately indistinct / softly blurred exactly as in Image 1 (the profile and back views naturally do not show facial features).

Identity invariants:
All four figures are the identical character from Image 1: same lean agile build, same indistinct scout hair silhouette, same soft natural skin. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable. The deliberate facial blur (front view) must match Image 1's blur intensity exactly — not sharper, not blurrier.

Body metrics:
Height 175 cm. Approximately 7.0 heads tall, lean agile build. Shoulder width approximately 2.0 head-widths.

Kinship invariants:
none

Costume invariants:
Every view wears the identical light reconnaissance armor from Image 1: lightweight cloth/leather inner layer (#4A463F), light matte-steel plates (#6A6E73), light steel gorget, light steel shoulder pieces, matte-steel breastplate with the small Hector insignia, deep-brown leather bracers/gloves (#3D2E22), light leather belt with an empty mount point at the left hip and NO weapon attached, light steel greaves, soft-soled deep-brown boots. Same accessory count, positions, colors and materials in all four views. NO weapon anywhere; the signature blade (dagger, approved) is reserved exclusively for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, sharp fully-detailed facial features, crisp defined eyes, clearly rendered face, distinct recognizable face, blurred body, blurred armor, out-of-focus whole image, heavy plate, ornate armor, gemstones, gold pauldrons, wings, horns, tail, inconsistent scale between views, different height per view, mismatched costume between views, weapon, sword, dagger, scabbard, sheath, staff, shield, prop object, holding weapon, contrapposto, action pose, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, reference character face, copying any style-image character

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- The front view's deliberate facial blur must match Image 1 exactly; body and armor stay clear and sharp in all four views.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-bowman-expression-sheet.png`（STAGE 2 — 八種輪廓／光影狀態表，已定案）

> **已定案（2026-07-23 使用者核准）**：鮑曼臉部虛化正典維持不解除。06 放棄「表情表」框架，改為八張以**頭部角度、肩頸姿態、光影方向與強度、整體氛圍**傳達情緒的「輪廓／光影狀態表」，每格臉部維持正典虛化（soft-blurred indistinct features），不清晰化五官。順序對應全域規範 §6.3 的八情緒（自然、輕笑、大笑、開懷、驚訝、憤怒、悲傷、眨眼）。

```text
Use case: identity-preserve
Asset type: professional eight-panel anime character silhouette/lighting-state sheet (deliberately obscured face - intentional canon; emotional states conveyed only through head angle, shoulder posture, light direction/intensity and atmosphere — not through resolvable facial detail)

Input images:
- Image 1: use only as the character identity, hairstyle silhouette, costume-collar and color reference (the approved 00-bowman-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Bowman into standardized head-and-shoulders studio panels. Create exactly eight panels arranged neatly in a 4-column by 2-row grid. Every panel must use a straight-on-to-slightly-tilted front view at approximately 0 degrees (small head tilt per state only). Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel. In EVERY panel the face stays deliberately indistinct / softly blurred exactly as in Image 1 — do NOT resolve sharp eyes, brows or mouth in any panel under any lighting condition. Each panel conveys its state ONLY through head angle/tilt, shoulder and neck posture, the direction and intensity of the light source, and the overall color/mood of the panel — never through clearly rendered facial features.

Identity invariants:
Keep exactly the same character in all eight panels. Preserve the identical indistinct hair silhouette, soft natural skin, neck proportions, and the visible light steel gorget / cloth collar. Use the same framing, camera distance, head size and front-facing angle in every panel. The facial blur intensity must be identical to Image 1 in all eight panels regardless of lighting direction or intensity.

Kinship invariants:
none

State order, left to right and top to bottom (each conveyed only through head/shoulder pose, light direction/intensity and atmosphere, per the note above — face stays uniformly blurred in all eight):
1. neutral — head upright and centered, shoulders level and relaxed, neutral soft even light, baseline haze
2. gentle smile — head tilted slightly, shoulders relaxed and lowered, soft warm side light
3. broad smile with visible teeth — head tilted slightly upward, shoulders open, moderately higher contrast warm side light
4. joyful open laughter — head tilted back, shoulders loosened and open at their widest, brightest warm light, open luminous silhouette
5. surprised — head tilted slightly back, shoulders raised and tensed abruptly, cool high-contrast side light
6. angry — head tilted forward and down, shoulders tensed and hunched forward, hard low-angle light with sharp shadow
7. sad — head lowered, shoulders slumped and drawn inward, cool dim soft light, soft-edged silhouette
8. wink — head tilted very slightly with a paused quality, one shoulder raised marginally, soft side light with a gentle highlight

Style:
Refined Japanese anime fantasy character design, professional production silhouette/lighting-state sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, directional studio lighting that varies per panel as described above, consistent white balance baseline, clean seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight panels and a 4x2 grid. Head-and-shoulders close-up only in every panel. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No sharply resolved facial features in any panel regardless of light direction or intensity. No different person, changed hairstyle, profile, side view, three-quarter view, head rotation beyond a slight tilt, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, sharp fully-detailed facial features, crisp defined eyes, sharp eyes, clearly rendered mouth, clearly rendered face, distinct recognizable face, no clear facial features violation, different hairstyle, profile, side view, three-quarter view, head turned, beauty filter, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry body, blurry armor, out-of-focus whole image, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, heavy armor, gold pauldrons, gemstones, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

## 07 — `07-bowman-costume-detail-sheet.png`（STAGE 2 — 服裝細節表）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Bowman's standard-issue light reconnaissance armor, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the light matte-steel breastplate drawn SEPARATELY as a flat construction piece, AND one torso view of the body WITHOUT the breastplate (cloth/leather inner layer only) so the underlying body silhouette is fully visible.
2. Breastplate detail: the small low-key Hector army insignia.
3. Shoulder-piece and climbing-bracer/glove close-ups showing the light steel plate and leather construction.
4. Waist belt detail, including the empty mount point at the LEFT hip reserved for the signature blade (blade itself NOT shown here — see sheet 09).
5. Greave and soft-soled boot detail.
6. Back view construction: light back plate or pack straps, no ornament.
No face or head close-up is required on this sheet; if a head silhouette appears incidentally in a torso panel, keep the face deliberately indistinct exactly as in Image 1.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/hand edges only as needed. No full standalone face portrait panels.

Kinship invariants:
none

Costume invariants:
Exact materials and colors as Image 1: lightweight matte steel plate (#6A6E73), deep-brown leather (#3D2E22), light recon cloth (#4A463F). Same construction as Image 1; no redesign; NO weapon anywhere (signature blade, dagger, approved, belongs to sheet 09 only).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, steel and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry body, blurry armor, sharp fully-detailed facial features, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, dagger, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The breastplate separation panel and the breastplate-less torso view are mandatory.
- The left-hip belt mount point must be shown EMPTY (no weapon); the weapon itself (dagger, approved) belongs to sheet 09 only.
- Body and armor stay clear and sharp; any incidental face silhouette keeps the deliberate blur from Image 1.
- No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-bowman-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Bowman: a medium-size neutral A-pose front figure (character and costume only, no weapon; face kept deliberately indistinct exactly as Image 1) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- muted steel gray #6A6E73 (light plates, gorget, greaves)
- deep-brown leather #3D2E22 (bracers, belt, boots)
- light recon cloth #4A463F (inner layer)
Hair color and exact skin tone are intentionally left unresolved (part of the facial-blur canon) and should NOT be swatched as a fixed color.
Each swatch pairs a flat color block with a small material patch showing how that surface reads (matte steel finish, leather grain, cloth weave).

Identity invariants:
The reference figure is the identical character from Image 1; same body proportions (175 cm, 7.0 heads, lean agile); face stays deliberately indistinct, matching Image 1's blur intensity exactly.

Kinship invariants:
none

Costume invariants:
Exact costume from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for steel, leather and cloth, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, sharp fully-detailed facial features, blurry body, blurry armor, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, dagger, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the named locked palette exactly (no invented hair/skin color); hue drift = reject.
- Character and costume only; zero props; flat lighting; face stays deliberately indistinct.
- No text or watermark.
```

---

## 09 — `09-bowman-prop-construction-sheet.png`（STAGE 2 — 道具表：匕首〔已定案，全書唯一出現位置〕）

> **已定案（2026-07-23 使用者核准）**：簽名武器＝**匕首（recon dagger）**，短劍選項刪除。理由：偵察兵敘事定位強調潛行、近身自衛而非正面交戰，匕首體積小、便於貼身收納快速拔出，比短劍更貼合「第一次偵察任務」的輕裝潛行設定；短劍更接近戴夫／文森特等正規步兵配置，用於鮑曼會削弱其與步兵組的區隔。

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png — use ONLY to match material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Bowman's APPROVED signature blade — a light reconnaissance dagger (short sword option removed, dagger is the sole locked weapon): full front view, side view, and hilt/guard close-up — lightweight matte steel blade (#6A6E73), plain deep-brown leather-wrapped grip (#3D2E22); include its plain sheath and the belt-hanger hardware sized for the left-hip mount point, as separate callouts.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, item evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, matte steel and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, twin blades, short sword, long sword, ornate gold decoration, gemstones, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the dagger may appear in the entire package.
- Match the described material language exactly (lightweight matte steel #6A6E73, deep-brown leather #3D2E22).
- The signature weapon is locked as the dagger (approved 2026-07-23); the short sword option is removed and must never appear.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-bowman-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X); face stays deliberately obscured (intentional canon)

Input images:
- Image 1: the approved 00-bowman-character-identity-anchor.png and sole identity authority (body proportions; face stays deliberately indistinct).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Bowman WITHOUT armor or any outer garment — wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) — as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no armor, no loose clothing; the short hair must not cover the neck or shoulder outline. In the FRONT view, the face stays deliberately indistinct / softly blurred exactly as in Image 1 (intentional canon, not a defect); the body itself must remain sharp and clearly rendered.

Identity invariants:
Same character as Image 1: same indistinct hair silhouette, same soft natural skin. The body underneath must be consistent with the armored figure of the approved sheets: lean, agile, scout's physique.

Body metrics:
Height 175 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Kinship invariants:
none

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, sharp fully-detailed facial features, crisp defined eyes, clearly rendered face, blurry body, blurry silhouette, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, boots, gauntlets, folds, drapery, nudity, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Body silhouette fully visible and sharp; only the face stays deliberately indistinct, matching Image 1's blur intensity exactly.
- Tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉部虛化程度與 00 號正本一致（既不更清晰也不更模糊）；身體、甲冑輪廓保持清晰
- [ ] 髮型輪廓、身材比例一致
- [ ] 身材比例：175cm／約 7.0 頭身、肩寬約 2.0 倍頭寬、精瘦靈活
- [ ] 服裝結構與 Costume Lock 一致（層次、配件數量、位置）
- [ ] 左右位置正確：佩刃側鎖定為左側腰際（`DESIGN-PROPOSAL`）；00–05／10 零道具無武器可見，僅 07 顯示空掛點、09 顯示武器本身
- [ ] 色票未漂移（低調鋼灰 #6A6E73／深棕皮革 #3D2E22／偵察布料 #4A463F，對照 CHARACTER_SPEC.md；髮色與膚色刻意不鎖定不算漂移）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：無血緣角色，本項跳過

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT；零道具；三視圖臉部虛化程度一致 |
| 01 | 正面、A-pose、正交；臉部虛化與 00 一致 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；武器掛點側雖在此側，仍不得顯示武器 |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」） |
| 04 | 背面、A-pose、正交 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；正面視圖臉部虛化與 00 一致 |
| 06 | 八格齊全（4×2）；順序正確對應 §6.3 八情緒（自然、輕笑、大笑、開懷、驚訝、憤怒、悲傷、眨眼）；每格臉部虛化程度與 00 一致，未清晰化五官；八格以頭部角度、肩頸姿態、光影方向與強度可辨區分八狀態，不得僅靠表情差異 |
| 07 | 光甲拆解面板＋無胸甲軀幹視圖必須存在；左側腰際掛點須顯示為空；無武器本身；無清晰臉部特寫 |
| 08 | 色票方塊與 CHARACTER_SPEC.md 的色名完全一致；髮色／膚色維持不鎖定 |
| 09 | 匕首（已定案，2026-07-23）唯一出現於此；短劍不得出現；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全清晰可見；臉部維持與 00 一致的虛化程度；正面＋左側兩視圖 |
