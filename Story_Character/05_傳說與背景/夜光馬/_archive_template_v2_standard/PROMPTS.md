# 夜光馬 Nightglow Horse — Image Generation Prompts (NON-HUMANOID standard package: 00/05/06/07/08/09, no 10)

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（CHARACTER_SPEC.md 尚未填寫「角色版本 ID」欄位；下次改版請補上 `NIGHTGLOW-HORSE-V<n>-<描述>` 格式）

> **兩階段規則（強制）**：第一階段只生成 `00-nightglow-horse-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為 05–09 的 Image 1 身份／解剖唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
>
> **非人形調整說明（§5.3 豁免，逐項回報）**：
> 1. 本角色為四足馬，不適用 A-pose；00/05 全身視圖一律改為「自然站立」的正交視圖。
> 2. 00 號三視圖改為：全身側面（或側前 3/4）自然站立＋頭部特寫＋45° 頭部視圖，取代人形的 A-pose 全身＋正面頭肩＋45° 頭肩組合。
> 3. 不產生第 10 張素體參考圖（SMPL-X 素體規則僅適用人形角色）。
> 4. 第 06 張八表情臉部表不適用馬類臉部肌肉的人類化表情；改為「八種頭部神態」，以耳朵位置、眼神與鼻翼變化呈現，取代原始八種人類表情順序（自然／輕笑／大笑…）。
> 5. 第 07 張服裝細節表不適用（本角色無服裝、無鞍具）；改為「鬃毛／發光體表細節表」，拆解鬃毛與蹄際的自發光構造。
> 6. 第 09 張道具表：CHARACTER_SPEC.md 未載明鞍具（是否配戴克里茲坐騎鞍具屬 `PENDING-USER-INPUT`），故本張不畫鞍具，改為「發光構造拆解」，展示鬃毛／蹄際微光的光效剖面與奔馳流光的效果研究圖。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（本批次為非人形六表包，無 01–04、無 10）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-nightglow-horse-character-identity-anchor.png` | 身份母圖：全身側面自然站立＋頭部特寫＋45° 頭部視圖，零道具 |
| 05 | `05-nightglow-horse-four-view-master.png` | 四視圖總表（正面→左→右→背），同一自然站立姿態，零道具 |
| 06 | `06-nightglow-horse-head-state-sheet.png` | 八種頭部神態表，4×2 網格（取代人類八表情） |
| 07 | `07-nightglow-horse-mane-glow-detail-sheet.png` | 鬃毛／發光體表細節表（取代服裝細節表） |
| 08 | `08-nightglow-horse-color-material-sheet.png` | 色票／材質表（色名鎖定，SPEC 無 hex） |
| 09 | `09-nightglow-horse-glow-construction-sheet.png` | 發光構造拆解表（無鞍具，取代道具表） |

---

## 00 — `00-nightglow-horse-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-creature identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Creature definition:
A tall, powerful steed - Kritz's mount. CANON anatomy: a tall and strongly-built horse with an entirely dark coat, whose mane and hooves emit a faint night-glow (a soft cool luminescence from the mane strands and around the hooves), and which trails a streak of light when it runs; agile and built for the sprint of rooftop and city combat. A sleek muscular horse with balanced proportions and strong legs, a robust head with a dark mane and a calm gaze, a dark long tail that may carry the same faint glow. Real materials: a natural horse coat (deep black-to-charcoal hair) with a self-luminous mane and hooves; no armor, no gemstones, no metal barding, no cloth, no saddle or tack anywhere on the animal. Palette: deep black-to-charcoal coat dominant, with a locked silver-blue faint glow (a cool cyan-white leaning silver-blue luminescence) on the mane and hooves. In this static anchor the running light-streak may be suggested by the faint mane and hoof glow; a full motion trail is not required.

Body metrics:
No numeric height or head-ratio is canon for this creature (equine anatomy is not measured in human head-units). Render as a tall, powerfully built, agile sprint-type horse consistent with the CANON description. Fully symmetric anatomy; no locked left-right asymmetric feature.

Kinship invariants:
none.

Primary request:
Design one new and visually distinct CREATURE from the written specification. This is a NON-HUMANOID quadruped, so the standard A-pose does not apply; use natural standing poses instead. Create an identity-anchor sheet containing exactly three views of the SAME horse — all three are mandatory; missing any view = REJECT:
1. one full-body side (or three-quarter) view of the horse in a natural, relaxed standing pose, all four legs visible, weight evenly distributed, not rearing or in motion;
2. one large head-and-neck close-up study showing the head, mane, eye and calm gaze;
3. one 45-degree head study showing the head from a three-quarter angle, including a hoof detail inset showing the faint glow (for video-generation reference).
Suggested layout: full-body standing view on the left ~50% of the canvas, head-and-neck close-up top-right, 45-degree head study with hoof-glow inset bottom-right. All three views must have identical anatomy, coat color, mane form and glow placement. The head-and-neck close-up is the anatomy identity authority for later generations. No human, no rider, no saddle or tack, no scale-comparison figure anywhere.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, precise material separation between natural coat and the self-luminous glow effect, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, rider, human, person, saddle, tack, bridle, reins, wings, unicorn horn, single horn, cartoon pony, chibi pony, cute pony, pastel coat, white coat, light coat, armor, gemstones, metal barding, cloth barding, rearing pose, galloping pose, jumping pose, reference character face, copying any style-image character, blending the three reference characters, humanoid character copying

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (tall powerful build, entirely dark coat, faint night-glow on mane and hooves, light streak when running suggested by the glow).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details (e.g. no saddle/tack version is decided here).
- Anatomy only: no saddle, tack, bridle, reins, armor, gemstones or barding of any kind. No human, rider or scale-comparison figure.
- Flat even ambient lighting, no cast shadows, no strong highlights beyond the described glow effect, no rim light.
- Neutral presentation, plain warm light-gray background, no scene or narrative action beyond the standing/study poses.
- No text, labels, logo, signature or watermark.
- Exactly one creature identity shown three times; no anatomy drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 05 — `05-nightglow-horse-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet (natural standing pose, non-humanoid)

Input images:
- Image 1: the approved 00-nightglow-horse-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of the Nightglow Horse containing four full-body orthographic views of the SAME horse in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same natural, relaxed standing pose (this is a non-humanoid quadruped; the A-pose rule does not apply): all four legs visible and weight evenly distributed, not rearing, not in motion, identical head height and body scale, true orthographic projection.

Identity invariants:
All four figures are the identical horse from Image 1: same entirely dark black-to-charcoal coat, same mane form with the silver-blue faint glow, same calm head and gaze, same build. Head-top line and ground/hoof line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
No numeric height or head-ratio is canon; render as the same tall, powerfully built, agile sprint-type horse in all four views, identical scale throughout.

Kinship invariants:
none.

Anatomy invariants:
Every view shows the identical coat, mane and tail from Image 1: deep black-to-charcoal coat, self-luminous mane with silver-blue glow (back view must clearly show the mane falling along the neck and the tail from behind), faint silver-blue glow around the hooves in every view. No saddle, tack, bridle, reins, armor or gemstones anywhere.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, precise material separation between natural coat and the self-luminous glow effect, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, rider, human, person, saddle, tack, bridle, reins, wings, unicorn horn, cartoon pony, chibi pony, pastel coat, white coat, light coat, armor, gemstones, metal barding, cloth barding, rearing pose, galloping pose, jumping pose, inconsistent scale between views, different height per view, mismatched coat between views, reference character face, copying any style-image character, blending the three reference characters, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved anatomy from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same scale, same proportions, true orthographic projection in every view. Natural standing pose in all four views (no A-pose; non-humanoid quadruped).
- Anatomy only; zero props, zero tack; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-nightglow-horse-head-state-sheet.png`（STAGE 2 — 八種頭部神態表，取代八表情）

> **調整說明**：馬類臉部肌肉無法呈現人類的「輕笑」「大笑」等表情，故本張以耳朵位置、眼神開闔與鼻翼變化構成八種頭部神態，取代原始八種人類表情順序，構圖規則（4×2 網格、純白背景、同一鏡頭距離與角度）維持不變。

```text
Use case: identity-preserve
Asset type: professional eight-head-state anime creature study sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the creature's anatomy, coat, mane and glow-color reference (the approved 00-nightglow-horse-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose the Nightglow Horse into standardized head-and-neck studio studies. Create exactly eight head-and-neck portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use the same head angle and framing (a consistent three-quarter or straight-on head-and-neck framing, chosen once and kept identical across all eight panels). Crop from just below the neck/mane base to slightly above the top of the head/ears. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same horse in all eight portraits. Preserve the identical entirely-dark coat and mane, the silver-blue mane glow, the same head shape, neck proportions and camera framing. Use the same lighting, color grading and head angle in every panel. Only the ear position, eye openness/gaze and nostril/muzzle tension may change to convey a different head state.

Kinship invariants:
none.

Head-state order, left to right and top to bottom (substituting for the standard eight human expressions):
1. calm neutral gaze, ears relaxed and neutral
2. ears pricked forward, alert and curious
3. ears pinned back, wary and tense
4. eyes wide, nostrils flared, startled
5. eyes half-lidded, relaxed and drowsy
6. nostrils flared, muzzle tense, snorting - determined/aggressive equivalent of anger
7. head lowered slightly, eyes soft and downcast - somber equivalent of sadness
8. one eye softly half-closed, ear turned toward viewer, gentle and playful - wink equivalent

Style:
Refined Japanese anime fantasy creature design, professional production study sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes, mane strands and glow rendering, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight head-and-neck studies and a 4x2 grid. Same head angle and framing in every panel. No full body, no rider, no saddle/tack, no zoomed-out composition. No different animal, altered coat, changed mane form, inconsistent lighting, inconsistent crop, inconsistent scale or extra accessories.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different animal, different coat color, different mane form, costume redesign, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, rider, human, person, saddle, tack, bridle, reins, zoomed out, long shot, medium shot, different composition, inconsistent lighting, inconsistent color grading, wings, unicorn horn, cartoon pony, pastel coat, white coat, armor, gemstones, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters
```

---

## 07 — `07-nightglow-horse-mane-glow-detail-sheet.png`（STAGE 2 — 鬃毛／發光體表細節表，取代服裝細節表）

> **調整說明**：本角色無服裝、無鞍具，故第 07 張不採用「外層拆解」規則，改為鬃毛與蹄際自發光構造的細節拆解表，展示這些部位在近距離下的材質與光效表現，供 3D 貼圖與骨骼綁定參考。

```text
Use case: identity-preserve
Asset type: anatomy and glow-surface construction detail sheet

Input images:
- Image 1: the approved 00-nightglow-horse-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional anatomy/material construction sheet for the Nightglow Horse's coat, mane and glow surfaces, organized as callout panels on one sheet:
1. Mane strand close-up: individual mane strands showing the natural dark hair blending into the silver-blue self-luminous glow at the strand tips/roots.
2. Hoof glow close-up: a single hoof from a low angle showing the faint silver-blue glow radiating from around the hoof against the dark coat.
3. Tail detail: the dark long tail showing whether/how the same faint glow is present along its length.
4. Coat texture patch: a close-up of the plain dark-black-to-charcoal body coat texture (no markings, no white patches).
5. Head/muzzle detail: eye, nostril and ear texture close-up for rigging reference.

Identity invariants:
All panels depict the same creature's anatomy from Image 1; no full-body panel is required on this sheet.

Anatomy invariants:
Exact colors and materials: deep black-to-charcoal natural coat, silver-blue self-luminous glow on mane and hooves only (and optionally the tail tip, consistent with Image 1). No armor, no gemstones, no tack, no cloth of any kind.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting except within the glow-detail panels where the described luminescence is visible, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production anatomy sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, precise material separation between natural coat hair and self-luminous glow effect, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different coat, coat redesign, random accessories, extra character, rider, human, saddle, tack, armor, gemstones, cast shadows, strong highlights beyond glow, rim light, reference character anatomy, copying any style-image character

Constraints:
- Preserve the exact approved coat/mane/glow from Image 1; Images 2-4 are style only.
- No costume-layer breakdown (this creature has no costume); focus on coat, mane and glow surfaces only.
- No human, rider, tack or weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-nightglow-horse-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-nightglow-horse-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for the Nightglow Horse: a medium-size natural-standing full-body figure (anatomy only, no tack) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color (color names only - no hex codes are canon for this creature):
- deep black-to-charcoal (main coat)
- silver-blue (mane and hoof self-luminous glow)
Each swatch pairs a flat color block with a small material patch showing how that surface reads (natural coat hair texture vs. the soft cool self-luminous glow effect).

Identity invariants:
The reference figure is the identical creature from Image 1; same coat, mane, build.

Anatomy invariants:
Exact coat and glow from Image 1; no redesign; NO tack or armor anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only).

Positive style prompt:
refined Japanese anime fantasy creature design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for natural coat hair and self-luminous glow, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, coat redesign, rider, human, saddle, tack, armor, gemstones, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked palette exactly (color names above); hue drift = reject. No hex codes are invented; use color-name matching only.
- Anatomy only; zero tack, zero armor; flat lighting.
- No text or watermark.
```

---

## 09 — `09-nightglow-horse-glow-construction-sheet.png`（STAGE 2 — 發光構造拆解表，無鞍具，取代道具表）

> **調整說明**：CHARACTER_SPEC.md 未載明鞍具設定（配戴克里茲坐騎鞍具屬 `PENDING-USER-INPUT`），故本張不畫鞍具。依規則改放「發光構造拆解」，以構造圖／效果研究呈現鬃毛與蹄際的自發光原理及奔馳流光效果，供特效與材質貼圖參考；不含任何角色、人物剪影或騎乘裝備。

```text
Use case: stylized-concept
Asset type: glow-effect construction and breakdown sheet (no tack; effect study only)

Input images:
- Image 1: the approved 00-nightglow-horse-character-identity-anchor.png — use ONLY to match the coat-and-glow material language; do not depict the full creature.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a construction/effect-study sheet for the Nightglow Horse's bioluminescent glow, since no saddle or tack is canon for this creature:
1. Glow cross-section diagram: an exploded or cross-section illustration showing how the silver-blue glow emanates from within individual mane strands (a soft inner-to-outer light gradient study), not a physical object.
2. Hoof-glow underside study: a close-up diagram of a single hoof from below/behind showing the glow radiating around its base against the ground.
3. Running light-streak effect study: an abstract light-trail/streak graphic showing how the glow elongates into a trailing streak of light when the horse runs, shown as a standalone lighting/VFX reference graphic (no horse body required in this panel).

Props/construction only: no full-body creature, no rider, no human, no saddle, no tack, no scale-comparison figure anywhere in this sheet (aside from the small glow-source callouts described above, which may include a partial mane-strand or hoof fragment purely to anchor the effect study).

Composition:
Clean production-sheet layout on a dark or neutral background as appropriate for legibility of the glow effect, panels evenly arranged, no text labels.

Positive style prompt:
refined Japanese anime fantasy VFX design, professional production effect-breakdown sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise self-luminous glow rendering, silver-blue cool light effect, low-contrast neutral background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body creature, rider, human, person, saddle, tack, bridle, reins, character scale inset, wrong palette, neon colors, warm-colored glow, gold glow

Constraints:
- No saddle or tack is depicted anywhere (not canon for this creature); this sheet is a construction/effect study, not equipment.
- Match the locked silver-blue glow color exactly; no other glow hues.
- No full creature body, no human, no rider. No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09。本角色無 10 號素體圖（非人形豁免）。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 頭部與馬體輪廓與 00 號正本一致（06–08 的頭部面板亦同）
- [ ] 鬃毛形態與銀藍夜光位置一致
- [ ] 體型比例：高大健壯、敏捷衝刺型體格與 00 一致（無 SPEC 數值可對照，僅比對相對比例）
- [ ] 毛色未漂移：通體深黑—深炭，無白斑
- [ ] 左右位置正確：全對稱設計，無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移（對照 08：深黑—深炭毛色／銀藍夜光）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、自然站立姿態、零鞍具、平光）全部滿足
- [ ] 血緣相似：不適用（本角色無血緣親屬）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（全身側面自然站立＋頭部特寫＋45° 頭部視圖），缺一即 REJECT；無人類、無鞍具 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、自然站立姿態、頭頂線與蹄底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、僅耳朵／眼神／鼻翼等頭部神態改變，非人類表情 |
| 07 | 鬃毛拆解面板＋蹄際發光細節必須存在，無服裝相關內容 |
| 08 | 色票方塊與鎖定色名（深黑—深炭／銀藍）完全一致 |
| 09 | 無鞍具；僅發光構造拆解與效果研究圖；無角色、無人物剪影 |
