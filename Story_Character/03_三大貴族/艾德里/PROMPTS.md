# 艾德里 Adri — Image Generation Prompts（新版七張制 01–07）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`ADRI-V1-MERCHANT-ROBE`**（華貴商賈長袍版；其他時期／服裝需另立版本，不得混用）

> **零道具規則（必讀）**：所有全身圖（01、02、07）一律明寫「**character and costume only — no weapons, no handheld items, no props**」；戒指、金鏈、帳冊／摺扇／算籌等商賈道具只出現於 06。

> **兩階段規則（強制）**：第一階段只生成 `01-adri-front-fullbody.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 01 成為 02–07 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風，不得被當成本角色的身份參考。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **既有 PNG 狀態**：本角色 01–07（非人形 01–06）全部為 `PENDING-GENERATION`。
> 本包為新版七張制完整 7 條（01–07），每條提示詞獨立完整，勿合併。

畫風參考唯一正本：
- `../../STYLE_ANCHOR.md`
- 若本角色是 `PENDING-FIRST-REQUEST` 登記的首角色，01 才使用 STYLE_ANCHOR 的三張 bootstrap 圖。
- 若畫風錨已為 `ACTIVE` 且本角色不是首角色，01 只引用已核准的首角色 01 作為畫風參考。
- 02–07（非人形至 06）使用自己的 01 作為身份參考；非首角色另加首角色 01 作為畫風參考。

生成順序與檔名（新版七張制 01–07）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 01 | `01-adri-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-adri-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-adri-expression-sheet.png` | 表情表 |
| 04 | `04-adri-costume-detail-sheet.png` | 服裝細節 |
| 05 | `05-adri-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-adri-prop-construction-sheet.png` | 道具結構 |
| 07 | `07-adri-body-reference-sheet.png` | 身體參考（SMPL-X） |

---

## 01 — `01-adri-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Character definition:
Adri, a suave well-groomed middle-aged merchant-noble (apparent age 40-48), CANON height ~175cm, medium well-kept elegant build. CANON facial identity: sleek neatly-combed hair (#4A3B34) and a trimmed short beard, and an ever-present merchant's smile whose eyes stay coldly calculating (expression and inner thought never match); LOCKED amber-brown eyes (#8A5A2E). Fair well-tended skin (#F2DFC8), deep-brown slightly graying oiled hair. Costume version: luxurious merchant robe version (CANON direction) - a layered opulent merchant robe bearing the IRIS (鳶尾花) house crest LOCKED as a stylized three-petal iris bloom (fleur-de-lis-like iris) in gold-thread embroidery (#C9A227) centered on the chest, fine brocade and silk with gold-thread trim, a standing or lapel collar with gold embroidery, wide sleeves with gold edging, a brocade waist sash with a gold buckle, ankle-length hem, soft refined leather boots. Materials: fine iris silk and brocade robe; no armor, no plate, no crystalline parts. Palette: LOCKED deep iris-violet purple (#4B2E6B) with gold (#C9A227) dominant, LOCKED wine-red inner robe (#6E1F2A), aligned with the whole story's converged gold / silver-blue / dark scheme. CHARACTER AND COSTUME ONLY - NO WEAPONS, NO HANDHELD ITEMS, NO PROPS: rings, gold chain, and any ledger/abacus/fan belong exclusively to the prop construction sheet (06); his hands must be empty and unadorned in this sheet.

Primary request:
Render Adri as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open and EMPTY with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Character and costume only - no weapons, no handheld items, no props.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same suave elegant face, sleek neatly-combed hair (#4A3B34), trimmed short beard, calculating merchant smile, amber-brown eyes (#8A5A2E), fair well-tended skin (#F2DFC8).

Kinship invariants:
none (Adri has no blood-relative Kinship Lock in CHARACTER_SPEC.md).

Body metrics:
Height approximately 175 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.15 head-widths. Fully symmetric design.

Costume invariants:
Identical luxurious merchant robe per the Character definition above: deep iris-violet purple robe (#4B2E6B) with the IRIS house crest (#C9A227) centered on the chest, gold-embroidered collar, wide gold-edged sleeves, wine-red inner robe (#6E1F2A), brocade waist sash with gold buckle, ankle-length hem, soft leather boots. NO ring, NO gold chain, NO ledger/abacus/fan anywhere; all such props are reserved for prop sheet 06.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and silk material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy armor, plate armor, wings, horns, tail, ragged clothing, tattered robe, crown, crystalline parts, reference character face, copying any style-image character, holding weapon, weapon in hand, weapon, sword, rings visible on hand, gold chain held as a prop, ledger, abacus, fan, standalone prop, handheld item, prop object, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact identity per the Character definition above; the input images are style only.
- Character and costume only - no weapons, no handheld items, no props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-adri-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 01-adri-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of Adri containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open and EMPTY with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose. Character and costume only - no weapons, no handheld items, no props in any of the four views.

Identity invariants:
All four figures are the identical character from Image 1: same suave elegant face, sleek neatly-combed hair (#4A3B34), trimmed short beard, calculating merchant smile, amber-brown eyes (#8A5A2E), fair well-tended skin (#F2DFC8). Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 175 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.15 head-widths. Fully symmetric design (chest crest centered, chest chain symmetric).

Costume invariants:
Every view wears the identical luxurious merchant robe from Image 1: deep iris-violet purple robe (#4B2E6B) with the IRIS house crest (#C9A227) on the chest, gold-embroidered collar, wide gold-edged sleeves, wine-red inner robe (#6E1F2A), brocade waist sash with gold buckle, ankle-length hem, soft leather boots. Same count, positions, colors and materials in all four views. NO ring, NO gold chain worn as an emphasized prop, NO ledger/abacus/fan anywhere; all such props are reserved for prop sheet 06.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and silk material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy armor, plate armor, cuirass, gauntlets, wings, horns, tail, ragged clothing, poor peasant clothing, tattered robe, worn-out clothes, crown, weapon, sword, ledger, abacus, fan, standalone prop, handheld item, inconsistent scale between views, different height per view, mismatched costume between views, crystalline parts, crystalline armor, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, rings visible on hand, gold chain held as a prop, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only - no weapons, no handheld items, no props.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-adri-expression-sheet.png`（STAGE 2 — 八表情臉部表）


```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 01-adri-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose Adri into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, sleek neatly-combed deep-brown graying hair (#4A3B34), trimmed short beard, calculating merchant-smile eyes (#8A5A2E), fair well-tended skin tone (#F2DFC8), neck proportions, and the gold-embroidered robe collar visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
none (Adri has no blood-relative Kinship Lock in CHARACTER_SPEC.md).

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, removed beard, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, clean-shaven, removed beard, changed hair length, heavy armor, plate collar, gorget, wings, horns, tail, crown, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, crystalline parts, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

---

## 04 — `04-adri-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含外袍拆解）


```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 01-adri-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional costume construction sheet for Adri's luxurious merchant robe, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the outer opulent robe drawn SEPARATELY as a flat garment piece, AND one torso view of the character WITHOUT the outer robe so the inner wine-red robe silhouette and body outline are fully visible.
2. Chest crest detail: the stylized three-petal iris bloom crest in gold-thread embroidery, centered.
3. Collar and sleeve detail: the gold-embroidered standing/lapel collar and wide gold-edged sleeves.
4. Waist sash detail: the brocade waist sash with gold buckle (no weapon attached).
5. Hem and footwear detail: the ankle-length hem and soft refined leather boots.
6. Back structure: the robe's back drape and sash tie.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; fair skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials from Image 1: deep iris-violet purple main robe (#4B2E6B), gold-thread trim and embroidery (#C9A227), wine-red inner robe (#6E1F2A). Same construction as Image 1; no redesign; NO ring, NO gold chain, NO ledger/abacus/fan anywhere (all reserved for sheet 06).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and silk material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, ring, gold chain, ledger, abacus, fan, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The outer-robe separation panel and the outer-robe-less torso view are mandatory.
- No weapons or hand-props on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

---

## 05 — `05-adri-color-material-sheet.png`（STAGE 2 — 色票／材質表，已補固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-adri-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for Adri: a medium-size neutral A-pose front figure (character and costume only, no props) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- deep iris-violet purple robe #4B2E6B (main color)
- gold #C9A227 (trim, embroidery)
- wine-red inner robe #6E1F2A
- fair well-tended skin tone #F2DFC8
- deep-brown slightly graying hair, trimmed short beard #4A3B34
- amber-brown eyes #8A5A2E
Each swatch pairs a flat color block with a small material patch (silk sheen, brocade weave, gold-thread glint).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, beard, proportions (~175cm, ~7.0-7.5 heads).

Costume invariants:
Exact regalia from Image 1; no redesign; NO ring, NO gold chain, NO ledger/abacus/fan anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only; hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for silk, brocade and gold thread, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, ring, gold chain, ledger, abacus, fan, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

---

## 06 — `06-adri-prop-construction-sheet.png`（STAGE 2 — 道具表：戒指／金鏈／商賈道具唯一出現位置）


```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 01-adri-front-fullbody.png - use ONLY to match gold and silk material language and craftsmanship level; do not depict the character.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a props-only construction sheet for Adri's canonical wealth symbols and family crest:
1. MANY RINGS (sole appearance in the whole package): several ornate gold rings (#C9A227), front and side close-ups, gem-setting detail (gem color PENDING-USER-INPUT, render as a neutral warm gem for now).
2. GOLD CHEST CHAIN (sole appearance in the whole package): a decorative gold chain (#C9A227) with clasp detail.
3. Merchant hand-prop (default: ledger book; fan/abacus are user-overridable alternatives) - render the ledger book as the default placeholder prop, clearly marked as a placeholder choice, front and open-page views.
4. The Iris (鳶尾花) house crest: enlarged flat emblem drawing, stylized three-petal iris bloom, gold-thread embroidery/relief (#C9A227).

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form or a bare hand-only callout is allowed only when required to explain how a ring or chain is worn. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork and gemstone rendering, polished gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, arms, weapon, sword, armor, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the rings, gold chain and merchant hand-prop may appear in the entire package.
- Match the locked palette (gold #C9A227, deep iris-violet purple #4B2E6B accents); the merchant hand-prop choice is PENDING-USER-INPUT - render the ledger as default and flag it for user confirmation.
- No character depiction beyond an optional headless tailor form or hand-only callout. No text or watermark.
```

---

---

## 07 — `07-adri-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）


```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 01-adri-front-fullbody.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render Adri WITHOUT the outer robe or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open and EMPTY with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no robe, no loose clothing, no jewelry. Character and costume only - no weapons, no handheld items, no props.

Identity invariants:
Same character as Image 1: same suave face, sleek neatly-combed deep-brown graying hair (#4A3B34), trimmed short beard, fair well-tended skin (#F2DFC8), amber-brown eyes (#8A5A2E). The body underneath must be consistent with the robed figure of the approved sheets: medium well-kept elegant build.

Body metrics:
Height approximately 175 cm. Approximately 7.0 to 7.5 heads tall. Shoulder width approximately 2.15 head-widths. Fully symmetric. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, robe, outer garment, loose clothing, weapon, props, accessories, jewelry, rings, gold chain, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only - no weapons, no handheld items, no props; body silhouette fully visible; tight plain bodysuit only; flat lighting; true orthographic.
- No text or watermark.
```

---

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：01 →（使用者核准）→ 02 → 03 → 04 → 05 → 06 → 07。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 01 號正本一致（優雅圓滑、微笑眼底盤算）
- [ ] 髮型、髮色（深棕微灰 #4A3B34、後梳）與短鬚一致
- [ ] 身材比例：175cm／約 7.0–7.5 頭身／肩寬約 2.15 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（長袍層次、家紋位置、金邊袖口）
- [ ] 左右位置正確：胸前鳶尾花家紋置中、金鏈胸飾對稱，無鏡像錯亂
- [ ] 色票未漂移：#4B2E6B／#C9A227／#6E1F2A／#F2DFC8／#4A3B34／#8A5A2E
- [ ] **01–02、07 一律 character and costume only — no weapons, no handheld items, no props**；戒指、金鏈、商賈道具僅出現於 06；平光無投影陰影（03 攝影棚柔光除外）
- [ ] 血緣相似：本角色無血緣 Kinship（見 SPEC），本項免檢

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面、A-pose、正交、零道具；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；零道具；相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）、零道具；相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）、零道具；背面、A-pose、正交、零道具 |
| 03 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 04 | 外袍拆解面板＋無外袍軀幹視圖必須存在 |
| 05 | 色票方塊與鎖定 hex 完全一致 |
| 06 | 戒指／金鏈／商賈道具唯一出現於此；無角色、無臉、無人物剪影 |
| 07 | 素體無任何外袍與飾品；身體輪廓完全可見；正面＋左側兩視圖；零道具 |
