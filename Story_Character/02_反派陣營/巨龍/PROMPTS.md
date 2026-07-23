# 巨龍 Dragon — Image Generation Prompts（範本 v2 FULL package，非人形結構：00–09，無 10 號素體圖）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`DRAGON-V1-STRATEGIC-WAR-BEAST`**（本角色全篇僅此單一型態；無服裝版本 N/A）

> ✅ **辨識關鍵已定案（稽核 §7、§8.10；使用者於 2026-07-23 核准）**
> `CHARACTER_SPEC.md`「辨識關鍵鎖定提案」列出的**角的數量／形狀**與**翼膜色相**是跨鏡頭身份辨識關鍵，兩項均已由使用者核准鎖定為定案值（**2 主角＋6 副棘角（頭骨後緣遞減排列）、翼膜 `#5C1B33`**）。下方 00 號提示詞已採用此定案值，可開始 STAGE 1 生成。

> **非人形豁免聲明（依規範 §5.3）**：巨龍為四足有翼巨獸，不適用 A-pose，00–05 全部全身視圖改用「自然站立正交視圖」；不產 10 號素體圖（無人形骨架可供 SMPL-X 擬合）。本套件為完整 **00–09 十條**提示詞（無 10 號）。
> - **00 三視圖調整**：改為「全身自然站立側／四分之三視圖」＋「頭部特寫（正面）」＋「45° 頭部視圖」，缺一即 REJECT。
> - **01–04 新增獨立完整視圖**（稽核 §6 要求，取代舊版省略）：01 正面自然站立正交圖、02 相機位於**解剖學左側**、03 相機位於**解剖學右側**、04 背面自然站立正交圖。禁止只寫「朝左／朝右」，一律明寫「camera on the creature's anatomical LEFT/RIGHT side」。
> - **05** 維持四視圖總表（正面→左→右→背）。
> - **06 表情表調整**：巨獸無人類臉部表情；本表改為「八格頭部威嚇狀態表（head-state / threat-display sheet）」，維持 4×2 網格與固定順序，以巨獸的自然反應對應原八表情語意，非人類笑容。
> - **07 服裝表調整**：SPEC 載明巨獸無服裝（N/A）；本表改為「體表鱗甲／特殊部位細節表」。
> - **09 道具表調整**：巨獸自身即戰略兵器（利齒、利爪、龍息），無外部武器或飾品；本表呈現角、齒、爪、龍息光效與**展翼結構研究**的獨立解剖／效果構造，非傳統「道具」；展翼姿態僅在此出現，00–05 一律摺翼。
> - **零道具聲明（00–05 全部全身視圖一致適用）**：no rider, no saddle, no harness, no external props anywhere on the creature.

> **兩階段規則（強制）**：第一階段只生成 `00-dragon-character-identity-anchor.png`（三視圖，缺一不可；角組與翼膜色相已定案，可直接送出），生成後停止等待使用者核准。核准後 00 成為 01–09 的 Image 1 解剖唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-dragon-character-identity-anchor.png` | 身份母圖：自然站立全身側／四分之三視圖＋正面頭部特寫＋45° 頭部視圖，零人類／騎手／道具 |
| 01 | `01-dragon-front-fullbody.png` | 正面自然站立全身，正交，摺翼，零道具 |
| 02 | `02-dragon-left-profile-fullbody.png` | 相機位於解剖學左側，自然站立全身，正交，摺翼，零道具 |
| 03 | `03-dragon-right-profile-fullbody.png` | 相機位於解剖學右側，自然站立全身，正交，摺翼，零道具 |
| 04 | `04-dragon-back-fullbody.png` | 背面自然站立全身，正交，摺翼，零道具 |
| 05 | `05-dragon-four-view-master.png` | 四視圖總表（正面→左→右→背），自然站立正交視圖，摺翼，零道具 |
| 06 | `06-dragon-head-state-sheet.png` | 八格頭部威嚇狀態表，4×2 網格（取代人類表情表） |
| 07 | `07-dragon-scale-surface-detail-sheet.png` | 體表鱗甲／翼膜／特殊部位細節表（取代服裝細節表） |
| 08 | `08-dragon-color-material-sheet.png` | 色票／材質表（固定 hex） |
| 09 | `09-dragon-anatomy-construction-sheet.png` | 角／齒／爪解剖拆解＋龍息光效＋展翼結構研究（取代道具表；展翼姿態唯一出現位置） |

---

## 00 — `00-dragon-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准；角組與翼膜色相已定案，可送出）

```text
Use case: stylized-concept
Asset type: new-creature identity anchor sheet (three views, non-humanoid quadruped)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Creature definition:
A colossal strategic-weapon war-beast dragon. CANON anatomy: its body length far exceeds an ordinary dragon - its wingspan is wide enough to span an entire street, forming an extreme size contrast with humans; a black-to-dark-purple scaled hide (#150F1A base with #3B2350 cold metallic-purple sheen) covers the whole body; it is capable of a destructive breath weapon that, when it dives through the clouds, draws a vast line of light across the night sky and can light up the whole sky - the breath-light color is locked as a searing gold-white (#FFF3D6). DESIGN-PROPOSAL anatomy: a huge quadruped winged dragon with a long powerful neck (about 1/4 of body length) and long tail (about 2/5 of body length), a thick muscular torso, a dignified head (about 1/7 of body length, not oversized) with a cold fierce amber-yellow gaze (#D4C05A), strong legs with tearing claws (cold gray-black keratin #3A3A40). Horn configuration (LOCKED - user-approved 2026-07-23): one pair of symmetric large backward-swept main horns plus six smaller secondary spike-horns in a descending row along the back of the skull to the neck, fully bilaterally symmetric. Wings: immense membranous wings on strong wing-bones, wingspan approximately 1.25x body length, semi-translucent dark purple-red membrane (LOCKED hex #5C1B33 - user-approved 2026-07-23), folded naturally against the body in this sheet. Real materials only: scaled hide plus semi-translucent membranous wings; NO cloth, NO gemstones, NO metal armor plating, NO saddle, NO harness, NO external props, NO rider anywhere on the beast.

Body metrics:
Colossal strategic-weapon scale - explicitly not given a numeric height/length in the written spec; use relative proportion lock only (body length = 1.0 baseline, wingspan = 1.25x, head length = 1/7, neck length = 1/4, tail length = 2/5, standing shoulder height = 0.35x). Render it as an extreme-scale quadruped winged dragon, clearly far larger than any human figure would be, without including a human or scale-comparison figure in this sheet. Fully bilaterally symmetric design; no left-right asymmetric features.

Kinship invariants:
Not applicable - no kin relations for this creature.

Primary request:
Design one new and visually distinct CREATURE from the written specification. Create a creature identity-anchor sheet containing exactly THREE views of the SAME dragon - all three are mandatory, the sheet is invalid if any view is missing:
1. one full-body side or three-quarter view showing the whole colossal winged silhouette in a natural, calm standing stance on all four legs (NOT an A-pose - this creature has no human arms), wings folded/resting naturally against the body, tail resting on the ground or gently curved, head held level and alert;
2. one large straight-on head close-up (head, horn configuration, fangs, eyes and scale texture);
3. one 45-degree head view (for video-generation reference).
All three views must have identical anatomy, scale texture, horn configuration, wing structure and colors. The straight-on head close-up is the anatomy identity authority for later generations. No human, no rider, no saddle, no harness, no external props anywhere.

Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds the full-body natural-stance view, entire creature head-to-tail inside frame. Right ~45% is split between the large straight-on head close-up and the 45-degree head view. Identical creature across all panels - no anatomy drift.

Style:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, human, person, rider, cute dragon, small dragon, baby dragon, chibi dragon, mechanical dragon, mecha dragon, robot, pastel scales, neon scales, saddle, harness, reins, armor plating, gemstones, jewelry, cloth barding, external props, handheld items, spread wings, wings extended, reference character face, copying any style-image character, blending the three reference characters, humanoid character copying, holding weapon, weapon in hand, action pose, battle stance, dynamic pose, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (colossal size, street-spanning wingspan, black-to-dark-purple scaled hide, destructive breath drawing a vast searing gold-white line of light).
- Follow approved DESIGN-PROPOSAL items consistently.
- Horn configuration and wing membrane hue are identification-critical items; both are LOCKED per user approval (2026-07-23): two swept-back symmetric primary horns plus six secondary spikes in diminishing size along the rear skull ridge, and wing membrane #5C1B33.
- Natural calm standing stance only - no A-pose (this creature has no human arms), no action pose. Wings folded in this sheet; spread-wing anatomy belongs only to sheet 09.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- No human, rider, saddle, harness, or external props of any kind anywhere.
- No text, labels, logo, signature or watermark.
- Exactly one creature identity shown three times; no anatomy drift between the three views. Missing any of the three views = invalid sheet.
```

---

## 01 — `01-dragon-front-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference (non-humanoid quadruped)

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render the dragon as ONE full-body FRONT view (0 degrees, camera directly ahead of the creature) in true orthographic projection, in the same natural calm standing stance on all four legs as Image 1: wings folded/resting naturally against the body, tail resting or gently curved, head level and alert, weight evenly distributed on all four legs, no action pose.

Identity invariants:
Identical creature from Image 1: same head shape, horn configuration (one pair of backward-swept main horns plus six descending secondary spike-horns), fangs, eyes (#D4C05A), scale texture and pattern (#150F1A base, #3B2350 sheen).

Body metrics:
Relative proportion lock from Image 1: body length = 1.0 baseline, wingspan = 1.25x, head length = 1/7, neck length = 1/4, tail length = 2/5, standing shoulder height = 0.35x. Fully bilaterally symmetric.

Costume invariants:
Not applicable - no costume. Identical bare anatomy from Image 1: black-to-dark-purple scaled hide, semi-translucent dark purple-red wing membrane (#5C1B33). No armor, no saddle, no harness, no gemstones, no external props, no rider anywhere.

Composition:
Single creature centered, entire body from head to tail-tip inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different creature, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, human, person, rider, saddle, harness, reins, armor plating, gemstones, cloth barding, external props, handheld items, spread wings, wings extended, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved anatomy from Image 1; Images 2-4 are style only.
- Creature only; zero props; flat lighting; true orthographic front view; wings folded.
- No human, rider, saddle or harness anywhere. No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-dragon-left-profile-fullbody.png`（STAGE 2 — 相機位於解剖學左側）

```text
Use case: identity-preserve
Asset type: single left-side full-body orthographic reference (non-humanoid quadruped)

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render the dragon as ONE full-body view with the camera positioned on the creature's ANATOMICAL LEFT side (90 degrees, the creature's own left flank facing the viewer - not simply "facing left") in true orthographic projection, in the same natural calm standing stance on all four legs as Image 1: wings folded/resting naturally against the body, tail resting or gently curved, head level and alert, no action pose. The head faces exactly along the creature's anatomical left axis; no head turn toward the viewer.

Identity invariants:
Identical creature from Image 1: same head shape and horn configuration in side view, fangs, eyes (#D4C05A), scale texture and pattern (#150F1A base, #3B2350 sheen).

Body metrics:
Relative proportion lock from Image 1: body length = 1.0 baseline, wingspan = 1.25x, head length = 1/7, neck length = 1/4, tail length = 2/5, standing shoulder height = 0.35x. Fully bilaterally symmetric.

Costume invariants:
Not applicable - no costume. Identical bare anatomy from Image 1, folded wing silhouette visible from the creature's anatomical left side, dark purple-red membrane (#5C1B33). No armor, no saddle, no harness, no gemstones, no external props, no rider anywhere.

Composition:
Single creature centered, entire body from head to tail-tip inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different creature, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, human, person, rider, saddle, harness, reins, armor plating, gemstones, cloth barding, external props, handheld items, spread wings, wings extended, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, dramatic lighting, front view, right side, back view, three-quarter view, head turned toward viewer, mirrored orientation

Constraints:
- Preserve the exact approved anatomy from Image 1; Images 2-4 are style only.
- Camera is on the creature's own anatomical LEFT side, not merely "facing left" in image space; do not mirror-flip the right-side view.
- Creature only; zero props; flat lighting; true orthographic anatomical-left view; wings folded.
- No human, rider, saddle or harness anywhere. No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-dragon-right-profile-fullbody.png`（STAGE 2 — 相機位於解剖學右側）

```text
Use case: identity-preserve
Asset type: single right-side full-body orthographic reference (non-humanoid quadruped)

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render the dragon as ONE full-body view with the camera positioned on the creature's ANATOMICAL RIGHT side (90 degrees, the creature's own right flank facing the viewer - not simply "facing right") in true orthographic projection, in the same natural calm standing stance on all four legs as Image 1: wings folded/resting naturally against the body, tail resting or gently curved, head level and alert, no action pose. The head faces exactly along the creature's anatomical right axis; no head turn toward the viewer. The design is fully symmetric, so this anatomical-right view mirrors the anatomical-left view exactly.

Identity invariants:
Identical creature from Image 1: same head shape and horn configuration in side view, fangs, eyes (#D4C05A), scale texture and pattern (#150F1A base, #3B2350 sheen).

Body metrics:
Relative proportion lock from Image 1: body length = 1.0 baseline, wingspan = 1.25x, head length = 1/7, neck length = 1/4, tail length = 2/5, standing shoulder height = 0.35x. Fully bilaterally symmetric.

Costume invariants:
Not applicable - no costume. Identical bare anatomy from Image 1, folded wing silhouette visible from the creature's anatomical right side, dark purple-red membrane (#5C1B33). No armor, no saddle, no harness, no gemstones, no external props, no rider anywhere.

Composition:
Single creature centered, entire body from head to tail-tip inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different creature, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, human, person, rider, saddle, harness, reins, armor plating, gemstones, cloth barding, external props, handheld items, spread wings, wings extended, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, dramatic lighting, front view, left side, back view, three-quarter view, head turned toward viewer, mirrored orientation

Constraints:
- Preserve the exact approved anatomy from Image 1; Images 2-4 are style only.
- Camera is on the creature's own anatomical RIGHT side, not merely "facing right" in image space; do not mirror-flip the left-side view file itself (regenerate a true right-side render).
- Creature only; zero props; flat lighting; true orthographic anatomical-right view; wings folded.
- No human, rider, saddle or harness anywhere. No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-dragon-back-fullbody.png`（STAGE 2）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference (non-humanoid quadruped)

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render the dragon as ONE full-body BACK view (180 degrees, camera directly behind the creature) in true orthographic projection, in the same natural calm standing stance on all four legs as Image 1: wings folded/resting naturally against the body, tail resting or gently curved, head level and alert, no action pose. Head faces exactly away from the viewer.

Identity invariants:
Identical creature from Image 1: same dorsal ridge, folded wing silhouette from behind, tail shape and scale pattern (#150F1A base, #3B2350 sheen).

Body metrics:
Relative proportion lock from Image 1: body length = 1.0 baseline, wingspan = 1.25x, head length = 1/7, neck length = 1/4, tail length = 2/5, standing shoulder height = 0.35x. Fully bilaterally symmetric.

Costume invariants:
Not applicable - no costume. Identical bare anatomy from Image 1 seen from behind: folded wings resting against the back, dorsal spine ridge, dark purple-red membrane edges (#5C1B33) visible at the wing folds. No armor, no saddle, no harness, no gemstones, no external props, no rider anywhere.

Composition:
Single creature centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production creature sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed scale and membrane material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different creature, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, human, person, rider, saddle, harness, reins, armor plating, gemstones, cloth barding, external props, handheld items, spread wings, wings extended, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, side view, three-quarter view

Constraints:
- Preserve the exact approved anatomy from Image 1; Images 2-4 are style only.
- Creature only; zero props; flat lighting; true orthographic back view; wings folded.
- No human, rider, saddle or harness anywhere. No text or watermark. Do not invent missing canonical details.
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

## 07 — `07-dragon-scale-surface-detail-sheet.png`（STAGE 2 — 體表鱗甲／特殊部位細節表，取代服裝細節表；SPEC 明載無服裝）

```text
Use case: identity-preserve
Asset type: creature body-surface (scale and membrane) detail sheet, replacing the costume detail sheet since this creature has no clothing per CANON

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

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

## 08 — `08-dragon-color-material-sheet.png`（STAGE 2 — 色票／材質表，固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png and sole anatomy authority.
- Images 2-4: shared style references only; do not copy their character identities.

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

## 09 — `09-dragon-anatomy-construction-sheet.png`（STAGE 2 — 角／齒／爪解剖拆解＋龍息光效＋展翼結構研究，取代道具表；巨獸自身即武器，展翼姿態唯一出現位置）

```text
Use case: stylized-concept
Asset type: anatomical construction and effect-study sheet (the dragon's own body IS its weapon - horns, teeth, claws, breath, wings - so this replaces a conventional prop sheet)

Input images:
- Image 1: the approved 00-dragon-character-identity-anchor.png — use ONLY to match scale/keratin/membrane material language; do not depict the full creature body in a standing pose.
- Images 2-4: shared style references only; do not copy their characters.

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
- The spread-wing panel is the sole place in the entire 00-09 package where the wing is shown extended rather than folded.
- Match the locked hex palette exactly (#150F1A, #3B2350, #5C1B33, #FFF3D6, #D4C05A, #3A3A40); no invented colors.
- No human, rider or full standing creature silhouette. No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准；「辨識關鍵鎖定提案」兩項已於 2026-07-23 定案）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09。本角色**不產 10 號素體圖**（非人形，無 SMPL-X 骨架適用性）。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 頭部形狀與解剖身份與 00 號正本一致
- [ ] 鱗甲色澤（#150F1A 深黑至暗紫底、#3B2350 冷金屬紫高光）一致
- [ ] 角組（2 主角＋6 副棘角，或使用者已核准的覆蓋方案）、齒列、爪型與 00 號一致
- [ ] 翼膜結構（半透明、#5C1B33 暗紫紅，或使用者已核准的覆蓋色相）與 00 號一致
- [ ] 色票未漂移（#150F1A／#3B2350／#5C1B33／#FFF3D6／#D4C05A／#3A3A40／#241626）
- [ ] 左右完全對稱，無新增單側特徵、無鏡像錯亂
- [ ] 零道具：no rider, no saddle, no harness, no external props（09 除外——09 僅呈現解剖／效果拆解，非人形道具）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、自然站立、摺翼、平光）全部滿足

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（全身自然站立側／四分之三視圖＋正面頭部特寫＋45° 頭部視圖），缺一即 REJECT；無人類、無騎手、無鞍具道具；角組與翼膜色相已於 2026-07-23 定案 |
| 01 | 正面（0°）、自然站立、正交、摺翼、單一視圖 |
| 02 | 相機位於**解剖學左側**（非鏡像翻轉的右側圖）、自然站立、正交、摺翼 |
| 03 | 相機位於**解剖學右側**（非鏡像翻轉的左側圖）、自然站立、正交、摺翼 |
| 04 | 背面（180°）、自然站立、正交、摺翼 |
| 05 | 順序正面→左→右→背；四視圖同尺寸、同比例、自然站立姿態一致、皆摺翼 |
| 06 | 恰好 8 格 4×2、順序正確（頭部威嚇狀態取代人類表情）、頭部形狀與角組維持一致 |
| 07 | 六個體表部位（胸喉／背脊／翼膜／尾部／腹部／關節）鱗甲細節齊全，無服裝出現 |
| 08 | 色票方塊與固定 hex 完全一致 |
| 09 | 角／齒／爪解剖拆解、龍息光效與展翼結構研究唯一出現於此；展翼姿態僅此一張；無角色全身站立照、無人類、無騎手 |
