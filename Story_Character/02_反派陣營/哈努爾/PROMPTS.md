# 哈努爾 Hanul — Image Generation Prompts（範本 v2 FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`HANUL-V1-CAPTURED-INTERROGATION`**（被俘受審版；其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `00-hanul-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **左右不對稱鎖定（必讀）**：主要撕裂傷痕固定於**左頰／左下顎**，主要破損盔甲部位固定於**左肩甲**。02 號視圖＝相機位於角色解剖學左側；03 號視圖＝相機位於角色解剖學右側。禁止只寫「朝左／朝右」。
> **09 道具表調整聲明**：SPEC 明載哈努爾被俘繳械、無武器、無明確固定飾品、無隨身道具。依規則，本輪 09 **不設武器／飾品專表**，改為「破損甲冑五金拆解表」（扣具、綁帶、鉸鏈、破損甲片的構造拆解）。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-hanul-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 01 | `01-hanul-front-fullbody.png` | 正面全身，A-pose，零道具 |
| 02 | `02-hanul-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具（呈現左頰傷痕與左肩甲破損） |
| 03 | `03-hanul-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具（對側甲片相對完好） |
| 04 | `04-hanul-back-fullbody.png` | 背面全身，A-pose，零道具 |
| 05 | `05-hanul-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-hanul-expression-sheet.png` | 八表情臉部表，4×2 網格（保留嘴部傷口與鮮血） |
| 07 | `07-hanul-costume-detail-sheet.png` | 服裝細節表（含破損甲冑拆解與內襯視圖） |
| 08 | `08-hanul-color-material-sheet.png` | 色票／材質表（已補固定 hex） |
| 09 | `09-hanul-hardware-construction-sheet.png` | 破損甲冑五金拆解表（扣具／綁帶／鉸鏈，無武器無飾品） |
| 10 | `10-hanul-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-hanul-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Hanul, a rugged adult male soldier, height read ~183cm, solid well-built proportions. CANON facial identity: a coarse, weathered adult face wearing a malicious, reckless grin; short coarse dark-brown hair (#3B2A1E) with matching short bristly stubble on the jaw; his eyes are fearless and full of malice, dark-brown irises (#3B2416). CANON captured state: he is a captured coup soldier under interrogation - his armor is battle-damaged (dented plates, torn straps, missing pieces), his body carries wounds and bruises, and there is blood at and around his mouth (#6B1B1B); despite this he grins wildly and unbowed. A visible gash/wound sits across his LEFT cheek and jaw (locked position for cross-view consistency). Costume version: captured-interrogation state - broken military armor (mixed plate #4B4B50 and leather #4A3527), damaged high collar or exposed wounded neck, a dented, damaged plate on his LEFT pauldron/shoulder (locked position), loosened cuirass straps, torn battle tunic, broken greaves and muddy boots; disarmed (no weapon, no props). Weathered tan skin (#C79A6E). Palette: dull military iron-gray and dark brown armor with dark-red blood, bruising (#5A4A3A) and mud. He is a plain human soldier - no fantasy adornment. His armor bears no visible faction insignia, stripped or scraped off when captured (locked default). Primary materials: dull, battle-damaged, worn metal and leather armor with dark-red blood and mud - no gemstones, no pristine clean shiny plate, no noble finery.

Body metrics:
Height 183 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.4 head-widths (solid, well-built military frame). Asymmetric features (locked): the facial wound sits on his LEFT cheek/jaw; the dented pauldron sits on his LEFT shoulder.

Kinship invariants:
None.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose;
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors, costume, battle damage, wounds and blood at the mouth. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed damaged-armor construction, worn metal and leather material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, pristine armor, clean undamaged armor, shiny new armor, noble finery, ornate royal garment, crown, jewelry, gemstones, clean unwounded face, wound on the right side instead of left, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (rugged malicious grinning face, short coarse hair and stubble, battle-damaged armor, wounds and blood at the mouth, left-cheek wound, left-pauldron damage, reckless grin).
- Character and costume only: no weapons, no handheld items, no standalone props. Materials are damaged worn metal and leather armor only; no pristine/clean/shiny armor, no noble finery, no gemstones.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet.
```

---

## 01 — `01-hanul-front-fullbody.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Hanul as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same rugged weathered face with malicious grin, short coarse dark-brown hair and jaw stubble (#3B2A1E), dark-brown eyes (#3B2416), weathered tan skin (#C79A6E), the left-cheek/jaw gash, wounds and blood at the mouth (#6B1B1B).

Body metrics:
Height 183 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.4 head-widths.

Costume invariants:
Identical captured-interrogation attire from Image 1: battle-damaged military armor (mixed plate #4B4B50 and leather #4A3527), dented LEFT pauldron, damaged collar or exposed wounded neck, torn battle tunic, broken greaves and muddy boots. NO weapon anywhere.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed damaged-armor construction, worn metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, pristine armor, clean undamaged armor, shiny new armor, noble finery, gemstones, clean unwounded face, wound on the right side, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-hanul-left-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學左側；呈現左頰傷痕與左肩甲破損）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Hanul as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens. This is the primary view for reading the left-cheek/jaw wound and the dented left pauldron.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, short coarse dark-brown hair and stubble (#3B2A1E), weathered tan skin (#C79A6E), the left-cheek/jaw gash clearly visible and readable from this side.

Body metrics:
Height 183 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.4 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: battle-damaged armor silhouette (#4B4B50), the dented LEFT pauldron with torn strap clearly visible on the near shoulder, damaged collar, torn battle tunic, broken greave and muddy boot with gold-free worn buckles. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed damaged-armor construction, worn metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, pristine armor, clean undamaged armor, noble finery, gemstones, clean unwounded face, wound moved to the right side, undamaged pauldron on this shoulder, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- The left-cheek wound and dented left pauldron must be clearly readable on this view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-hanul-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側；對側甲片相對完好）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Hanul as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. The right shoulder's pauldron is relatively intact compared to the dented left one seen on sheet 02; the facial wound is on the far (left) side and is not the focus of this view, though the general grin and jaw stubble remain visible in profile.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, short coarse dark-brown hair and stubble (#3B2A1E), weathered tan skin (#C79A6E).

Body metrics:
Height 183 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.4 head-widths.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: battle-damaged armor silhouette (#4B4B50), the RIGHT pauldron relatively intact (less damage than the left), damaged collar, torn battle tunic, broken greave and muddy boot. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed damaged-armor construction, worn metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, pristine armor, clean undamaged armor, noble finery, gemstones, dented pauldron on this shoulder, wound visible on this side, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- The right pauldron must read as relatively intact (mirror-consistent with sheet 02's left-side damage).
- No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-hanul-back-fullbody.png`（STAGE 2 — 背面）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Hanul as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same short coarse dark-brown hair seen from behind (#3B2A1E), same build and proportions.

Body metrics:
Height 183 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.4 head-widths.

Costume invariants:
Identical attire from Image 1 seen from behind: damaged armor back plate (#4B4B50) with loosened straps and missing plate fragments, the dented LEFT pauldron visible from behind on the character's left shoulder, torn battle tunic hem, broken greaves and muddy boots seen from behind. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed damaged-armor construction, worn metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, pristine armor, clean undamaged armor, noble finery, gemstones, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 05 — `05-hanul-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Hanul containing four full-body orthographic views of the SAME character in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, identical height, head-to-body ratio, arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same rugged weathered face with malicious grin, short coarse hair and jaw stubble (#3B2A1E), fearless malicious dark-brown eyes (#3B2416), wounds and blood at the mouth (#6B1B1B), the same left-cheek/jaw gash, solid well-built proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height 183 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.4 head-widths.

Costume invariants:
Every view shows the identical captured-interrogation state from Image 1: battle-damaged military armor (#4B4B50 plate, #4A3527 leather) with dented plates, torn straps and missing pieces, the same dented LEFT pauldron, damaged collar or exposed wounded neck, torn battle tunic, broken greaves and muddy boots, disarmed (no weapon). Same battle damage, wound and blood placement, same colors and materials in all four views.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed damaged-armor construction, worn metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, pristine armor, clean undamaged armor, shiny new armor, noble finery, gemstones, inconsistent scale between views, different height per view, mismatched armor damage between views, wound moved to the right side, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-hanul-expression-sheet.png`（STAGE 2 — 八表情臉部表；保留嘴部傷口與鮮血）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-hanul-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Hanul into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, short coarse hair and jaw stubble (#3B2A1E), weathered skin tone (#C79A6E), fearless malicious dark-brown eyes (#3B2416), hair length, neck proportions, damaged collar of the armor visible at the shoulders, the left-cheek/jaw gash, and the wounds and blood at and around the mouth (#6B1B1B). Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change. The mouth wound and blood and the malicious cast of the face persist in every panel, including neutral and sad.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. The mouth wound and blood stay visible in all eight panels. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, tail, pristine armor, clean undamaged armor, shiny new armor, noble finery, gemstones, clean unwounded face, wound on the wrong side, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

## 07 — `07-hanul-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含破損甲冑拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Hanul's battle-damaged captured-interrogation armor, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the damaged cuirass drawn SEPARATELY as a flat, dented plate piece with its loosened straps, AND one torso view WITHOUT the cuirass so the torn under-tunic and body silhouette are fully visible.
2. Dented LEFT pauldron detail: the crushed/scraped plate surface and torn strap.
3. Damaged vambrace / exposed forearm close-ups showing wounds.
4. Broken waist-belt detail (disarmed, no weapon attachment).
5. Broken greave and muddy boot detail.
6. Damaged collar / exposed wounded neck close-up.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin and wounds may appear at neck/face/limb edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials as Image 1: dull iron-gray plate (#4B4B50) and dark-brown leather (#4A3527), dark-red blood (#6B1B1B) and mud (#5A4A3A) staining, torn straps. Same construction as Image 1; no redesign; NO weapon anywhere; no pristine or clean armor.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed damaged-armor construction, worn metal and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character, pristine armor, clean undamaged armor, shiny new armor, noble finery, gemstones

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The cuirass separation panel and the cuirass-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-hanul-color-material-sheet.png`（STAGE 2 — 色票／材質表，已補固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Hanul: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- dull iron-gray #4B4B50 (damaged plate primary)
- dark brown #4A3527 (leather / secondary armor)
- dark-red #6B1B1B (blood)
- mud / bruise brown #5A4A3A
- dark brown #3B2A1E (hair and stubble)
- dark brown #3B2416 (eyes)
- weathered tan skin #C79A6E
Each swatch pairs a flat color block with a small material patch showing how that surface reads (dented scratched metal, torn worn leather, dried blood texture, mud staining).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, wound placement, proportions (183 cm, approximately seven heads).

Costume invariants:
Exact damaged armor from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only; hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for damaged metal, worn leather and blood/mud texture, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy unintentional colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, holding weapon, cast shadows, rim light, extra character, copying any style-image character, pristine armor, gemstones

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-hanul-hardware-construction-sheet.png`（STAGE 2 — 破損甲冑五金拆解表；SPEC 無武器無飾品，改以甲冑五金為唯一構造細節）

```text
Use case: stylized-concept
Asset type: damaged-armor hardware construction sheet (no weapon, no jewelry per CANON captured state)

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png - use ONLY to match damaged-metal/leather material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet documenting Hanul's ARMOR HARDWARE, since CANON gives him no weapon, no jewelry and no handheld prop while captured. Show:
1. Buckle and strap hardware from the cuirass and pauldrons: front view, side view and an exploded/disassembled study of a torn buckle and a loosened strap.
2. The dented LEFT pauldron plate: an isolated construction study showing the crushed metal, scrape marks and broken rivets.
3. Greave and boot hardware: broken buckle clasps and worn sole detail.
4. A generic damaged-plate hinge/joint construction study (shoulder or elbow articulation point), showing how the battle-damaged plates were originally fastened.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production hardware construction sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise damaged-metal and leather rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy unintentional colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, weapon, sword, jewelry, gemstones, wrong palette, neon colors, pristine clean metal, cast shadows, rim light

Constraints:
- This sheet documents damaged armor hardware only; no weapon or jewelry exists for this character per CANON.
- Match the locked damaged-material palette exactly (#4B4B50, #4A3527); no invented colors.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-hanul-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-hanul-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Hanul WITHOUT armor or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no armor, no loose clothing; short hair does not cover the neck or shoulder outline. Visible wounds and bruises consistent with the captured state may remain on the skin, but no armor.

Identity invariants:
Same character as Image 1: same face, short coarse dark-brown hair and stubble (#3B2A1E), dark-brown eyes (#3B2416), weathered skin (#C79A6E), the same left-cheek/jaw gash. The body underneath must be consistent with the armored figure of the approved sheets: solid, well-built military build.

Body metrics:
Height 183 cm. Approximately 7.0 heads tall. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06 的人像面板亦同）
- [ ] 髮型、髮色（深棕短硬髮＋粗短鬍碴）一致；瞳色深棕
- [ ] 身材比例：183cm／約 7.0 頭身／肩寬約 2.4 倍頭寬、結實壯碩
- [ ] 服裝結構與 Costume Lock 一致（破損甲冑層次、破損位置）
- [ ] 左右不對稱特徵位置正確：左頰／左下顎傷痕、左肩甲破損，未鏡像翻轉
- [ ] 色票未漂移：#4B4B50／#4A3527／#6B1B1B／#5A4A3A／#3B2A1E／#3B2416／#C79A6E
- [ ] 嘴部傷口與鮮血、放肆惡笑跨圖一致；無任何武器道具出現（09 除外，且 09 僅為五金非武器）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（本角色無血緣親屬，見 §13，跳過）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 01 | 正面、A-pose、正交 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；左頰傷痕與左肩甲破損清楚可辨 |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；右肩甲相對完好 |
| 04 | 背面、A-pose、正交 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變、嘴部傷口與鮮血每格皆保留 |
| 07 | 胸甲拆解面板＋無胸甲軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定 hex 完全一致 |
| 09 | 破損甲冑五金拆解唯一出現於此（無武器、無飾品）；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖 |
