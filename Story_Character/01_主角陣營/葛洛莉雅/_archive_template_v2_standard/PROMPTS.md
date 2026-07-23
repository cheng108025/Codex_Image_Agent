# 葛洛莉雅 Gloria — Image Generation Prompts（v2 STANDARD package: 00, 05–10 — no 01–04 single views）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **版本 ID：待 SPEC v2 補**（服裝版本：利落旅裝／貴族女裝主版；潛入場素色斗篷為替代裝，僅以扣件形式列於 09 道具表）

> **兩階段規則（強制）**：第一階段只生成 `00-gloria-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（STANDARD package：不含 01–04 單視圖）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-gloria-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 05 | `05-gloria-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-gloria-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-gloria-costume-detail-sheet.png` | 服裝細節表（含旅行外套拆解與無外套軀幹視圖） |
| 08 | `08-gloria-color-material-sheet.png` | 色票／材質表（色名鎖定，SPEC 無 hex 值） |
| 09 | `09-gloria-prop-construction-sheet.png` | 道具表：承諾徽章＋潛行斗篷扣件＋隨身文件（本角色無武器） |
| 10 | `10-gloria-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-gloria-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Gloria, a refined young noblewoman (apparent age 20-25), height read ~165cm, medium build, elegant and graceful yet quietly resilient, approximately seven-and-a-half-heads slender feminine proportions. Locked facial identity: fair warm-toned skin, a delicate refined oval face, almond-shaped gentle eyes whose softness hides a firm resolve, warm chestnut-brown eyes (locked). Locked hair: warm medium chestnut-brown LONG hair, worn in a single neat side braid / low braided gather over one shoulder. Costume: refined practical travel wear of noble quality - a fitted bodice-top under a short travel jacket / over-tunic, a modest high-to-mid neckline with soft inner lining, gentle no-armor shoulder line, a waist belt or cinch shaping the silhouette, an ankle-to-knee travel skirt, low walking boots. Locked signature accessory: Gawain's promise badge - a small round warm-gold / brass knight-style token engraved with a paired-vow clasped-hands emblem and set with a single small deep silver-blue stone at its center - pinned at the LEFT chest (locked side, must never be mirrored). Palette: soft chestnut-brown, warm beige and ivory with a low-saturation muted blue or wine travel tone, warm-gold badge and fittings. She carries NO weapon and NO props of any kind.

Body metrics:
Height approximately 165 cm. Approximately 7.5 heads tall, slender feminine proportions. Locked asymmetric feature: the promise badge sits at the LEFT chest only, never mirrored. No shoulder-width value is specified in the character spec; do not invent one.

Kinship invariants:
None. Gloria has no blood relatives registered in the family tables (her bond with Gawain is an emotional/romantic tie, not kinship).

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume, with the badge consistently on the LEFT chest. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, plate armor, weapon, sword, crown, short hair, blonde hair, badge mirrored to right side, badge missing, neon colors, reference character face, copying any style-image character, blending the three reference characters, heavy metal armor, gemstone encrustation, gold pauldrons, clergy silk, crystalline parts, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow the locked identity exactly (chestnut-brown long braided hair, warm chestnut-brown eyes hiding resolve, ~165cm medium build, refined travel wear, Gawain's promise badge pinned at the LEFT chest).
- Character and costume only: no weapons, no handheld items, no standalone props. All construction/prop studies belong exclusively to sheet 09.
- Full-body view MUST use the standard neutral A-pose defined above; the two portraits are unaffected by the A-pose rule.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 05 — `05-gloria-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Gloria containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same face, gentle almond eyes with warm chestnut-brown color and hidden resolve, chestnut-brown long side-braided hair, fair warm skin, refined oval face, seven-and-a-half-heads slender feminine proportions. The promise badge stays on the LEFT chest, front edge in the left profile and rear edge in the right profile, absent from the back view. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 165 cm. Approximately 7.5 heads tall. No shoulder-width value specified; do not invent one.

Kinship invariants:
None.

Costume invariants:
Every view wears the identical refined travel wear from Image 1: fitted bodice-top under short travel jacket / over-tunic, modest neckline, soft no-armor shoulders, waist belt/cinch, ankle-to-knee travel skirt, low walking boots, and Gawain's promise badge on the LEFT chest. Same count, positions, colors and materials in all four views. NO weapon anywhere.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, masculine face, armor plate, weapon, sword, crown, short hair, blonde hair, badge mirrored to right side, badge missing, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, heavy metal armor, gemstone encrustation, gold pauldrons, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-gloria-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-gloria-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Gloria into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, gentle almond eyes with warm chestnut-brown color and hidden resolve, fair warm skin tone, chestnut-brown long hair worn in a neat side braid, bangs and hair length, refined oval face, neck proportions, modest neckline and the promise badge visible at the upper chest. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
None.

Expression order, left to right and top to bottom:
1. neutral - composed, quiet default expression
2. gentle smile - warm but restrained
3. broad smile with visible teeth
4. joyful open laughter
5. surprised
6. angry - cold fury at being treated as a bargaining chip
7. sad - suppressed grief and quiet defiance
8. wink

Style:
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, male, masculine face, short hair, blonde hair, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

## 07 — `07-gloria-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含旅行外套拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Gloria's refined travel wear, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the short travel jacket / over-tunic drawn SEPARATELY as a flat garment piece, AND one torso view of the character WITHOUT the jacket so the fitted bodice-top, promise badge and body silhouette underneath are fully visible.
2. Neckline and bodice-top detail: the modest high-to-mid neckline construction.
3. Waist belt/cinch detail: the fastening and silhouette shaping.
4. Sleeve cuff detail: cuffs and optional travel gloves.
5. Skirt detail: the ankle-to-knee travel skirt fabric fall.
6. Boot detail: low walking boots.
7. Promise badge detail: Gawain's badge pinned at the left chest, shown enlarged.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin and hair may appear at neck/collar edges only as needed. No full standalone face portrait panel is required.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: soft chestnut-brown / warm beige / ivory palette with a low-saturation muted blue or wine travel tone, fine noble-quality fabric, travel jacket weave, leather belt and boots, warm-gold promise badge. Do not redesign, add or remove any element. NO weapon anywhere.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, male, armor plate, weapon, sword, invented accessory, changed color scheme, different material, extra character, full-body pin-up, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The jacket separation panel and the jacket-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-gloria-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Gloria: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color, named by color only (no hex codes, none are specified in the character spec):
- soft chestnut-brown / warm beige / ivory (travel wear primary)
- low-saturation muted blue or wine (travel accent tone)
- warm gold (badge and fittings)
- deep silver-blue (badge center gem)
- chestnut-brown hair
- warm chestnut-brown eyes
Each swatch pairs a flat color block with a small material patch showing how that surface reads (noble-quality fabric weave, travel-jacket weave, leather belt and boots, polished gold badge finish).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~165 cm, ~7.5 heads).

Costume invariants:
Exact costume from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels, no hex codes (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for metal, fabric, leather and gemstone, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the character's established palette exactly, using color names only (no hex, per spec); hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-gloria-prop-construction-sheet.png`（STAGE 2 — 道具表：本角色無武器）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only, no weapons for this character)

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png — use ONLY to match the warm-gold/chestnut-brown material language; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Gloria's personal items:
1. Gawain's promise badge: standalone emblem study with front view, side view and an exploded/disassembled study of the pin, plate and its central deep silver-blue gem.
2. The plain dark infiltration cloak (her alternate espionage-scene costume, CANON): the neck clasp shown in full and in close attachment detail, plus a brief study of the cloak's plain hood.
3. Carried documents / sealed letters used in her double-agent storyline: shown as flat and rolled studies.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain the cloak clasp or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork and gemstone rendering, polished gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, weapon, sword, armor plate, invented prop, changed material, wrong palette, neon colors, cast shadows, rim light

Constraints:
- No weapons appear anywhere in this package (none exist for this character); do not invent any.
- Match the established warm-gold/chestnut-brown palette exactly.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-gloria-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-gloria-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Gloria WITHOUT the travel jacket, skirt or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories, no badge) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no jacket, no skirt, no loose clothing; the braided hair must stay gathered so it does not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, warm chestnut-brown eyes, chestnut-brown hair (kept in its braid, gathered back), fair warm skin. The body underneath must be consistent with the clothed figure of the approved sheets: medium build, elegant, slender feminine proportions.

Body metrics:
Height approximately 165 cm. Approximately 7.5 heads tall. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views. No shoulder-width value specified; do not invent one.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, badge, boots, folds, drapery, nudity, male, masculine build, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No promise badge on this sheet (bare bodysuit shows the true silhouette for fitting).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06 的人像面板亦同）
- [ ] 髮型、瀏海、髮色（栗棕色，單條側編辮）一致
- [ ] 身材比例：約 165cm／約 7.5 頭身
- [ ] 服裝結構與 Costume Lock 一致（合身旅裝、短外套、腰帶、及膝裙、承諾徽章）
- [ ] 左右位置正確：承諾徽章固定佩於左胸，跨圖不得翻面或消失
- [ ] 色票未漂移（栗棕／暖米／象牙白／暖金徽章／深銀藍寶石）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：不適用（無血緣角色）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 旅行外套拆解面板＋無外套軀幹視圖必須存在 |
| 08 | 色票方塊與既定色名完全一致（無 hex，SPEC 未提供） |
| 09 | 承諾徽章／潛行斗篷扣件／隨身文件為主體；本角色無武器，不得無故新增；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；辮髮須收攏、無徽章 |
