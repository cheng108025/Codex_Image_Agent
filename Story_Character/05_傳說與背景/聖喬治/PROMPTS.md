# 聖喬治 St. George — Image Generation Prompts（新版七張制 01–07）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`ST-GEORGE-V1-MURAL-ICON`**（壁畫／傳說古典屠龍聖騎士版；若未來需要「聖騎士＋腳下巨龍」壁畫構圖版，須另立版本）

> **兩階段規則（強制）**：第一階段只生成 `01-st-george-front-fullbody.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 01 成為 02–07 的 Image 1 身份／服裝唯一正本。畫風輸入一律依 `../../STYLE_ANCHOR.md` 決定。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **既有 PNG 狀態**：本角色 01–07（非人形 01–06）全部為 `PENDING-GENERATION`。
> **正典備註**：聖喬治是僅存於壁畫與傳說的信仰圖騰，非登場真人角色。本套件一律採「英勇聖騎士人物本身」為主體；長槍依 §5.3/§7 規則移出全身視圖，只在 06 道具結構表出現。

畫風參考唯一正本：
- `../../STYLE_ANCHOR.md`
- 若本角色是 `PENDING-FIRST-REQUEST` 登記的首角色，01 才使用 STYLE_ANCHOR 的三張 bootstrap 圖。
- 若畫風錨已為 `ACTIVE` 且本角色不是首角色，01 只引用已核准的首角色 01 作為畫風參考。
- 02–07（非人形至 06）使用自己的 01 作為身份參考；非首角色另加首角色 01 作為畫風參考。

生成順序與檔名（新版七張制 01–07）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 01 | `01-st-george-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-st-george-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-st-george-expression-sheet.png` | 表情表 |
| 04 | `04-st-george-costume-detail-sheet.png` | 服裝細節 |
| 05 | `05-st-george-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-st-george-prop-construction-sheet.png` | 道具結構 |
| 07 | `07-st-george-body-reference-sheet.png` | 身體參考（SMPL-X） |

---

## 01 — `01-st-george-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Character definition:
St. George, a LEGENDARY dragon-slaying holy knight preserved only in murals and legend, the faith-icon of the Hector hero festival and the Tendi Orthodox church. CANON appearance: an idealized, majestic heroic knight rendered in an idealized, heroic mural tone, height LOCKED at approximately 190cm, wearing classical GILDED full plate armor that glows with a golden sheen (#C9A227), with a radiant halo and holy backlight shining from behind his head and body (light effect #FFF3D6). Locked identity: male, apparent age around 30, tall idealized eight-heads heroic proportions, a resolute and exalted expression, steadfast deep-blue eyes (#2F4F8F), classical short, lightly-waved dark golden-brown hair (#8A6234), healthy idealized skin tone (#E8C3A0). Costume (locked): gilded / antique-gold polished full plate (#C9A227) with a high gorget and pauldrons, a Tendi Orthodox holy emblem set with a small steadfast-blue gem (#2F4F8F) on the breastplate, a warm holy-white surcoat or cloak (#F2EAD8) with gold trim (#C9A227) draped from the shoulders, silver chainmail lining (#B8BEC7), gilded arm plates and gauntlets, leg plates and armored boots, deep-brown leather inner straps (#4A3524). Materials: gilded / antique-gold polished plate, silver chainmail lining, a woven holy-white-and-gold surcoat/cloak, leather inner straps, plus a radiant halo and holy backlight as pure light effects (not physical parts) - no modern or casual fabric. He carries NO weapon and NO props of any kind; the halo and backlight are light effects only, not physical accessories. He has NO wings and NO horns.

Primary request:
Render St. George as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same idealized heroic face, steadfast deep-blue eyes (#2F4F8F), classical short wavy dark golden-brown hair (#8A6234), healthy idealized skin (#E8C3A0).

Kinship invariants:
none.

Body metrics:
Height approximately 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design.

Costume invariants:
Identical gilded regalia per the Character definition above: gilded / antique-gold polished plate (#C9A227) with high gorget and pauldrons, the Tendi Orthodox holy emblem with its small blue gem (#2F4F8F) on the breastplate, warm holy-white-and-gold surcoat/cloak (#F2EAD8), silver chainmail lining (#B8BEC7), gilded arm plates and gauntlets, leg plates and armored boots, deep-brown leather straps (#4A3524), the radiant halo/holy backlight as a light effect only (#FFF3D6). NO weapon anywhere; the long lance is reserved for prop sheet 06.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished gilded metal, chainmail and woven-cloth material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, modern clothing, wings, horns, tail, dragon, monster, brown eyes, blond hair, reference character face, copying any style-image character, weapon, lance, spear, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on lance shaft, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact identity per the Character definition above; the input images are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-st-george-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 01-st-george-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of St. George containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same idealized heroic face, steadfast deep-blue eyes (#2F4F8F), classical short wavy dark golden-brown hair (#8A6234), gilded plate armor (#C9A227). Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design, identical in all four views.

Kinship invariants:
none.

Costume invariants:
Every view wears the identical gilded regalia from Image 1: gilded / antique-gold polished plate (#C9A227) with high gorget and pauldrons, the Tendi Orthodox holy emblem on the breastplate (visible in the front view), warm holy-white-and-gold surcoat/cloak (#F2EAD8, its back panel fully shown in the back view), silver chainmail lining (#B8BEC7), gilded arm plates and gauntlets, leg plates and armored boots, deep-brown leather straps (#4A3524), the radiant halo/holy backlight as a light effect only (#FFF3D6). Same accessory count, positions, colors and materials in all four views. NO weapon anywhere; the long lance is reserved for prop sheet 06.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished gilded metal, chainmail and woven-cloth material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, modern clothing, wings, horns, tail, dragon, monster, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, lance, spear, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on lance shaft, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-st-george-expression-sheet.png`（STAGE 2 — 八表情臉部表）


```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 01-st-george-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose St. George into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical idealized heroic facial identity and face proportions, steadfast deep-blue eyes (#2F4F8F), classical short wavy dark golden-brown hair (#8A6234), neck proportions, and the visible gilded gorget / holy-white surcoat collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the resolute, exalted heroic bearing remains recognizable even in the more animated expressions.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed facial proportions, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, modern clothing, wings, horns, tail, dragon, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on lance shaft
```

---

---

## 04 — `04-st-george-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含披風拆解）


```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 01-st-george-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional costume construction sheet for St. George's gilded regalia, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the holy-white-and-gold surcoat/cloak (#F2EAD8) drawn SEPARATELY as a flat garment piece, AND one torso view of the gilded plate WITHOUT the surcoat/cloak so the body silhouette and back plate are fully visible.
2. Cuirass front detail: the Tendi Orthodox holy emblem with its small blue gem (#2F4F8F) on the breastplate.
3. Pauldron, gorget and gauntlet close-ups showing gilded plate articulation (#C9A227) and silver chainmail lining (#B8BEC7).
4. Waist armor detail (no weapon attached).
5. Leg plate and armored boot detail.
6. Halo/holy-backlight callout: a small diagram showing the light effect's position relative to the head and shoulders (#FFF3D6, light effect only, not a physical object).

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials: gilded / antique-gold polished plate (#C9A227), silver chainmail lining (#B8BEC7), holy-white-and-gold surcoat/cloak (#F2EAD8), deep-brown leather inner straps (#4A3524). Same construction as Image 1; no redesign; NO weapon anywhere (the long lance belongs to sheet 06).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished gilded metal, chainmail and woven-cloth material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, lance, spear, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The surcoat/cloak separation panel and the surcoat-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

---

## 05 — `05-st-george-color-material-sheet.png`（STAGE 2 — 色票／材質表，固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-st-george-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for St. George: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- gilded / antique-gold #C9A227 (plate armor)
- silver #B8BEC7 (chainmail lining)
- warm holy-white with gold trim #F2EAD8 (surcoat/cloak)
- holy backlight glow #FFF3D6 (light effect only)
- deep-brown leather #4A3524 (inner straps)
- dark golden-brown #8A6234 (hair)
- steadfast deep blue #2F4F8F (eyes and breastplate gem)
- warm idealized skin tone #E8C3A0
Each swatch pairs a flat color block with a small material patch showing how that surface reads (polished gilded metal sheen, chainmail texture, woven cloth weave, glow effect).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (190 cm, 8.0 heads, idealized heroic build).

Costume invariants:
Exact regalia from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for gilded metal, chainmail and woven cloth, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, lance, spear, sword, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

---

## 06 — `06-st-george-prop-construction-sheet.png`（STAGE 2 — 道具表：長槍唯一出現位置）


```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 01-st-george-front-fullbody.png — use ONLY to match the gilded/antique-gold material language and craftsmanship level; do not depict the character.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a props-only construction sheet for St. George's legendary equipment:
1. The LONG LANCE (sole appearance in the whole package): full front view, full side view, and tip/blade close-up - gilded / antique-gold shaft fittings (#C9A227), a long polished spearhead, a leather-wrapped grip section (#4A3524); the lance that, in legend, impales the great dragon; note it is held in the character's right hand.
2. The Tendi Orthodox holy emblem: enlarged flat emblem drawing as it appears on the breastplate, with its small blue gem (#2F4F8F).
3. A small diagram of the radiant halo / holy backlight as a light-effect study (#FFF3D6, glow shape and placement only, not a physical object).

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset. Do NOT include the dragon.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, polished gilded metal material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, dragon, monster, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the long lance may appear in the entire package.
- Match the locked palette exactly (gilded / antique-gold #C9A227 metal).
- No character depiction beyond an optional headless tailor form. No dragon. No text or watermark.
```

---

---

## 07 — `07-st-george-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）


```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 01-st-george-front-fullbody.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render St. George WITHOUT armor, surcoat/cloak or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view (camera at the character's anatomical left side). Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no cloak, no armor, no loose clothing; no halo/backlight effect on this sheet.

Identity invariants:
Same character as Image 1: same face, classical short wavy dark golden-brown hair (#8A6234), steadfast deep-blue eyes (#2F4F8F), warm idealized skin tone (#E8C3A0). The body underneath must be consistent with the armored figure of the approved sheets: idealized tall heroic build.

Body metrics:
Height approximately 190 cm. Exactly 8.0 heads tall. Shoulder width approximately 2.8 head-widths. Fully symmetric design. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, halo, backlight glow, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No halo/backlight light effect on this sheet (bare body reference only).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：01 →（使用者核准）→ 02 → 03 → 04 → 05 → 06 → 07。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 01 號正本一致（03–05 的人像面板亦同）
- [ ] 髮型、髮色（深金褐 #8A6234）一致
- [ ] 身材比例：190cm／8.0 頭身／肩寬約 2.8 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（層次、聖記位置、披風構造）
- [ ] 左右位置正確：全對稱設計，無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移（#C9A227／#B8BEC7／#F2EAD8／#FFF3D6／#4A3524／#8A6234／#2F4F8F／#E8C3A0）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：不適用（本角色無血緣親屬）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面、A-pose、正交；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；背面、A-pose、正交 |
| 03 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 04 | 披風拆解面板＋無披風軀幹視圖必須存在 |
| 05 | 色票方塊與鎖定 hex 完全一致 |
| 06 | 長槍唯一出現於此；無角色、無臉、無人物剪影、無巨龍 |
| 07 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；無聖光光環 |
