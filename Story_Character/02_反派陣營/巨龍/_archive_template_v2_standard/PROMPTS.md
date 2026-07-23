# 巨龍 Dragon — Image Generation Prompts（v2 STANDARD package, 非人形調整版：00, 05–09；不含 01–04 單視圖、不含 10 素體圖）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：待 SPEC v2 補**（`CHARACTER_SPEC.md` 未給出格式化版本 ID；本角色為戰略級巨獸，無服裝版本 N/A）

> **非人形豁免聲明（依規範 §5.3 與本次任務指示）**：巨龍為四足有翼巨獸，不適用 A-pose，改用「自然站立正交視圖」；不產 10 號素體圖（無人形骨架可供 SMPL-X 擬合）。本套件僅六表：00、05、06、07、08、09。
> - **00 三視圖調整**：改為「全身側面／四分之三自然站立視圖」＋「頭部特寫（正面）」＋「45° 頭部視圖」，缺一即 REJECT。
> - **06 表情表調整**：巨獸無人類臉部表情；本表改為「八格頭部威嚇狀態表（head-state / threat-display sheet）」，維持 4×2 網格與固定順序，但以巨獸的自然反應對應原八表情語意（見 06 條目說明），非人類笑容。
> - **07 服裝表調整**：SPEC 載明巨獸無服裝（N/A）；本表改為「體表鱗甲／特殊部位細節表」，呈現不同身體部位的鱗甲與翼膜材質細節，取代服裝拆解。
> - **09 道具表調整**：巨獸自身即戰略兵器（利齒、利爪、龍息），無外部武器或飾品；本表呈現角、齒、爪與龍息光效的獨立解剖／效果構造研究，非傳統「道具」。

> **兩階段規則（強制）**：第一階段只生成 `00-dragon-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為 05–09 的 Image 1 解剖唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-dragon-character-identity-anchor.png` | 身份母圖：自然站立全身側／四分之三視圖＋正面頭部特寫＋45° 頭部視圖，零人類／騎手 |
| 05 | `05-dragon-four-view-master.png` | 四視圖總表（正面→左→右→背），自然站立正交視圖，零人類／騎手 |
| 06 | `06-dragon-head-state-sheet.png` | 八格頭部威嚇狀態表，4×2 網格（取代人類表情表） |
| 07 | `07-dragon-scale-surface-detail-sheet.png` | 體表鱗甲／翼膜／特殊部位細節表（取代服裝細節表） |
| 08 | `08-dragon-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-dragon-anatomy-construction-sheet.png` | 角／齒／爪解剖拆解＋龍息光效構造研究（取代道具表） |

---

## 00 — `00-dragon-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-creature identity anchor sheet (three views, non-humanoid quadruped)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Creature definition:
A colossal strategic-weapon war-beast dragon. CANON anatomy: its body length far exceeds an ordinary dragon - its wingspan is wide enough to span an entire street, forming an extreme size contrast with humans; a black-to-dark-purple scaled hide covers the whole body with a cold metallic sheen; it is capable of a destructive breath weapon that, when it dives through the clouds, draws a vast line of light across the night sky and can light up the whole sky - the breath-light color is locked as a searing gold-white. DESIGN-PROPOSAL anatomy: a huge quadruped winged dragon with a long powerful neck and long tail, a thick muscular torso, immense membranous wings on strong wing-bones with semi-translucent membrane, a draconic head with sharp horns, bared fangs and a cold fierce gaze, strong legs with tearing claws. Real materials only: a black-to-dark-purple scaled hide with a cold half-metallic sheen, plus semi-translucent membranous wings on strong wing-bones; NO cloth, NO gemstones, NO metal armor plating, NO saddle or harness anywhere on the beast, NO rider.

Body metrics:
Colossal strategic-weapon scale - explicitly not given a numeric height/length in the written spec; render it as an extreme-scale quadruped winged dragon, clearly far larger than any human figure would be, without including a human or scale-comparison figure in this sheet.

Kinship invariants:
Not applicable - no kin relations for this creature.

Primary request:
Design one new and visually distinct CREATURE from the written specification. Create a creature identity-anchor sheet containing exactly THREE views of the SAME dragon - all three are mandatory, the sheet is invalid if any view is missing:
1. one full-body side or three-quarter view showing the whole colossal winged silhouette in a natural, calm standing stance on all four legs (NOT an A-pose - this creature has no human arms), wings folded/resting naturally against the body, tail resting on the ground or gently curved, head held level and alert;
2. one large straight-on head close-up (head, horns, fangs, eyes and scale texture);
3. one 45-degree head view (for video-generation reference).
All three views must have identical anatomy, scale texture, horn shape, wing structure and colors. The straight-on head close-up is the anatomy identity authority for later generations. No human, no rider, no scale-comparison figure anywhere.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds the full-body natural-stance view, entire creature head-to-tail inside frame. Right ~45% is split between the large straight-on head close-up and the 45-degree head view. Identical creature across all panels - no anatomy drift.

Style:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, human, person, rider, cute dragon, small dragon, baby dragon, chibi dragon, mechanical dragon, mecha dragon, robot, pastel scales, neon scales, saddle, harness, armor plating, gemstones, jewelry, cloth barding, reference character face, copying any style-image character, blending the three reference characters, humanoid character copying, holding weapon, weapon in hand, action pose, battle stance, dynamic pose, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (colossal size, street-spanning wingspan, black-to-dark-purple scaled hide, destructive breath drawing a vast searing gold-white line of light).
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details (exact horn count/shape and membrane hue stay close to the description above without over-specifying).
- Natural calm standing stance only - no A-pose (this creature has no human arms), no action pose.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- No human, rider, miniature person or scale-comparison figure anywhere.
- No text, labels, logo, signature or watermark.
- Exactly one creature identity shown three times; no anatomy drift between the three views. Missing any of the three views = invalid sheet.
```

---

## 05 — `05-dragon-four-view-master.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet (non-humanoid quadruped)

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of the dragon containing four full-body orthographic views of the SAME creature in this exact left-to-right order: FRONT (0 degrees), LEFT profile (90 degrees), RIGHT profile (90 degrees), BACK (180 degrees). All four views use the exact same natural, calm standing stance on all four legs (no A-pose - this creature has no human arms): wings folded/resting naturally against the body, tail resting or gently curved, head level and alert, identical height, proportions and stance in every view, true orthographic projection, no action pose.

Identity invariants:
All four figures are the identical creature from Image 1: same head shape, horns, fangs, eyes, scale texture and pattern, wing structure, tail length. Head-top line and ground-contact line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
Not applicable.

Body metrics:
Colossal strategic-weapon scale, consistent proportions across all four views; no human or scale-comparison figure included.

Costume invariants:
Not applicable - no costume. Every view shows the identical bare anatomy from Image 1: black-to-dark-purple scaled hide with a cold metallic sheen, semi-translucent membranous wings, no armor, no saddle, no harness, no gemstones.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, human, person, rider, cute dragon, small dragon, baby dragon, chibi dragon, mechanical dragon, saddle, harness, armor plating, gemstones, cloth barding, inconsistent scale between views, different size per view, mismatched anatomy between views, reference character face, copying any style-image character, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved anatomy from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left, right, back. Same size, same proportions, true orthographic projection, natural standing stance in every view.
- No costume, no armor, no props; flat lighting.
- No human, rider or scale-comparison figure. No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-dragon-head-state-sheet.png`（STAGE 2 — 八格頭部威嚇狀態表，取代人類表情表）

```text
Use case: identity-preserve
Asset type: professional eight-panel creature head-state / threat-display sheet (non-human analogue of an expression sheet)

Input images:
- Image 1: use only as the creature identity, head shape, horn and color reference (the approved 00-dragon-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose the dragon's head into standardized close-up studio studies. Create exactly eight head studies arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every panel must use a straight-on front view at 0 degrees. Crop from just below the neck/throat to slightly above the top of the horns. The head must occupy approximately 70-75 percent of each panel. Since this is a non-human creature, each panel shows a natural head-state / threat-display analogous to the eight human expressions below, NOT a human smile.

Identity invariants:
Keep exactly the same creature in all eight panels. Preserve the identical head shape, horn shape and count, scale texture and pattern, eye color and neck-base proportions. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the jaw, eyes and head-state may change.

Kinship invariants:
Not applicable.

Head-state order, left to right and top to bottom (creature analogue of the eight standard expressions):
1. neutral -> calm, alert, half-lidded watchful gaze, jaws closed
2. gentle smile -> relaxed, jaws closed, eyes softly narrowed
3. broad smile with visible teeth -> jaws parted, fangs bared in a menacing grin
4. joyful open laughter -> jaws wide open, head tilted back as if roaring
5. surprised -> eyes wide open, head snapped up, alert
6. angry -> low guttural snarl, brow ridges lowered, fangs fully bared
7. sad -> head lowered, eyes half-closed, subdued
8. wink -> one eye closed, the other eye sharp and predatory

Style:
Refined Japanese anime fantasy creature design, professional production head-state sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes, horns and scale texture, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art.

Hard constraints:
Exactly eight panels and a 4x2 grid. Straight-on 0-degree view only. Head-and-neck close-up only. No full body, no human face, no human expression mapped onto a human mouth shape - the mouth/jaw must remain draconic in every panel. No different creature, altered horn shape, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different creature, human face, human mouth, human teeth, costume, random accessories, duplicate creature, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, long shot, medium shot, different composition, changed horn shape, changed scale pattern, profile, side view, three-quarter view, head turned, tilted beyond specified state, inconsistent lighting, inconsistent color grading, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, rider, saddle, harness
```

---

## 07 — `07-dragon-scale-surface-detail-sheet.png`（STAGE 2 — 體表鱗甲／特殊部位細節表，取代服裝細節表；SPEC 明載無服裝）

```text
Use case: identity-preserve
Asset type: creature body-surface (scale and membrane) detail sheet, replacing the costume detail sheet since this creature has no clothing per CANON

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional body-surface construction sheet for the dragon, since it wears no costume, presenting several clean close-up studies of its scales and membrane as they appear on Image 1:
1. Chest/throat scale detail: dense, overlapping black-to-dark-purple scales with a cold metallic sheen.
2. Dorsal spine ridge detail: raised ridge scales along the back and neck.
3. Wing membrane weave detail: the semi-translucent membrane structure between wing-bones, showing how light passes through it.
4. Tail scale tapering detail: how the scale size and pattern narrow toward the tail tip.
5. Belly/underside scale detail: softer, slightly lighter-toned scales on the underside.
6. Leg and claw-joint scale detail: thicker, more armored-looking scales at the joints.

Identity invariants:
This is a body-surface study; do not introduce a different creature. Any partial-anatomy fragment shown must match Image 1's colors, materials and scale pattern exactly. No full-body panel is required.

Costume invariants:
Not applicable - no clothing exists on this creature. All studies show bare anatomy only: black-to-dark-purple scaled hide, cold metallic sheen, semi-translucent wing membrane. No armor, no saddle, no harness, no cloth, no gemstones anywhere.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature-surface sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, costume, clothing, armor, saddle, harness, gemstones, cloth barding, different anatomy, extra creature, full-body pin-up, human, rider, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved anatomy from Image 1; Images 2-4 are style only.
- No costume exists for this creature; do not invent clothing or armor.
- No weapons, no human, no rider on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-dragon-color-material-sheet.png`（STAGE 2 — 色票／材質表）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for the dragon: a medium-size natural-stance full-body figure (creature only, no rider, no props) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color, named by color (no hex, none locked in SPEC):
- black-to-dark-purple (primary scaled hide)
- dark-purple-to-dark-red (wing membrane)
- searing gold-white (breath-weapon glow, locked)
- cold gray-black (horn and claw keratin)
Each swatch pairs a flat color block with a small material patch showing how that surface reads (cold half-metallic scale sheen, semi-translucent membrane, glowing breath light, hard keratin horn/claw surface).

Identity invariants:
The reference figure is the identical creature from Image 1; same head shape, horns, scale pattern, proportions.

Costume invariants:
Not applicable - no costume; no redesign of the bare anatomy; no props.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, no hex codes).

Positive style prompt:
refined Japanese anime fantasy creature design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for scale, membrane and glow effects, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, hex codes, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon pastel colors, costume, armor, gemstones, human, rider, cast shadows, rim light, extra creature, copying any style-image character

Constraints:
- Colors must match the described name-based palette exactly (no invented hex codes); hue drift = reject.
- Creature only; zero props, zero costume; flat lighting.
- No text or watermark.
```

---

## 09 — `09-dragon-anatomy-construction-sheet.png`（STAGE 2 — 角／齒／爪解剖拆解＋龍息光效研究，取代道具表；巨獸自身即武器，非外部道具）

```text
Use case: stylized-concept
Asset type: anatomical construction and effect-study sheet (the dragon's own body IS its weapon - teeth, claws, breath - so this replaces a conventional prop sheet)

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png — use ONLY to match scale/keratin material language; do not depict the full creature body.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create an anatomy-and-effect construction sheet covering four isolated studies at consistent scale, with NO full creature body shown:
1. Horn cluster close-up: front, side and back studies of the horn structure and how it seats on the skull.
2. Jaw and fang structure: an isolated open-jaw study showing the fang arrangement and bite structure.
3. Claw structure: an isolated close-up of one forelimb's claws, showing the tearing hook shape and keratin texture.
4. Breath-weapon light-effect study: an isolated glowing-light concept study of the searing gold-white breath energy (a light burst / beam study, not attached to a full head or body silhouette).

Anatomy studies only: no full-body creature, no human figure, no rider, no scale-comparison figure anywhere. Isolated anatomical fragments and one light-effect study only.

Composition:
Clean production-sheet layout on warm light-gray background, the four studies grouped clearly, consistent scale, balanced negative space, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy creature-anatomy design, professional production anatomy sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise keratin, fang and glow-effect rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body creature, human, rider, character scale inset, saddle, harness, armor, gemstones, cloth, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet documents isolated anatomical structures and the breath-weapon light effect only; no full creature body.
- Match the locked palette exactly by color name (black-to-dark-purple scale, searing gold-white breath glow); no invented hex.
- No human, rider or full creature silhouette. No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 05 → 06 → 07 → 08 → 09。本角色**不產 10 號素體圖**（非人形，無 SMPL-X 骨架適用性）。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 頭部形狀與解剖身份與 00 號正本一致
- [ ] 鱗甲色澤（深黑至暗紫、冷金屬光澤）一致
- [ ] 角形、齒列、爪型與 00 號一致
- [ ] 翼膜結構（半透明、翼骨）與 00 號一致
- [ ] 色票未漂移（深黑至暗紫鱗甲／暗紫暗紅翼膜／熾亮金白龍息光效）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、自然站立、零人類騎手、平光）全部滿足

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（全身自然站立側／四分之三視圖＋正面頭部特寫＋45° 頭部視圖），缺一即 REJECT；無人類、無騎手 |
| 05 | 順序正面→左→右→背；四視圖同尺寸、同比例、自然站立姿態一致 |
| 06 | 恰好 8 格 4×2、順序正確（頭部威嚇狀態取代人類表情）、頭部形狀與角維持一致 |
| 07 | 六個體表部位（胸喉／背脊／翼膜／尾部／腹部／關節）鱗甲細節齊全，無服裝出現 |
| 08 | 色票方塊與名稱化色票完全一致 |
| 09 | 角／齒／爪解剖拆解與龍息光效研究唯一出現於此；無角色全身照、無人類、無騎手 |
