# 馬修 Matthew — Image Generation Prompts（v2, STANDARD 7-sheet package: 00 / 05 / 06 / 07 / 08 / 09 / 10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（CHARACTER_SPEC.md 尚未列出正式版本 ID 欄位；服裝版本 1＝白金高階神職法袍主要辨識形象，版本 2＝戰前皮甲，僅於 07／09 呈現替換件）

> **兩階段規則（強制）**：第一階段只生成 `00-matthew-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為本包其餘各表的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **簽名式標誌（跨版本不變）**：胸前金墜「月天使」神權象徵在版本 1 與版本 2 皆貼身佩戴，任何一張圖都不可省略。
> 本包**不含 01–04 單視圖**；每條提示詞獨立完整，勿合併。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-matthew-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具（版本 1 白金法袍） |
| 05 | `05-matthew-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具（版本 1） |
| 06 | `06-matthew-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-matthew-costume-detail-sheet.png` | 服裝細節表（法袍拆解＋無外袍軀幹視圖；同表呈現版本 2 皮甲替換件） |
| 08 | `08-matthew-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-matthew-prop-construction-sheet.png` | 道具表：金墜「月天使」（唯一出現位置）＋天諦正教徽記＋版本替換附件構造 |
| 10 | `10-matthew-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） |

---

## 00 — `00-matthew-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Matthew, a tall, lean, elegant male theocratic mastermind (apparent age 35-45), height read ~180cm, slender seven-to-eight-heads proportions. CANON facial identity: a pale, handsome face with faintly serpentine features; thin lips wearing a composed, calculating, faintly looking-down-from-above smile; narrow calculating eyes. LOCKED anchor defaults (user-overridable): neatly combed long hair in cool SILVER, swept back; pale cool-toned skin; cold PALE-GREY eyes. Costume version 1 (CANON direction, primary identity): a high-ranking white-and-gold silk clergy robe of layered ecclesiastical vestments, with WIDE DRAPING SLEEVES reaching below the wrists; a high clergy collar and shoulder mantle with gold-thread trim; a gold embroidered religious insignia of the orthodox church on the chest (LOCKED default emblem: a circular crest of a crescent moon cradling a single radiant star, ringed with gold thread). CANON SIGNATURE, never omit: a single prominent GOLD pendant hangs at the center of the chest, a "moon-angel" religious emblem (a stylized upright angelic figure fused with an upturned crescent moon), set with one small cold pale-blue gemstone (LOCKED default gem color), worn close against the chest - this is his repeated recognizable signature. Long elegant fingers. Palette: white and gold dominant, cool silver hair, dark accents, aligned with the whole story's converged gold / silver-blue / dark scheme. He is fully human: no wings, no horns, no tail, no crown, no halo - the "moon-angel" is only the image on the pendant. Character and costume only - no weapons, no handheld items, no standalone props.

Body metrics:
Height read ~180cm. Approximately 7.0-8.0 heads tall, tall lean elegant build. Shoulder width and any left-right asymmetric feature are not fixed in CHARACTER_SPEC.md - not yet locked; the chest pendant hangs centered, not asymmetric.

Kinship invariants:
None. Matthew has no established blood relatives in the family registry; no kinship resemblance constraints apply.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal and gemstone material separation, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, feathered wings, angel wings, missing chest pendant, elderly wrinkled face, muscular hulking build, beard, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (pale faintly serpentine handsome face, thin calculating smile, wide-sleeved white-and-gold clergy robe, prominent gold moon-angel chest pendant as the repeated signature).
- Use the LOCKED anchor defaults exactly (silver combed-back long hair, cold pale-grey eyes, small pale-blue pendant gem, crescent-moon-and-star chest insignia, ~180cm lean elegant build); do not invent other unresolved details.
- His only rich materials are the white-and-gold silk robe and the gold moon-angel pendant (metal and gem allowed on the pendant only); no black pauldrons, no chains, no horns, no wings, no heavy plate armor.
- Character and costume only: no weapons, no handheld items, no standalone props.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 05 — `05-matthew-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Matthew containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same face, pale faintly serpentine handsome features, thin composed calculating smile, narrow cold pale-grey eyes, silver combed-back long hair, pale cool skin, lean elegant seven-to-eight-heads proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height read ~180cm. Approximately 7.0-8.0 heads tall, lean elegant build.

Costume invariants:
Every view wears the identical costume version 1 from Image 1: high-ranking white-and-gold clergy robe with wide draping sleeves below the wrists, high clergy collar and shoulder mantle with gold-thread trim, gold embroidered chest insignia (crescent-moon-and-star), and the prominent gold "moon-angel" chest pendant with its pale-blue gem (back panel of the robe fully shown in the back view; the pendant hangs at the front and is not visible from behind). Same count, positions, colors and materials in all four views. Character and costume only - no weapons, no handheld items, no standalone props.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, missing chest pendant, elderly wrinkled face, muscular hulking build, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-matthew-expression-sheet.png`（STAGE 2 — 00 核准後；八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-matthew-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Matthew into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, pale faintly serpentine handsome features, thin lips, narrow cold pale-grey eyes, pale cool skin tone, silver combed-back long hair, hairline and hair length, neck proportions, the high clergy collar and shoulder mantle, and the top of the gold moon-angel pendant visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed hairline, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, halo, crown, elderly wrinkled face, beard, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs
```

---

## 07 — `07-matthew-costume-detail-sheet.png`（STAGE 2 — 00 核准後；服裝細節表，含外層拆解與版本 2 替換件）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation and costume-version swap

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Matthew's two costume versions, presenting several clean close-up detail studies at a consistent scale.
1. LAYER SEPARATION (required for 3D modeling), version 1: the white-and-gold clergy robe with its shoulder mantle drawn SEPARATELY as a flat garment piece, AND one torso view WITHOUT the outer robe/mantle so the body silhouette is fully visible (the gold moon-angel pendant still worn against the torso in this stripped view, since it is his canon accessory, not the outer robe).
2. Version 1 detail: the high clergy collar and shoulder mantle with gold-thread trim, the wide draping sleeve construction and hem, the white-and-gold layered robe fabric weave, the gold embroidered chest insignia.
3. Version 2 (pre-battle swap): the dark leather armor pieces worn after shedding the robe - leather chest piece, pauldrons, bracers and belt - with the SAME gold moon-angel pendant worn over the chest armor.
4. The gold moon-angel chest pendant, shown large enough to read its crescent-moon-and-angel form clearly in both costume contexts.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Kinship invariants:
None.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: white-and-gold robe palette, gold-thread embroidery, layered ecclesiastical fabric, wide draping sleeves, and the gold moon-angel pendant form. The version-2 leather armor uses deep brown-to-charcoal leather with white-and-gold accents, and always keeps the same gold moon-angel pendant on the chest. Do not redesign, add or remove any element; the pendant is identical across both versions and across the stripped torso view.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, invented accessory, changed color scheme, different material, changed pendant, missing pendant in stripped torso view, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The robe/mantle separation panel and the outer-layer-less torso view (pendant still worn) are mandatory.
- The version-2 leather-armor swap panel is mandatory on this sheet, per the locked costume-version rule.
- No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-matthew-color-material-sheet.png`（STAGE 2 — 00 核准後；色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Matthew in Image 1: neatly arranged color swatches and material sample chips showing the white-and-gold robe primary, gold-thread embroidery, gold pendant metal, pale-blue pendant gemstone, layered ecclesiastical fabric, inner-layer silk vestment, deep brown-to-charcoal leather (version-2 armor), silver hair color, pale skin tone and cold pale-grey eye color. Beside the swatches show small material studies illustrating the fabric-weave, gold polished-metal, leather and gemstone finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme.

Kinship invariants:
None.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1; do not add colors or materials not on the character. No costume redesign.

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for silk, gold metal and gemstone, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Sample colors and materials exactly from Image 1.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-matthew-prop-construction-sheet.png`（STAGE 2 — 00 核准後；道具表：金墜唯一出現位置）

```text
Use case: stylized-concept
Asset type: props and construction detail sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Matthew's signature items: the gold "moon-angel" pendant shown large in front view, side view and a close detail study of the crescent-moon-and-angel emblem, its pale-blue gemstone setting and its chain; the orthodox-church religious insignia / ecclesiastical emblem (crescent moon cradling a radiant star) as a standalone study; and the robe-to-leather-armor swap pieces shown as attachment studies (the version-1 clergy robe collar/mantle/wide sleeve fastenings and the version-2 leather armor chest piece, pauldrons, bracers and belt), demonstrating how the same gold moon-angel pendant transfers onto both.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a garment or armor attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All props must match Image 1's colors, materials and construction exactly.

Kinship invariants:
None.

Costume/props invariants:
The gold moon-angel pendant is a single prominent piece (a stylized angelic figure combined with a crescent moon, pale-blue gem) with dark-gold-to-bright-gold finish, identical to the pendant on Image 1; the religious insignia matches the chest embroidery on Image 1; the robe pieces and leather-armor pieces match Image 1's version-1 and version-2 construction and attachment method. Do not add, remove or redesign any prop.

Composition:
Neatly arranged prop studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the robe/armor attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise embroidery, polished gold metal and gemstone rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, wings, horns, tail, crown, halo, invented prop, changed material, changed pendant, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Match the props' exact appearance to Image 1.
- Props only; no character body, face or silhouette anywhere except an optional blank headless tailor form for attachment studies.
- No text or watermark. Do not invent missing canonical details.
```

---

## 10 — `10-matthew-body-reference-sheet.png`（STAGE 2 — 00 核准後；素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Matthew WITHOUT the robe, mantle or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no robe, no mantle, no loose clothing; the long hair must be gathered back so it does not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, silver combed-back long hair (gathered back for this sheet), pale cool skin, cold pale-grey eyes. The body underneath must be consistent with the robed figure of the approved sheets: tall, lean, elegant.

Kinship invariants:
None.

Body metrics:
Height read ~180cm. Approximately 7.0-8.0 heads tall, lean elegant build. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, crown, halo, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, muscular hulking build, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No pendant, no accessories on this sheet (this is a stripped body-fitting reference).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、髮色（冷銀後梳長髮）一致；從容俯視笑意一致
- [ ] 身材比例：約 180cm／7.0–8.0 頭身／頎長清瘦優雅體型
- [ ] 服裝結構與 Costume Lock 一致（版本 1 白金法袍層次、金墜位置置中）
- [ ] 左右位置正確：金墜居中垂於胸口；肩帔主披側須跨圖一致（以 00 號實際生成側為準）
- [ ] 色票未漂移：白＋金法袍、冷銀髮、冷調淡灰瞳、金墜單顆冷淡藍寶石
- [ ] 金墜「月天使」在每張圖（含 07 版本 2 皮甲替換件）皆貼身可見，未被省略
- [ ] 無任何額外武器出現（09 除外，且 09 亦無武器僅道具構造）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（本角色無血緣親屬，見 §13，跳過）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 法袍拆解面板＋無外袍軀幹視圖（金墜仍在）＋版本 2 皮甲替換件必須同時存在 |
| 08 | 色票方塊與鎖定色系（白金／冷銀／冷灰／淡藍寶石）完全一致 |
| 09 | 金墜「月天使」唯一出現於此供近距離拆解；無角色全身、無臉、無人物剪影 |
| 10 | 素體無任何法袍／外層；身體輪廓完全可見；正面＋左側兩視圖；不佩戴金墜（此表為純身體擬合用） |
