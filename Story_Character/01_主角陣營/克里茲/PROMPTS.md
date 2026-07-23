# 克里茲 Kritz — Image Generation Prompts（範本 v2 FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`KRITZ-V1-1587-EXPEDITION`**（1587 遠征／流亡實戰版；其他時期／服裝需另立版本，不得混用）

> **既有視覺正本說明（必讀）**：本資料夾已有 `01–09` 正式 PNG（已核准）。本檔 00–10 的 Character definition／Costume invariants 一律以**既有已核准圖片的實際外觀**為準（紅金瞳、暗金／亞麻短髮、黑色長袍＋古金肩甲流蘇鏈飾、腰間金色束帶、雙生聖劍），角色文檔僅用於表情、道具語意與正典方向補充；`CHARACTER_SPEC.md` 之固定 hex 色票同步取自既有 PNG 目視結果。
>
> **既有 PNG 檔名與 canonical 順序的差異（必讀，不得靜默修正）**：資料夾內既有 PNG 使用舊順序命名：`01`＝正面、`02`＝左側、`03`＝背面、`04`＝右側。本文件之 01–04 依交接規範 canonical 結構撰寫（01 正面／02 相機於解剖學左側／03 相機於解剖學右側／04 背面）。因此本檔「03」與「04」章節對應的**既有已核准檔名**與 canonical 編號相反（canonical 03＝右側內容，對應既有檔案 `04-kritz-right-profile-fullbody.png`；canonical 04＝背面內容，對應既有檔案 `03-kritz-back-fullbody.png`），已在對應章節內以提示註明。**不得因此重新命名或覆蓋既有 PNG**；是否要重新生成並統一為 canonical 檔名，由使用者決定。

> **兩階段規則（強制）**：第一階段只生成 `00-kritz-character-identity-anchor.png`（三視圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，缺一即 REJECT 重生成），生成後停止等待使用者核准。核准後 00 成為 01–10 的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG（含既有 01–09）；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張）：

| 編號 | 檔案 | 內容 | 對應既有已核准 PNG |
| --- | --- | --- | --- |
| 00 | `00-kritz-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 頭肩，零道具 | 尚未生成（`PENDING-GENERATION`） |
| 01 | `01-kritz-front-fullbody.png` | 正面全身，A-pose，零道具 | 檔名相同，已核准 |
| 02 | `02-kritz-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具 | 檔名相同，已核准 |
| 03 | `03-kritz-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具 | 內容對應既有 `04-kritz-right-profile-fullbody.png`（檔名編號相反，見上方說明） |
| 04 | `04-kritz-back-fullbody.png` | 背面全身，A-pose，零道具 | 內容對應既有 `03-kritz-back-fullbody.png`（檔名編號相反，見上方說明） |
| 05 | `05-kritz-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 | 檔名相同，已核准（既有圖實際排列為正／左／背／右，與 canonical 順序不同，見 SPEC 待確認事項） |
| 06 | `06-kritz-expression-sheet.png` | 八表情臉部表，4×2 網格 | 檔名相同，已核准 |
| 07 | `07-kritz-costume-detail-sheet.png` | 服裝細節表（含長外袍拆解與無外袍軀幹視圖） | 檔名相同，已核准 |
| 08 | `08-kritz-color-material-sheet.png` | 色票／材質表（已補固定 hex） | 檔名相同，已核准 |
| 09 | `09-kritz-prop-construction-sheet.png` | 道具表：雙生聖劍（唯一出現位置）＋王室徽記＋母親項鍊＋披風／肩甲扣件 | 檔名相同，已核准 |
| 10 | `10-kritz-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） | 尚未生成（`PENDING-GENERATION`） |

---

## 00 — `00-kritz-character-identity-anchor.png`（STAGE 1 — 只先生成這張，停止等核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Kritz, a lean young prince in exile (apparent age 18-19), height read ~178cm, slender-but-honed seven-heads proportions. Locked facial identity: warm RED-GOLD / amber-orange eyes (#D9832E) with a cold, suppressed gaze and faint shadows under the eyes; warm bronze-brown / dark-gold-flax short tousled hair (#6E5A47) with a boyish, slightly messy cut; fair, cool-toned skin (#F0DAC5). Lips show a faint cracked, bloody chapping (a skin-texture detail, not an accessory). Costume (locked to the already-approved character sheet look): a black long coat/robe (#1B1B1D) with a high stand collar, a pale ivory inner shirt collar (#EDE3D0) peeking above it; ornate antique-gold decorative pauldron-like shoulder pieces (#B08D4E) trimmed with hanging tassels and small deep-purple gem accents (#7B4FA0), worn symmetrically over both shoulders; a layered antique-gold chain draped across the chest with deep-purple gem accents and one small teal-blue accent gem (#4E8FA0), doubling as the mount for his late mother's necklace (amber/topaz gem #C97B2E) tucked close to the chest; a torso-front X-shaped leather harness strap connecting both shoulders symmetrically; fine antique-gold cross-hatch / vine embroidery trim along the coat's front edges, cuffs and hem; a wide antique-gold sash-style belt at the waist; the long black coat skirts fall to near ankle length with gold trim and diamond-shaped gold pendant drops at the hem points; black trousers; black boots with antique-gold cross-lace trim. He carries NO weapon and NO props of any kind - the twin holy swords belong exclusively to the prop sheet (09).

Body metrics:
Height approximately 178 cm. Approximately 7.0 heads tall, slender-but-honed proportions. Shoulder width approximately 2.2 head-widths (lean, honed youth-to-adult build, narrower than a heavyset warrior). Fully symmetric design: twin holy swords worn symmetrically at the waist, pauldrons and chest X-harness symmetric on both shoulders, no single-sided asymmetric feature.

Kinship invariants:
He is the son of Aldrich (father, family ROYAL) and Queen Agnes (mother); Kritz is the ROYAL family's resemblance anchor - his identity is locked first, and his parents' identity sheets are generated and matched against him afterward. He inherits his warm red-gold eyes from his mother Agnes's hollow gold eyes (her gold is the origin of his gold). His jaw and brow read as a leaner, younger echo of his father Aldrich's square jaw and deep-set brow, now sharpening toward adulthood. Distinguishing traits that must NOT be confused with his parents: dark-gold/flax short hair (never his father's near-black hair, never his mother's pale-gold waist-length hair); a lean, honed youth-to-adult build (never his father's heavyset frame); clean-shaven, no beard; healthy cool-toned skin (never his mother's frail sickly pallor).

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal and gemstone material separation, restrained luminous highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, beard, heavyset build, muscular hulking build, pale-gold waist-length hair, hollow unfocused eyes, sickly pallor, blue eyes, green eyes, single sword, three swords, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow the locked identity exactly (red-gold/amber-orange eyes #D9832E, warm bronze-brown hair #6E5A47, cracked lips, black coat #1B1B1D with antique-gold #B08D4E tasseled pauldrons and chain, gold sash belt).
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons belong exclusively to sheet 09.
- Full-body view MUST use the standard neutral A-pose defined above; the two portraits are unaffected by the A-pose rule.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
- Plain warm light-gray background. No text, labels, logo, signature or watermark.
```

---

## 01 — `01-kritz-front-fullbody.png`（STAGE 2 — 已核准；檔名與 canonical 編號相同）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Kritz as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose.

Identity invariants:
Identical character from Image 1: same lean youthful face, red-gold/amber-orange eyes (#D9832E) with a cold suppressed gaze, warm bronze-brown short tousled hair (#6E5A47), fair cool-toned skin (#F0DAC5), faintly cracked lips.

Body metrics:
Height approximately 178 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.2 head-widths. Fully symmetric design.

Costume invariants:
Identical exile-era attire from Image 1: black long coat (#1B1B1D) with high stand collar and ivory inner shirt edge (#EDE3D0), symmetric antique-gold tasseled pauldrons (#B08D4E) with deep-purple gem accents (#7B4FA0), layered antique-gold chest chain with the amber mother's-necklace pendant (#C97B2E), front X-shaped harness strap, wide antique-gold sash belt, ankle-length coat skirts with gold hem trim and diamond pendant drops, black trousers, black boots with antique-gold cross-lace trim. NO weapon anywhere; the twin holy swords are reserved for prop sheet 09.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, beard, heavyset build, pale-gold long hair, sickly pallor, blue eyes, single sword, three swords, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-kritz-left-profile-fullbody.png`（STAGE 2 — 已核准；相機位於角色解剖學左側）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Kritz as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, warm bronze-brown short tousled hair (#6E5A47), fair cool-toned skin (#F0DAC5).

Body metrics:
Height approximately 178 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.2 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: black coat silhouette (#1B1B1D), antique-gold pauldron and tassels (#B08D4E) with deep-purple gem accent (#7B4FA0) visible on the near shoulder, chest chain and X-harness strap in profile, antique-gold sash belt, coat skirt hem trim and pendant drops, black boots with gold cross-lace trim. NO weapon anywhere; the twin holy swords are reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, beard, heavyset build, pale-gold long hair, sickly pallor, blue eyes, single sword, three swords, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-kritz-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側；⚠️ 對應既有已核准檔案為 `04-kritz-right-profile-fullbody.png`，見檔頭說明，不得重新命名既有 PNG）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Kritz as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. The design is fully symmetric, so this anatomical-right view mirrors the anatomical-left view (sheet 02) exactly.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, warm bronze-brown short tousled hair (#6E5A47), fair cool-toned skin (#F0DAC5).

Body metrics:
Height approximately 178 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.2 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: black coat silhouette (#1B1B1D), antique-gold pauldron and tassels (#B08D4E) with deep-purple gem accent (#7B4FA0) visible on the near shoulder, chest chain and X-harness strap in profile, antique-gold sash belt, coat skirt hem trim and pendant drops, black boots with gold cross-lace trim. NO weapon anywhere; the twin holy swords are reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, beard, heavyset build, pale-gold long hair, sickly pallor, blue eyes, single sword, three swords, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- No text or watermark. Do not invent missing canonical details.
- Note: this canonical slot's already-approved source image is currently stored on disk as `04-kritz-right-profile-fullbody.png` (legacy numbering); do not rename or overwrite it.
```

---

## 04 — `04-kritz-back-fullbody.png`（STAGE 2 — 背面；⚠️ 對應既有已核准檔案為 `03-kritz-back-fullbody.png`，見檔頭說明，不得重新命名既有 PNG）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Kritz as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer.

Identity invariants:
Identical character from Image 1: same warm bronze-brown short tousled hair seen from behind (#6E5A47), same build and proportions.

Body metrics:
Height approximately 178 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.2 head-widths. Fully symmetric design.

Costume invariants:
Identical attire from Image 1 seen from behind: black coat back panel (#1B1B1D) with the split, jagged hem trailing to the ankles in gold-trimmed points and diamond pendant drops, both antique-gold pauldrons with tassels (#B08D4E) and the symmetric front-to-back X-harness strap fully visible across the back, the wide antique-gold sash belt tied at the back, twin sword-belt mount points at the waist/back (no swords shown), black boots with gold cross-lace trim seen from behind. NO weapon anywhere; the twin holy swords are reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, beard, heavyset build, pale-gold long hair, single sword, three swords, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
- Note: this canonical slot's already-approved source image is currently stored on disk as `03-kritz-back-fullbody.png` (legacy numbering); do not rename or overwrite it.
```

---

## 05 — `05-kritz-four-view-master.png`（STAGE 2 — 已核准；⚠️ 既有 PNG 實際排列為正／左／背／右，與下列 canonical 順序不同，見 SPEC 待確認事項）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render a single master turnaround sheet of Kritz containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose.

Identity invariants:
All four figures are the identical character from Image 1: same face, red-gold/amber-orange eyes with faint under-eye shadows (#D9832E), warm bronze-brown short tousled hair (#6E5A47), fair cool skin (#F0DAC5), faintly cracked lips, seven-heads lean-honed proportions. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Body metrics:
Height approximately 178 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.2 head-widths. Fully symmetric design.

Kinship invariants:
Same as Image 1: red-gold eyes trace to his mother Agnes's gold; jaw/brow read as a leaner, younger echo of his father Aldrich's. Must not show a beard, heavyset build, pale-gold long hair or sickly pallor in any of the four views.

Costume invariants:
Every view wears the identical costume from Image 1: black long coat (#1B1B1D) with high stand collar and pale ivory inner-shirt edge (#EDE3D0), symmetric antique-gold tasseled pauldrons (#B08D4E) with deep-purple gem accents (#7B4FA0), layered antique-gold chest chain with amber mother's-necklace pendant (#C97B2E), front/back X-harness strap, wide antique-gold sash belt, ankle-length coat skirts with gold hem trim and diamond pendant drops, black trousers, black boots with antique-gold cross-lace trim. Same accessory count, positions, colors and materials in all four views. NO weapon anywhere; the twin holy swords are reserved for sheet 09.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, wings, horns, tail, crown, beard, heavyset build, pale-gold long hair, sickly pallor, single sword, three swords, blue eyes, inconsistent scale between views, different height per view, mismatched costume between views, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved identity from Image 1 in all four views; Images 2-4 are style only.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

> **已知差異**：資料夾內既有已核准 `05-kritz-four-view-master.png` 實際排列順序為「正面→左→背→右」，與上列 canonical「正面→左→右→背」不同（README 已如實記載為「原始正／左／背／右四視圖總表」）。本次僅更新文字提示詞為 canonical 順序供未來重新生成參考，不修改既有 PNG；是否重生成以修正順序，由使用者決定。

---

## 06 — `06-kritz-expression-sheet.png`（STAGE 2 — 已核准 — 八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, collar and color reference (the approved 00-kritz-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Kritz into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70-75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, red-gold/amber-orange eyes (#D9832E) with a cold suppressed gaze, fair cool skin tone (#F0DAC5), warm bronze-brown short tousled hair (#6E5A47), bangs and hair length, faintly cracked lips, neck proportions, and the visible high black collar (#1B1B1D) with the antique-gold chain (#B08D4E) and its deep-purple gem accents (#7B4FA0). Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

Kinship invariants:
His red-gold eyes trace to his mother Agnes's gold and must stay warm red-gold in every panel, never hollow gold and never his father's deep brown. His jaw/brow read as a leaner echo of his father Aldrich's square jaw and deep brow. He must remain clean-shaven in every panel.

Expression order, left to right and top to bottom:
1. neutral - cold, suppressed default expression
2. gentle smile - rare, restrained softness
3. broad smile with visible teeth
4. joyful open laughter
5. surprised
6. angry - the cold fury of his composed shell cracking
7. sad - suppressed, unshed grief
8. wink

Style:
Refined Japanese anime fantasy character design, professional production expression sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, detailed eyes and hair strands, soft diffused studio lighting, consistent white balance, pure white seamless background, high-resolution polished concept art, 85mm portrait-lens framing equivalent.

Hard constraints:
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories.

Negative prompt:
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, hollow gold eyes, blue eyes, beard, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel
```

---

## 07 — `07-kritz-costume-detail-sheet.png`（STAGE 2 — 已核准 — 服裝細節表，含長外袍拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a professional costume construction sheet for Kritz's exile-era attire, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the long black coat drawn SEPARATELY as a flat garment piece (showing the antique-gold cross-hatch/vine trim and hem pendant drops), AND one torso view of the character WITHOUT the coat so the inner shirt, chest chain, front X-harness and body silhouette are fully visible.
2. Pauldron close-up: the ornate antique-gold tasseled shoulder piece with its small deep-purple gem accent and attachment strap.
3. Chest chain detail: the layered antique-gold chain draped across the chest with the amber mother's-necklace pendant, worn close over the collar.
4. Sash-belt detail: the wide antique-gold waist sash.
5. Hem detail: the coat's gold trim and diamond-shaped pendant drops at the hem points.
6. Boot detail: black boots with antique-gold cross-lace trim.

Identity invariants:
All partial-figure panels depict the same character body from Image 1; skin and hair may appear at neck/collar edges only as needed. No full standalone face portrait panel is required.

Costume invariants:
Exact colors and materials from Image 1: black coat and trousers (#1B1B1D), antique-gold trim/pauldrons/chain/sash (#B08D4E), deep-purple gem accents (#7B4FA0), small teal-blue accent gem (#4E8FA0), amber mother's-necklace gem (#C97B2E), black boots with gold trim. Same construction as Image 1; no redesign; NO weapon anywhere (twin holy swords belong to sheet 09).

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, precise embroidery, layered fabric, polished metal and gemstone material separation, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The coat separation panel and the coat-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-kritz-color-material-sheet.png`（STAGE 2 — 已核准 — 色票／材質表，已補固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Create a production color-and-material sheet for Kritz: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- jet black #1B1B1D (coat, trousers, boots base)
- antique gold #B08D4E (pauldron trim, chain, sash, hem trim, boot trim)
- deep brown leather #3C2E24 (belt/boot leather layer)
- deep purple / amethyst #7B4FA0 (pauldron and chain gem accents)
- small teal-blue accent gem #4E8FA0 (minor chain accent)
- amber / topaz #C97B2E (mother's necklace pendant gem)
- pale ivory #EDE3D0 (inner shirt)
- pale skin tone #F0DAC5
- warm bronze-brown hair #6E5A47
- red-gold / amber-orange eyes #D9832E
Each swatch pairs a flat color block with a small material patch showing how that surface reads (coat fabric weave, polished metal sheen, gem sparkle, leather boot grain).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~178 cm, ~7.0 heads, ~2.2 head-widths shoulders).

Costume invariants:
Exact costume from Image 1; no redesign; NO weapon anywhere.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only, hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for metal, fabric, leather and gemstone, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, scabbard, holding weapon, cast shadows, rim light, extra character, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-kritz-prop-construction-sheet.png`（STAGE 2 — 已核准 — 道具表：雙生聖劍唯一出現位置）

```text
Use case: stylized-concept
Asset type: prop and construction sheet (props only)

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png — use ONLY to match the black/antique-gold/purple material language and craftsmanship level; do not depict the character.
- Images 2-4: shared style references only; do not copy their characters.

Primary request:
Create a props-only construction sheet for Kritz's equipment:
1. The TWIN HOLY SWORDS (sole appearance in the whole package): shown as a matched symmetric pair (exactly two, identical to each other), front view, side view and an exploded/disassembled study of blade, guard, grip and pommel - cold-steel blades (#8C97A3) with antique-gold fittings (#B08D4E) and small deep-purple gem accents (#7B4FA0); include the scabbards and the sword-belt mount points as separate callouts.
2. The Hector royal crest as a standalone enlarged emblem study (simplified wartime star-motif rendering, antique gold relief).
3. His late mother's necklace shown in full and in close detail: antique-gold chain, amber/topaz pendant gem (#C97B2E).
4. The coat's shoulder-pauldron attachment hardware, the chest chain, and the front/back X-harness and sash-belt mount points, shown as attachment studies.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Composition:
Clean production-sheet layout on warm light-gray background, items evenly arranged, flat even ambient lighting, no text labels.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise metalwork and gemstone rendering, polished gold and cold steel material separation, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, hands, arms, single sword, three swords, mismatched sword pair, wrong palette, neon colors, cast shadows, rim light

Constraints:
- This sheet is the ONLY place the twin holy swords may appear in the entire package.
- Match the established black/antique-gold/deep-purple/amber palette exactly.
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-kritz-body-reference-sheet.png`（STAGE 2 — 尚未生成 — 素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-kritz-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Kritz WITHOUT the coat, pauldrons, chains or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view (camera at the character's anatomical left side). Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no coat, no pauldrons, no chains, no loose clothing; the short hair must not cover the neck or shoulder outline.

Identity invariants:
Same character as Image 1: same face, red-gold/amber-orange eyes (#D9832E), warm bronze-brown short hair (#6E5A47), fair cool skin (#F0DAC5). The body underneath must be consistent with the clothed figure of the approved sheets: slender, honed, lean youth-to-adult build.

Body metrics:
Height approximately 178 cm. Approximately 7.0 heads tall. Shoulder width approximately 2.2 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, pauldrons, chain, boots, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No coat, pauldrons or chains on this sheet (bare shoulders show the true silhouette for fitting).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06 的人像面板亦同）
- [ ] 髮型、瀏海、髮色 #6E5A47 一致
- [ ] 身材比例：約 178cm／約 7.0 頭身／肩寬約 2.2 倍頭寬
- [ ] 服裝結構與 Costume Lock 一致（黑色長袍、古金肩甲流蘇、古金鏈、古金束帶、金邊下襬、X 型背帶）
- [ ] 左右位置正確：全對稱設計，無新增單側特徵、無鏡像錯亂
- [ ] 色票未漂移：#1B1B1D／#B08D4E／#3C2E24／#8A6F45／#7B4FA0／#4E8FA0／#C97B2E／#EDE3D0／#F0DAC5／#6E5A47／#D9832E
- [ ] 無任何武器道具出現（09 除外）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：本角色為 ROYAL 家族錨點，此項待父母 00 核准後回溯比對；紅金瞳與方正下顎線索須可辨識地延續給日後核准的奧德里奇／阿格妮絲 00

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT |
| 01 | 正面、A-pose、正交 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」） |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；對應既有已核准檔名 `04-kritz-right-profile-fullbody.png` |
| 04 | 背面、A-pose、正交；對應既有已核准檔名 `03-kritz-back-fullbody.png` |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊（既有 PNG 實際順序為正／左／背／右，見上方已知差異註記） |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變 |
| 07 | 長外袍拆解面板＋無外袍軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定 hex 完全一致 |
| 09 | 雙生聖劍唯一出現於此；無角色、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；無肩甲無鏈飾 |
