# 菲利浦 Philip — Image Generation Prompts（範本 v2 FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`PHILIP-V1-STUDY-INFILTRATION`**（安德烈書房秘密行動場景版；其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `00-philip-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風，不得被當成本角色的身份參考。
> **家族生成順序（§13）**：菲利浦屬於家族 `ANDRE`，錨點為安德烈。**安德烈的 00 必須先核准，本角色的 00 才能進入生成階段。**
> **佩劍側鎖定**：側劍佩於腰間**左側**（`DESIGN-PROPOSAL`，可覆蓋）；因側劍只出現於 09 道具表，00–05、07、10 全身圖一律零道具、不顯示佩劍或掛點側別。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> 本包為 FULL v2 完整 11 條（00–10），每條提示詞獨立完整，勿合併。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-philip-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具（含 Kinship invariants） |
| 01 | `01-philip-front-fullbody.png` | 正面全身，A-pose，零道具 |
| 02 | `02-philip-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具 |
| 03 | `03-philip-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具 |
| 04 | `04-philip-back-fullbody.png` | 背面全身，A-pose，零道具 |
| 05 | `05-philip-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-philip-expression-sheet.png` | 八表情臉部表，4×2 網格，含 Kinship invariants |
| 07 | `07-philip-costume-detail-sheet.png` | 服裝細節表（外袍拆解面板＋無外袍軀幹視圖，零武器） |
| 08 | `08-philip-color-material-sheet.png` | 色票／材質表（已補固定 hex） |
| 09 | `09-philip-prop-construction-sheet.png` | 道具表：側劍（唯一出現位置，佩於左側）＋梧桐家紋徽記 |
| 10 | `10-philip-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-philip-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Philip, a young nobleman (apparent age 18-22), the son of the noble statesman Andre, height read ~176cm, upright slender-but-poised proportions. CANON facial identity: a handsome young noble face with clear features; when he hears of his father's secret plan his eyes light up with eager, excited anticipation - a barely-contained excitement in the gaze; locked deep amber-brown eyes (#6B4423, LOCKED default). Fair, healthy-toned skin (#F0DCC7). Dark brown, near-black short hair (#1C1712), neatly side-parted (LOCKED default), echoing his father's refined noble bearing. Real materials: fine-woven noble cloth, layered fabric, leather belt / gloves / boots, and dark-silver metal fittings on clasps only (#8C8C94), no gemstone finery. Costume: dark noble action-attire in his father Andre's dark palette (deep blue #1E2A3F dominant), fitted and agile rather than heavy plate armor; a standing or turned collar with restrained embroidery; a subtle Paulownia-house crest motif on the chest; fitted sleeves, dark noble trousers and leather boots. Palette: dark noble colors with restrained silver-grey embroidery and fittings, aligned with the whole story's converged gold / silver-blue / dark scheme. He carries NO weapon and NO props of any kind - the side sword (canonically worn at the LEFT hip), its scabbard and belt-hanger belong exclusively to the prop construction sheet (09).

Body metrics:
Height approximately 176 cm (DESIGN-PROPOSAL). Approximately 7.0 to 7.5 heads tall (DESIGN-PROPOSAL proportion). Shoulder width approximately 2.1 head-widths (upright poised young-noble build, DESIGN-PROPOSAL, overridable). The sword-scabbard side is locked to the LEFT hip for sheet 09 only; since the side sword is confined to prop sheet 09 in this package (no weapon appears on 00, 01-05, 06, 07, 08 or 10), no asymmetry needs to be shown on any full-body view here.

Kinship invariants:
Philip is the son of Andre (family anchor, house ANDRE). His clear, handsome jawline and refined facial contour are the younger version of his father Andre's cheekbone-and-jawline bone structure. He deliberately does NOT inherit his father's gray hair - his hair is dark brown, near-black, neatly side-parted. He shares the family's dark-eye lineage with his sister Cecilia: his eyes are locked deep amber-brown (#6B4423), hers are locked dark brown - related but distinct shades. He must not appear elderly, gray-haired or wrinkled like his father.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose;
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, fabric-focused material separation with minimal dark-silver fittings, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, armor plate, plate armor, heavy armor, female, woman, girl, elderly face, gray hair, wrinkles, gemstone finery, ornate jewels, shining gemstones, gold pauldrons, heavy metal armor, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel, weapon, sword, side sword, scabbard, sheath, shield, staff, prop object, standalone prop, handheld item, belt-worn weapon, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (young handsome noble male, eager excited bright-eyed expression, dark noble action-attire in Andre's dark palette).
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. The side sword belongs exclusively to sheet 09.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 01 — `01-philip-front-fullbody.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Philip as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same handsome young noble face, dark brown near-black short hair neatly side-parted (#1C1712), deep amber-brown eyes (#6B4423), fair healthy-toned skin (#F0DCC7).

Body metrics:
Height approximately 176 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.1 head-widths.

Costume invariants:
Identical dark noble action-attire from Image 1: deep blue dark noble palette (#1E2A3F), standing/turned collar with restrained silver-grey embroidery (#8C8C94), subtle Paulownia-house crest on the chest, fitted sleeves, dark noble trousers, leather boots. NO weapon, NO scabbard, NO belt-worn sword anywhere; the side sword is reserved exclusively for prop sheet 09.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-silver fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, plate armor, heavy armor, female, woman, girl, elderly face, gray hair, wrinkles, gemstone finery, gold pauldrons, weapon, sword, side sword, scabbard, sheath, belt-worn weapon, standalone prop, handheld item, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-philip-left-profile-fullbody.png`（STAGE 2 — 00 核准後；相機位於角色解剖學左側）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Philip as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens. The belt is plain and empty in this view; the side sword and its left-hip scabbard mount belong exclusively to prop sheet 09.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, dark brown near-black hair neatly side-parted (#1C1712), fair healthy-toned skin (#F0DCC7).

Body metrics:
Height approximately 176 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.1 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: deep blue dark noble robe silhouette (#1E2A3F), chest crest visible at the edge of this profile, fitted sleeve in profile, plain leather belt (empty), dark noble trousers, leather boot. NO weapon, NO scabbard anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-silver fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, plate armor, female, woman, girl, elderly face, gray hair, gemstone finery, gold pauldrons, weapon, sword, side sword, scabbard, sheath, belt-worn weapon, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-philip-right-profile-fullbody.png`（STAGE 2 — 00 核准後；相機位於角色解剖學右側）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Philip as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. The belt is plain and empty in this view; the side sword and its left-hip scabbard mount (occluded/far side here) belong exclusively to prop sheet 09.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, dark brown near-black hair neatly side-parted (#1C1712), fair healthy-toned skin (#F0DCC7).

Body metrics:
Height approximately 176 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.1 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: deep blue dark noble robe silhouette (#1E2A3F), chest crest visible at the edge of this profile, fitted sleeve in profile, plain leather belt (empty), dark noble trousers, leather boot. NO weapon, NO scabbard anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-silver fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, plate armor, female, woman, girl, elderly face, gray hair, gemstone finery, gold pauldrons, weapon, sword, side sword, scabbard, sheath, belt-worn weapon, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-philip-back-fullbody.png`（STAGE 2 — 00 核准後；背面）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Philip as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same dark brown near-black hair neatly side-parted (#1C1712) seen from behind, same upright poised build.

Body metrics:
Height approximately 176 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.1 head-widths.

Costume invariants:
Identical dark noble attire from Image 1 seen from behind: deep blue back panel (#1E2A3F), the plain leather belt fastened at the back (empty, no sword or scabbard), dark noble trousers, leather boots seen from behind. NO weapon, NO scabbard anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-silver fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, plate armor, female, woman, girl, elderly face, gray hair, gemstone finery, gold pauldrons, weapon, sword, side sword, scabbard, sheath, belt-worn weapon, reference character face, copying any style-image character, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 05 — `05-philip-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Philip containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same handsome young noble face, dark brown near-black short hair neatly side-parted (#1C1712), deep amber-brown eyes (#6B4423), fair healthy-toned skin (#F0DCC7), upright slender-but-poised ~176cm build. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 176 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.1 head-widths. No weapon appears in this sheet, so no scabbard-side asymmetry needs to be shown.

Costume invariants:
Every view wears the identical dark noble action-attire from Image 1: deep blue palette (#1E2A3F), standing/turned collar with restrained silver-grey embroidery (#8C8C94), subtle Paulownia-house crest on the chest, fitted sleeves, dark noble trousers, leather boots. Same count, positions, colors and materials in all four views. NO weapon, NO scabbard, NO belt-worn sword anywhere; the side sword is reserved exclusively for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-silver fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, plate armor, heavy armor, female, woman, girl, elderly face, gray hair, wrinkles, gemstone finery, gold pauldrons, weapon, sword, side sword, scabbard, sheath, belt-worn weapon, standalone prop, handheld item, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-philip-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-philip-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Philip into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, dark brown near-black short hair neatly side-parted (#1C1712), deep amber-brown eyes (#6B4423), fair healthy-toned skin (#F0DCC7), neck proportions, and the dark noble collar with Paulownia-crest motif visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
Philip's clear jawline and refined facial contour are the younger version of his father Andre's cheekbone-and-jawline bone structure - a constant fact of his own face in every panel. His hair stays dark brown near-black in every panel, never gray like his father. His eyes stay locked deep amber-brown (#6B4423) in every panel, distinct from his sister Cecilia's dark brown.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, female, woman, girl, elderly face, gray hair, wrinkles, armor plate, plate collar, gorget, wings, horns, tail, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, gemstone finery, gold pauldrons, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

## 07 — `07-philip-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含外袍拆解，零武器）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Philip's dark noble action-attire, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the outer fitted jacket/doublet drawn SEPARATELY as a flat garment piece, AND one torso view of the character WITHOUT the outer layer so the inner shirt/undergarment silhouette and body outline are fully visible.
2. Chest crest detail: the subtle Paulownia-house crest motif on the chest.
3. Collar and sleeve detail: the standing/turned collar with restrained embroidery and the fitted sleeves.
4. Waist and belt detail: the plain leather belt (empty of the sword in this view - the sword itself belongs to sheet 09, and its scabbard mounts on the LEFT side).
5. Trouser and footwear detail: the dark noble trousers and leather boots.
6. Back structure: the jacket's back seam and belt fastening.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; fair healthy-toned skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials from Image 1: deep blue dark noble palette (#1E2A3F), restrained silver-grey embroidery (#8C8C94). Same construction as Image 1; no redesign; NO weapon, NO scabbard anywhere (reserved for sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, fabric-focused material separation with minimal dark-silver fittings, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, scabbard, sheath, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The outer-layer separation panel and the outer-layer-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-philip-color-material-sheet.png`（STAGE 2 — 色票／材質表，已補固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Philip: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- deep blue dark noble palette main color #1E2A3F (same family as Andre's scholar robe)
- restrained silver-grey embroidery/fittings #8C8C94
- fair healthy-toned skin #F0DCC7
- dark brown near-black hair #1C1712
- deep amber-brown eyes #6B4423 (LOCKED)
Each swatch pairs a flat color block with a small material patch (fine-woven cloth, leather grain, dark-silver metal fitting).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~176cm, ~7.0-7.5 heads).

Costume invariants:
Exact regalia from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only; hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for fine cloth, leather and dark-silver metal, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-philip-prop-construction-sheet.png`（STAGE 2 — 道具表：側劍唯一出現位置，佩於左側）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png - use ONLY to match material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Philip's canonical weapon and family crest:
1. The SIDE SWORD (sole appearance in the whole package): full front view, side view, and hilt/guard close-up - a single-hand side sword with a dark-silver metal (#8C8C94) hilt and guard, plain leather-wrapped grip, no gemstone finery; include its scabbard and the belt-hanger hardware as separate callouts, explicitly noting the scabbard mounts on the character's LEFT hip.
2. The Paulownia (plane-tree) house crest: enlarged flat emblem drawing, stylized five-lobed plane-tree leaf, matching his father Andre's family crest.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain the belt-hanger attachment (indicate the LEFT-hip mount point). Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, dark-silver metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, twin swords, dual swords, wrong palette, neon colors, gemstone finery, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the side sword may appear in the entire package.
- Match the locked palette (dark-silver metal #8C8C94, leather); no gemstone finery. Scabbard mount is on the LEFT hip.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-philip-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-philip-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Philip WITHOUT the outer jacket, belt or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no jacket, no loose clothing, no weapon.

Identity invariants:
Same character as Image 1: same handsome young noble face, dark brown near-black short hair neatly side-parted (#1C1712), fair healthy-toned skin (#F0DCC7), deep amber-brown eyes (#6B4423). The body underneath must be consistent with the clothed figure of the approved sheets: upright, slender-but-poised young noble build.

Body metrics:
Height approximately 176 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.1 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, jacket, outer garment, loose clothing, weapon, sword, props, accessories, jewelry, belt with sword, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures, female, woman, girl

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Body silhouette fully visible; tight plain bodysuit only; zero props (no belt, no sword); flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：（安德烈 00 已核准）→ 00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（英挺年輕貴公子）
- [ ] 髮型、髮色（深棕近墨黑 #1C1712、側分）一致
- [ ] 身材比例：176cm／約 7.0–7.5 頭身／肩寬約 2.1 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（深色勁裝層次、家紋位置）
- [ ] 左右位置正確：佩劍側鎖定左側（僅 09 適用），00–05／07／10 無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移：#1E2A3F／#8C8C94／#F0DCC7／#1C1712／#6B4423
- [ ] 無任何武器道具出現（09 除外，包含側劍）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：下頜線與英挺輪廓與家族錨點安德烈的核准 00 可辨識地一致；灰白髮與皺紋（父之特徵）未混淆到本角色

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 01 | 正面、A-pose、正交、零道具 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）、腰帶空無佩劍 |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）、腰帶空無佩劍 |
| 04 | 背面、A-pose、正交、腰帶空無佩劍 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 外層拆解面板＋無外層軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定 hex 完全一致 |
| 09 | 側劍唯一出現於此，佩於左側；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層與武器；身體輪廓完全可見；正面＋左側兩視圖 |
