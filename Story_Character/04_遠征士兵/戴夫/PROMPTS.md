# 戴夫 Dave — Image Generation Prompts（新版七張制 01–07）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`DAVE-V1-EXPEDITION-INFANTRY`**（赫克托制式步兵甲版；其他時期／服裝需另立版本，不得混用）

> **簽名武器 PENDING-USER-INPUT（貫穿 06）**：文檔僅載「短劍或斧」二選一。本檔 06 道具結構表推薦**短劍**（理由見 CHARACTER_SPEC.md），但正式標記 `PENDING-USER-INPUT`，待使用者決定；此分歧僅影響 06，不阻擋 01–05／07 的生成與驗收。

> **兩階段規則（強制）**：第一階段只生成 `01-dave-front-fullbody.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 01 成為 02–07 的 Image 1 身份／服裝唯一正本。畫風輸入一律依 `../../STYLE_ANCHOR.md` 決定。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **既有 PNG 狀態**：本角色 01–07（非人形 01–06）全部為 `PENDING-GENERATION`。

畫風參考唯一正本：
- `../../STYLE_ANCHOR.md`
- 若本角色是 `PENDING-FIRST-REQUEST` 登記的首角色，01 才使用 STYLE_ANCHOR 的三張 bootstrap 圖。
- 若畫風錨已為 `ACTIVE` 且本角色不是首角色，01 只引用已核准的首角色 01 作為畫風參考。
- 02–07（非人形至 06）使用自己的 01 作為身份參考；非首角色另加首角色 01 作為畫風參考。

生成順序與檔名（新版七張制 01–07）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 01 | `01-dave-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-dave-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-dave-expression-sheet.png` | 表情表 |
| 04 | `04-dave-costume-detail-sheet.png` | 服裝細節 |
| 05 | `05-dave-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-dave-prop-construction-sheet.png` | 道具結構 |
| 07 | `07-dave-body-reference-sheet.png` | 身體參考（SMPL-X） |

---

## 01 — `01-dave-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Character definition:
Dave, an ordinary Hector foot-soldier (apparent age mid-20s), one of Gawain's rank-and-file infantrymen. Build: stockier and sturdier, solidly broad, roughly 6.8 heads, height LOCKED at about 175cm — the "sturdy one" of a tall-and-sturdy pair. Plain, unremarkable, brave common-soldier face with NO heroic aura — deliberately ordinary and honest, softly rounded and stout. Locked identity defaults: very short dark cropped hair suited to wearing a helmet (#2B211A), light hazel / gray-brown eyes with an earnest good-natured gaze (#8A7256), healthy weathered skin tone (#E8C09E). Costume: standard-issue Hector infantry armor — cloth/leather inner layer (#4A4238) under regulation matte-steel plate pieces (#5F6368), plain regulation steel gorget, standard steel shoulder guards with NO officer sash or ornament, a plain matte-steel breastplate bearing a small low-key embossed Hector army insignia (a simple geometric mark in muted dark-gold #7A6A42, no gemstones), deep-brown leather bracers (#3D2E22), a regulation leather belt with an empty mount point at the right hip and NO weapon attached (his signature weapon is reserved exclusively for the prop-construction sheet, still PENDING-USER-INPUT between a short sword and an axe), regulation steel greaves and deep-brown leather military boots. Materials: matte steel plate, deep-brown leather, plain regulation cloth only — no gemstones, no gold, no jewels. Palette: Hector military standard — steel gray with dark-gold / dark accents, deep-brown leather. Deliberately austere, no decoration — his ordinariness is the point. Character and costume only — no weapon, no handheld items, no standalone props of any kind anywhere on this sheet.

Primary request:
Render Dave as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same plain unremarkable common-soldier face, very short dark cropped hair (#2B211A), light hazel/gray-brown eyes (#8A7256), healthy weathered skin (#E8C09E).

Kinship invariants:
none

Body metrics:
Height 175 cm. Approximately 6.8 heads tall. Shoulder width approximately 2.6 head-widths. Visually symmetric on this zero-prop sheet.

Costume invariants:
Identical standard-issue Hector infantry armor per the Character definition above: regulation matte-steel plate pieces (#5F6368), plain steel gorget, standard steel shoulder guards, matte-steel breastplate with the small dark-gold Hector insignia (#7A6A42), deep-brown leather bracers (#3D2E22), regulation leather belt with an empty mount point at the right hip and NO weapon attached, regulation steel greaves, deep-brown leather boots. NO weapon anywhere; the signature weapon (still PENDING-USER-INPUT) is reserved exclusively for prop sheet 06.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, steel and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy hero armor, ornate armor, gemstones, gold pauldrons, wings, horns, tail, officer sash, tall slender build, torch, holding weapon, weapon in hand, weapon, sword, axe, scabbard, sheath, staff, shield, prop object, reference character face, copying any style-image character, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact identity per the Character definition above; the input images are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-dave-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 01-dave-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of Dave containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same plain unremarkable common-soldier face, very short dark cropped hair (#2B211A), light hazel/gray-brown eyes (#8A7256), healthy weathered skin (#E8C09E). Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height 175 cm. Approximately 6.8 heads tall, stockier build. Shoulder width approximately 2.6 head-widths.

Kinship invariants:
none

Costume invariants:
Every view wears the identical standard-issue Hector infantry armor from Image 1: regulation matte-steel plate pieces (#5F6368), plain steel gorget, standard steel shoulder guards, matte-steel breastplate with the small dark-gold Hector insignia (#7A6A42), deep-brown leather bracers (#3D2E22), regulation leather belt with an empty mount point at the right hip and NO weapon attached, regulation steel greaves, deep-brown leather boots. Same accessory count, positions, colors and materials in all four views. NO weapon anywhere; the signature weapon (PENDING-USER-INPUT) is reserved exclusively for prop sheet 06.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, steel and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy hero armor, ornate armor, gemstones, gold pauldrons, wings, horns, tail, officer sash, tall slender build, inconsistent scale between views, different height per view, mismatched costume between views, holding weapon, weapon in hand, weapon, sword, axe, scabbard, sheath, staff, shield, prop object, contrapposto, action pose, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, reference character face, copying any style-image character

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-dave-expression-sheet.png`（STAGE 2 — 八表情臉部表）


```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 01-dave-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose Dave into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity, plain unremarkable soldier-face proportions, healthy weathered skin (#E8C09E), light hazel/gray-brown eyes (#8A7256), very short dark cropped hair (#2B211A), neck proportions, and the visible regulation steel gorget collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; his baseline is good-natured, earnest and unheroic.

Kinship invariants:
none

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
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, heavy armor, gold pauldrons, gemstones, officer sash, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

---

## 04 — `04-dave-costume-detail-sheet.png`（STAGE 2 — 服裝細節表）


```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 01-dave-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional costume construction sheet for Dave's standard-issue Hector infantry armor, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the regulation matte-steel breastplate drawn SEPARATELY as a flat construction piece, AND one torso view of the body WITHOUT the breastplate (cloth/leather inner layer only) so the underlying body silhouette is fully visible.
2. Breastplate detail: the small low-key embossed geometric Hector army insignia.
3. Shoulder-guard and bracer close-ups showing plate articulation and leather strapping.
4. Waist belt detail, including the empty mount point at the RIGHT hip reserved for the signature weapon (weapon itself NOT shown here — see sheet 06).
5. Greave and military-boot detail.
6. Back view construction: plain regulation back plate, no ornament.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/hand edges only as needed. No full standalone face portrait panels.

Kinship invariants:
none

Costume invariants:
Exact materials and colors as Image 1: matte steel plate (#5F6368), deep-brown leather (#3D2E22), plain regulation cloth (#4A4238). Same construction as Image 1; no redesign; NO weapon anywhere (signature weapon, PENDING-USER-INPUT, belongs to sheet 06 only).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, steel and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, axe, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The breastplate separation panel and the breastplate-less torso view are mandatory.
- The right-hip belt mount point must be shown EMPTY (no weapon); the weapon itself is PENDING-USER-INPUT and belongs to sheet 06 only.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 05 — `05-dave-color-material-sheet.png`（STAGE 2 — 色票／材質表，已補固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-dave-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for Dave: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- steel gray #5F6368 (regulation plate, gorget, greaves)
- dark-gold accent #7A6A42 (Hector military standard insignia trim)
- deep-brown leather #3D2E22 (bracers, belt, boots)
- plain regulation cloth #4A4238
- healthy weathered skin #E8C09E
- very short dark hair #2B211A
- light hazel/gray-brown eyes #8A7256
Each swatch pairs a flat color block with a small material patch showing how that surface reads (matte steel finish, leather grain, cloth weave).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (175 cm, 6.8 heads, stocky).

Kinship invariants:
none

Costume invariants:
Exact costume from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for steel, leather and cloth, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, axe, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

---

## 06 — `06-dave-prop-construction-sheet.png`（STAGE 2 — 道具表：短劍〔推薦方案，PENDING-USER-INPUT〕，全書唯一出現位置）


> **PENDING-USER-INPUT — 正典衝突警示**：CHARACTER_SPEC.md 記載簽名武器為「短劍或斧」二選一，文檔未定案。本提示詞推薦**短劍（standard-issue short sword）**：短劍更符合「制式」步兵標準化裝備語言，闊斧偏向蠻族／伐木意象，與「平凡、無英雄氣派」的正典基調略有落差；短劍也與同組文森特、鮑曼的短刃形制一致，便於裝備語言統一。**此為推薦而非定案**，若使用者選擇斧，僅需重新生成本張（06），01–05／07 不受影響、無需重生成。

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 01-dave-front-fullbody.png — use ONLY to match material language and craftsmanship level; do not depict the character.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a props-only construction sheet for Dave's RECOMMENDED signature weapon — a standard-issue short sword (PENDING-USER-INPUT; the alternative under consideration is a battle axe, not shown here): full front view, side view, and hilt/guard close-up — matte steel blade (#5F6368), plain regulation hilt and guard, deep-brown leather grip (#3D2E22); include its plain regulation scabbard and the belt-hanger hardware sized for the right-hip mount point, as separate callouts.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, item evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork rendering, matte steel and leather material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, twin swords, dual swords, axe, battle axe, ornate gold decoration, gemstones, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the short sword may appear in the entire package.
- Match the described material language exactly (matte steel #5F6368, deep-brown leather #3D2E22, plain regulation finish).
- The short sword vs axe choice remains PENDING-USER-INPUT; this sheet renders the recommended short sword. If the user selects the axe instead, only this sheet needs regeneration.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

---

## 07 — `07-dave-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）


```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 01-dave-front-fullbody.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render Dave WITHOUT armor or any outer garment — wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) — as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no armor, no loose clothing; the short hair must not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, very short dark cropped hair (#2B211A), healthy weathered skin (#E8C09E), light hazel/gray-brown eyes (#8A7256). The body underneath must be consistent with the armored figure of the approved sheets: stockier, solidly broad build.

Body metrics:
Height 175 cm. Approximately 6.8 heads tall. Shoulder width approximately 2.6 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

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

- [ ] 臉型與臉部身份與 01 號正本一致（03 的人像面板亦同）
- [ ] 髮型、髮色（深色極短平頭）一致 #2B211A
- [ ] 身材比例：175cm／約 6.8 頭身、肩寬約 2.6 倍頭寬、偏壯實
- [ ] 服裝結構與 Costume Lock 一致（層次、配件數量、位置）
- [ ] 左右位置正確：佩劍側鎖定為右側腰際（`DESIGN-PROPOSAL`）；01–02／07 零道具無武器可見，僅 07 顯示空掛點、06 顯示武器本身
- [ ] 色票未漂移：#5F6368／#7A6A42／#3D2E22／#4A4238／#E8C09E／#2B211A／#8A7256
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：無血緣角色，本項跳過

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面、A-pose、正交；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；武器掛點側雖在此側，仍不得顯示武器；背面、A-pose、正交 |
| 03 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 04 | 胸甲拆解面板＋無胸甲軀幹視圖必須存在；右側腰際掛點須顯示為空；無武器本身 |
| 05 | 色票方塊與鎖定 hex 完全一致 |
| 06 | 短劍（推薦方案，`PENDING-USER-INPUT`）唯一出現於此；無角色、無臉、無人物剪影；若使用者改選斧，僅需重生成本張 |
| 07 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖 |
