# 萊拉澤爾 Lazael — Image Generation Prompts（範本 v2 FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`LAZAEL-V1-HOME-CASUAL`**（居家常服版；其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `00-lazael-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **正典備註**：本角色無武器（CANON 非戰鬥者），09 道具表放置可選的隨身書卷／古籍（DESIGN-PROPOSAL），沒有武器可移。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-lazael-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 01 | `01-lazael-front-fullbody.png` | 正面全身，A-pose，零道具 |
| 02 | `02-lazael-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具 |
| 03 | `03-lazael-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具 |
| 04 | `04-lazael-back-fullbody.png` | 背面全身，A-pose，零道具 |
| 05 | `05-lazael-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-lazael-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-lazael-costume-detail-sheet.png` | 服裝細節表（含外衫拆解與無外衫軀幹視圖） |
| 08 | `08-lazael-color-material-sheet.png` | 色票／材質表（固定 hex） |
| 09 | `09-lazael-prop-construction-sheet.png` | 道具表：隨身書卷（可選，唯一出現位置） |
| 10 | `10-lazael-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-lazael-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Lazael, a same-age boyhood friend of the prince Kritz, an adolescent boy (apparent age about 14-15), height LOCKED at approximately 160 cm, slight slender non-combatant build that has never seen battle. CANON facial identity: a bookish, gentle, delicately handsome and clean boyish face, soft and unweathered. Locked identity: warm chestnut-brown hair (#8A5A34) in a soft, lightly tousled boyish short cut; clear warm brown eyes (#7A5230) with an innocent expression; fair, warm-toned skin (#F2DCC0). Costume version: plain house / casual everyday clothes, NOT armor - a simple soft under-tunic (#F2EAD8) with a plain warm-beige over-shirt or short jacket (#D8C4A0), soft folded or round cloth collar with no gorget, natural cloth shoulders with no pauldrons or clasps, plain front with no crest and no armor plates, soft long sleeves with light-brown accents (#B08A5C), a simple deep-brown cloth waist sash or tie (#5A4632), knee-length cloth trousers with soft blue-gray accents (#8C97A3), plain soft shoes or short cloth boots. He carries no weapon of any kind. Materials: plain soft cotton-and-linen casual house cloth only, no metal, no gemstones, no armor plates and no embroidery.

Body metrics:
Height approximately 160 cm. Approximately 6.75 heads tall (slight, slender adolescent proportions). Shoulder width approximately 1.9 head-widths (slight, slender, non-combatant boyish build). Fully symmetric design; no locked left-right asymmetry.

Kinship invariants:
none.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only — no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal fittings, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, pauldrons, gorget, weapon, sword, dagger, shield, gemstones, wings, horns, tail, crown, muscular build, warrior physique, adult man, aged face, reference character face, copying any style-image character, blending the three reference characters, weapon, scabbard, sheath, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (bookish gentle clean boyish face, soft hair, slight non-combatant build, plain house/casual clothes, no armor, no weapon).
- Follow approved DESIGN-PROPOSAL items consistently, including the locked hex palette.
- Do not invent unresolved PENDING-USER-INPUT details.
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. Any optional accessory (e.g. a reading scroll) belongs exclusively to the prop construction sheet (09).
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 01 — `01-lazael-front-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Lazael as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same bookish gentle clean boyish face, warm brown eyes (#7A5230), soft warm chestnut-brown tousled hair (#8A5A34), fair warm skin (#F2DCC0).

Body metrics:
Height approximately 160 cm. Approximately 6.75 heads tall. Shoulder width approximately 1.9 head-widths. Fully symmetric design.

Costume invariants:
Identical plain house / casual attire from Image 1: soft under-tunic (#F2EAD8) with a plain warm-beige over-shirt or short jacket (#D8C4A0), soft cloth collar with no gorget, natural cloth shoulders with no pauldrons or clasps, plain front with no crest and no armor plates, soft long sleeves with light-brown accents (#B08A5C), simple deep-brown cloth waist sash (#5A4632), knee-length cloth trousers with soft blue-gray accents (#8C97A3), plain soft shoes or short cloth boots. NO weapon, NO armor, NO cape anywhere; any optional accessory belongs exclusively to prop sheet 09.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, pauldrons, gorget, weapon, sword, dagger, shield, gemstones, wings, horns, tail, crown, muscular build, warrior physique, adult man, aged face, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-lazael-left-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學左側）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Lazael as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, soft warm chestnut-brown tousled hair (#8A5A34), fair warm skin (#F2DCC0).

Body metrics:
Height approximately 160 cm. Approximately 6.75 heads tall. Shoulder width approximately 1.9 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: plain house-cloth silhouette (#D8C4A0), under-tunic edge (#F2EAD8), waist sash (#5A4632) in profile, cloth trousers (#8C97A3 accents), plain soft shoes. NO weapon, NO armor anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, pauldrons, gorget, weapon, sword, dagger, shield, gemstones, wings, horns, tail, crown, muscular build, adult man, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-lazael-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Lazael as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. The design is fully symmetric, so this anatomical-right view mirrors the anatomical-left view (sheet 02) exactly.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, soft warm chestnut-brown tousled hair (#8A5A34), fair warm skin (#F2DCC0).

Body metrics:
Height approximately 160 cm. Approximately 6.75 heads tall. Shoulder width approximately 1.9 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: plain house-cloth silhouette (#D8C4A0), under-tunic edge (#F2EAD8), waist sash (#5A4632) in profile, cloth trousers (#8C97A3 accents), plain soft shoes. NO weapon, NO armor anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, pauldrons, gorget, weapon, sword, dagger, shield, gemstones, wings, horns, tail, crown, muscular build, adult man, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-lazael-back-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Lazael as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same soft warm chestnut-brown tousled hair seen from behind (#8A5A34), same build and proportions.

Body metrics:
Height approximately 160 cm. Approximately 6.75 heads tall. Shoulder width approximately 1.9 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from behind: plain over-shirt back panel (#D8C4A0), no cape, no attachments, waist sash tied at the back (#5A4632), cloth trousers (#8C97A3 accents) and plain soft shoes seen from behind. NO weapon, NO armor anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, pauldrons, gorget, weapon, sword, dagger, shield, cape, gemstones, wings, horns, tail, crown, muscular build, adult man, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 05 — `05-lazael-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Lazael containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same bookish gentle clean boyish face, warm brown eyes (#7A5230), soft warm chestnut-brown tousled hair (#8A5A34), fair warm skin (#F2DCC0), slight slender non-combatant build (apparent age about 14-15). Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 160 cm. Approximately 6.75 heads tall. Shoulder width approximately 1.9 head-widths. Fully symmetric design, identical in all four views.

Kinship invariants:
none.

Costume invariants:
Every view wears the identical plain house / casual attire from Image 1: soft under-tunic (#F2EAD8) with a plain warm-beige over-shirt or short jacket (#D8C4A0), soft cloth collar with no gorget, natural cloth shoulders with no pauldrons or clasps, plain front with no crest and no armor plates, soft long sleeves with light-brown accents (#B08A5C), simple deep-brown cloth waist sash (#5A4632), knee-length cloth trousers with soft blue-gray accents (#8C97A3), plain soft shoes or short cloth boots. No weapon, no armor, no cape. Same count, positions, colors and materials in all four views. The back view must clarify the plain construction of the over-shirt from behind.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, plate armor, pauldrons, gorget, weapon, sword, dagger, shield, cape, wings, horns, tail, crown, muscular build, warrior physique, adult man, aged face, inconsistent scale between views, different height per view, mismatched costume between views, gemstones, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-lazael-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-lazael-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Lazael into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical bookish gentle clean boyish facial identity and face proportions, warm brown eyes (#7A5230), fair warm skin tone (#F2DCC0), soft warm chestnut-brown tousled hair (#8A5A34), bangs and hair length, neck proportions, and the plain soft cloth collar of the house clothes. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the gentle, innocent boyish bearing remains recognizable even in the more animated expressions.

Kinship invariants:
none.

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

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed facial proportions, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, armor, gorget, weapon, muscular build, adult man, aged face, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, pauldrons, gemstones, wings, horns, tail, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

## 07 — `07-lazael-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含外衫拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Lazael's plain house / casual attire, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the plain over-shirt / short jacket (#D8C4A0) drawn SEPARATELY as a flat garment piece, AND one torso view of the character in ONLY the soft under-tunic (#F2EAD8, over-shirt removed) so the body silhouette is fully visible.
2. Collar and neckline detail: the soft folded or round cloth collar, no gorget.
3. Sleeve and cuff detail: soft long sleeves with light-brown accents (#B08A5C), natural fabric drape, bare hands (no gloves, no protective wear).
4. Waist sash / tie detail (#5A4632, plain cloth, no buckle hardware, no weapon attachment).
5. Trouser and shoe/boot detail: knee-length cloth trousers (#8C97A3 accents), plain soft shoes or short cloth boots.
6. Back view construction: plain over-shirt back panel, no cape, no attachments.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/face/hand edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials: warm beige over-shirt/trousers (#D8C4A0), light-brown accents (#B08A5C), soft blue-gray accents (#8C97A3), plain dark-brown sash (#5A4632), white inner layer (#F2EAD8), cotton-and-linen casual cloth only - no metal, no gemstones, no armor plates, no embroidery. Same construction as Image 1; no redesign; NO weapon anywhere (this character has no CANON weapon).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal fittings, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, armor, plate armor, pauldrons, gorget, gemstones, weapon, sword, dagger, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The over-shirt separation panel and the over-shirt-less torso view (under-tunic only) are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-lazael-color-material-sheet.png`（STAGE 2 — 色票／材質表，固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Lazael: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- warm beige #D8C4A0 (over-shirt / trousers base)
- light brown #B08A5C (accents)
- soft blue-gray #8C97A3 (accents)
- plain dark brown #5A4632 (waist sash)
- white #F2EAD8 (inner under-tunic layer)
- warm chestnut-brown #8A5A34 (hair)
- warm brown #7A5230 (eyes)
- fair warm skin tone #F2DCC0
Each swatch pairs a flat color block with a small material patch showing how that surface reads (soft cotton-linen weave, no metal, no gemstones).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (approximately 160 cm, 6.75 heads).

Costume invariants:
Exact attire from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for soft woven cloth, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, armor, gemstones, weapon, sword, dagger, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-lazael-prop-construction-sheet.png`（STAGE 2 — 道具表：可選隨身書卷，唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png — use ONLY to match the soft warm-neutral material language; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Lazael's single optional accessory - there is no canon weapon for this character:
1. An OPTIONAL reading scroll / small bound book (DESIGN-PROPOSAL, sole appearance in the whole package if used at all): closed view, open/unrolled view, and a small detail of its cover texture or binding - plain cloth or aged-paper materials, no gemstones, no metal fittings, echoing his "bookish" characterization.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a garment or accessory attachment (not applicable here since the scroll/book is simply held or carried). Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, item(s) evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise paper and cloth material rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, weapon, sword, dagger, shield, metal fittings, gemstones, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This character has NO canon weapon; this sheet, if used, is the ONLY place the optional reading scroll/book may appear in the entire package.
- Match the locked soft warm-neutral palette exactly; no gemstones, no metal.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-lazael-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-lazael-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Lazael WITHOUT the over-shirt, sash or any outer garment - wearing only a plain tight light-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view (camera at the character's anatomical left side). Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no over-shirt, no loose clothing; the short tousled hair must not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, warm chestnut-brown tousled hair (#8A5A34), fair warm skin (#F2DCC0), warm brown eyes (#7A5230). The body underneath must be consistent with the clothed figure of the approved sheets: slight, slender, non-combatant adolescent build.

Body metrics:
Height approximately 160 cm. Approximately 6.75 heads tall. Shoulder width approximately 1.9 head-widths. Slight, slender, non-combatant boyish build. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, muscular build, adult body, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No over-shirt or accessories on this sheet.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、髮色（暖栗褐 #8A5A34）一致
- [ ] 身材比例：約 160cm／約 6.75 頭身／肩寬約 1.9 倍頭寬，單薄非戰鬥者體格
- [ ] 服裝結構與 Costume Lock 一致（層次、領口、腰帶）
- [ ] 左右位置正確：全對稱居家常服，無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移（#D8C4A0／#B08A5C／#8C97A3／#5A4632／#F2EAD8／#8A5A34／#7A5230／#F2DCC0）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：不適用（本角色無血緣親屬）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT；不得出現盔甲或武器 |
| 01 | 正面、A-pose、正交 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」） |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」） |
| 04 | 背面、A-pose、正交 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 外衫拆解面板＋無外衫（僅內襯）軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定 hex 完全一致 |
| 09 | 若使用書卷道具，唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖 |
