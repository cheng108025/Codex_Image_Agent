# 阿爾伯特 Albert — Image Generation Prompts（新版七張制 01–07）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`ALBERT-V1-DISCIPLINE-ENFORCER`**（紀律執法騎士版；文檔唯一明載造型，本包單一版本）

> **兩階段規則（強制）**：第一階段只生成 `01-albert-front-fullbody.png`（正面全身單視圖，臉部須清晰可辨），生成後停止等待使用者核准。核准後 01 成為 02–07 的 Image 1 身份／服裝唯一正本。畫風輸入一律依 `../../STYLE_ANCHOR.md` 決定。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **既有 PNG 狀態**：本角色 01–07（非人形 01–06）全部為 `PENDING-GENERATION`。
> **佩劍側／綬帶側鎖定（已同步進 CHARACTER_SPEC.md，供使用者覆蓋）**：紀律綬帶／肩章固定於**解剖學左肩**，騎士劍佩於**解剖學右腰**。SPEC 原文僅要求「左右須跨圖一致」未指定側別；此側別為設計提案，現已正式同步進 SPEC，非既有正典，使用者可事後覆蓋。

畫風參考唯一正本：
- `../../STYLE_ANCHOR.md`
- 若本角色是 `PENDING-FIRST-REQUEST` 登記的首角色，01 才使用 STYLE_ANCHOR 的三張 bootstrap 圖。
- 若畫風錨已為 `ACTIVE` 且本角色不是首角色，01 只引用已核准的首角色 01 作為畫風參考。
- 02–07（非人形至 06）使用自己的 01 作為身份參考；非首角色另加首角色 01 作為畫風參考。

生成順序與檔名（新版七張制 01–07）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 01 | `01-albert-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-albert-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-albert-expression-sheet.png` | 表情表 |
| 04 | `04-albert-costume-detail-sheet.png` | 服裝細節 |
| 05 | `05-albert-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-albert-prop-construction-sheet.png` | 道具結構 |
| 07 | `07-albert-body-reference-sheet.png` | 身體參考（SMPL-X） |

---

## 01 — `01-albert-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Character definition:
Albert, a tall, cold disciplinarian knight (apparent age around 30), height 186cm, lean and trim with an honed, upright, rigid-postured build. CANON facial identity: a hard, expressionless face with sharp angular lines and a cutting jaw; a cold, emotionless sharp gaze with locked cool-gray eyes (#9BA3AC). Dark, near-black short hair (#161412) slicked straight back, immaculate and perfectly neat with not a strand out of place. Healthy cool-toned skin (#E8D2BC). Costume (locked, version ALBERT-V1-DISCIPLINE-ENFORCER): immaculate, highly polished DARK plate armor (#1C1C1E), worn spotless and fully fastened, with a gorget / standing armored collar closed completely; dark plate pauldrons, vambraces and greaves all buckled tight; a discipline sash / enforcement epaulet worn on his anatomical LEFT shoulder, dark base (#2A2A2C) with restrained muted-gold trim (#A8863E), marking his authority of law and discipline; the sash/breastplate bears the Hector holy-knight order's enforcement crest, muted-gold relief on the dark breastplate. He carries NO weapon and NO props of any kind - the knight's sword he duels with belongs exclusively to the prop sheet (06) and is worn at his anatomical RIGHT hip when equipped, but no sword, belt or scabbard is shown here. Character contrast note: he is COLD, precise and meticulous - his armor is always immaculate and fully buckled, his hair perfectly slicked, the deliberate opposite of a sloppy, unfastened, disheveled soldier.

Primary request:
Render Albert as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same hard expressionless angular face, cold sharp cool-gray eyes (#9BA3AC), dark short hair slicked straight back and immaculate (#161412), healthy cool-toned skin (#E8D2BC).

Kinship invariants:
None.

Body metrics:
Height 186 cm. Approximately 7.25 heads tall. Shoulder width approximately 2.3 head-widths. The discipline sash/epaulet sits on the anatomical LEFT shoulder only.

Costume invariants:
Identical ALBERT-V1-DISCIPLINE-ENFORCER attire per the Character definition above: immaculate polished dark plate armor (#1C1C1E), fully fastened with a closed standing gorget, discipline sash / enforcement epaulet on the LEFT shoulder (dark base #2A2A2C, muted-gold trim #A8863E), dark pauldrons, vambraces and greaves buckled tight. NO weapon anywhere; the knight's sword is reserved for prop sheet 06.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished dark metal and woven-sash material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, twin swords, sloppy armor, unfastened armor, unbuckled straps, loose plate, messy hair, disheveled hair, gemstone finery, sash mirrored to right shoulder, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact identity per the Character definition above; the input images are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-albert-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 01-albert-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of Albert containing four full-body orthographic views of the SAME character in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, identical height, head-to-body ratio, arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose, cold and precise bearing kept consistent.

Identity invariants:
All four figures are the identical character from Image 1: same hard expressionless angular face, cold sharp cool-gray eyes (#9BA3AC), dark short hair slicked straight back and immaculate (#161412), healthy cool-toned skin (#E8D2BC), lean trim upright proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height 186 cm. Approximately 7.25 heads tall. Shoulder width approximately 2.3 head-widths.

Costume invariants:
Every view wears the identical disciplinary enforcer-knight attire from Image 1: immaculate polished dark plate armor (#1C1C1E), fully fastened with a closed standing gorget, discipline sash / enforcement epaulet on the anatomical LEFT shoulder (dark base #2A2A2C, muted-gold trim #A8863E) - visible front-on in the front view, near-side in the left profile, far-side (faint/hidden) in the right profile, and its rear strap visible in the back view. The empty sword-belt attachment point at the right hip is near-side in the right profile, far-side in the left profile - no sword itself shown anywhere. Dark pauldrons, vambraces and greaves buckled tight in every view. NO weapon anywhere; the knight's sword is reserved for prop sheet 06.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished dark metal and woven-sash material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, twin swords, sloppy armor, unfastened armor, unbuckled straps, loose plate, messy hair, disheveled hair, gemstone finery, ornate jewels, sash mirrored between views, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-albert-expression-sheet.png`（STAGE 2 — 八表情臉部表）


```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, armor-collar and color reference (the approved 01-albert-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose Albert into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical hard angular facial identity and face proportions, cold sharp cool-gray eyes (#9BA3AC), dark short hair slicked straight back and immaculate (#161412), healthy cool-toned skin (#E8D2BC), neck proportions, and the visible closed standing gorget / dark plate armor collar with the discipline sash edge at the left shoulder. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the underlying cold, controlled, meticulous quality remains and the hair stays perfectly neat.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, tail, crown, messy hair, disheveled hair, stray hair strands, sloppy unfastened collar, gemstone finery, ornate jewels, twin swords, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

---

## 04 — `04-albert-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含拆解）


```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 01-albert-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional costume construction sheet for Albert's disciplinary enforcer-knight armor, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the discipline sash / enforcement epaulet drawn SEPARATELY as a detachable strap piece (attaches to the LEFT shoulder), AND one torso view of the breastplate WITHOUT the sash so the plate's own surface and the enforcement crest are fully visible.
2. Breastplate front detail: the muted-gold enforcement crest relief on the dark plate.
3. Pauldron, vambrace and gauntlet close-ups showing plate articulation.
4. Waist armor detail (no weapon attached; the sword-belt attachment point at the RIGHT hip is shown empty).
5. Leg plate and boot detail.
6. Gorget / standing collar close-up, fully closed and fastened.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials: dark near-black polished plate (#1C1C1E), muted-gold trim and crest relief (#A8863E), dark woven sash (#2A2A2C) on the LEFT shoulder. Same construction as Image 1; no redesign; NO weapon anywhere (knight's sword belongs to sheet 06).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished dark metal and woven-sash material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character, sloppy unfastened armor, gemstone finery, sash on right shoulder

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The sash-separation panel and the sash-less breastplate view are mandatory; the sash attaches to the LEFT shoulder only.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

---

## 05 — `05-albert-color-material-sheet.png`（STAGE 2 — 色票／材質表，已補固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-albert-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for Albert: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- near-black polished plate #1C1C1E (armor primary)
- cold steel #8C97A3 (blade metal reference only, not shown as a weapon here)
- dark base #2A2A2C with muted-gold trim #A8863E (discipline sash)
- muted-gold #A8863E (crest relief accent)
- deep brown leather #33261C (straps)
- cool-gray #9BA3AC (eyes)
- near-black #161412 (hair)
- healthy cool-toned skin #E8D2BC
Each swatch pairs a flat color block with a small material patch showing how that surface reads (high-gloss polished metal, woven sash fabric, matte leather strap).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (186 cm, ~7.25 heads, ~2.3 head-widths shoulders).

Costume invariants:
Exact armor and sash from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for polished metal, woven fabric and leather, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

---

## 06 — `06-albert-prop-construction-sheet.png`（STAGE 2 — 道具表：騎士劍唯一出現位置）


```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 01-albert-front-fullbody.png — use ONLY to match dark-metal/gold-trim material language and craftsmanship level; do not depict the character.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a props-only construction sheet for Albert's equipment:
1. The KNIGHT'S SWORD (sole appearance in the whole package): full front view, side view, and hilt/guard close-up - plain cold-steel blade (#8C97A3), dark grip, restrained muted-gold pommel accent (#A8863E); include its scabbard and the belt-hanger hardware as separate callouts, labeled as worn at the anatomical RIGHT hip.
2. The discipline sash / enforcement epaulet: full flat drawing and a close weave/trim detail (dark base #2A2A2C, muted-gold trim #A8863E), shown as it attaches to the anatomical LEFT shoulder.
3. The enforcement crest emblem: enlarged flat emblem drawing (Hector holy-knight order's discipline/enforcement crest, muted-gold relief).

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork and fabric rendering, polished dark steel and muted-gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, twin swords, dual swords, wrong palette, neon colors, gemstone finery, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the knight's sword may appear in the entire package.
- Match the locked palette exactly (dark near-black steel #1C1C1E, muted-gold trim #A8863E).
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

---

## 07 — `07-albert-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）


```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 01-albert-front-fullbody.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render Albert WITHOUT armor, sash or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no armor, no sash, no loose clothing; short hair does not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, dark swept-back short hair (#161412), cool-gray eyes (#9BA3AC), cool-toned skin (#E8D2BC). The body underneath must be consistent with the armored figure of the approved sheets: lean, trim, upright, honed build.

Body metrics:
Height 186 cm. Approximately 7.25 heads tall. Shoulder width approximately 2.3 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, sash, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
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
- [ ] 髮型、髮色（深色近黑向後梳 #161412）一致；瞳色冷灰 #9BA3AC
- [ ] 身材比例：186cm／約 7.25 頭身／肩寬約 2.3 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（板甲全扣合、綬帶固定於解剖學左肩）
- [ ] 左右位置正確：綬帶／肩章固定左肩、佩劍固定右腰（06 出現時），無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移：#1C1C1E／#2A2A2C／#A8863E／#8C97A3／#33261C／#9BA3AC／#161412／#E8D2BC
- [ ] 無任何武器道具出現（06 除外）；平光無投影陰影（03 攝影棚柔光除外）
- [ ] 血緣相似：不適用（無血緣角色）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面、A-pose、正交；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；綬帶／肩章於近側可見；相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；綬帶／肩章在遠側，不得鏡像至近側；背面、A-pose、正交；綬帶後段連接可見 |
| 03 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 04 | 綬帶拆解面板＋無綬帶胸甲視圖必須存在 |
| 05 | 色票方塊與鎖定 hex 完全一致 |
| 06 | 騎士劍唯一出現於此；無角色、無臉、無人物剪影 |
| 07 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖 |
