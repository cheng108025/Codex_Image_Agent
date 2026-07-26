# 夜光馬 Nightglow Horse — Image Generation Prompts（新版六張制 01–06，非人形：無 07 身體參考圖）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`NIGHTGLOW-HORSE-V1-BARE-MOUNT`**（無鞍身份基準版；本角色全篇僅此單一型態，無服裝版本 N/A）

> **鞍具狀態版本說明（必讀）**：本包（01–06）全部視圖鎖定為**無鞍身份版**——no rider, no saddle, no harness, no external props anywhere on the creature，跨每一張圖一致適用。若未來需要作為克里茲坐騎出鏡的「騎乘裝具版」，須另立版本 ID `NIGHTGLOW-HORSE-V2-SADDLED-MOUNT`（鞍、韁繩與連接方式屆時另案鎖定），不得混入本包。

> **非人形豁免聲明（依規範 §5.3）**：夜光馬為四足獸，不適用 A-pose，01 與 02 的全身視圖改用「自然站立正交視圖」；不產 07 號身體參考圖（無人形骨架可供 SMPL-X 擬合）。本套件為完整 **01–06 六條**提示詞（無 07 號身體參考圖）。
> - **03 頭部狀態表**：馬類無人類臉部表情；本表改為「八格頭部神態表（head-state sheet）」，以耳朵位置、眼神與鼻翼變化呈現，維持 4×2 網格與固定順序。
> - **04 體表細節表**：SPEC 載明本角色無服裝、無鞍具（N/A）；本表改為「鬃毛／發光體表細節表」。
> - **06 解剖結構表**：CHARACTER_SPEC.md 未載明鞍具（配戴鞍具屬 V2 另案），故本張不畫鞍具，改為「發光構造拆解」，展示鬃毛／蹄際微光的光效剖面與奔馳流光的效果研究圖。
> - **零道具聲明（01–02 全部全身視圖一致適用，逐張重申）**：no rider, no saddle, no harness, no external props anywhere on the creature.

> **兩階段規則（強制）**：第一階段只生成 `01-nightglow-horse-front-fullbody.png`（正面全身單視圖，臉部須清晰可辨），生成後停止等待使用者核准。核准後 01 成為 02–06 的 Image 1 解剖唯一正本。畫風輸入一律依 `../../STYLE_ANCHOR.md` 決定。
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
| 01 | `01-nightglow-horse-front-fullbody.png` | 身份錨點：正面全身，A-pose，零道具（**STAGE 1，先生成並等核准**） |
| 02 | `02-nightglow-horse-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 |
| 03 | `03-nightglow-horse-head-state-sheet.png` | 表情表 |
| 04 | `04-nightglow-horse-mane-glow-detail-sheet.png` | 服裝細節 |
| 05 | `05-nightglow-horse-color-material-sheet.png` | 色彩與材質 |
| 06 | `06-nightglow-horse-glow-construction-sheet.png` | 道具結構 |

---

## 01 — `01-nightglow-horse-front-fullbody.png`（STAGE 1 — 只先生成這張，停止等核准）


```text
Use case: stylized-concept
Asset type: single front-view full-body identity anchor (STAGE 1, identity authority for all later sheets)

Input images:
- Resolve all style inputs from `../../STYLE_ANCHOR.md`.
- If this role is being registered as the first anchor while status is `PENDING-APPROVAL`, use the three bootstrap images listed there for this 01 only.
- If status is `ACTIVE` and this role is not the anchor, use the approved anchor 01 as Image 2 for style only; do not copy its character identity.
- Do not directly reuse bootstrap images after the anchor becomes `ACTIVE`.


Primary request:
Render the Nightglow Horse as ONE full-body FRONT view (0 degrees, camera directly ahead of the creature) in true orthographic projection, in the same natural, relaxed standing pose as Image 1: all four legs visible, weight evenly distributed, head level and calm, tail resting naturally, no rearing, no motion, no action pose.

Identity invariants:
Per the Character definition above (no prior identity image exists; this sheet establishes it): same head shape, mane form, calm gaze, eyes (#2A2018), entirely dark coat (#17151A) with the silver-blue self-luminous glow on the mane and hooves (#8FB8D6).

Kinship invariants:
none.

Body metrics:
Relative proportion lock per the Character definition above: torso length = 1.0 baseline, head length = 0.4x, neck length = 0.55x, tail length = 0.65x, shoulder/wither height = 1.05x. Fully bilaterally symmetric.

Anatomy invariants:
Identical bare anatomy per the Character definition above: entirely dark black-to-charcoal coat (#17151A), self-luminous silver-blue mane and hoof glow (#8FB8D6). No rider, no saddle, no harness, no reins, no armor, no gemstones, no external props anywhere on the creature.

Identity authority:
The face must be rendered clearly, sharply and identifiably at full detail — this single front view is the sole identity/costume authority for sheets 02 onward.

Composition:
Single creature centered, entire body from head to tail-tip inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, precise material separation between natural coat and the self-luminous glow effect, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different animal, costume, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, rider, human, person, saddle, tack, bridle, harness, reins, wings, unicorn horn, cartoon pony, pastel coat, white coat, light coat, armor, gemstones, metal barding, cloth barding, external props, rearing pose, galloping pose, action pose, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved anatomy per the Character definition above; the input images are style only.
- Creature only; zero props; flat lighting; true orthographic front view; natural standing pose.
- No rider, no saddle, no harness, no reins or external props anywhere. No text or watermark. Do not invent missing canonical details.
```

---

---

## 02 — `02-nightglow-horse-four-view-master.png`（STAGE 2 — 四視圖總表：正面→左→右→背）


```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet (non-humanoid quadruped)

Input images:
- Image 1: the approved 01-nightglow-horse-front-fullbody.png and sole anatomy authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Render a single master turnaround sheet of the Nightglow Horse containing four full-body orthographic views of the SAME horse in this exact left-to-right order: FRONT (0 degrees), LEFT view (camera on the creature's anatomical left side, 90 degrees), RIGHT view (camera on the creature's anatomical right side, 90 degrees), BACK (180 degrees). All four views use the exact same natural, relaxed standing pose (this is a non-humanoid quadruped; the A-pose rule does not apply): all four legs visible, weight evenly distributed, head level and calm, not rearing, not in motion, identical head height and body scale, true orthographic projection.

Identity invariants:
All four figures are the identical horse from Image 1: same entirely dark coat (#17151A), same mane form with the silver-blue glow (#8FB8D6), same calm head and gaze (#2A2018), same build. Head-top line and ground/hoof line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Relative proportion lock from Image 1: torso length = 1.0 baseline, head length = 0.4x, neck length = 0.55x, tail length = 0.65x, shoulder/wither height = 1.05x, consistent across all four views; no human or scale-comparison figure included.

Kinship invariants:
none.

Anatomy invariants:
Every view shows the identical coat, mane and tail from Image 1: deep black-to-charcoal coat (#17151A), self-luminous mane with silver-blue glow (#8FB8D6, back view must clearly show the mane falling along the neck and the tail from behind), faint silver-blue glow around the hooves in every view. No rider, no saddle, no harness, no reins, no armor, no gemstones, no external props anywhere on the creature.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, precise material separation between natural coat and the self-luminous glow effect, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, rider, human, person, saddle, tack, bridle, harness, reins, wings, unicorn horn, cartoon pony, pastel coat, white coat, light coat, armor, gemstones, metal barding, cloth barding, external props, rearing pose, galloping pose, action pose, inconsistent scale between views, different height per view, mismatched coat between views, reference character face, copying any style-image character, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved anatomy from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, anatomical-left, anatomical-right, back. Same size, same proportions, true orthographic projection, natural standing pose in every view.
- No costume, no armor, no props; flat lighting.
- No rider, no saddle, no harness, no reins, or scale-comparison figure anywhere. No text or watermark. Do not invent missing canonical details.
```

---

---

## 03 — `03-nightglow-horse-head-state-sheet.png`（STAGE 2 — 八格頭部神態表，取代人類八表情）


> **調整說明**：馬類臉部肌肉無法呈現人類的「輕笑」「大笑」等表情，故本張以耳朵位置、眼神開闔與鼻翼變化構成八種頭部神態，取代原始八種人類表情順序，構圖規則（4×2 網格、純白背景、同一鏡頭距離與角度）維持不變。

```text
Use case: identity-preserve
Asset type: professional eight-head-state anime creature study sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the creature's anatomy, coat, mane and glow-color reference (the approved 01-nightglow-horse-front-fullbody.png). Ignore its original pose, framing and composition.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Recompose the Nightglow Horse into standardized head-and-neck studio studies. Create exactly eight head-and-neck portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use the same head angle and framing (a consistent three-quarter or straight-on head-and-neck framing, chosen once and kept identical across all eight panels). Crop from just below the neck/mane base to slightly above the top of the head/ears. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same horse in all eight portraits. Preserve the identical entirely-dark coat (#17151A) and mane, the silver-blue mane glow (#8FB8D6), the same head shape, eyes (#2A2018), neck proportions and camera framing. Use the same lighting, color grading and head angle in every panel. Only the ear position, eye openness/gaze and nostril/muzzle tension may change to convey a different head state.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different animal, different coat color, different mane form, costume redesign, random accessories, duplicate creature, extra limbs, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, rider, human, person, saddle, tack, bridle, harness, reins, zoomed out, long shot, medium shot, different composition, inconsistent lighting, inconsistent color grading, wings, unicorn horn, cartoon pony, pastel coat, white coat, armor, gemstones, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters
```

---

---

## 04 — `04-nightglow-horse-mane-glow-detail-sheet.png`（STAGE 2 — 鬃毛／發光體表細節表，取代服裝細節表）


> **調整說明**：本角色無服裝、無鞍具，故第 07 張不採用「外層拆解」規則，改為鬃毛與蹄際自發光構造的細節拆解表，展示這些部位在近距離下的材質與光效表現，供 3D 貼圖與骨骼綁定參考。

```text
Use case: identity-preserve
Asset type: anatomy and glow-surface construction detail sheet

Input images:
- Image 1: the approved 01-nightglow-horse-front-fullbody.png and sole anatomy authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a professional anatomy/material construction sheet for the Nightglow Horse's coat, mane and glow surfaces, organized as callout panels on one sheet:
1. Mane strand close-up: individual mane strands showing the natural dark hair (#17151A) blending into the silver-blue self-luminous glow (#8FB8D6) at the strand tips/roots.
2. Hoof glow close-up: a single hoof from a low angle showing the faint silver-blue glow (#8FB8D6) radiating from around the hoof against the dark coat.
3. Tail detail: the dark long tail showing whether/how the same faint glow is present along its length.
4. Coat texture patch: a close-up of the plain dark-black-to-charcoal body coat texture (#17151A, no markings, no white patches).
5. Head/muzzle detail: eye (#2A2018), nostril and ear texture close-up for rigging reference.

Identity invariants:
All panels depict the same creature's anatomy from Image 1; no full-body panel is required on this sheet.

Anatomy invariants:
Exact colors and materials: deep black-to-charcoal natural coat (#17151A), silver-blue self-luminous glow (#8FB8D6) on mane and hooves only (and optionally the tail tip, consistent with Image 1). No armor, no gemstones, no tack, no cloth, no rider, no saddle, no harness, no reins, no external props of any kind.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting except within the glow-detail panels where the described luminescence is visible, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy creature design, professional production anatomy sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, precise material separation between natural coat hair and self-luminous glow effect, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different coat, coat redesign, random accessories, extra character, rider, human, saddle, tack, bridle, harness, reins, armor, gemstones, cast shadows, strong highlights beyond glow, rim light, reference character anatomy, copying any style-image character

Constraints:
- Preserve the exact approved coat/mane/glow from Image 1; Images 2-4 are style only.
- No costume-layer breakdown (this creature has no costume); focus on coat, mane and glow surfaces only.
- No human, rider, tack, harness, reins or weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

---

## 05 — `05-nightglow-horse-color-material-sheet.png`（STAGE 2 — 色票／材質表，固定 hex）


```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 01-nightglow-horse-front-fullbody.png and sole anatomy authority.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a production color-and-material sheet for the Nightglow Horse: a medium-size natural-standing full-body figure (anatomy only, no tack) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- deep black-to-charcoal #17151A (main coat)
- silver-blue #8FB8D6 (mane and hoof self-luminous glow)
- deep brown-black #2A2018 (eyes)
Each swatch pairs a flat color block with a small material patch showing how that surface reads (natural coat hair texture vs. the soft cool self-luminous glow effect).

Identity invariants:
The reference figure is the identical creature from Image 1; same coat, mane, build.

Anatomy invariants:
Exact coat and glow from Image 1; no redesign; NO tack, NO saddle, NO harness, NO reins, NO armor anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy creature design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for natural coat hair and self-luminous glow, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, coat redesign, rider, human, saddle, tack, harness, reins, armor, gemstones, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly (#17151A, #8FB8D6, #2A2018); hue drift = reject.
- Anatomy only; zero tack, zero armor, zero rider; flat lighting.
- No text or watermark.
```

---

---

## 06 — `06-nightglow-horse-glow-construction-sheet.png`（STAGE 2 — 發光構造拆解表，無鞍具，取代道具表）


> **調整說明**：CHARACTER_SPEC.md 未載明鞍具設定（配戴克里茲坐騎鞍具屬 V2 另案版本），故本張不畫鞍具。依規則改放「發光構造拆解」，以構造圖／效果研究呈現鬃毛與蹄際的自發光原理及奔馳流光效果，供特效與材質貼圖參考；不含任何角色、人物剪影或騎乘裝備。

```text
Use case: stylized-concept
Asset type: glow-effect construction and breakdown sheet (no tack; effect study only)

Input images:
- Image 1: the approved 01-nightglow-horse-front-fullbody.png — use ONLY to match the coat-and-glow material language; do not depict the full creature.
- Image 2: if this role is not the active style anchor, use the approved anchor 01 resolved from `../../STYLE_ANCHOR.md` for style only; otherwise omit Image 2.

Primary request:
Create a construction/effect-study sheet for the Nightglow Horse's bioluminescent glow, since no saddle, harness or tack is canon for this creature (version V1-BARE-MOUNT):
1. Glow cross-section diagram: an exploded or cross-section illustration showing how the silver-blue glow (#8FB8D6) emanates from within individual mane strands (a soft inner-to-outer light gradient study), not a physical object.
2. Hoof-glow underside study: a close-up diagram of a single hoof from below/behind showing the glow radiating around its base against the ground.
3. Running light-streak effect study: an abstract light-trail/streak graphic showing how the glow elongates into a trailing streak of light when the horse runs, shown as a standalone lighting/VFX reference graphic (no horse body required in this panel).

Props/construction only: no full-body creature, no rider, no human, no saddle, no harness, no reins, no tack, no scale-comparison figure anywhere in this sheet (aside from the small glow-source callouts described above, which may include a partial mane-strand or hoof fragment purely to anchor the effect study).

Composition:
Clean production-sheet layout on a dark or neutral background as appropriate for legibility of the glow effect, panels evenly arranged, no text labels.

Positive style prompt:
refined Japanese anime fantasy VFX design, professional production effect-breakdown sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise self-luminous glow rendering, silver-blue cool light effect, low-contrast neutral background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body creature, rider, human, person, saddle, tack, bridle, harness, reins, character scale inset, wrong palette, neon colors, warm-colored glow, gold glow

Constraints:
- No saddle, harness or tack is depicted anywhere (not canon for version V1-BARE-MOUNT); this sheet is a construction/effect study, not equipment.
- Match the locked silver-blue glow color exactly (#8FB8D6); no other glow hues.
- No full creature body, no human, no rider. No text or watermark.
```

---

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：01 →（使用者核准）→ 02 → 03 → 04 → 05 → 06。本角色**不產 07 號身體參考圖**（非人形，無 SMPL-X 骨架適用性）。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 頭部與馬體輪廓與 01 號正本一致（03–05 的頭部面板亦同）
- [ ] 鬃毛形態與銀藍夜光位置一致（#8FB8D6）
- [ ] 體型比例：相對比例鎖一致（軀幹長＝1.0、頭長 0.4x、頸長 0.55x、尾長 0.65x、肩高 1.05x）
- [ ] 毛色未漂移：通體深黑—深炭 #17151A，無白斑
- [ ] 左右位置正確：全對稱設計，無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移（#17151A／#8FB8D6／#2A2018）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、自然站立姿態、零道具、平光）全部滿足
- [ ] 零道具聲明：no rider, no saddle, no harness, no external props anywhere on the creature（06 除外——06 僅呈現發光構造／效果拆解，非人形道具）
- [ ] 血緣相似：不適用（本角色無血緣親屬）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 01 | 正面（0°）、自然站立、正交、單一視圖；**臉部須清晰可辨——本張為身份／服裝唯一正本** |
| 02 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、自然站立姿態一致、頭頂線與蹄底線水平對齊；相機位於**解剖學左側**（非鏡像翻轉的右側圖）、自然站立、正交；相機位於**解剖學右側**（非鏡像翻轉的左側圖）、自然站立、正交；背面（180°）、自然站立、正交 |
| 03 | 恰好 8 格 4×2、順序正確、僅耳朵／眼神／鼻翼等頭部神態改變，非人類表情 |
| 04 | 鬃毛拆解面板＋蹄際發光細節必須存在，無服裝相關內容 |
| 05 | 色票方塊與鎖定 hex（#17151A／#8FB8D6／#2A2018）完全一致 |
| 06 | 無鞍具；僅發光構造拆解與效果研究圖；無角色、無人物剪影 |
