# 巨龍 Dragon — Image Generation Prompts（新版六張制 01–06，非人形：無 07 身體參考圖）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`DRAGON-V1-STRATEGIC-WAR-BEAST`**（本角色全篇僅此單一型態；無服裝版本 N/A）

> ✅ **辨識關鍵已定案（使用者於 2026-07-23 核准）**
> `CHARACTER_SPEC.md`「辨識關鍵鎖定提案」列出的**角的數量／形狀**與**翼膜色相**是跨鏡頭身份辨識關鍵，兩項均已由使用者核准鎖定為定案值（**2 主角＋6 副棘角（頭骨後緣遞減排列）、翼膜 `#5C1B33`**）。下方 01 號提示詞已採用此定案值，可開始 STAGE 1 生成。

> **非人形豁免聲明（依規範 §5.3）**：巨龍為四足有翼巨獸，不適用 A-pose，01 與 02 的全身視圖改用「自然站立正交視圖」；不產 07 號身體參考圖（無人形骨架可供 SMPL-X 擬合）。本套件為完整 **01–06 六條**提示詞（無 07 號身體參考圖）。
> - **03 頭部狀態表**：巨獸無人類臉部表情；本表改為「八格頭部威嚇狀態表（head-state / threat-display sheet）」，維持 4×2 網格與固定順序，以巨獸的自然反應對應原八表情語意，非人類笑容。
> - **04 體表細節表**：SPEC 載明巨獸無服裝（N/A）；本表改為「體表鱗甲／特殊部位細節表」。
> - **06 解剖結構表**：巨獸自身即戰略兵器（利齒、利爪、龍息），無外部武器或飾品；本表呈現角、齒、爪、龍息光效與**展翼結構研究**的獨立解剖／效果構造，非傳統「道具」；展翼姿態僅在此出現，01–02 一律摺翼。
> - **零道具聲明（01–02 全部全身視圖一致適用）**：no rider, no saddle, no harness, no external props anywhere on the creature.

> **兩階段規則（強制）**：第一階段只生成 `01-dragon-front-fullbody.png`（正面全身單視圖，臉部須清晰可辨；角組與翼膜色相已定案，可直接送出），生成後停止等待使用者核准。核准後 01 成為 02–06 的 Image 1 解剖唯一正本。畫風輸入一律依 `../../STYLE_ANCHOR.md` 決定。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **既有 PNG 狀態**：本角色 01–07（非人形 01–06）全部為 `PENDING-GENERATION`。

畫風參考唯一正本：
- `../../STYLE_ANCHOR.md`
- 若本角色是 `PENDING-FIRST-REQUEST` 登記的首角色，01 才使用 STYLE_ANCHOR 的三張 bootstrap 圖。
- 若畫風錨已為 `ACTIVE` 且本角色不是首角色，01 只引用已核准的首角色 01 作為畫風參考。
- 02–07（非人形至 06）使用自己的 01 作為身份參考；非首角色另加首角色 01 作為畫風參考。

生成順序與檔名（新版六張制 01–06，非人形無 07）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 01 | `01-dragon-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-dragon-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-dragon-head-state-sheet.png` | 表情表 |
| 04 | `04-dragon-scale-surface-detail-sheet.png` | 服裝細節 |
| 05 | `05-dragon-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-dragon-anatomy-construction-sheet.png` | 道具結構 |

---

## 01 — `01-dragon-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Primary request:
Render the dragon as ONE full-body FRONT view (0 degrees, camera directly ahead of the creature) in true orthographic projection, in the same natural calm standing stance on all four legs as Image 1: wings folded/resting naturally against the body, tail resting or gently curved, head level and alert, weight evenly distributed on all four legs, no action pose.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same head shape, horn configuration (one pair of backward-swept main horns plus six descending secondary spike-horns), fangs, eyes (#D4C05A), scale texture and pattern (#150F1A base, #3B2350 sheen).

Kinship invariants:
Not applicable - no kin relations for this creature.

Body metrics:
Relative proportion lock per the Character definition above: body length = 1.0 baseline, wingspan = 1.25x, head length = 1/7, neck length = 1/4, tail length = 2/5, standing shoulder height = 0.35x. Fully bilaterally symmetric.

Costume invariants:
Not applicable - no costume. Identical bare anatomy per the Character definition above: black-to-dark-purple scaled hide, semi-translucent dark purple-red wing membrane (#5C1B33). No armor, no saddle, no harness, no gemstones, no external props, no rider anywhere.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single creature centered, entire body from head to tail-tip inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different creature, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, human, person, rider, saddle, harness, reins, armor plating, gemstones, cloth barding, external props, handheld items, spread wings, wings extended, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved anatomy per the Character definition above; the input images are style only.
- Creature only; zero props; flat lighting; true orthographic front view; wings folded.
- No human, rider, saddle or harness anywhere. No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-dragon-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet (non-humanoid quadruped)

Input images:
- Image 1: the approved 01-dragon-front-fullbody.png and sole anatomy authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of the dragon containing four full-body orthographic views of the SAME creature in this exact left-to-right order: FRONT (0 degrees), LEFT view (camera on the creature's anatomical left side, 90 degrees), RIGHT view (camera on the creature's anatomical right side, 90 degrees), BACK (180 degrees). All four views use the exact same natural, calm standing stance on all four legs (no A-pose - this creature has no human arms): wings folded/resting naturally against the body, tail resting or gently curved, head level and alert, identical height, proportions and stance in every view, true orthographic projection, no action pose.

Identity invariants:
All four figures are the identical creature from Image 1: same head shape, horn configuration (one pair of backward-swept main horns plus six descending secondary spike-horns), fangs, eyes (#D4C05A), scale texture and pattern, wing structure, tail length. Head-top line and ground-contact line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
Not applicable.

Body metrics:
Relative proportion lock from Image 1: body length = 1.0 baseline, wingspan = 1.25x, head length = 1/7, neck length = 1/4, tail length = 2/5, standing shoulder height = 0.35x, consistent across all four views; no human or scale-comparison figure included.

Costume invariants:
Not applicable - no costume. Every view shows the identical bare anatomy from Image 1: black-to-dark-purple scaled hide (#150F1A / #3B2350), semi-translucent dark purple-red membranous wings (#5C1B33), folded in every view. No armor, no saddle, no harness, no gemstones, no external props, no rider anywhere.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, human, person, rider, cute dragon, small dragon, baby dragon, chibi dragon, mechanical dragon, saddle, harness, reins, armor plating, gemstones, cloth barding, external props, handheld items, spread wings, wings extended, inconsistent scale between views, different size per view, mismatched anatomy between views, reference character face, copying any style-image character, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved anatomy from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, anatomical-left, anatomical-right, back. Same size, same proportions, true orthographic projection, natural standing stance with folded wings in every view.
- No costume, no armor, no props; flat lighting.
- No human, rider, saddle, harness or scale-comparison figure. No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-dragon-head-state-sheet.png`（STAGE 2 — 八格頭部威嚇狀態表，取代人類表情表）


```text
Use case: identity-preserve
Asset type: professional eight-panel creature head-state / threat-display sheet (non-human analogue of an expression sheet)

Input images:
- Image 1: use only as the creature identity, head shape, horn and color reference (the approved 01-dragon-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose the dragon's head into standardized close-up studio studies. Create exactly eight head studies arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every panel must use a straight-on front view at 0 degrees. Crop from just below the neck/throat to slightly above the top of the horns. The head must occupy approximately 70-75 percent of each panel. Since this is a non-human creature, each panel shows a natural head-state / threat-display analogous to the eight human expressions below, NOT a human smile.

Identity invariants:
Keep exactly the same creature in all eight panels. Preserve the identical head shape, horn configuration (one pair of backward-swept main horns plus six descending secondary spike-horns), scale texture and pattern, eye color (#D4C05A) and neck-base proportions. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the jaw, eyes and head-state may change.

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
Exactly eight panels and a 4x2 grid. Straight-on 0-degree view only. Head-and-neck close-up only. No full body, no human face, no human expression mapped onto a human mouth shape - the mouth/jaw must remain draconic in every panel. No different creature, altered horn configuration, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different creature, human face, human mouth, human teeth, costume, random accessories, duplicate creature, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, long shot, medium shot, different composition, changed horn configuration, changed scale pattern, profile, side view, three-quarter view, head turned, tilted beyond specified state, inconsistent lighting, inconsistent color grading, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, rider, saddle, harness, external props
```

---

---

## 04 — `04-dragon-scale-surface-detail-sheet.png`（STAGE 2 — 體表鱗甲／特殊部位細節表，取代服裝細節表；SPEC 明載無服裝）


```text
Use case: identity-preserve
Asset type: creature body-surface (scale and membrane) detail sheet, replacing the costume detail sheet since this creature has no clothing per CANON

Input images:
- Image 1: the approved 01-dragon-front-fullbody.png and sole anatomy authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional body-surface construction sheet for the dragon, since it wears no costume, presenting several clean close-up studies of its scales and membrane as they appear on Image 1:
1. Chest/throat scale detail: dense, overlapping black-to-dark-purple scales (#150F1A) with a cold metallic-purple sheen (#3B2350).
2. Dorsal spine ridge detail: raised ridge scales along the back and neck, leading toward the secondary spike-horn row.
3. Wing membrane weave detail: the semi-translucent dark purple-red membrane (#5C1B33) structure between wing-bones, showing how light passes through it.
4. Tail scale tapering detail: how the scale size and pattern narrow toward the tail tip.
5. Belly/underside scale detail: softer, slightly lighter-toned scales on the underside (#241626).
6. Leg and claw-joint scale detail: thicker, more armored-looking scales at the joints, cold gray-black claw keratin (#3A3A40).

Identity invariants:
This is a body-surface study; do not introduce a different creature. Any partial-anatomy fragment shown must match Image 1's colors, materials and scale pattern exactly. No full-body panel is required.

Costume invariants:
Not applicable - no clothing exists on this creature. All studies show bare anatomy only: black-to-dark-purple scaled hide, cold metallic sheen, semi-translucent dark purple-red wing membrane. No armor, no saddle, no harness, no cloth, no gemstones, no external props anywhere.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature-surface sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, costume, clothing, armor, saddle, harness, gemstones, cloth barding, external props, different anatomy, extra creature, full-body pin-up, human, rider, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved anatomy from Image 1; Images 2-4 are style only.
- No costume exists for this creature; do not invent clothing or armor.
- No weapons, no human, no rider on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

---

## 05 — `05-dragon-color-material-sheet.png`（STAGE 2 — 色票／材質表，固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-dragon-front-fullbody.png and sole anatomy authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for the dragon: a medium-size natural-stance full-body figure with wings folded (creature only, no rider, no props) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- black-to-dark-purple primary scaled hide #150F1A
- cold metallic-purple scale sheen #3B2350
- dark purple-red wing membrane #5C1B33 (identification-critical, LOCKED per user approval 2026-07-23, see CHARACTER_SPEC.md)
- searing gold-white breath-weapon glow #FFF3D6 (locked)
- amber-yellow eyes #D4C05A
- cold gray-black horn and claw keratin #3A3A40
- underside/belly scale #241626
Each swatch pairs a flat color block with a small material patch showing how that surface reads (cold half-metallic scale sheen, semi-translucent membrane, glowing breath light, hard keratin horn/claw surface).

Identity invariants:
The reference figure is the identical creature from Image 1; same head shape, horn configuration, scale pattern, proportions.

Costume invariants:
Not applicable - no costume; no redesign of the bare anatomy; no props.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values may appear only as small unobtrusive production-file annotations, not stylized in-image text).

Positive style prompt:
refined Japanese anime fantasy creature design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for scale, membrane and glow effects, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon pastel colors, costume, armor, gemstones, external props, human, rider, cast shadows, rim light, extra creature, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly (#150F1A, #3B2350, #5C1B33, #FFF3D6, #D4C05A, #3A3A40, #241626); hue drift = reject.
- Creature only; zero props, zero costume; flat lighting; wings folded.
- No text or watermark.
```

---

---

## 06 — `06-dragon-anatomy-construction-sheet.png`（STAGE 2 — 角／齒／爪解剖拆解＋龍息光效＋展翼結構研究，取代道具表；巨獸自身即武器，展翼姿態唯一出現位置）


```text
Use case: stylized-concept
Asset type: anatomical construction and effect-study sheet (the dragon's own body IS its weapon - horns, teeth, claws, breath, wings - so this replaces a conventional prop sheet)

Input images:
- Image 1: the approved 01-dragon-front-fullbody.png — use ONLY to match scale/keratin/membrane material language; do not depict the full creature body in a standing pose.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create an anatomy-and-effect construction sheet covering five isolated studies at consistent scale, with NO full standing creature body shown:
1. Horn configuration close-up: front, side and back studies of the full horn set (one pair of main backward-swept horns plus the six-horn descending secondary row) and how it seats on the skull.
2. Jaw and fang structure: an isolated open-jaw study showing the fang arrangement and bite structure.
3. Claw structure: an isolated close-up of one forelimb's claws, showing the tearing hook shape and keratin texture (#3A3A40).
4. Breath-weapon light-effect study: an isolated glowing-light concept study of the searing gold-white (#FFF3D6) breath energy (a light burst / beam study, not attached to a full head or body silhouette).
5. Wing membrane construction study: an isolated FULLY SPREAD wing (single wing, detached study - not the whole standing creature) showing the wing-bone structure and the semi-translucent dark purple-red membrane (#5C1B33) weave when fully extended. This is the ONLY panel in the entire package where the wing appears spread rather than folded.

Anatomy studies only: no full-body standing creature, no human figure, no rider, no scale-comparison figure anywhere. Isolated anatomical fragments and one light-effect study only.

Composition:
Clean production-sheet layout on warm light-gray background, the five studies grouped clearly, consistent scale, balanced negative space, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy creature-anatomy design, professional production anatomy sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise keratin, fang, membrane and glow-effect rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body standing creature, human, rider, character scale inset, saddle, harness, armor, gemstones, cloth, external props, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet documents isolated anatomical structures, the breath-weapon light effect, and one detached spread-wing study only; no full standing creature body.
- The spread-wing panel is the sole place in the entire 01–06 package where the wing is shown extended rather than folded.
- Match the locked hex palette exactly (#150F1A, #3B2350, #5C1B33, #FFF3D6, #D4C05A, #3A3A40); no invented colors.
- No human, rider or full standing creature silhouette. No text or watermark.
```

---

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：01 →（使用者核准；「辨識關鍵鎖定提案」兩項已於 2026-07-23 定案）→ 02 → 03 → 04 → 05 → 06。本角色**不產 07 號身體參考圖**（非人形，無 SMPL-X 骨架適用性）。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 頭部形狀與解剖身份與 01 號正本一致
- [ ] 鱗甲色澤（#150F1A 深黑至暗紫底、#3B2350 冷金屬紫高光）一致
- [ ] 角組（2 主角＋6 副棘角，或使用者已核准的覆蓋方案）、齒列、爪型與 01 號一致
- [ ] 翼膜結構（半透明、#5C1B33 暗紫紅，或使用者已核准的覆蓋色相）與 01 號一致
- [ ] 色票未漂移（#150F1A／#3B2350／#5C1B33／#FFF3D6／#D4C05A／#3A3A40／#241626）
- [ ] 左右完全對稱，無新增單側特徵、無鏡像錯亂
- [ ] 零道具：no rider, no saddle, no harness, no external props（06 除外——06 僅呈現解剖／效果拆解，非人形道具）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、自然站立、摺翼、平光）全部滿足

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面（0°）、自然站立、正交、摺翼、單一視圖；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同尺寸、同比例、自然站立姿態一致、皆摺翼；相機位於**解剖學左側**（非鏡像翻轉的右側圖）、自然站立、正交、摺翼；相機位於**解剖學右側**（非鏡像翻轉的左側圖）、自然站立、正交、摺翼；背面（180°）、自然站立、正交、摺翼 |
| 03 | 恰好 8 格 4×2、順序正確（頭部威嚇狀態取代人類表情）、頭部形狀與角組維持一致 |
| 04 | 六個體表部位（胸喉／背脊／翼膜／尾部／腹部／關節）鱗甲細節齊全，無服裝出現 |
| 05 | 色票方塊與固定 hex 完全一致 |
| 06 | 角／齒／爪解剖拆解、龍息光效與展翼結構研究唯一出現於此；展翼姿態僅此一張；無角色全身站立照、無人類、無騎手 |
