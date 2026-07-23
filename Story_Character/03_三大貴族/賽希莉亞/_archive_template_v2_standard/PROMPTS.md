# 賽希莉亞 Cecilia — Image Generation Prompts（STANDARD 7-file package: 00, 05, 06, 07, 08, 09, 10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（`CHARACTER_SPEC.md` 尚未填入正式版本 ID；服裝版本鎖定為「安德烈書房秘密行動場景 — 深色系貴族長裙」，其他時期／服裝需另立版本，不得混用）

> **兩階段規則（強制）**：第一階段只生成 `00-cecilia-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 05–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風，不得被當成本角色的身份參考。
> **家族生成順序（§13）**：賽希莉亞屬於家族 `ANDRE`，錨點為安德烈。**安德烈的 00 必須先核准，本角色的 00 才能進入生成階段。**
> **重要姿態規則**：CHARACTER_SPEC.md 記載的「雙手於身前交握」姿態**不得出現於任何 A-pose 全身圖**（00、05、07、10）。所有全身圖一律使用標準 A-pose（雙臂自然垂放於身側、手掌張開），她的不安與遲疑**只能透過臉部神情**（眉眼低垂、眼神猶疑）傳達，絕不可用交握雙手取代 A-pose。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

本套為標準 7 表包（不含 01–04 單視圖）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-cecilia-character-identity-anchor.png` | 身份母圖：A-pose 正面全身（雙臂垂放，非交握）＋正面頭肩＋45° 三分之四頭肩，零道具（含 Kinship invariants） |
| 05 | `05-cecilia-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具，A-pose 非交握 |
| 06 | `06-cecilia-expression-sheet.png` | 八表情臉部表，4×2 網格，含 Kinship invariants；不安遲疑由臉部傳達 |
| 07 | `07-cecilia-costume-detail-sheet.png` | 服裝細節表（外層拆解面板＋無外層軀幹視圖，零武器） |
| 08 | `08-cecilia-color-material-sheet.png` | 色票／材質表（色名為主，SPEC 無 hex） |
| 09 | `09-cecilia-prop-construction-sheet.png` | 道具表：胸飾＋梧桐家紋徽記（無武器） |
| 10 | `10-cecilia-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用；栗色長髮紮起收於身後） |

---

## 00 — `00-cecilia-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Cecilia, a young noble maiden (apparent age 16-20), the daughter of the noble statesman Andre, height read ~163cm, slender and graceful proportions. CANON facial identity: a demure, delicate young noble face; her expression is persistently uneasy and hesitant, with lowered brows and doubtful eyes that voice the audience's sense that "this plan may be wrong." Fair, soft-toned skin. CANON hair: long chestnut hair falling smoothly. Locked dark-brown eyes to match (LOCKED default). Real materials: fine-woven noble dress cloth, layered fabric, a cinched cloth/leather waist sash, soft noble shoes, and small dark-silver / dark-gold embroidery and a small brooch only, no gemstone finery. Costume: a dark noble long dress in the family's dark palette (deep blue / dark green / charcoal noble tones) matched to her brother Philip's attire; a demure high or squared collar with fine embroidery; a subtle Paulownia-house crest motif at the chest; a cinched waist; long sleeves; a floor-length or ankle-length dark skirt draping demurely. She carries NO handheld props and wears NO weapon of any kind - the small brooch belongs exclusively to the prop construction sheet (09). Her uneasy, hesitant demeanor is conveyed through facial expression only (lowered brows, doubtful eyes) - her arms and hands must follow the standard neutral A-pose, never clasped together in front of her body.

Body metrics:
Height approximately 163 cm (DESIGN-PROPOSAL). Approximately 7 heads tall (DESIGN-PROPOSAL proportion). Shoulder width is not specified in CHARACTER_SPEC.md - no value invented. No left-right asymmetric body feature beyond the small chest brooch, which must stay centered/consistent per the Forbidden Features lock.

Kinship invariants:
Cecilia is the daughter of Andre (family anchor, house ANDRE). Her inherited facial features are PENDING-USER-INPUT - do not render unapproved family resemblance. The only locked, deliberate distinguishing features are: her long chestnut hair (neither her father Andre's gray nor her brother Philip's dark-brown-near-black), and her demure, delicate facial bearing as distinct from Philip's handsome, angular one. She must not appear elderly, gray-haired or wrinkled like her father, and must not appear masculine or angular like her brother.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly THREE views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose, hands NOT clasped together - her uneasy demeanor shows only in her facial expression;
2. one large straight-on head-and-shoulders portrait (lowered brows, doubtful eyes conveying unease);
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, fabric-focused material separation with minimal dark-silver/dark-gold fittings, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, man, boy, elderly face, gray hair, wrinkles, angular masculine jaw, armor, plate armor, weapon, sword, gemstone finery, ornate jewels, shining gemstones, gold pauldrons, heavy metal armor, hands clasped together, hands clasped in front of body, folded hands, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (young female noble maiden, uneasy hesitant expression conveyed via face only, long chestnut hair, dark noble long dress matched to Philip).
- Do not invent an unapproved family-resemblance facial structure; inherited facial features stay PENDING-USER-INPUT.
- Character and costume only: no weapons, no handheld items, no standalone props.
- Hands must NOT be clasped together in the full-body view; arms follow the standard neutral A-pose. Unease is conveyed only through facial expression.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 05 — `05-cecilia-four-view-master.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-cecilia-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Cecilia containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, hands NOT clasped together, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same demure delicate face, long chestnut hair falling smoothly, dark-brown eyes, fair soft-toned skin, slender graceful ~163cm build. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 163 cm. Approximately 7 heads tall. Shoulder width not specified in CHARACTER_SPEC.md - no value invented. Chest brooch centered/consistent across views.

Costume invariants:
Every view wears the identical dark noble long dress from Image 1: demure high/squared collar, subtle Paulownia-house crest at the chest, cinched waist, long sleeves, floor-length or ankle-length dark skirt. Same count, positions, colors and materials in all four views. NO weapon, NO handheld prop anywhere; the small brooch is reserved for prop sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-silver/dark-gold fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, male, man, boy, armor, weapon, sword, gemstone finery, gold pauldrons, hands clasped together, hands clasped in front of body, folded hands, standalone prop, handheld item, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Hands must NOT be clasped together in any view; standard neutral A-pose only.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-cecilia-expression-sheet.png`（STAGE 2 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-cecilia-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Cecilia into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, long chestnut hair falling smoothly, dark-brown eyes, fair soft-toned skin, neck proportions, and the demure dress collar with Paulownia-crest motif visible at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change; the underlying uneasy, hesitant bearing (lowered brows baseline) may soften with the expression but the identity must not change.

Kinship invariants:
Cecilia's inherited facial features are PENDING-USER-INPUT - do not render unapproved family resemblance. Her locked, deliberate distinguishing features stay constant in every panel: long chestnut hair (not gray like her father Andre, not dark-brown-near-black like her brother Philip), and a demure, delicate facial bearing as distinct from Philip's handsome, angular one.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, male, man, boy, elderly face, gray hair, wrinkles, angular masculine jaw, armor, plate collar, gorget, wings, horns, tail, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, gemstone finery, gold pauldrons, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

## 07 — `07-cecilia-costume-detail-sheet.png`（STAGE 2 — 服裝細節表，含外層拆解，零武器）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-cecilia-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Cecilia's dark noble long dress, organized as callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the outer layered dress bodice/overlay drawn SEPARATELY as a flat garment piece, AND one torso view of the character WITHOUT the outer layer so the inner dress/undergarment silhouette and body outline are fully visible.
2. Chest crest detail: the subtle Paulownia-house crest motif at the chest.
3. Collar and sleeve detail: the demure high/squared collar with fine embroidery and long sleeves.
4. Waist detail: the cinched waist sash (no weapon, no brooch shown here - brooch belongs to sheet 09).
5. Skirt and footwear detail: the floor-length or ankle-length dark skirt draping demurely, and soft noble shoes.
6. Back structure: the dress's back drape and closure.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; fair soft-toned skin may appear at neck/face edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials from Image 1: dark noble palette (deep blue / dark green / charcoal), small dark-silver/dark-gold embroidery. Same construction as Image 1; no redesign; NO weapon anywhere.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, fabric-focused material separation with minimal dark-silver/dark-gold fittings, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The outer-layer separation panel and the outer-layer-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-cecilia-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-cecilia-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Cecilia: a medium-size neutral A-pose front figure (character and costume only, no props, hands NOT clasped) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color (named colors only - CHARACTER_SPEC.md gives no hex codes, do not invent any):
- dark noble palette main color (deep blue / dark green / charcoal, matched to Philip and Andre)
- chestnut hair color (CANON)
- small dark-silver or dark-gold embroidery accent
- fair soft-toned skin
- dark-brown eyes (LOCKED)
Each swatch pairs a flat color block with a small material patch (fine-woven dress cloth, embroidery thread sheen).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~163cm, ~7 heads).

Costume invariants:
Exact regalia from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for fine dress cloth and embroidery thread, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, holding weapon, hands clasped together, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the CANON/DESIGN-PROPOSAL palette by name exactly; do not invent hex codes. Hue drift = reject.
- Character and costume only; zero props; flat lighting; hands not clasped.
- No text or watermark.
```

---

## 09 — `09-cecilia-prop-construction-sheet.png`（STAGE 2 — 道具表：胸飾與家紋，無武器）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-cecilia-character-identity-anchor.png - use ONLY to match material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Cecilia's canonical small accessory and family crest:
1. The small chest BROOCH (sole appearance in the whole package): front and side close-ups, dark-silver or dark-gold restrained design, no large gemstone finery.
2. The Paulownia (plane-tree) house crest: enlarged flat emblem drawing, stylized five-lobed plane-tree leaf, matching her father Andre's family crest.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise small-metalwork rendering, dark-silver/dark-gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, weapon, sword, armor, large gemstone finery, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the brooch may appear in the entire package.
- Match the locked palette by name (dark-silver/dark-gold restraint); no large gemstone finery.
- No character depiction of any kind. No text or watermark.
```

---

## 10 — `10-cecilia-body-reference-sheet.png`（STAGE 2 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-cecilia-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Cecilia WITHOUT the dress or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, hands NOT clasped together, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. Her long chestnut hair must be gathered and tied back behind the shoulders so it does not cover the body silhouette. The body silhouette must be fully visible and unobstructed: no dress, no loose clothing, no jewelry.

Identity invariants:
Same character as Image 1: same demure face, chestnut hair (gathered/tied back for this sheet only), fair soft-toned skin, dark-brown eyes. The body underneath must be consistent with the dressed figure of the approved sheets: slender, graceful young noble build.

Body metrics:
Height approximately 163 cm. Approximately 7 heads tall. Shoulder width not specified in CHARACTER_SPEC.md - no value invented. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, dress, outer garment, loose clothing, weapon, props, accessories, jewelry, loose hair covering body, hair covering shoulders, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, hands clasped together, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures, male, man, boy

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Hair must be gathered/tied back so the body silhouette is fully visible; hands not clasped together.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：（安德烈 00 已核准）→ 00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（端莊秀氣、眉眼低垂）
- [ ] 髮型、髮色（栗色長髮）一致（10 號素體圖須紮起收於身後）
- [ ] 身材比例：163cm／約 7 頭身
- [ ] 服裝結構與 Costume Lock 一致（長裙層次、家紋位置）
- [ ] 左右位置正確：胸飾位置一致、無鏡像錯亂
- [ ] 色票未漂移（深色系＋栗色髮＋暗銀／暗金繡線，對照 CHARACTER_SPEC.md 色名）
- [ ] 無任何武器道具出現（09 除外，僅胸飾與家紋）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] **所有全身圖雙手不得交握**——一律標準 A-pose，不安遲疑僅由臉部神情傳達
- [ ] 血緣相似：承襲特徵為 PENDING-USER-INPUT，任何全身圖／表情圖不得繪出未核准的與安德烈或菲利浦的臉部相似提案；僅呈現已鎖定的刻意區分項（栗色髮、秀氣臉型）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT；全身圖雙手未交握 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊；雙手未交握 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 外層拆解面板＋無外層軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定色名完全一致（無 hex 可對照） |
| 09 | 胸飾與家紋唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；長髮紮起收於身後、身體輪廓完全可見；正面＋左側兩視圖；雙手未交握 |
