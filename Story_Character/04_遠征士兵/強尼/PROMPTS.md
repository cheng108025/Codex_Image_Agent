# 強尼·德加 Johnny Dega — Image Generation Prompts（新版七張制 01–07）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`JOHNNY-V1-1587-EXPEDITION`**（1587 遠征期制式輕甲版；其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `01-johnny-front-fullbody.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 01 成為 02–07 的 Image 1 身份／服裝唯一正本。畫風輸入一律依 `../../STYLE_ANCHOR.md` 決定。
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
| 01 | `01-johnny-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-johnny-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-johnny-expression-sheet.png` | 表情表 |
| 04 | `04-johnny-costume-detail-sheet.png` | 服裝細節 |
| 05 | `05-johnny-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-johnny-prop-construction-sheet.png` | 道具結構 |
| 07 | `07-johnny-body-reference-sheet.png` | 身體參考（SMPL-X） |

---

## 01 — `01-johnny-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Character definition:
Johnny Dega, an ordinary young Hector expedition foot-soldier, the youngest of three named decoy soldiers, apparent age 19 (locked default), height ~172cm, slightly slight and not-yet-hardened youthful build, approximately seven-heads slender proportions. Clean, round, beardless boyish face; short neat chestnut-brown military haircut (#5C3A28, locked); his defining trait is WORSHIPFUL eyes — bright warm-brown eyes (#8B5A2B, locked) with dilated pupils, looking upward and outward in pure adoration toward his king. Fair healthy skin with a faint flush (#EFCBAE). Costume (locked): 1587 Hector expedition standard light armor — a padded gambeson (#4A3B2E) under a light leather cuirass (#3C2E24) with a few plain dull-steel accents (#52565C), a padded high collar lined in dark cloth, small light leather or plain-steel shoulder pieces with no ornament, leather bracers and plain gloves, a plain leather belt with no weapon attached (his short dagger is reserved exclusively for the prop-construction sheet), cloth or leather trousers with marching leather boots, a small restrained Hector standard crest on the chest, no cloak. Materials: dark brown-to-charcoal leather, muted dark cloth, dull dark-steel fittings — no gemstones, no gold, no ornament. Character and costume only — no torch, no weapon, no handheld items, no standalone props of any kind anywhere on this sheet.

Primary request:
Render Johnny as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same clean beardless boyish face, worshipful warm-brown eyes (#8B5A2B), short neat chestnut-brown hair (#5C3A28), fair skin with a faint flush (#EFCBAE).

Kinship invariants:
none

Body metrics:
Height 172 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Costume invariants:
Identical light expedition armor per the Character definition above: padded gambeson (#4A3B2E) under light leather cuirass (#3C2E24) with dull-steel accents (#52565C), padded high collar, small light shoulder pieces, leather bracers and gloves, plain leather belt with NO weapon attached, cloth/leather trousers, marching boots, small restrained Hector crest on the chest, no cloak. NO weapon or torch anywhere; both are reserved exclusively for prop sheet 06.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy plate, ornate armor, gemstones, gold pauldrons, wings, horns, tail, beard, elderly face, torch, holding weapon, weapon in hand, weapon, sword, scabbard, sheath, staff, shield, prop object, reference character face, copying any style-image character, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact identity per the Character definition above; the input images are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-johnny-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 01-johnny-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of Johnny Dega containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same clean beardless boyish face, short neat chestnut-brown hair (#5C3A28), fair skin with a faint flush (#EFCBAE), warm-brown eyes (#8B5A2B). Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height 172 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric build.

Kinship invariants:
none

Costume invariants:
Every view wears the identical light expedition armor from Image 1: padded gambeson (#4A3B2E) under light leather cuirass (#3C2E24) with dull-steel accents (#52565C), padded high collar, small light shoulder pieces, leather bracers and gloves, plain leather belt with NO weapon attached, cloth/leather trousers, marching boots, small restrained Hector crest on the chest, no cloak. Same accessory count, positions, colors and materials in all four views. NO weapon or torch anywhere; both are reserved exclusively for prop sheet 06.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heavy plate, ornate armor, gemstones, gold pauldrons, wings, horns, tail, beard, elderly face, inconsistent scale between views, different height per view, mismatched costume between views, torch, holding weapon, weapon in hand, weapon, sword, scabbard, sheath, staff, shield, prop object, contrapposto, action pose, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, reference character face, copying any style-image character

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-johnny-expression-sheet.png`（STAGE 2 — 八表情臉部表）


```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 01-johnny-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose Johnny into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity, clean beardless boyish face proportions, fair skin with a faint flush (#EFCBAE), warm-brown eyes (#8B5A2B), short neat chestnut-brown hair (#5C3A28), neck proportions, and the visible padded high collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; his baseline is a young man carrying a residue of worshipful admiration.

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
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, beard, stubble, elderly face, heavy armor, gold pauldrons, gemstones, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, torch
```

---

---

## 04 — `04-johnny-costume-detail-sheet.png`（STAGE 2 — 服裝細節表）


```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 01-johnny-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional costume construction sheet for Johnny's standard light expedition armor, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the light leather cuirass drawn SEPARATELY as a flat construction piece, AND one torso view of the body WITHOUT the cuirass (just the padded gambeson) so the underlying body silhouette is fully visible.
2. Chest detail: the small restrained Hector standard crest and the padded high collar.
3. Shoulder-piece and bracer close-ups showing the light leather/steel plate and glove construction.
4. Waist belt detail (no weapon attached — the belt is shown plain/empty).
5. Trouser and marching-boot detail.
6. Back view construction: plain back panel, no cloak, no ornament.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/hand edges only as needed. No full standalone face portrait panels.

Kinship invariants:
none

Costume invariants:
Exact materials and colors as Image 1: dark brown-to-charcoal leather (#3C2E24), muted dark cloth (#4A3B2E), dull dark-steel fittings (#52565C). Same construction as Image 1; no redesign; NO weapon or torch anywhere (both belong exclusively to sheet 06).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, leather and steel material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, dagger, scabbard, sheath, shield, holding weapon, torch, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The cuirass separation panel and the cuirass-less torso view are mandatory.
- No weapons or torch on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

---

## 05 — `05-johnny-color-material-sheet.png`（STAGE 2 — 色票／材質表，已補固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-johnny-front-fullbody.png and sole identity/costume authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for Johnny: a medium-size neutral A-pose front figure (character and costume only, no weapon or torch) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- dark brown-to-charcoal leather #3C2E24 (cuirass, bracers, belt, boots)
- muted dark-brown cloth #4A3B2E (gambeson, collar lining)
- dull dark-steel #52565C (fittings, small shoulder pieces)
- fair skin with a faint flush #EFCBAE
- chestnut-brown hair #5C3A28
- warm-brown eyes #8B5A2B
Each swatch pairs a flat color block with a small material patch showing how that surface reads (leather grain, steel matte finish, cloth weave).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (172 cm, 7.0 heads, ~2.0 head-widths shoulders).

Kinship invariants:
none

Costume invariants:
Exact costume from Image 1; no redesign; NO weapon or torch anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for leather, steel and cloth, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, dagger, torch, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

---

## 06 — `06-johnny-prop-construction-sheet.png`（STAGE 2 — 道具表：火炬與短刀，全書唯一出現位置）


```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 01-johnny-front-fullbody.png — use ONLY to match material language and craftsmanship level; do not depict the character.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a props-only construction sheet for Johnny's two items:
1. The LIT TORCH (sole appearance in the whole package): full view showing the wooden shaft, oil-soaked cloth head and warm orange flame (#E8873A); a close-up of the flame/cloth-head detail. Include a callout showing it is designed to be held in the right hand (DESIGN-PROPOSAL narrative convention).
2. The plain short DAGGER (sole appearance in the whole package): front view, side view, and hilt close-up — dull dark-steel blade (#52565C), plain leather-wrapped grip (#3C2E24); include its plain sheath and the belt-hanger hardware as a separate callout, mounted for the right hip (DESIGN-PROPOSAL narrative convention).

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise wood, cloth, flame and steel rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, extra weapons, ornate gold decoration, gemstones, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the torch and the dagger may appear in the entire package.
- Match the described material language exactly (dull dark-steel #52565C, plain leather #3C2E24, oil-soaked cloth, warm orange flame #E8873A).
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

---

## 07 — `07-johnny-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）


```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 01-johnny-front-fullbody.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render Johnny WITHOUT armor or any outer garment — wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) — as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view (camera at the character's anatomical left side). Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no armor, no loose clothing; the short hair must not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, short neat chestnut-brown hair (#5C3A28), fair skin (#EFCBAE), warm-brown eyes (#8B5A2B). The body underneath must be consistent with the armored figure of the approved sheets: slight, not-yet-hardened youthful build.

Body metrics:
Height 172 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, torch, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

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
- [ ] 髮型、瀏海、髮色 #5C3A28 一致
- [ ] 身材比例：172cm／約 7.0 頭身／肩寬約 2.0 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（層次、配件數量、位置）
- [ ] 左右位置正確：全對稱設計（01–02／07 零道具無不對稱；06 火炬／短刀慣用側＝右，跨圖一致）
- [ ] 色票未漂移：#3C2E24／#4A3B2E／#52565C／#EFCBAE／#5C3A28／#8B5A2B／#E8873A（僅 06）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：無血緣角色，本項跳過

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面、A-pose、正交；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；背面、A-pose、正交 |
| 03 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 04 | 皮革胸甲拆解面板＋無胸甲軀幹視圖必須存在；無武器 |
| 05 | 色票方塊與鎖定 hex 完全一致 |
| 06 | 火炬與短刀唯一出現於此；無角色、無臉、無人物剪影 |
| 07 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖 |
