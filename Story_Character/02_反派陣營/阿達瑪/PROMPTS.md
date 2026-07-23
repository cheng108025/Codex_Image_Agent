# 阿達瑪 Adama — Image Generation Prompts（範本 v2 FULL package: 00–10）

> ## 身份辨識關鍵已定案（2026-07-23）
> 阿達瑪曾有兩項會直接改變辨識度的重大分歧，已於 2026-07-23 由使用者核准定案：**髮型＝短銀灰髮 short silver-gray hair**（原 B 案「無髮結晶化頭部」未採用）；**固定武器＝無固定武器**，近戰倚賴再生利爪、遠程倚賴控龍（原 B 案「結晶刃」未採用）。詳見 `CHARACTER_SPEC.md` 對應專節。
> 下方全部 00–10 號提示詞已依定案值撰寫，可依序生成。

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`ADAMA-V1-STOCHIA-BATTLEFIELD`**（斯托奇雅戰場版；其他時期／服裝需另立版本，不得混用；髮型與武器兩項已於 2026-07-23 核准定案，見上方）

> **兩階段規則（強制）**：第一階段只生成 `00-adama-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **核心辨識特徵（不可抹平）**：半透明結晶與裸露再生血肉是阿達瑪**自己的身體本身**，不是外部裝備——所有圖（含 10 號素體圖）都必須保留，絕不可畫成完整無瑕的一般人類皮膚。結晶分布正式鎖定於**右前臂與手、左肩與鎖骨、右側肋腹**。02 號視圖＝相機位於角色解剖學左側；03 號視圖＝相機位於角色解剖學右側。禁止只寫「朝左／朝右」。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張；髮型／武器已定案，可依序生成）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-adama-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具（髮型：短銀灰髮；武器：無固定武器，已定案） |
| 01 | `01-adama-front-fullbody.png` | 正面全身，A-pose，零道具 |
| 02 | `02-adama-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具（呈現左肩／鎖骨結晶） |
| 03 | `03-adama-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具（呈現右前臂／右肋腹結晶） |
| 04 | `04-adama-back-fullbody.png` | 背面全身，A-pose，零道具 |
| 05 | `05-adama-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-adama-expression-sheet.png` | 八表情臉部表，4×2 網格（保留臉頸部結晶與裸露肌理） |
| 07 | `07-adama-costume-detail-sheet.png` | 服裝細節表（殘破纏布拆解＋裸露結晶軀幹視圖） |
| 08 | `08-adama-color-material-sheet.png` | 色票／材質表（已補固定 hex） |
| 09 | `09-adama-prop-construction-sheet.png` | 特殊構造表：控龍銀色墜飾拆解＋半透明結晶／裸露再生肌理構造研究（已定案：無固定武器） |
| 10 | `10-adama-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用；貼身素體衣，無墜飾／無 accessories/jewelry；結晶與裸露肌理視為身體解剖的一部分，保留） |

---

## 00 — `00-adama-character-identity-anchor.png`（STAGE 1 — 髮型／武器已於 2026-07-23 核准定案）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Adama, a non-human regenerating enemy in a wiry-strong male humanoid form, baseline height ~188cm, lean-and-honed seven-heads proportions whose body shifts as it regenerates. CANON identity - this is his defining, non-negotiable feature: his healing wounds are visibly rendered as semi-translucent CRYSTAL growth (#CFE3EA) combined with exposed, raw regenerating flesh (#7A2020); his limbs and torso show translucent crystalline formations and exposed muscle texture LOCKED to the right forearm and hand, the left shoulder and collarbone, and along the right ribs and flank, reading as a body that is broken and growing back at once. This crystal-and-flesh feature is HIS OWN body (not external adornment) and must be present and clearly visible in every view - never replace it with intact ordinary human skin, and never negate it. CANON: he wears a SILVER pendant (#C7CBCE) on a chain at his neck, the artifact he uses to control the great dragon. Overall body base tone: silver-gray (#B9BEC2) with dark-red exposed flesh and healing wounds. Face: a lean, sharp humanoid face wearing a cold, oppressive smile, with narrow cold eyes of dark-red irises (#6B2020, locked default). CANON, user-approved 2026-07-23: short silver-gray hair (#C7CBCE). Costume version: Stochia battlefield state - a battered, half-bare humanoid frame covered only by limited torn cloth wraps (#4A3527) and broken armor fragments (#6E747C), deliberately leaving the regenerating crystal and exposed tissue visible; low or open collar to reveal the silver dragon-control pendant against the crystalline chest. CANON, user-approved 2026-07-23: he carries no handheld weapon; his threat is his own regenerating claws/knuckles in melee and his control of the great dragon through the pendant at range. Primary materials: his own semi-translucent crystalline body plus exposed regenerating flesh, and a silver neck pendant - NOT ordinary intact skin, not a clergy robe, not gold pauldrons. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Body metrics:
Height read ~188cm. Approximately 7.0 heads tall, lean-and-honed wiry-strong build. Shoulder width approximately 2.3 head-widths. Left-right asymmetric feature (LOCKED): crystal/exposed-flesh concentration on the right forearm and hand, left shoulder and collarbone, and right ribs/flank - this distribution must stay on the same side across all sheets once rendered in the approved 00.

Kinship invariants:
None. Adama has no established blood relatives in the family registry; no kinship resemblance constraints apply.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors, costume and the identical placement of the semi-translucent crystal growth and exposed regenerating flesh. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, polished metal and organic material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, smooth unbroken skin covering the whole body, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, crown, gold pauldrons, clergy robe, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Hairstyle (short silver-gray hair) and fixed-weapon (none) are user-approved CANON decisions as of 2026-07-23, per CHARACTER_SPEC.md; not placeholders.
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (semi-translucent crystal growth plus exposed regenerating flesh at healing wounds, silver dragon-control pendant, silver-gray and dark-red palette, cold smile). Never negate the crystalline / exposed-flesh feature.
- The crystalline body and exposed flesh are HIS OWN canon anatomy: the "Revanas ice-crystal horns / crystalline wings / tail" exclusions refer to those specific external structures (which he lacks) and must never be read as negating his own crystal body or exposed flesh.
- Character and costume only: no weapons, no handheld items, no standalone props. All accessories (silver pendant construction, crystal/flesh anatomical studies) belong in detail on sheet 09.
- Follow approved DESIGN-PROPOSAL items consistently.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 01 — `01-adama-front-fullbody.png`（STAGE 2 — 00 核准後；髮型／武器已定案）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Adama as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same lean sharp face with cold smile, dark-red iris (#6B2020), silver-gray body base tone (#B9BEC2), and the SAME semi-translucent crystal growth (#CFE3EA) and exposed dark-red flesh (#7A2020) on the right forearm/hand, left shoulder/collarbone and right ribs/flank - never replaced by intact ordinary skin.

Body metrics:
Height read ~188cm. Approximately 7.0 heads tall. Shoulder width approximately 2.3 head-widths.

Costume invariants:
Identical battlefield state from Image 1: battered half-bare frame with limited torn cloth wraps (#4A3527) and broken armor fragments (#6E747C), low/open collar, and the SILVER dragon-control pendant (#C7CBCE) on a chain at the neck. NO weapon anywhere.

Composition:
Single figure centered, entire body from head to feet inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and organic material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, smooth unbroken skin, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, crown, gold pauldrons, clergy robe, reference character face, copying any style-image character, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- The crystalline body and exposed flesh are canon anatomy and must stay visible.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-adama-left-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學左側；呈現左肩／鎖骨結晶）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Adama as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens. This is the primary view for reading the crystal growth and exposed flesh on the left shoulder and collarbone.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, silver-gray body base tone (#B9BEC2), and the crystal growth/exposed flesh on the left shoulder and collarbone clearly visible and readable from this side.

Body metrics:
Height read ~188cm. Approximately 7.0 heads tall. Shoulder width approximately 2.3 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: torn cloth wraps (#4A3527) and broken armor fragments (#6E747C), the silver pendant chain visible at the neck, the crystal/flesh construction on the left shoulder/collarbone clearly readable. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and organic material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, crystal moved to the wrong shoulder, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- The left shoulder/collarbone crystal and exposed flesh must be clearly readable on this view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-adama-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側；呈現右前臂／右肋腹結晶）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Adama as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. This is the primary view for reading the crystal growth and exposed flesh on the right forearm/hand and right ribs/flank.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, silver-gray body base tone (#B9BEC2), and the crystal growth/exposed flesh on the right forearm/hand and right ribs/flank clearly visible and readable from this side.

Body metrics:
Height read ~188cm. Approximately 7.0 heads tall. Shoulder width approximately 2.3 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: torn cloth wraps (#4A3527) and broken armor fragments (#6E747C), the silver pendant chain visible at the neck, the crystal/flesh construction on the right forearm/hand and right ribs/flank clearly readable. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and organic material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, crystal moved to the wrong side, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- The right forearm/hand and right ribs/flank crystal and exposed flesh must be clearly readable on this view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-adama-back-fullbody.png`（STAGE 2 — 背面）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Adama as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same silver-gray body base tone (#B9BEC2) seen from behind, same build and proportions, crystal/exposed-flesh growth on the left shoulder (visible from behind) and right ribs/flank (visible from behind at the side of the back).

Body metrics:
Height read ~188cm. Approximately 7.0 heads tall. Shoulder width approximately 2.3 head-widths.

Costume invariants:
Identical attire from Image 1 seen from behind: torn cloth wraps (#4A3527) and broken armor fragments (#6E747C) on the back, some scattered smaller crystal/healing-wound patches on the back consistent with Image 1. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and organic material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- The crystalline body and exposed flesh are canon anatomy and must stay visible where established on the back.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 05 — `05-adama-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Adama containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same lean sharp humanoid face, cold oppressive smile, silver-gray body (#B9BEC2) with dark-red exposed regenerating flesh (#7A2020), and the SAME semi-translucent crystal growth (#CFE3EA) and exposed tissue on the right forearm/hand, left shoulder/collarbone and right ribs/flank in every view - never replaced by intact ordinary skin. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height read ~188cm. Approximately 7.0 heads tall. Shoulder width approximately 2.3 head-widths.

Costume invariants:
Every view shows the identical battlefield state from Image 1: battered half-bare frame with limited torn cloth wraps (#4A3527) and broken armor fragments (#6E747C), low/open collar, and the SILVER dragon-control pendant (#C7CBCE) on a chain at the neck (same neck position in all views). Same count, positions, colors and materials in all four views. Character and costume only - no weapons, no handheld items, no standalone props.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and organic material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, fully intact ordinary human skin only, smooth unbroken skin covering the whole body, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, crown, gold pauldrons, clergy robe, inconsistent scale between views, different height per view, mismatched crystal placement between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views, including the crystal-and-flesh regenerating feature.
- His crystalline body and exposed flesh are canon anatomy and must stay visible; the Revanas wings/horns/tail exclusions never override it.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-adama-expression-sheet.png`（STAGE 2 — 00 核准後；八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-adama-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Adama into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the head. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, silver-gray skin tone (#B9BEC2) with dark-red exposed regenerating flesh (#7A2020), and the SAME semi-translucent crystal growth (#CFE3EA) and exposed tissue visible on the face, neck and shoulders in the same locations - this crystal-and-flesh feature must remain clearly visible in every panel and must never be replaced by intact ordinary human skin. Preserve the same hairstyle, hair length, neck proportions, open/low collar and the silver dragon-control pendant (#C7CBCE) visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
None.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. The semi-translucent crystal and exposed regenerating flesh must stay visible on face/neck in all eight panels. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, fully intact ordinary human skin only, smooth unbroken skin, no crystal, no exposed flesh, cute, chibi, wings, horns, tail, gold pauldrons, clergy robe, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, white-gold pale-purple clergy robe, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs
```

---

## 07 — `07-adama-costume-detail-sheet.png`（STAGE 2 — 00 核准後；服裝細節表，含外層拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a professional costume construction sheet for Adama's battlefield state, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the torn cloth wraps and broken armor fragments drawn SEPARATELY as flat fragment pieces, AND one torso view WITHOUT the cloth wraps/armor fragments so the crystalline body and exposed regenerating flesh are fully visible and unobstructed.
2. Right forearm and hand close-up: the crystal growth and exposed dark-red flesh construction.
3. Left shoulder and collarbone close-up: the same crystal/flesh construction.
4. Right ribs and flank close-up: the same crystal/flesh construction.
5. Neck/collar area: the open/low collar framing the silver dragon-control pendant against the crystalline chest.

Identity invariants:
This is a costume-and-anatomy study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly, including the crystal/exposed-flesh locations. No face-focused portrait is required.

Kinship invariants:
None.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: torn cloth wraps (#4A3527), broken armor fragments (#6E747C), silver-gray crystalline body (#B9BEC2), dark-red exposed flesh (#7A2020), semi-translucent crystal (#CFE3EA), silver pendant (#C7CBCE). Do not redesign, add or remove any element; no weapon anywhere. Never replace the crystal/flesh with intact ordinary skin in any panel.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise organic/crystal material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, fully intact ordinary human skin only, no crystal, no exposed flesh, weapon, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume and anatomy from Image 1; Images 2-4 are style only.
- The cloth/armor separation panel and the wrap-less torso view showing full crystal/flesh are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-adama-color-material-sheet.png`（STAGE 2 — 00 核准後；色票／材質表，已補固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a production color-and-material sheet for Adama: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color: silver-gray body skin #B9BEC2, dark-red exposed regenerating flesh #7A2020, semi-translucent crystal growth #CFE3EA, silver pendant metal #C7CBCE, torn cloth wrap fabric #4A3527, dark-red iris #6B2020. Each swatch pairs a flat color block with a small material patch showing how that surface reads (translucent crystal, raw flesh sheen, brushed silver metal, worn cloth).

Identity invariants:
The reference figure is the identical character from Image 1; same face, proportions (~188cm, 7.0 heads, lean-and-honed build), and the same crystal/flesh placement.

Kinship invariants:
None.

Costume invariants:
Exact battlefield state from Image 1; no redesign; no weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only; hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for crystal, exposed flesh, metal and cloth, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, scabbard, holding weapon, cast shadows, rim light, extra character, fully intact ordinary human skin only, no crystal, no exposed flesh, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- The crystal and exposed-flesh swatches must be present; do not omit them.
- No text or watermark.
```

---

## 09 — `09-adama-prop-construction-sheet.png`（STAGE 2 — 00 核准後；特殊構造表：已定案無固定武器，放墜飾＋結晶構造研究）

```text
Use case: stylized-concept
Asset type: accessory and anatomical construction sheet (props only, per user-approved decision: no fixed weapon)

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png - use ONLY to match the silver-metal/crystal-flesh material language and craftsmanship level; do not depict the full character.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
This sheet presents Adama's signature dragon-control pendant and his crystal/flesh anatomical construction as separate studies (user-approved decision: no handheld weapon):
1. The SILVER dragon-control pendant (#C7CBCE): front view, side view and a close detail study of the chain attachment and its surface engraving.
2. Crystal/exposed-flesh construction studies (partial-limb close-ups only, NOT a full character): the right forearm and hand showing how the semi-translucent crystal growth (#CFE3EA) interfaces with the exposed dark-red regenerating flesh (#7A2020); the left shoulder/collarbone showing the same construction; the right ribs/flank showing the same construction. Render these as anatomical-construction reference fragments (cropped limb/torso sections), not as a full-body figure.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset. The cropped limb/torso anatomical fragments are permitted as construction studies (equivalent to a partial breakdown of a magical/organic structure), not as a full-body character.

Identity invariants:
Not applicable in the "character" sense - this sheet shows the pendant object and cropped anatomical construction fragments only. All studies must match Image 1's colors, materials and construction exactly.

Kinship invariants:
None.

Costume/props invariants:
The silver pendant matches Image 1's chain and surface exactly; the crystal/flesh construction studies match the locked distribution (right forearm/hand, left shoulder/collarbone, right ribs/flank) and colors on Image 1. Do not add, remove or redesign any element; no weapon of any kind appears anywhere on this sheet (user-approved decision: no fixed weapon).

Composition:
Neatly arranged construction studies and cropped anatomical fragments on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the pendant-chain attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy prop and anatomy design, professional production construction sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metal, crystal and organic-flesh material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, weapon, sword, dagger, staff, greatsword, wrong palette, neon colors, cast shadows, rim light, fully intact ordinary human skin only, no crystal, no exposed flesh

Constraints:
- Per the user-approved decision (2026-07-23), no weapon of any kind may appear anywhere on this sheet.
- Match the locked palette exactly (silver-gray crystal #CFE3EA, dark-red exposed flesh #7A2020, silver pendant metal #C7CBCE).
- No full-body character depiction beyond an optional headless tailor form; cropped anatomical construction fragments are allowed and required.
- No text or watermark.
```

---

## 10 — `10-adama-body-reference-sheet.png`（STAGE 2 — 00 核准後；素體參考圖，SMPL-X／人體擬合用；貼身素體衣，無墜飾／無 accessories/jewelry；結晶與裸露肌理保留）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-adama-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions, and crystal/exposed-flesh placement).
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Adama WITHOUT the torn cloth wraps, broken armor fragments, silver dragon-control pendant, or any other accessory or jewelry - wearing ONLY a tight plain bodysuit (tight plain bodysuit / underlayer, no ornamentation, no pattern, no seams treated as decoration) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed through the tight bodysuit: no cloth wraps, no armor fragments, no loose clothing, no cape, no pendant, no necklace, no jewelry, no accessories of any kind. IMPORTANT: the semi-translucent crystal growth (#CFE3EA) and exposed dark-red regenerating flesh (#7A2020) on the right forearm/hand, left shoulder/collarbone and right ribs/flank are HIS OWN anatomical structure, not an accessory or garment - the tight bodysuit does not cover these areas (or is itself torn/absent over them) so they remain fully visible in both views; do not smooth them into ordinary intact skin.

Identity invariants:
Same character as Image 1: same face, dark-red iris (#6B2020), silver-gray body skin (#B9BEC2), short silver-gray hair (#C7CBCE, tied back or short enough to not obscure the silhouette). The crystal/exposed-flesh construction must be identical in placement, size and appearance to Image 1.

Kinship invariants:
None.

Body metrics:
Height read ~188cm. Approximately 7.0 heads tall, lean-and-honed wiry-strong build. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Costume invariants:
Tight plain bodysuit only (no ornamentation), no cloth wraps, no armor fragments, no pendant, no necklace, no jewelry, no accessories of any kind. This sheet intentionally excludes the neck pendant that appears in 00-09; the pendant is costume-layer, not body anatomy, and does not belong on a body-reference sheet.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no accessories, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy including crystal/exposed-flesh construction, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, torn cloth wraps, weapon, extra props, accessories, jewelry, pendant, necklace, chain, crown, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, fully intact ordinary human skin only, smooth unbroken skin covering the whole body, no crystal, no exposed flesh, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- The crystal growth and exposed regenerating flesh are canon anatomy, not costume or accessory - they MUST remain visible.
- No pendant, no jewelry, no accessories anywhere on this sheet - the neck pendant from 00-09 is costume, not body anatomy, and must be excluded here per the body-reference rule (all accessories stripped, only the tight bodysuit remains).
- Body silhouette fully visible through the tight plain bodysuit; zero cloth wraps/armor/cape/jewelry; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。髮型／武器已於 2026-07-23 核准定案，不再是生成前置條件。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 髮型與固定武器與已核准定案值一致（短銀灰髮；無固定武器）
- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、髮色與定案值一致；冷笑神情一致
- [ ] 身材比例：約 188cm／7.0 頭身／肩寬約 2.3 倍頭寬，精瘦結實的異形人形
- [ ] **半透明結晶與裸露再生血肉在右前臂與手、左肩與鎖骨、右側肋腹清楚可見，未被抹平為完整人皮**（此為核心辨識特徵，違反即 REJECT，含 10 號素體圖）
- [ ] 服裝結構與 Costume Lock 一致（殘破纏布／甲片殘片層次與位置；**10 號除外**，10 號為貼身素體衣，不適用此項）
- [ ] 左右不對稱特徵位置正確：結晶分布側須跨圖一致（右前臂／右肋腹、左肩／鎖骨），未鏡像翻轉
- [ ] 色票未漂移：#B9BEC2／#7A2020／#CFE3EA／#C7CBCE／#4A3527／#6E747C／#6B2020（10 號不含 #C7CBCE 墜飾色，因無墜飾）
- [ ] 與定案武器結果一致出現於任一圖（09 除外，且 09 依定案結果調整）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（本角色無血緣親屬，見 §13，跳過）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT；髮型（短銀灰髮）／武器（無固定武器）與定案值一致 |
| 01 | 正面、A-pose、正交 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；左肩／鎖骨結晶清楚可辨 |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；右前臂／右肋腹結晶清楚可辨 |
| 04 | 背面、A-pose、正交 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變；臉頸結晶與裸露肌理全部保留 |
| 07 | 殘破纏布拆解面板＋裸露結晶軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定 hex 完全一致 |
| 09 | 只有銀色墜飾與結晶／裸露肌理構造研究（局部肢體裁切，依定案武器結果調整）；無完整全身角色、無臉、無人物剪影 |
| 10 | 素體無任何纏布／甲片外層、**無銀色墜飾、無任何 accessories/jewelry**，僅著貼身素體衣（tight plain bodysuit）；結晶與裸露肌理保留可見（屬身體解剖，非服裝）；正面＋左側兩視圖 |
