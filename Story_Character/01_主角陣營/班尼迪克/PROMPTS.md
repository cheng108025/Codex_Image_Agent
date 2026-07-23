# 班尼迪克 Benedict — Image Generation Prompts（範本 v2 FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`BENEDICT-V1-CLERIC-REGENT`**（神職攝政禮袍版；其他時期／服裝需另立版本，不得混用）

> **既有視覺正本說明（必讀）**：本資料夾已有 `01–09` 正式 PNG（已核准）。本檔 00–10 的 Character definition／Costume invariants 一律以**既有已核准圖片的實際外觀**為準（藍眼、紫羅蘭／藍紫波浪短髮、白色禮袍＋淡紫縱向披帶＋古金刺繡、金十字墜飾、金腰封），文檔原載之「年長攝政王、深紫長袍、樸素冠冕、泛紫光聖劍」文字設定與圖片不符，不予採用（該版本已移入 `CHARACTER_SPEC.md` 文末作為未建置的 `BENEDICT-V0-ELDERLY-REGENT`）；`CHARACTER_SPEC.md` 之固定 hex 色票同步取自既有 PNG 目視結果。

> **既有 PNG 檔名與 canonical 順序的差異（必讀，不得靜默修正）**：資料夾內既有 PNG 使用舊順序命名：`01`＝正面、`02`＝左側、`03`＝背面、`04`＝右側。本文件之 01–04 依交接規範 canonical 結構撰寫（01 正面／02 相機於解剖學左側／03 相機於解剖學右側／04 背面）。因此本檔「03」與「04」章節對應的**既有已核准檔名**與 canonical 編號相反（canonical 03＝右側內容，對應既有檔案 `04-benedict-right-profile-fullbody.png`；canonical 04＝背面內容，對應既有檔案 `03-benedict-back-fullbody.png`），已在對應章節內以提示註明。**不得因此重新命名或覆蓋既有 PNG**；是否要重新生成並統一為 canonical 檔名，由使用者決定。

> **09 道具表待決事項（不阻擋 00–08、10）**：文檔原載班尼迪克持有泛紫光聖劍並交予克里茲，但既有已核准 `01–09` 號 PNG 完全不含此劍。此衝突僅限縮於 09 道具表段落，**去留由使用者裁決，00–08、10 之生成與驗收不受影響、不需等待此項決定**。

> **兩階段規則（強制）**：第一階段只生成 `00-benedict-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG（含既有 01–09）；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張）：

| 編號 | 檔案 | 內容 | 對應既有已核准 PNG |
| --- | --- | --- | --- |
| 00 | `00-benedict-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 | 尚未生成（`PENDING-GENERATION`） |
| 01 | `01-benedict-front-fullbody.png` | 正面全身，A-pose，零道具 | 檔名相同，已核准 |
| 02 | `02-benedict-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具 | 檔名相同，已核准 |
| 03 | `03-benedict-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具 | 內容對應既有 `04-benedict-right-profile-fullbody.png`（檔名編號相反，見上方說明） |
| 04 | `04-benedict-back-fullbody.png` | 背面全身，A-pose，零道具 | 內容對應既有 `03-benedict-back-fullbody.png`（檔名編號相反，見上方說明） |
| 05 | `05-benedict-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 | 檔名相同，已核准（既有圖實際排列可能與 canonical 順序不同，重生成時以此為準） |
| 06 | `06-benedict-expression-sheet.png` | 八表情臉部表，4×2 網格 | 檔名相同，已核准 |
| 07 | `07-benedict-costume-detail-sheet.png` | 服裝細節表（含披帶拆解與無披帶軀幹視圖） | 檔名相同，已核准 |
| 08 | `08-benedict-color-material-sheet.png` | 色票／材質表（已補固定 hex） | 檔名相同，已核准 |
| 09 | `09-benedict-prop-construction-sheet.png` | 道具表：十字墜飾／肩部扣飾／披帶紋章＋（PENDING）泛紫光聖劍 | 檔名相同，已核准（既有圖不含聖劍） |
| 10 | `10-benedict-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） | 尚未生成（`PENDING-GENERATION`） |

---

## 00 — `00-benedict-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Benedict, a young clergy-regent mentor figure (apparent age mid-to-late 20s), height read ~180cm, slender-elegant proportions. Locked facial identity: calm, gentle STEEL-BLUE eyes (#7FA0BE) with a composed, gracious expression; short soft wavy VIOLET/BLUE-PURPLE hair (#6E6693) with a long side-swept fringe; fair warm-toned skin (#F6E4D2); no beard. Costume (locked to the already-approved character sheet look): a floor-length white ecclesiastical/regent robe (#F7F4EE) with a high mandarin-style stand collar trimmed in antique gold (#C9A85E); a pale-lavender/lilac vertical stole (#C2B4DD) draped symmetrically from both shoulders down the front, richly trimmed with antique-gold vine-and-leaf embroidery running its full length; a gold cross pendant set with a central purple gem (#8E63BE), hanging on a gold chain at the chest, layered over an inner decorative chain; an oval purple-gem shoulder clasp brooch in a gold quatrefoil frame fixing the stole symmetrically at both shoulders; a gold waist sash/belt (#C9A85E) with a diamond-shaped faceted purple gem (#8E63BE) at its center buckle; decorative tasseled stole-end panels hanging past the belt on both sides, each bearing a small cross emblem in gold with a purple gem drop and a gold tassel; wide bell sleeves with gold vine-embroidery trim at the cuffs; a white floor-length under-robe with gold hem embroidery; white leather boots (#EDE8DE) with gold embroidery climbing the shin. He carries NO weapon and NO props of any kind - all props belong exclusively to the prop sheet (09).

Body metrics:
Height approximately 180 cm. Approximately 7.2 heads tall, slender-elegant proportions. Shoulder width approximately 2.0 head-widths (lean, graceful clergy build, narrower than a heavyset warrior). Fully symmetric design: stole, shoulder clasps, chest pendant and waist-sash buckle all centered/symmetric, no single-sided asymmetric feature.

Kinship invariants:
None. Benedict has no blood relatives registered in the family tables.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal and gemstone material separation, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, large ornate king's crown, elderly face, deep wrinkles, beard, hunched back, deep-royal-purple robe, dark tunic, gold plate armor, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, holy sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow the locked identity exactly (steel-blue eyes #7FA0BE, violet/blue-purple hair #6E6693, white robe #F7F4EE with lilac stole #C2B4DD, gold trim #C9A85E, purple gem accents #8E63BE).
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All props belong exclusively to sheet 09.
- Full-body view MUST use the standard neutral A-pose defined above; the two portraits are unaffected by the A-pose rule.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 01 — `01-benedict-front-fullbody.png`（STAGE 2 — 已核准；檔名與 canonical 編號相同）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Benedict as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same composed young face, steel-blue eyes (#7FA0BE), short soft wavy violet/blue-purple hair (#6E6693) with side-swept fringe, fair warm skin (#F6E4D2), no beard.

Body metrics:
Height approximately 180 cm. Approximately 7.2 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Costume invariants:
Identical cleric-regent attire from Image 1: white floor-length robe (#F7F4EE) with gold-trimmed high collar, lilac vertical stole (#C2B4DD) with full-length gold vine embroidery, symmetric oval purple-gem shoulder clasps, gold cross pendant with purple gem (#8E63BE), gold waist sash with diamond-shaped purple gem buckle, tasseled stole-end panels with cross emblems, wide bell sleeves with gold cuff embroidery, white boots with gold embroidery. NO weapon anywhere.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, elderly face, deep wrinkles, beard, deep-royal-purple robe, gold plate armor, reference character face, copying any style-image character, weapon, sword, holy sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-benedict-left-profile-fullbody.png`（STAGE 2 — 已核准；相機位於角色解剖學左側）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Benedict as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, short soft wavy violet/blue-purple hair (#6E6693), fair warm skin (#F6E4D2).

Body metrics:
Height approximately 180 cm. Approximately 7.2 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: white robe silhouette (#F7F4EE), lilac stole (#C2B4DD) with gold vine embroidery, oval purple-gem shoulder clasp visible on the near shoulder, gold cross pendant in profile, gold waist sash, stole-end tassel panel, white boots with gold embroidery. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, elderly face, beard, deep-royal-purple robe, gold plate armor, reference character face, copying any style-image character, weapon, sword, holy sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-benedict-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側；⚠️ 對應既有已核准檔案為 `04-benedict-right-profile-fullbody.png`，見檔頭說明，不得重新命名既有 PNG）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Benedict as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. The design is fully symmetric, so this anatomical-right view mirrors the anatomical-left view (sheet 02) exactly.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, short soft wavy violet/blue-purple hair (#6E6693), fair warm skin (#F6E4D2).

Body metrics:
Height approximately 180 cm. Approximately 7.2 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: white robe silhouette (#F7F4EE), lilac stole (#C2B4DD) with gold vine embroidery, oval purple-gem shoulder clasp visible on the near shoulder, gold cross pendant in profile, gold waist sash, stole-end tassel panel, white boots with gold embroidery. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, elderly face, beard, deep-royal-purple robe, gold plate armor, reference character face, copying any style-image character, weapon, sword, holy sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- No text or watermark. Do not invent missing canonical details.
- Note: this canonical slot's already-approved source image is currently stored on disk as `04-benedict-right-profile-fullbody.png` (legacy numbering); do not rename or overwrite it.
```

---

## 04 — `04-benedict-back-fullbody.png`（STAGE 2 — 背面；⚠️ 對應既有已核准檔案為 `03-benedict-back-fullbody.png`，見檔頭說明，不得重新命名既有 PNG）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Benedict as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same short soft wavy violet/blue-purple hair seen from behind (#6E6693), same build and proportions.

Body metrics:
Height approximately 180 cm. Approximately 7.2 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from behind: white robe back panel (#F7F4EE), the lilac stole (#C2B4DD) hanging down the center back with a single cross pendant and long gold tassel at its center, gold vine-embroidery trim visible along the back hem, both symmetric shoulder clasps visible, gold waist sash tied at the back, white boots with gold embroidery seen from behind. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, elderly face, beard, deep-royal-purple robe, gold plate armor, reference character face, copying any style-image character, weapon, sword, holy sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
- Note: this canonical slot's already-approved source image is currently stored on disk as `03-benedict-back-fullbody.png` (legacy numbering); do not rename or overwrite it.
```

---

## 05 — `05-benedict-four-view-master.png`（STAGE 2 — 已核准；四視圖總表）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Benedict containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same composed young face, steel-blue eyes (#7FA0BE), short soft wavy violet/blue-purple hair (#6E6693), fair warm skin (#F6E4D2), no beard, seven-heads-plus lean-elegant proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 180 cm. Approximately 7.2 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Kinship invariants:
None.

Costume invariants:
Every view wears the identical costume from Image 1: white floor-length robe (#F7F4EE) with high gold-trimmed collar, lilac vertical stole (#C2B4DD) with full-length gold vine embroidery, symmetric oval purple-gem shoulder clasps, gold cross pendant with purple gem (#8E63BE), gold waist sash with diamond-shaped purple gem buckle, tasseled stole-end panels with cross emblems, wide bell sleeves with gold cuff embroidery, white boots with gold embroidery. Same count, positions, colors and materials in all four views. NO weapon anywhere.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, elderly face, beard, deep-royal-purple robe, gold plate armor, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, holy sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

> **已知差異**：資料夾內既有已核准 `05-benedict-four-view-master.png` 之實際排列順序未逐一與 canonical「正面→左→右→背」核對；若重新生成，一律以上列 canonical 順序為準，不修改既有 PNG。

---

## 06 — `06-benedict-expression-sheet.png`（STAGE 2 — 已核准 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, collar and color reference (the approved 00-benedict-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Benedict into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, steel-blue eyes (#7FA0BE), fair warm skin tone (#F6E4D2), short soft wavy violet/blue-purple hair (#6E6693), bangs and hair length, no beard, neck proportions, and the visible high gold-trimmed collar with the gold cross pendant (#C9A85E chain, #8E63BE gem). Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
None.

Expression order, left to right and top to bottom:
1. neutral - composed, dignified default expression
2. gentle smile - warm, mentor-like
3. broad smile with visible teeth
4. joyful open laughter
5. surprised
6. angry - stern resolve against betrayal or a strong foe
7. sad - the grief of a guardian's farewell
8. wink

Style:
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, added beard, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, elderly face, beard, deep-royal-purple robe, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

## 07 — `07-benedict-costume-detail-sheet.png`（STAGE 2 — 已核准 — 服裝細節表，含披帶拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Benedict's cleric-regent robe, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the lilac gold-embroidered vertical stole drawn SEPARATELY as a flat garment piece (showing its full-length vine embroidery and tasseled end panels), AND one torso view of the character WITHOUT the stole so the plain white robe front, collar and body silhouette underneath are fully visible.
2. High collar close-up: the gold-trimmed mandarin collar and its neckline construction.
3. Cross pendant detail: the gold cross with its central purple gem (#8E63BE) and chain.
4. Shoulder clasp detail: the oval purple-gem brooch in its gold quatrefoil frame, front view and pin-back view.
5. Waist sash detail: the gold belt/sash with its diamond-shaped purple gem buckle.
6. Stole-end tassel detail: the cross-emblem tasseled panels hanging past the belt.
7. Cuff and hem detail: the wide bell sleeve's gold vine-embroidery cuff trim and the robe's hem embroidery.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin and hair may appear at neck/collar edges only as needed. No full standalone face portrait panel is required.

Costume invariants:
Exact colors and materials from Image 1: white robe (#F7F4EE), lilac stole (#C2B4DD), antique-gold embroidery and fittings (#C9A85E), purple gem accents (#8E63BE), white boots with gold embroidery (#EDE8DE). Same construction as Image 1; no redesign; NO weapon anywhere.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, holy sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The stole separation panel and the stole-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-benedict-color-material-sheet.png`（STAGE 2 — 已核准 — 色票／材質表，已補固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Benedict: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- white robe #F7F4EE
- pale lavender / lilac stole #C2B4DD
- antique gold #C9A85E (embroidery, trim, cross, chain, sash buckle, shoulder clasp, boot embroidery)
- secondary deep gold #B8944A (accent fittings)
- deep purple / amethyst #8E63BE (cross gem, sash-buckle gem, shoulder-clasp gem, tassel-drop gems)
- white boot leather #EDE8DE
- fair warm skin tone #F6E4D2
- violet / blue-purple hair #6E6693
- steel-blue eyes #7FA0BE
Each swatch pairs a flat color block with a small material patch showing how that surface reads (robe fabric weave, embroidery thread sheen, polished gold metal, gem sparkle, boot leather grain).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~180 cm, ~7.2 heads, ~2.0 head-widths shoulders).

Costume invariants:
Exact costume from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for metal, fabric, leather and gemstone, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, holy sword, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-benedict-prop-construction-sheet.png`（STAGE 2 — 已核准 — 道具表；見檔頭「09 道具表待決事項」）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png — use ONLY to match the white/gold/lavender/purple material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Benedict's regalia and equipment:
1. The gold cross pendant: full view and a close detail of the central purple gem (#8E63BE) setting and chain, plus its tassel drop.
2. The shoulder/collar clasp brooch: an oval purple gem set in a gold quatrefoil frame, front view and pin-back view.
3. The tasseled stole-end panels: full panel view with the cross emblem, gem drop and gold tassel, plus an exploded construction study.
4. The waist-sash buckle: the diamond-shaped faceted purple gem buckle, front and side views.
5. PENDING-USER-INPUT / FLAG FOR USER CONFIRMATION: a single purple-glowing holy sword - a cold-steel blade emitting a soft purple magical luminescence (a glow, not neon), with gold fittings - shown with front view, side view and an exploded study of blade, guard, grip and pommel. This sword appears in CHARACTER_SPEC.md's original canon but is NOT present in the already-approved 01-09 image set; include it only if the user confirms it should be added to this character's equipment. This decision does not block sheets 00-08 or 10. If declined, omit this section entirely.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork and gemstone rendering, polished gold material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, two swords, non-glowing sword, blue glowing sword, wrong palette, neon colors, cast shadows, rim light

Constraints:
- If included, this sheet is the ONLY place the purple-glowing holy sword may appear in the entire package.
- Match the established white/gold/lavender/purple palette exactly.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-benedict-body-reference-sheet.png`（STAGE 2 — 尚未生成 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-benedict-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Benedict WITHOUT the robe, stole or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view (camera at the character's anatomical left side). Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no robe, no stole, no loose clothing; the short hair must not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, steel-blue eyes (#7FA0BE), short soft wavy violet/blue-purple hair (#6E6693), fair warm skin (#F6E4D2). The body underneath must be a slender, graceful adult male build consistent with the robed figure of the approved sheets.

Body metrics:
Height approximately 180 cm. Approximately 7.2 heads tall. Shoulder width approximately 2.0 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, crown, boots, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No robe or stole on this sheet (bare shoulders show the true silhouette for fitting).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06 的人像面板亦同）
- [ ] 髮型、瀏海、髮色 #6E6693 一致
- [ ] 身材比例：約 180cm／約 7.2 頭身／肩寬約 2.0 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（白袍、淡紫縱向披帶、古金刺繡、金十字墜飾、金腰封）
- [ ] 左右位置正確：全對稱設計，無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移：#F7F4EE／#C2B4DD／#C9A85E／#B8944A／#8E63BE／#EDE8DE／#F6E4D2／#7FA0BE
- [ ] 無任何武器道具出現（09 除外，且 09 之聖劍為 PENDING-USER-INPUT）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（無血緣角色）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 01 | 正面、A-pose、正交 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」） |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；對應既有已核准檔名 `04-benedict-right-profile-fullbody.png` |
| 04 | 背面、A-pose、正交；對應既有已核准檔名 `03-benedict-back-fullbody.png` |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 披帶拆解面板＋無披帶軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定 hex 完全一致 |
| 09 | 十字墜飾／肩部扣飾／披帶紋章為主體；聖劍段落須經使用者確認才生成，不阻擋本張其餘內容；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；無披帶無飾品 |
