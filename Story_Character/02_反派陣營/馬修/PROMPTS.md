# 馬修 Matthew — Image Generation Prompts（範本 v2 FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`MATTHEW-V1-CLERIC-ROBE`**（白金高階神職法袍版；本包唯一版本，不混入其他服裝版本）

> ## ⚠️ 服裝版本修正聲明（必讀，修正稽核 §7 違規）
> 前版套件在同一 07／09 內混入兩個服裝版本（白金神職法袍與戰前皮甲），違反規則。**本包正式只鎖定 `MATTHEW-V1-CLERIC-ROBE`；00–10 全部只呈現白金法袍版本，戰前皮甲版本（`MATTHEW-V2-BATTLE-LEATHER`）已從 07、09 全部移除**。`MATTHEW-V2-BATTLE-LEATHER` 尚未建置任何提示詞，若日後需要須另開一組完整 00–10，不得混入本包任何一張圖。

> **兩階段規則（強制）**：第一階段只生成 `00-matthew-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **簽名式標誌（跨圖不變）**：胸前金墜「月天使」神權象徵居中貼身佩戴，任何一張圖都不可省略。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張；本包全部僅呈現 V1 法袍版）：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-matthew-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具（V1 白金法袍） |
| 01 | `01-matthew-front-fullbody.png` | 正面全身，A-pose，零道具 |
| 02 | `02-matthew-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具 |
| 03 | `03-matthew-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具 |
| 04 | `04-matthew-back-fullbody.png` | 背面全身，A-pose，零道具 |
| 05 | `05-matthew-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具（V1） |
| 06 | `06-matthew-expression-sheet.png` | 八表情臉部表，4×2 網格 |
| 07 | `07-matthew-costume-detail-sheet.png` | 服裝細節表（法袍拆解＋無外袍軀幹視圖；**僅 V1，不含 V2 皮甲**） |
| 08 | `08-matthew-color-material-sheet.png` | 色票／材質表（已補固定 hex） |
| 09 | `09-matthew-prop-construction-sheet.png` | 道具表：金墜「月天使」（唯一出現位置）＋天諦正教徽記（**僅 V1，不含 V2 皮甲附件**） |
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
Matthew, a tall, lean, elegant male theocratic mastermind (apparent age 35-45), height read ~180cm, slender 7.5-heads proportions. CANON facial identity: a pale, handsome face with faintly serpentine features; thin lips wearing a composed, calculating, faintly looking-down-from-above smile; narrow calculating eyes. LOCKED anchor defaults: neatly combed long hair in cool silver (#C9CDD1), swept back; pale cool-toned skin (#EDE0D0); cold pale-grey eyes (#B8BEC4). Costume version 1 (CANON direction, sole version in this package): a high-ranking white-and-gold (#F2EDE2 / #D4AF37) silk clergy robe of layered ecclesiastical vestments, with WIDE DRAPING SLEEVES reaching below the wrists; a high clergy collar and symmetric shoulder mantle with gold-thread trim; a gold embroidered religious insignia of the orthodox church on the chest (LOCKED default emblem: a circular crest of a crescent moon cradling a single radiant star, ringed with gold thread). CANON SIGNATURE, never omit: a single prominent GOLD pendant (#D4AF37) hangs at the CENTER of the chest, a "moon-angel" religious emblem (a stylized upright angelic figure fused with an upturned crescent moon), set with one small cold pale-blue gemstone (#A8C8E0), worn close against the chest - this is his repeated recognizable signature, always centered, never offset to one side. Long elegant fingers. Palette: white and gold dominant, cool silver hair, aligned with the whole story's converged gold / silver-blue / dark scheme. He is fully human: no wings, no horns, no tail, no crown, no halo - the "moon-angel" is only the image on the pendant. Character and costume only - no weapons, no handheld items, no standalone props.

Body metrics:
Height read ~180cm. Approximately 7.5 heads tall, tall lean elegant build. Shoulder width approximately 2.0 head-widths. Fully symmetric design: the chest pendant hangs centered, the shoulder mantle is symmetric on both shoulders, no asymmetric feature.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, feathered wings, angel wings, missing chest pendant, pendant offset to one side, elderly wrinkled face, muscular hulking build, beard, leather armor, battle leather, pauldrons made of leather, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (pale faintly serpentine handsome face, thin calculating smile, wide-sleeved white-and-gold clergy robe, prominent gold moon-angel chest pendant as the repeated signature, centered).
- Use the LOCKED anchor defaults exactly (silver combed-back long hair, cold pale-grey eyes, small pale-blue pendant gem, crescent-moon-and-star chest insignia, ~180cm lean elegant build).
- His only rich materials are the white-and-gold silk robe and the gold moon-angel pendant (metal and gem allowed on the pendant only); no black pauldrons, no chains, no horns, no wings, no heavy plate armor, no leather battle armor (that belongs to an unbuilt separate version, not this package).
- Character and costume only: no weapons, no handheld items, no standalone props.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 01 — `01-matthew-front-fullbody.png`（STAGE 2 — 00 核准後）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Matthew as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same pale faintly serpentine handsome face, thin composed calculating smile, cold pale-grey eyes (#B8BEC4), silver combed-back long hair (#C9CDD1), pale cool skin (#EDE0D0).

Body metrics:
Height read ~180cm. Approximately 7.5 heads tall. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Identical white-and-gold clergy robe (V1) from Image 1: wide draping sleeves below the wrists, high clergy collar and symmetric shoulder mantle with gold-thread trim (#D4AF37), gold embroidered chest insignia (crescent-moon-and-star), and the prominent gold "moon-angel" chest pendant with its pale-blue gem (#A8C8E0), hanging centered. NO weapon anywhere.

Composition:
Single figure centered, entire body from hair to hem/feet inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, missing chest pendant, pendant offset to one side, leather armor, battle leather, muscular hulking build, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-matthew-left-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學左側）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Matthew as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens. The design is fully symmetric, so this view should mirror the anatomical-right view (sheet 03).

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, silver combed-back long hair (#C9CDD1), pale cool skin (#EDE0D0).

Body metrics:
Height read ~180cm. Approximately 7.5 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: white-and-gold robe silhouette (#F2EDE2 / #D4AF37), symmetric shoulder mantle, wide sleeve in profile, robe hem trailing to the floor. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, leather armor, battle leather, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-matthew-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Matthew as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. The design is fully symmetric, so this anatomical-right view mirrors the anatomical-left view (sheet 02) exactly.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, silver combed-back long hair (#C9CDD1), pale cool skin (#EDE0D0).

Body metrics:
Height read ~180cm. Approximately 7.5 heads tall. Shoulder width approximately 2.0 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: white-and-gold robe silhouette (#F2EDE2 / #D4AF37), symmetric shoulder mantle, wide sleeve in profile, robe hem trailing to the floor. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, leather armor, battle leather, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- No text or watermark. Do not invent missing canonical details.
```

---

## 04 — `04-matthew-back-fullbody.png`（STAGE 2 — 背面）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Matthew as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same silver combed-back long hair seen from behind (#C9CDD1), same build and proportions.

Body metrics:
Height read ~180cm. Approximately 7.5 heads tall. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Identical attire from Image 1 seen from behind: white-and-gold robe back panel (#F2EDE2 / #D4AF37) with the mantle and gold-thread trim fully visible across the back, robe hem trailing to the floor. The chest pendant hangs at the front and is not visible from behind. NO weapon anywhere.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, leather armor, battle leather, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
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
All four figures are the identical character from Image 1: same face, pale faintly serpentine handsome features, thin composed calculating smile, narrow cold pale-grey eyes (#B8BEC4), silver combed-back long hair (#C9CDD1), pale cool skin (#EDE0D0), lean elegant 7.5-heads proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height read ~180cm. Approximately 7.5 heads tall, lean elegant build.

Costume invariants:
Every view wears the identical costume version 1 from Image 1: high-ranking white-and-gold clergy robe (#F2EDE2 / #D4AF37) with wide draping sleeves below the wrists, high clergy collar and symmetric shoulder mantle with gold-thread trim, gold embroidered chest insignia (crescent-moon-and-star), and the prominent gold "moon-angel" chest pendant with its pale-blue gem (#A8C8E0), hanging centered (back panel of the robe fully shown in the back view; the pendant hangs at the front and is not visible from behind). Same count, positions, colors and materials in all four views. Character and costume only - no weapons, no handheld items, no standalone props.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale and equal size, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, missing chest pendant, pendant offset to one side, leather armor, battle leather, elderly wrinkled face, muscular hulking build, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor, weapon, sword, greatsword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

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
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, pale faintly serpentine handsome features, thin lips, narrow cold pale-grey eyes (#B8BEC4), pale cool skin tone (#EDE0D0), silver combed-back long hair (#C9CDD1), hairline and hair length, neck proportions, the high clergy collar and shoulder mantle, and the top of the gold moon-angel pendant visible at the collar, centered. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed hairline, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, wings, horns, halo, crown, elderly wrinkled face, beard, leather armor, battle leather, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs
```

---

## 07 — `07-matthew-costume-detail-sheet.png`（STAGE 2 — 00 核准後；服裝細節表，僅 V1，不含 V2 皮甲）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation (V1 clergy robe only)

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a costume construction detail sheet for Matthew's ONE canonical costume version (V1, white-and-gold clergy robe), presenting several clean close-up detail studies at a consistent scale.
1. LAYER SEPARATION (required for 3D modeling): the white-and-gold clergy robe with its shoulder mantle drawn SEPARATELY as a flat garment piece, AND one torso view WITHOUT the outer robe/mantle so the body silhouette is fully visible (the gold moon-angel pendant still worn against the torso in this stripped view, since it is his canon accessory, not the outer robe).
2. Robe detail: the high clergy collar and shoulder mantle with gold-thread trim, the wide draping sleeve construction and hem, the white-and-gold layered robe fabric weave, the gold embroidered chest insignia.
3. The gold moon-angel chest pendant, shown large enough to read its crescent-moon-and-angel form clearly, centered on the chest.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Kinship invariants:
None.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: white-and-gold robe palette (#F2EDE2 / #D4AF37), gold-thread embroidery, layered ecclesiastical fabric, wide draping sleeves, and the gold moon-angel pendant form centered on the chest. Do not redesign, add or remove any element; do not introduce leather armor or any second costume version. The pendant is identical in the outer-robe view and the stripped torso view.

Composition:
Several neatly arranged close-up detail callouts on a warm light-gray low-contrast background, consistent scale, balanced negative space, no connecting lines, no grid, no labels or numbers.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, halo, invented accessory, changed color scheme, different material, changed pendant, pendant offset to one side, missing pendant in stripped torso view, leather armor, battle leather, leather pauldrons, bracers, second costume version, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The robe/mantle separation panel and the outer-layer-less torso view (pendant still worn) are mandatory.
- This sheet documents ONLY the V1 clergy robe. Do NOT include any leather armor, pauldrons, bracers or a version-2 swap panel - the battle-leather version is a separate, unbuilt package and must never appear here.
- No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-matthew-color-material-sheet.png`（STAGE 2 — 00 核准後；色票／材質表，已補固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a color and material reference sheet derived from Matthew in Image 1: neatly arranged color swatches and material sample chips showing the white robe primary #F2EDE2, gold-thread embroidery and pendant metal #D4AF37, pale-blue pendant gemstone #A8C8E0, inner-layer silk vestment #F5F0E6, cool silver hair color #C9CDD1, pale skin tone #EDE0D0 and cold pale-grey eye color #B8BEC4. Beside the swatches show small material studies illustrating the fabric-weave, gold polished-metal and gemstone finishes as they appear on the character.

Identity invariants:
Colors and materials must be sampled exactly from Image 1. Do not shift hues, saturation or material appearance. Keep within the story's converged gold / silver-blue / dark scheme.

Kinship invariants:
None.

Costume invariants:
Every swatch and material study corresponds to an element actually present on Image 1 (the V1 clergy robe only); do not add colors or materials not on the character, and do not add any leather-armor material swatch (that belongs to a separate, unbuilt package).

Composition:
Clean rows of color swatches plus adjacent material sample studies on a warm light-gray low-contrast background, consistent chip size, balanced negative space, no hex codes, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for silk, gold metal and gemstone, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, hex codes, neon colors, pastel colors, saturated rainbow palette, changed hue, wrong material, leather swatch, battle leather, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Sample colors and materials exactly from Image 1.
- Character and costume only; zero props; flat lighting.
- This sheet documents ONLY V1 materials; no leather-armor swatches.
- No text or watermark.
```

---

## 09 — `09-matthew-prop-construction-sheet.png`（STAGE 2 — 00 核准後；道具表：金墜唯一出現位置，僅 V1，不含 V2 附件）

```text
Use case: stylized-concept
Asset type: props and construction detail sheet (V1 clergy robe only)

Input images:
- Image 1: the approved 00-matthew-character-identity-anchor.png and sole authority for the props' colors, materials and construction.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a props and construction sheet for Matthew's signature items, drawn ONLY from his single canonical costume version (V1): the gold "moon-angel" pendant shown large in front view, side view and a close detail study of the crescent-moon-and-angel emblem, its pale-blue gemstone setting and its chain; the orthodox-church religious insignia / ecclesiastical emblem (crescent moon cradling a radiant star) as a standalone study; and the V1 robe's collar/mantle/wide-sleeve fastening construction as an attachment study.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a garment attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects only. All props must match Image 1's colors, materials and construction exactly.

Kinship invariants:
None.

Costume/props invariants:
The gold moon-angel pendant is a single prominent piece (a stylized angelic figure combined with a crescent moon, pale-blue gem #A8C8E0) with gold finish (#D4AF37), identical to the pendant on Image 1; the religious insignia matches the chest embroidery on Image 1; the robe fastening construction matches Image 1's V1 attire only. Do not add, remove or redesign any prop. Do NOT include any leather-armor piece, pauldron, bracer or belt from a second costume version - that version is a separate, unbuilt package and must never appear on this sheet.

Composition:
Neatly arranged prop studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the robe attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise embroidery, polished gold metal and gemstone rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, wings, horns, tail, crown, halo, invented prop, changed material, changed pendant, leather armor piece, leather pauldron, bracer, battle-leather belt, second costume version, reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, black pauldrons, heavy metal plate armor

Constraints:
- Match the props' exact appearance to Image 1.
- This sheet documents ONLY V1 props. Any leather-armor attachment study belongs to a separate, unbuilt `MATTHEW-V2-BATTLE-LEATHER` package and must never appear here.
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
Same character as Image 1: same face, silver combed-back long hair (gathered back for this sheet, #C9CDD1), pale cool skin (#EDE0D0), cold pale-grey eyes (#B8BEC4). The body underneath must be consistent with the robed figure of the approved sheets: tall, lean, elegant.

Kinship invariants:
None.

Body metrics:
Height read ~180cm. Approximately 7.5 heads tall, lean elegant build. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

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

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06–08 的人像面板亦同）
- [ ] 髮型、髮色（冷銀後梳長髮）一致；從容俯視笑意一致
- [ ] 身材比例：約 180cm／7.5 頭身／肩寬約 2.0 倍頭寬、頎長清瘦優雅體型
- [ ] 服裝結構與 Costume Lock 一致（僅 V1 白金法袍層次，**不得出現 V2 皮甲任何元素**）
- [ ] 左右位置正確：金墜居中垂於胸口，未偏移至單側；肩帔雙肩對稱
- [ ] 色票未漂移：#F2EDE2／#D4AF37／#C9CDD1／#B8BEC4／#A8C8E0／#F5F0E6／#EDE0D0
- [ ] 金墜「月天使」在每張圖皆貼身居中可見，未被省略
- [ ] 無任何額外武器出現；無 V2 皮甲元素出現於 07／09（09 亦無武器僅道具構造）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（本角色無血緣親屬，見 §13，跳過）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 01 | 正面、A-pose、正交 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」） |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」） |
| 04 | 背面、A-pose、正交 |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 法袍拆解面板＋無外袍軀幹視圖（金墜仍在）必須存在；**不得出現 V2 皮甲替換件** |
| 08 | 色票方塊與鎖定色系（白金／冷銀／冷灰／淡藍寶石）完全一致；不含皮革色票 |
| 09 | 金墜「月天使」唯一出現於此供近距離拆解；無角色全身、無臉、無人物剪影；**不得出現 V2 皮甲附件** |
| 10 | 素體無任何法袍／外層；身體輪廓完全可見；正面＋左側兩視圖；不佩戴金墜（此表為純身體擬合用） |
