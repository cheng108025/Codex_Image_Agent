# 蕾瓦娜斯 Revanas — Image Generation Prompts（v2 STANDARD package: 00, 05–10；不含 01–04 單視圖）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（`CHARACTER_SPEC.md` 現行文字版造型——洞穴受囚版破布衣、深色角、無尾——已被 2026-07-22 的視覺正本覆寫；見下方「視覺正本覆寫」說明。本檔全部七條提示詞改依核准的實際外觀撰寫，不套用舊文字設定。）

> **視覺正本覆寫（沿用既有 README.md／舊版 PROMPTS.md 覆寫聲明）**：本角色已有核准的四視圖 `05-revanas-four-view-master.png` 及既有 01–09 正式圖，它們是臉、髮型、角、翅膀、尾巴、服裝、配色與材質的唯一權威。本次重寫的 00（新增，供未來重生成使用）與 10（新增素體圖）必須與既有 05–09 的實際外觀完全一致：銀白長髮（下段轉亮青藍）、尖耳、雙眼皆為冰藍色（非異色瞳）、一對藍紫半透明水晶長角、一對大型銀藍半透明龍翼、一條銀白鱗尾且尾尖為水晶尖刺、白銀冰晶戰甲式禮服＋水晶高跟鞋。舊 `CHARACTER_SPEC.md` 所載「破舊囚服、手腕殘鏈、深色角、無尾」等文字設定於本圖包**不得使用**。

> **兩階段規則（強制）**：00 為本次新增的身份基準圖，理論上仍先生成、停止等待核准；但因本角色已有核准的 05 四視圖為實際身份正本，00 生成時必須以 05/06/07/08/09 現有畫面為準（而非憑空設計新角色）。05–09 若需要重生成，一律先過與既有 PNG 的一致性驗收；10 為全新項目，核准後才視為补充正本的一部分。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-revanas-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具（依既有 05–09 實際外觀撰寫） |
| 05 | `05-revanas-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具（既有正本，本提示詞供未來重生成參考） |
| 06 | `06-revanas-expression-sheet.png` | 八表情臉部表，4×2 網格（既有正本） |
| 07 | `07-revanas-costume-detail-sheet.png` | 服裝細節表（含拆解面板與無外層軀幹視圖）（既有正本） |
| 08 | `08-revanas-color-material-sheet.png` | 色票／材質表（既有正本） |
| 09 | `09-revanas-props-construction-sheet.png` | 道具／特殊構造表：角、翼、尾之解剖拆解＋墜飾（既有正本；角／翼／尾為身體構造非服裝） |
| 10 | `10-revanas-body-reference-sheet.png` | 素體參考圖（新增；保留角／翼／尾等身體構造，摺翼以免遮擋軀幹輪廓） |

---

## 00 — `00-revanas-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: existing-character identity anchor sheet (regenerated to match the already-approved reference sheet)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Revanas, a slender elegant fantasy female with a crystalline-dragon motif. CANON identity (matches the already-approved reference sheet, overriding any older cave-captivity text description): long silver-white straight hair with a graduated icy cyan-blue tint through the lower length, blunt bangs parted to fully expose a pair of tall blue-purple translucent crystal horns that curve backward with layered ice-shard facets, plus a small crystal spike centered on the forehead between the horns; pointed elf ears; both eyes are a matching clear ice-blue (NOT heterochromia); calm, composed, faintly aloof expression. A pair of large semi-transparent silver-blue membranous dragon wings attach at the shoulder blades, with crystalline spiky rib struts along the wing bones and an iridescent lavender-blue-white membrane. A long silver-white scaled tail extends from the lower back, ending in a cluster of blue-purple crystal spikes as the tail-tip. Costume: a white-and-silver crystal-armor gown - tall crystal-spike pauldrons on both shoulders, a strapless corseted bodice with a central crystal gem, a crystal-trimmed hip piece over a form-fitting pale under-suit, opera-length crystal-cuffed gloves, crystal thigh guards on both legs with a small dangling crystal drop pendant, crystal ankle guards, and crystal high-heeled open-toe sandals. The back of the costume is open/cutout with scale-textured panels flanking the spine to let the wings emerge. No wrist chains, no ragged cloth, no bare feet - these belong to an obsolete text draft and must NOT appear.

Body metrics:
Height approximately 155 cm. Approximately six-and-a-half to seven heads tall, slender build.

Kinship invariants:
None.

Primary request:
Recreate the identity-anchor sheet for this ALREADY-DESIGNED character so it matches the existing approved reference sheet exactly. Create an identity-anchor sheet containing exactly three views of the same character - all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread), wings folded/half-closed against the back, tail resting beside or behind the legs;
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, horns, eye color, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed crystalline costume construction, precise crystal-facet rendering, layered translucent membrane, polished silver metal and crystal material separation, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heterochromia, mismatched eye colors, dark horns, ragged cloth, torn cave garment, wrist manacles, rusted chains, bare feet, missing tail, missing horns, single horn, third horn, missing wings, single wing, more than one pair of wings, more than one pair of horns, demonic red palette, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, staff, shield, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Match the already-approved reference sheet exactly: silver-white hair with icy cyan-blue lower tint, matching ice-blue eyes, blue-purple crystal horns, silver-blue membranous wings, scaled tail with crystal tip, white/silver crystal-armor gown, crystal high heels.
- Character and costume only: no weapons, no handheld items, no standalone props. All hard construction studies (horns, wings, tail, jewelry) belong exclusively to sheet 09.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 05 — `05-revanas-four-view-master.png`（既有正本；本提示詞供未來重生成參考）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Revanas containing four full-body orthographic views of the SAME character in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, identical height, head-to-body ratio, arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose, wings held folded/half-closed and tail resting naturally in every view.

Identity invariants:
All four figures are the identical character from Image 1: same face, matching ice-blue eyes, pointed ears, silver-white hair with icy cyan-blue lower tint, blue-purple crystal horns, silver-blue membranous wings, scaled tail with crystal tip. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height approximately 155 cm. Approximately six-and-a-half to seven heads tall, slender build.

Costume invariants:
Every view wears the identical white-and-silver crystal-armor gown from Image 1: crystal-spike pauldrons, strapless corseted bodice with a central crystal gem, crystal-trimmed hip piece, opera-length crystal-cuffed gloves, crystal thigh guards with dangling crystal pendant, crystal ankle guards, crystal high-heeled sandals; open/cutout back with scale-textured panels around the wing roots. Same accessory count, positions, colors and materials in all four views. No weapons anywhere.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed crystalline costume construction, precise crystal-facet rendering, layered translucent membrane, polished silver metal and crystal material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, heterochromia, mismatched eye colors, dark horns, ragged cloth, wrist manacles, missing tail, missing horns, missing wings, single wing, single horn, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, staff, shield, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-revanas-expression-sheet.png`（既有正本；八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, horns, ear and color reference (the approved 00-revanas-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Revanas into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the horns. The head (with horns) must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, matching ice-blue eyes, pointed ears, silver-white hair with icy cyan-blue lower tint and its bangs parted around the horns, the pair of blue-purple crystal horns, and the visible crystal-pauldron/collar edge of the costume. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, changed horns, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, heterochromia, mismatched eye colors, dark horns, missing horns, single horn, third horn, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand
```

---

## 07 — `07-revanas-costume-detail-sheet.png`（既有正本；服裝細節表，含拆解與無外層軀幹視圖）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Revanas's white-and-silver crystal-armor gown, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the tall crystal-spike pauldrons drawn SEPARATELY as detachable shoulder pieces, AND one torso view of the corseted bodice WITHOUT the pauldrons and WITHOUT the crystal hip piece so the base body silhouette and collarbone/hip line are fully visible.
2. Corset bodice front detail: the central crystal gem and scale-textured trim.
3. Opera-length glove and crystal-cuff close-ups.
4. Crystal thigh-guard and dangling crystal-pendant detail on both legs.
5. Crystal ankle-guard and high-heeled sandal detail.
6. Back panel: the open/cutout scale-textured back with the wing-root attachment area (wings themselves belong to sheet 09).

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin may appear at the open-back, thigh and shoulder edges only as needed. No full standalone face portrait panels.

Costume invariants:
Exact colors and materials as Image 1: pearl-white and cool-silver crystal armor, icy-blue-to-lavender crystal facets, pale under-suit. Same construction as Image 1; no redesign; no weapon anywhere.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed crystalline costume construction, precise crystal-facet rendering, polished silver metal separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The pauldron separation panel and the pauldron-and-hip-piece-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-revanas-color-material-sheet.png`（既有正本；色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Revanas: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a set of large clean color swatches with material rendering patches for each locked color/material named by color, not hex:
- pearl-white (armor base)
- cool metallic silver (armor trim)
- icy cyan-blue (hair lower tint / wing membrane)
- pale sky-blue (wing membrane)
- lavender-violet (crystal facets)
- soft peach (skin tone)
- cool silver scale (tail and back-panel scale texture)
Each swatch pairs a flat color block with a small material patch showing how that surface reads (crystal facet sparkle, translucent membrane, scale texture, polished metal sheen).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, horns, eyes, proportions (approximately 155 cm, six-and-a-half to seven heads).

Costume invariants:
Exact costume from Image 1; no redesign; no weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, no hex codes).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for crystal, membrane, scale and polished metal, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, hex codes, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the already-approved reference exactly by name (no invented hex codes); hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-revanas-props-construction-sheet.png`（既有正本；角／翼／尾解剖拆解＋墜飾，非服裝）

```text
Use case: stylized-concept
Asset type: prop and anatomical-construction sheet (props and body-structure studies only)

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png — use ONLY to match crystal/material language; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-and-structure construction sheet covering three groups at consistent scale:
1. Horn structural studies: the pair of blue-purple crystal horns shown from front, side and back, illustrating the layered ice-shard facets and how they seat on the head, plus the small forehead crystal spike between them.
2. Wing structural studies: the pair of silver-blue membranous wings shown folded and fully spread, with a close attachment study of the wing root at the shoulder blade, illustrating the crystalline rib struts and the iridescent translucent membrane.
3. Tail structural studies: the long scaled tail shown in a resting curve and an extended pose, with a close-up of the crystal-spike tail-tip cluster and the scale texture along its length.
4. Jewelry: the small dangling crystal drop pendant/hair ornament and the small circular pendant charm, shown enlarged with material detail.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain the wing-root or tail-root attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, the four groups grouped clearly, consistent scale, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop and anatomy design, professional production construction sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise crystal-facet and membrane rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, weapon, sword, wrong palette, neon colors, cast shadows, rim light, mismatched pair, more than one pair of horns, more than one pair of wings, missing tail

Constraints:
- This sheet is the ONLY place the detailed horn/wing/tail anatomical construction and jewelry appear at this scale.
- Match the already-approved palette exactly (name-based colors, no invented hex).
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-revanas-body-reference-sheet.png`（新增；素體參考圖，保留角／翼／尾等身體構造）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-revanas-character-identity-anchor.png and sole identity authority (face, hair, horns, wings, tail, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Revanas WITHOUT the crystal-armor costume - wearing only a plain tight pale bodysuit (form-fitting underlayer, no folds, no crystal armor, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view. Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, true orthographic projection, no contrapposto, no action pose, no T-pose. Her pair of crystal horns, pair of membranous wings and long scaled tail REMAIN visible in both views - they are anatomical body structures, not costume - but the wings must be folded/furled tightly against the back so they do not obscure the torso silhouette. The body silhouette must be fully visible and unobstructed: no armor, no crystal pauldrons, no loose garment; long hair gathered behind the shoulders so it does not cover the torso outline.

Identity invariants:
Same character as Image 1: same face, matching ice-blue eyes, pointed ears, silver-white hair with icy cyan-blue lower tint, the same pair of crystal horns, the same pair of membranous wings (folded), the same scaled tail with crystal tip. The body underneath must be consistent with the costumed figure of the approved sheets: slender, elegant fantasy proportions.

Body metrics:
Height approximately 155 cm. Approximately six-and-a-half to seven heads tall. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, crystal pauldron, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, boots, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, missing horns, missing wings, missing tail, wings spread wide obscuring torso, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Horns, wings (folded) and tail remain visible as anatomy; everything else that is costume is removed.
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09 → 10。
05–09 已有既有正本 PNG；若重生成，先比對既有 PNG 再核准。每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號（或既有 05）正本一致
- [ ] 髮型、髮色（銀白＋下段青藍）一致；雙眼皆為冰藍色，非異色瞳
- [ ] 身材比例：約 155cm／六點五至七頭身
- [ ] 服裝結構與既有正本一致（白銀水晶戰甲式禮服層次、配件位置）
- [ ] 角（一對藍紫水晶）、翼（一對銀藍半透明）、尾（銀白鱗尾＋水晶尾尖）數量與位置正確、未鏡像錯亂
- [ ] 色票未漂移（對照既有 08 色票／材質表；以色名比對，無 hex）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT；與既有 05–09 外觀一致 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變、角完整可見 |
| 07 | 肩甲拆解面板＋無肩甲無髖甲軀幹視圖必須存在 |
| 08 | 色票色名與既有正本材質完全一致 |
| 09 | 角／翼／尾解剖拆解與墜飾唯一出現於此；無角色全身照、無臉、無人物剪影 |
| 10 | 素體無任何服裝／盔甲；角、摺翼、尾保留；身體輪廓完全可見；正面＋左側兩視圖 |
