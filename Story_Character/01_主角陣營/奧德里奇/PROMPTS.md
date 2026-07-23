# 奧德里奇 Aldrich — Image Generation Prompts（範本 v2，FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`ALDRICH-V1-FOUNDER-KING`**（理想化建國王者版；其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `00-aldrich-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（新版視圖順序：01 正面、02 左、03 右、04 背）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-aldrich-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 01 | `01-aldrich-front-fullbody.png` | 正面全身，A-pose，零道具 |
| 02 | `02-aldrich-left-profile-fullbody.png` | 左側全身，A-pose，零道具 |
| 03 | `03-aldrich-right-profile-fullbody.png` | 右側全身，A-pose，零道具 |
| 04 | `04-aldrich-back-fullbody.png` | 背面全身，A-pose，零道具 |
| 05 | `05-aldrich-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-aldrich-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-aldrich-costume-detail-sheet.png` | 服裝細節表（含披風拆解與無披風視圖） |
| 08 | `08-aldrich-color-material-sheet.png` | 色票／材質表（固定 hex） |
| 09 | `09-aldrich-prop-construction-sheet.png` | 道具表：巨劍（唯一出現位置）＋金冠拆解＋徽記 |
| 10 | `10-aldrich-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-aldrich-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Aldrich, the idealized founder-king of Hector and the father of Kritz - the man himself rendered as a full character (not a framed portrait or a statue). A mature, dignified prime-of-life king in his forties: square jaw, deep-set brow, dark swept-back side-hair (near-black #1B1B1F), well-groomed short full beard, healthy cool-toned skin (#E6C3A5), steady dark sober eyes (deep brown #3E2A1E). Costume (locked): a heavy gold crown set with deep-red ruby gemstones (#7C0A02); gold-trimmed full plate armor (polished gold #D4AF37 with silver-steel plates #9BA7B0); gold-embossed cuirass bearing the Hector royal crest (a stylized heraldic lion in gold relief); a crimson king's cape (#A31621) draped from both shoulders with symmetric gold clasps, falling to the floor, gold lining (#C9A227); dark inner war-tunic (#23262B); armored pauldrons, vambraces, gauntlets, waist armor with war-belt, leg plates and metal boots; dark-brown leather straps (#4A3524). He carries NO weapon and NO props of any kind.

Body metrics:
Height 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Broad-shouldered heavyset heroic build. Fully symmetric design, no left-right asymmetric features.

Kinship invariants:
He is the father of Kritz (family anchor). His face bone structure — the square jaw and deep-set brow — must read as the mature, heavyset origin of Kritz's younger, leaner face. His eyes are locked deep brown #3E2A1E and must NOT be gold or red-gold (the royal gold eyes belong to the maternal line, Agnes to Kritz). His hair and beard are near-black #1B1B1F, NOT the dark-gold/flaxen hair of his son.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose;
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, beard, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, polished metal, leather and gemstone material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, youthful boyish face, teenager, beardless, frail thin build, sickly, elderly hunched, twin swords, dual swords, picture frame, portrait frame, statue plinth, stone pedestal, marble statue texture, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (heavy gold crown, gold-trimmed full plate, crimson cape, dark hair, mature beard, tall powerful build).
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons belong exclusively to sheet 09.
- Full-body view MUST use the standard neutral A-pose defined above; the two portraits are unaffected by the A-pose rule.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 01 — `01-aldrich-front-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Aldrich as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same mature dignified face, square jaw, deep brow, dark swept-back hair and short full beard (#1B1B1F), cool-toned skin (#E6C3A5), dark sober eyes (#3E2A1E).

Body metrics:
Height 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design.

Costume invariants:
Identical founder-king regalia from Image 1: heavy gold crown with ruby gems (#7C0A02), gold-trimmed full plate (#D4AF37 / #9BA7B0), gold lion crest cuirass, crimson cape (#A31621) from both shoulders with symmetric gold clasps, dark war-tunic (#23262B), leather straps (#4A3524). NO weapon anywhere; the great sword is reserved for prop sheet 09.

Composition:
Single figure centered, entire body from crown to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, beardless, teenager, frail thin build, elderly hunched, twin swords, statue plinth, reference character face, copying any style-image character, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-aldrich-left-profile-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single left-profile full-body orthographic reference

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Aldrich as ONE full-body LEFT profile view (camera positioned at the character's anatomical LEFT side, 90 degrees; the anatomical left side of the body faces the viewer) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly 90 degrees left; no head turn toward the viewer.

Identity invariants:
Identical character from Image 1: same face structure in profile, dark swept-back hair and short full beard (#1B1B1F), cool-toned skin (#E6C3A5).

Body metrics:
Height 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design.

Costume invariants:
Identical regalia from Image 1: gold crown profile, gold-trimmed plate, crimson cape (#A31621) hanging from the shoulders in profile silhouette, dark war-tunic, leather straps. NO weapon anywhere; the great sword is reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, beardless, teenager, frail thin build, elderly hunched, twin swords, statue plinth, reference character face, copying any style-image character, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic left profile.
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-aldrich-right-profile-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single right-profile full-body orthographic reference

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Aldrich as ONE full-body RIGHT profile view (camera positioned at the character's anatomical RIGHT side, 90 degrees; the anatomical right side of the body faces the viewer) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly 90 degrees right; no head turn toward the viewer. The design is fully symmetric, so the right profile mirrors the left profile exactly.

Identity invariants:
Identical character from Image 1: same face structure in profile, dark swept-back hair and short full beard (#1B1B1F), cool-toned skin (#E6C3A5).

Body metrics:
Height 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design.

Costume invariants:
Identical regalia from Image 1: gold crown profile, gold-trimmed plate, crimson cape (#A31621) hanging from the shoulders in profile silhouette, dark war-tunic, leather straps. NO weapon anywhere; the great sword is reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, beardless, teenager, frail thin build, elderly hunched, twin swords, statue plinth, reference character face, copying any style-image character, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic right profile.
- No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-aldrich-back-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Aldrich as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same dark swept-back hair from behind (#1B1B1F), same build and proportions.

Body metrics:
Height 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design.

Costume invariants:
Identical regalia from Image 1 seen from behind: the crimson cape (#A31621) back panel fully shown covering the back, symmetric gold shoulder clasps visible, gold-trimmed back plates above/beside the cape edges, crown back, metal boots. NO weapon anywhere; the great sword is reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, twin swords, statue plinth, reference character face, copying any style-image character, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 05 — `05-aldrich-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Aldrich containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same face, dark swept-back hair and short full beard (#1B1B1F), cool-toned skin (#E6C3A5), dark sober eyes (#3E2A1E). Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design.

Costume invariants:
Every view wears the identical regalia from Image 1: gold crown with ruby gems (#7C0A02), gold-trimmed full plate (#D4AF37 / #9BA7B0), gold lion crest cuirass, crimson cape (#A31621) from both shoulders with symmetric gold clasps (back panel fully shown in the back view), dark war-tunic (#23262B), leather straps (#4A3524). Same accessory count, positions, colors and materials in all four views. NO weapon anywhere; the great sword is reserved for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, beardless, teenager, frail thin build, elderly hunched, twin swords, statue plinth, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-aldrich-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, beard, crown and color reference (the approved 00-aldrich-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Aldrich into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the crown. The head (with crown) must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and mature face proportions, square jaw and deep brow, dark swept-back side-hair, well-groomed mature beard (#1B1B1F), healthy cool-toned skin (#E6C3A5), steady dark authoritative eyes (#3E2A1E), neck proportions, the heavy gold crown with ruby gems and the visible gold-trimmed plate collar / crimson cape edge.

Kinship invariants:
His square jaw and deep-set brow are the paternal origin of his son Kritz's face structure. Eyes stay deep brown #3E2A1E in every panel — never gold or red-gold (the royal gold eyes belong to the maternal line). Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the dignified undefeated-king bearing remains.

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
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes and beard and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, changed beard, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed beard, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, tail, beardless, youthful boyish face, teenager, frail sickly face, elderly hunched, no crown, portrait frame, statue plinth, marble statue texture, twin swords, gold eyes, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

## 07 — `07-aldrich-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含外層拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Aldrich's founder-king regalia, organized as labeled-free callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the crimson king's cape (#A31621, gold lining #C9A227, symmetric gold shoulder clasps) drawn SEPARATELY as a flat garment piece, AND one torso view of the armor WITHOUT the cape so the body silhouette and back plate are fully visible.
2. Cuirass front detail: gold lion crest embossing (#D4AF37) on the chest plate.
3. Pauldron, vambrace and gauntlet close-ups showing plate articulation and leather strapping (#4A3524).
4. Waist armor and war-belt detail (no weapon attached).
5. Leg plate and metal boot detail.
6. Crown-collar area: neck guard and dark war-tunic (#23262B) edge.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin (#E6C3A5) may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials: polished gold #D4AF37, silver-steel #9BA7B0, crimson #A31621, gold lining #C9A227, dark tunic #23262B, leather #4A3524, ruby gems #7C0A02. Same construction as Image 1; no redesign; NO weapon anywhere (great sword belongs to sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, greatsword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The cape separation panel and the cape-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-aldrich-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Aldrich: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering spheres/patches for each locked color:
- polished gold #D4AF37 (crown, armor trim)
- silver-steel #9BA7B0 (plate)
- crimson #A31621 (cape)
- gold lining #C9A227
- dark war-tunic #23262B
- leather #4A3524
- ruby gem #7C0A02
- skin #E6C3A5, hair and beard #1B1B1F, eyes #3E2A1E
Each swatch pairs a flat color block with a small material patch showing how that surface reads (metal sheen, fabric weave, leather grain, gem sparkle).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, beard, proportions (190 cm, 8.0 heads, 2.8 head-widths shoulders).

Costume invariants:
Exact regalia from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for metal, fabric, leather and gemstone, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, greatsword, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-aldrich-prop-construction-sheet.png`（STAGE 2 — 道具表：武器唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png — use ONLY to match gold/crimson material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Aldrich's regalia items:
1. The GREAT SWORD (sole appearance in the whole package): full front view, side view, and hilt/guard close-up — cold-steel blade #8C97A3, gold-trimmed hilt and guard #D4AF37, dark leather grip #4A3524; include its scabbard and the belt-hanger hardware as separate callouts.
2. The heavy gold crown: three-quarter structural view and gem-setting close-up (rubies #7C0A02).
3. The Hector royal crest: enlarged flat emblem drawing (stylized heraldic lion, gold relief).
4. Cape clasp hardware: the symmetric gold shoulder clasps, front and section views.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork and gemstone rendering, polished gold and cold steel material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, twin swords, dual swords, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the great sword may appear in the entire package.
- Match the locked palette exactly (#8C97A3 blade, #D4AF37 gold, #4A3524 leather, #7C0A02 rubies).
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-aldrich-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-aldrich-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Aldrich WITHOUT armor, cape or any outer garment — wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) — as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no cape, no armor, no loose clothing; the short hair must not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, dark swept-back hair and short full beard (#1B1B1F), skin #E6C3A5, eyes #3E2A1E. The body underneath must be consistent with the armored figure of the approved sheets: broad-shouldered, heavyset, powerful.

Body metrics:
Height 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, crown, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No crown on this sheet (bare head shows skull/hair silhouette for fitting).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、瀏海、髮色 #1B1B1F 一致；蓄鬚樣式一致
- [ ] 身材比例：190cm／8.0 頭身／肩寬 2.8 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（層次、扣件數量、徽記位置）
- [ ] 左右位置正確：全對稱設計，無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移：#D4AF37／#9BA7B0／#A31621／#C9A227／#23262B／#4A3524／#7C0A02／#E6C3A5／#3E2A1E
- [ ] 無任何武器道具出現（09 除外）；平光無投影陰影（06 攝影棚柔光除外）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 01–04 | 單一視圖、視角正確（01 正面／02 左／03 右／04 背）、A-pose、正交 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 披風拆解面板＋無披風軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定 hex 完全一致 |
| 09 | 巨劍唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；無金冠 |
