# 阿爾伯特 Albert — Image Generation Prompts（v2 STANDARD package: 00, 05–10；不含 01–04 單視圖）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（`CHARACTER_SPEC.md` 目前未給出格式化版本 ID，僅鎖定「紀律執法騎士版」為唯一服裝版本）

> **兩階段規則（強制）**：第一階段只生成 `00-albert-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **佩劍側／綬帶側新增鎖定（本次重寫新定案，供使用者覆蓋）**：紀律綬帶／肩章固定於**左肩**，騎士劍佩於**右腰**。SPEC 原文僅要求「左右須跨圖一致」未指定側別，此側別為本次重寫為求 00–10 一致性所新增的設計提案，非既有正典，使用者可事後覆蓋。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-albert-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 |
| 05 | `05-albert-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 06 | `06-albert-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-albert-costume-detail-sheet.png` | 服裝細節表（含板甲拆解與無外層軀幹視圖） |
| 08 | `08-albert-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-albert-prop-construction-sheet.png` | 道具表：騎士劍（唯一出現位置）＋綬帶／肩章拆解＋徽記 |
| 10 | `10-albert-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-albert-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Albert, a tall, cold disciplinarian knight (apparent age around 30), height read ~186cm, lean and trim with an honed, upright, rigid-postured build. CANON facial identity: a hard, expressionless face with sharp angular lines and a cutting jaw; a cold, emotionless sharp gaze with locked cool-gray eyes. Dark, near-black short hair slicked straight back, immaculate and perfectly neat with not a strand out of place (locked dark hair color). Healthy cool-toned skin. Costume (locked): immaculate, highly polished DARK plate armor, worn spotless and fully fastened, with a gorget / standing armored collar closed completely; dark plate pauldrons, vambraces and greaves all buckled tight; a discipline sash / enforcement epaulet worn on his LEFT shoulder, dark base with restrained muted-gold trim, marking his authority of law and discipline; the sash/breastplate bears the Hector holy-knight order's enforcement crest, muted-gold relief on the dark breastplate. He carries NO weapon and NO props of any kind - the knight's sword he duels with belongs exclusively to the prop sheet (09), worn belt or scabbard NOT shown here. Character contrast note: he is COLD, precise and meticulous - his armor is always immaculate and fully buckled, his hair perfectly slicked, the deliberate opposite of a sloppy, unfastened, disheveled soldier.

Body metrics:
Height 186 cm. Approximately seven to seven-and-a-half heads tall. Lean, trim, upright build. No left-right asymmetric anatomical features (the sash side is a costume choice, locked to his left shoulder).

Kinship invariants:
None.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose;
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished dark metal and woven-sash material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, twin swords, dual swords, sloppy armor, unfastened armor, unbuckled straps, loose plate, worn battered armor, messy hair, disheveled hair, stray hair strands, warm friendly smile, casual slouch, gemstone finery, ornate jewels, gaudy gold ornament, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (dark slicked-back neat short hair, cool-gray eyes, hard expressionless face, immaculate polished dark plate armor fully fastened, discipline sash/epaulet on the left shoulder, lean tall build).
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons belong exclusively to sheet 09.
- Armor must read as spotless, high-gloss and fully buckled; hair must read as perfectly neat.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet.
```

---

## 05 — `05-albert-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-albert-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Albert containing four full-body orthographic views of the SAME character in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, identical height, head-to-body ratio, arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose, cold and precise bearing kept consistent.

Identity invariants:
All four figures are the identical character from Image 1: same hard expressionless angular face, cold sharp cool-gray eyes, dark short hair slicked straight back and immaculate, healthy cool-toned skin, lean trim upright proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height 186 cm. Approximately seven to seven-and-a-half heads tall. Lean, trim, upright build.

Costume invariants:
Every view wears the identical disciplinary enforcer-knight attire from Image 1: immaculate polished dark plate armor, fully fastened with a closed standing gorget, discipline sash / enforcement epaulet on the same LEFT shoulder, dark pauldrons, vambraces and greaves buckled tight. Same accessory count, same positions, same colors and materials in all four views; armor stays spotless and fully buckled in every view, including the back panel shown in the back view. NO weapon anywhere; the knight's sword is reserved for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished dark metal and woven-sash material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, twin swords, sloppy armor, unfastened armor, unbuckled straps, loose plate, messy hair, disheveled hair, gemstone finery, ornate jewels, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-albert-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, armor-collar and color reference (the approved 00-albert-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Albert into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical hard angular facial identity and face proportions, cold sharp cool-gray eyes, dark short hair slicked straight back and immaculate, healthy cool-toned skin, neck proportions, and the visible closed standing gorget / dark plate armor collar with the discipline sash edge at the left shoulder. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the underlying cold, controlled, meticulous quality remains and the hair stays perfectly neat.

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

## 07 — `07-albert-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-albert-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Albert's disciplinary enforcer-knight armor, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the discipline sash / enforcement epaulet drawn SEPARATELY as a detachable strap piece, AND one torso view of the breastplate WITHOUT the sash so the plate's own surface and the enforcement crest are fully visible.
2. Breastplate front detail: the muted-gold enforcement crest relief on the dark plate.
3. Pauldron, vambrace and gauntlet close-ups showing plate articulation.
4. Waist armor detail (no weapon attached; the sword-belt attachment point is shown empty).
5. Leg plate and boot detail.
6. Gorget / standing collar close-up, fully closed and fastened.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials: dark near-black polished plate, muted-gold trim and crest relief, dark woven sash. Same construction as Image 1; no redesign; NO weapon anywhere (knight's sword belongs to sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished dark metal and woven-sash material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character, sloppy unfastened armor, gemstone finery

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The sash-separation panel and the sash-less breastplate view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-albert-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-albert-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Albert: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color, named by color (no hex, none locked in SPEC):
- near-black polished plate (armor primary)
- cold steel (blade metal reference only, not shown as a weapon here)
- dark base with muted-gold trim (discipline sash)
- muted-gold (crest relief accent)
- cool-gray (eyes)
- near-black (hair)
- healthy cool-toned skin
Each swatch pairs a flat color block with a small material patch showing how that surface reads (high-gloss polished metal, woven sash fabric, matte leather strap).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (186 cm, seven to seven-and-a-half heads).

Costume invariants:
Exact armor and sash from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, no hex codes).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for polished metal, woven fabric and leather, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, hex codes, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the described name-based palette exactly (no invented hex codes); hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-albert-prop-construction-sheet.png`（STAGE 2 — 道具表：騎士劍唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-albert-character-identity-anchor.png — use ONLY to match dark-metal/gold-trim material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Albert's equipment:
1. The KNIGHT'S SWORD (sole appearance in the whole package): full front view, side view, and hilt/guard close-up - plain cold-steel blade, dark grip, restrained muted-gold pommel accent; include its scabbard and the belt-hanger hardware as separate callouts, worn at the right hip.
2. The discipline sash / enforcement epaulet: full flat drawing and a close weave/trim detail (dark base, muted-gold trim), shown as it attaches to the left shoulder.
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
- Match the locked palette exactly by color name (dark near-black steel, muted-gold trim); no invented hex.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-albert-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-albert-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Albert WITHOUT armor, sash or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no armor, no sash, no loose clothing; short hair does not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, dark swept-back short hair, cool-gray eyes, cool-toned skin. The body underneath must be consistent with the armored figure of the approved sheets: lean, trim, upright, honed build.

Body metrics:
Height 186 cm. Approximately seven to seven-and-a-half heads tall. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

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

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、髮色（深色近黑向後梳）一致；瞳色冷灰
- [ ] 身材比例：186cm／七至七點五頭身
- [ ] 服裝結構與 Costume Lock 一致（板甲全扣合、綬帶固定於左肩）
- [ ] 左右位置正確：綬帶／肩章固定左肩、無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移：深色近黑板甲／暗金滾邊綬帶／冷灰瞳／深色近黑髮
- [ ] 無任何武器道具出現（09 除外）；平光無投影陰影（06 攝影棚柔光除外）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 綬帶拆解面板＋無綬帶胸甲視圖必須存在 |
| 08 | 色票方塊與名稱化色票完全一致 |
| 09 | 騎士劍唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖 |
