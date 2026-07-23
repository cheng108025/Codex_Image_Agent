# 伊普拉新 Ipranshin — Image Generation Prompts（範本 v2 FULL package: 00–10）

> **用途聲明（必讀）**
> 這套圖片是 **3D 建模參考包（modeling reference pack）**，不是完成的 3D 模型。
> 純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以本參考包建立同一個經核准的 **Blender／VRM 角色模型**，並以該模型作為**唯一角色正本**驅動所有鏡頭。

> **角色版本 ID：`IPRANSHIN-V1-SHADOW-SCHEMER`**（陰影謀士版；其他時期／服裝需另立版本，不得混用）

> **既有視覺正本說明（必讀）**：本資料夾已有 `00–09` 正式 PNG（已核准）。本檔 00–10 的 Character definition／Costume invariants 一律以**既有已核准圖片的實際外觀**為準（深暗琥珀瞳、近黑短至中髮、炭黑／深靛藍／暗褐兜帽神職長袍、左胸暗金圓形神職徽記），角色文檔僅用於道具語意與正典方向補充；`CHARACTER_SPEC.md` 之固定 hex 色票同步取自既有 PNG 目視結果。
>
> **既有 PNG 檔名與 canonical 順序的差異（必讀，不得靜默修正）**：資料夾內既有 PNG 使用舊順序命名：`01`＝正面、`02`＝左側、`03`＝背面、`04`＝右側。本文件之 01–04 依交接規範 canonical 結構撰寫（01 正面／02 相機於解剖學左側／03 相機於解剖學右側／04 背面）。因此本檔「03」與「04」章節對應的**既有已核准檔名**與 canonical 編號相反（canonical 03＝右側內容，對應既有檔案 `04-ipranshin-right-profile-fullbody.png`；canonical 04＝背面內容，對應既有檔案 `03-ipranshin-back-fullbody.png`），已在對應章節內以提示註明。**不得因此重新命名或覆蓋既有 PNG**；是否要重新生成並統一為 canonical 檔名，由使用者決定。

> **兩階段規則（強制）**：第一階段只生成 `00-ipranshin-character-identity-anchor.png`（三視圖，缺一不可），生成後停止等待使用者核准。核准後 00 成為本包其餘各表的 Image 1 身份／服裝唯一正本。三張 style 圖永遠只控制畫風。
> **檔案安全**：不得刪除或覆蓋現有 PNG；重生成先以新檔名或 `rejects/` 存放，核准後才取代正本。
> **臉部可辨規則（不變）**：設計整體傾向半明半暗與陰影，但 00 號身份基準圖必須讓臉清楚可辨、足以作為後續圖片的身份權威；半明半暗以「臉部一側柔和陰影」表現，絕不遮蔽五官或藏於兜帽空洞。
> **無固定武器**：伊普拉新為非戰鬥謀士，09 特殊構造表改放神職紋章、兜帽構造與袖藏經卷機構等特殊構造細節。
> **注意**：`FULL_WORKFLOW_PROMPTS.md` 為既有分工文件，不在本次改版範圍內，不得觸碰。
> 本包為 FULL v2 完整 11 條（00–10），每條提示詞獨立完整，勿合併。

共用畫風參考（style only, do not copy their characters）：
- `../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

生成順序與檔名（FULL package：00–10，人形角色不豁免任何一張）：

| 編號 | 檔案 | 內容 | 對應既有已核准 PNG |
| --- | --- | --- | --- |
| 00 | `00-ipranshin-character-identity-anchor.png` | 身份母圖：A-pose 正面全身＋正面頭肩＋45° 三分之四頭肩，零道具，臉須清楚可辨 | 檔名相同，已核准 |
| 01 | `01-ipranshin-front-fullbody.png` | 正面全身，A-pose，零道具 | 檔名相同，已核准 |
| 02 | `02-ipranshin-left-profile-fullbody.png` | 相機位於角色解剖學左側全身，A-pose，零道具（紋章可見） | 檔名相同，已核准 |
| 03 | `03-ipranshin-right-profile-fullbody.png` | 相機位於角色解剖學右側全身，A-pose，零道具（紋章在遠側不可見） | 內容對應既有 `04-ipranshin-right-profile-fullbody.png`（檔名編號相反，見上方說明） |
| 04 | `04-ipranshin-back-fullbody.png` | 背面全身，A-pose，零道具 | 內容對應既有 `03-ipranshin-back-fullbody.png`（檔名編號相反，見上方說明） |
| 05 | `05-ipranshin-four-view-master.png` | 四視圖總表（正面→左→右→背），零道具 | 檔名相同，已核准 |
| 06 | `06-ipranshin-expression-sheet.png` | 八表情臉部表，4×2 網格 | 檔名相同，已核准 |
| 07 | `07-ipranshin-costume-detail-sheet.png` | 服裝細節表（兜帽斗篷拆解＋無斗篷軀幹視圖） | 檔名相同，已核准 |
| 08 | `08-ipranshin-color-material-sheet.png` | 色票／材質表（已補固定 hex） | 檔名相同，已核准 |
| 09 | `09-ipranshin-prop-construction-sheet.png` | 特殊構造表：神職紋章拆解＋兜帽構造＋袖藏經卷密令機構（無固定武器） | 檔名相同，已核准（實際檔名 `09-ipranshin-props-construction-sheet.png`） |
| 10 | `10-ipranshin-body-reference-sheet.png` | 素體參考圖（SMPL-X／人體擬合用） | 尚未生成（`PENDING-GENERATION`） |

---

## 00 — `00-ipranshin-character-identity-anchor.png`（STAGE 1 — 已核准）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet (three views)

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
Ipranshin, a shadow-dwelling clergy schemer, a mid-aged man (apparent age read as a seasoned, deeply calculating advisor), height read ~180cm, slender seven-heads proportions whose body outline is deliberately swallowed and concealed by a wide loose robe. CANON silhouette: he wears a dark hooded clerical robe with an oversized hood and a heavy draped hooded mantle that hides his frame; the visible face is normally half-lit, half in shadow. CANON detail: wide long sleeves contain inner storage for rolled parchment scrolls and hidden orders. His whole presence is "voice-first, face-later" and enigmatic. IMPORTANT for this identity anchor: although the deployed design leans shadowed and half-lit, this anchor sheet MUST render a clear, fully identifiable face in all three views (it is the facial identity authority for later generations) - express the half-lit mood only as a soft shadow falling across one side of the face, never as obscured or hidden features. LOCKED identity defaults (concrete, no ambiguity): deep dark amber eyes (#6E4A17); sleek near-black dark hair (#17151A) in a short-to-medium cut with the front hairline and the whole face fully exposed; fair cool skin (#F0DECB); the oversized hood is worn pushed back and low enough that the entire face and front hairline read clearly, so the hood frames but never covers the face; a single small restrained dark-gold embroidered circular Tiandi-Orthodox clerical sigil (#8A7239) on the LEFT chest. Costume: loose dark clerical robe over a high covered collar joined to the hood, the left-chest dark-gold clerical sigil as the only chest trim, a low understated sash at the waist, floor-length heavy draped robe with the hooded mantle falling behind the arms, dark soft boots visible under the hem. Materials: matte dark woven wool cloth robe and draped mantle (charcoal #2B2A2E, deep indigo #2E3550, dark umber brown #4A362B), minimal low-key dark-metal fittings only (#6E7079), absolutely no gemstones and no shining jewels. Palette: dark charcoal, deep indigo and dark brown dominant, with restrained dark-gold / dark-silver clerical trim, aligned with the whole story's converged dark scheme. No armor, no weapon. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Body metrics:
Height read ~180cm. Approximately 7.0 heads tall, slender build concealed by the wide robe. Shoulder width approximately 2.0 head-widths (slender frame concealed by the wide robe; DESIGN-PROPOSAL, overridable). Left-right asymmetric feature (LOCKED default): the single dark-gold clerical sigil (#8A7239) sits on the LEFT chest - this side must stay fixed across all sheets, never mirrored.

Kinship invariants:
None. Ipranshin has no established blood relatives in the family registry; no kinship resemblance constraints apply.

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character - all three are mandatory, the sheet is invalid if any view is missing:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, both arms clearly separated from the torso so the wide sleeves hang naturally and both relaxed hands remain visible beyond the cuffs);
2. one large straight-on head-and-shoulders portrait, with the face clearly and fully identifiable, the half-lit mood expressed only as a soft shadow on one side of the face;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference), face equally identifiable.
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only - no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, fabric-focused material separation with minimal dark-metal fittings, restrained highlights, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, bright cheerful lighting, sunny high-key lighting, armor, plate armor, weapon, sword, wings, horns, tail, crown, fully hidden face, blank void under hood, muscular warrior build, ornate gemstones, gold pauldrons, shining jewels, heavy metal armor, mirrored sigil on right chest, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly (dark hooded clerical robe concealing the frame, half-lit mood shown as soft one-sided face shadow only, wide sleeves hiding scrolls and hidden orders, non-combatant schemer).
- The face must stay clear and identifiable in all three views; never hide the face in shadow on this anchor.
- Character and costume only: no weapons, no handheld items, no standalone props. All accessories (sigil, hood construction, sleeve mechanism) belong exclusively to the prop construction sheet (09).
- The mantle stays behind the arms; the sleeves must not fuse into the torso or mantle, and both hands must remain fully visible beyond the cuffs.
- The left-chest sigil position is fixed and must never be mirrored to the right chest in any sheet.
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

---

## 01 — `01-ipranshin-front-fullbody.png`（STAGE 2 — 已核准；檔名與 canonical 編號相同）

```text
Use case: identity-preserve
Asset type: single front-view full-body orthographic reference

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Ipranshin as ONE full-body front view (0 degrees) in true orthographic projection, in the standard neutral A-pose: standing upright, feet shoulder-width apart, toes forward, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated so the wide sleeves hang naturally and both hands remain visible beyond the cuffs, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Face clearly identifiable, half-lit mood shown only as a soft one-sided shadow.

Identity invariants:
Identical character from Image 1: same calm calculating face, deep dark amber eyes (#6E4A17), sleek near-black hair (#17151A), fair cool skin (#F0DECB).

Body metrics:
Height read ~180cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths. Left-chest sigil fixed on the LEFT side.

Costume invariants:
Identical shadow-schemer attire from Image 1: dark hooded clerical robe (#2B2A2E / #2E3550 / #4A362B) with oversized hood pushed back (face fully visible), draped hooded mantle, high covered collar joined to the hood, the single dark-gold clerical sigil (#8A7239) on the LEFT chest, wide long sleeves with concealed inner storage, low understated waist sash, floor-length heavy draped robe, dark soft boots. NO weapon, NO handheld prop anywhere; all accessories reserved for prop sheet 09.

Composition:
Single figure centered, entire body from hair to boot soles inside frame, flat even ambient lighting with no cast shadows, warm light-gray low-contrast background, no props, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-metal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, bright cheerful lighting, armor, weapon, sword, wings, horns, tail, crown, fully hidden face, blank void under hood, ornate gemstones, gold pauldrons, shining jewels, mirrored sigil on right chest, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, side view, profile, back view, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic front view.
- Left-chest sigil position fixed; not mirrored.
- No text or watermark. Do not invent missing canonical details.
```

---

## 02 — `02-ipranshin-left-profile-fullbody.png`（STAGE 2 — 已核准；相機位於角色解剖學左側，紋章可見）

```text
Use case: identity-preserve
Asset type: single anatomical-left-side full-body orthographic reference

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Ipranshin as ONE full-body view with the camera positioned at the character's anatomical LEFT side (the camera looks directly at the character's left flank; the character's left side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical left, away from the camera's direct line; no head turn back toward the lens. The left-chest sigil is on the near side and must be clearly visible in this view.

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, sleek near-black hair (#17151A), fair cool skin (#F0DECB).

Body metrics:
Height read ~180cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths. Left-chest sigil fixed on the LEFT (near) side in this view.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-left camera position: dark hooded robe silhouette (#2B2A2E / #2E3550), draped mantle falling behind the extended arm, the dark-gold clerical sigil (#8A7239) visible on the near (left) chest, wide sleeve in profile with both hand and cuff visible, waist sash, floor-length hem, dark soft boot. NO weapon, NO handheld prop anywhere; reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-metal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, weapon, sword, wings, horns, tail, crown, fully hidden face, blank void under hood, ornate gemstones, gold pauldrons, shining jewels, sigil absent or on wrong side, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical right side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical LEFT side only (do not describe this as merely "facing left").
- The left-chest sigil must be visible and correctly on the near side in this view.
- No text or watermark. Do not invent missing canonical details.
```

---

## 03 — `03-ipranshin-right-profile-fullbody.png`（STAGE 2 — 相機位於角色解剖學右側；⚠️ 對應既有已核准檔案為 `04-ipranshin-right-profile-fullbody.png`，見檔頭說明，不得重新命名既有 PNG）

```text
Use case: identity-preserve
Asset type: single anatomical-right-side full-body orthographic reference

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Ipranshin as ONE full-body view with the camera positioned at the character's anatomical RIGHT side (the camera looks directly at the character's right flank; the character's right side faces the lens), true orthographic projection, 90 degrees from the front view, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. The character's head faces exactly 90 degrees toward their own anatomical right, away from the camera's direct line; no head turn back toward the lens. The left-chest sigil is on the FAR side in this view and must NOT be visible (it is occluded by the body, not mirrored to the near side).

Identity invariants:
Identical character from Image 1: same face structure seen from this angle, sleek near-black hair (#17151A), fair cool skin (#F0DECB).

Body metrics:
Height read ~180cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths. Left-chest sigil remains anatomically on the left (far) side and is therefore not visible in this right-side view.

Costume invariants:
Identical attire from Image 1 seen from the anatomical-right camera position: dark hooded robe silhouette (#2B2A2E / #2E3550), draped mantle falling behind the extended arm, plain chest surface on the near (right) side (no sigil here), wide sleeve in profile with hand and cuff visible, waist sash, floor-length hem, dark soft boot. NO weapon, NO handheld prop anywhere; reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-metal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, weapon, sword, wings, horns, tail, crown, fully hidden face, blank void under hood, ornate gemstones, gold pauldrons, shining jewels, sigil visible on this near side, mirrored sigil, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, back view, three-quarter view, head turned toward viewer, camera on anatomical left side

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic view with the camera on the anatomical RIGHT side only (do not describe this as merely "facing right").
- The left-chest sigil must NOT appear on the near (right) side in this view; do not mirror it.
- No text or watermark. Do not invent missing canonical details.
- Note: this canonical slot's already-approved source image is currently stored on disk as `04-ipranshin-right-profile-fullbody.png` (legacy numbering); do not rename or overwrite it.
```

---

## 04 — `04-ipranshin-back-fullbody.png`（STAGE 2 — 背面；⚠️ 對應既有已核准檔案為 `03-ipranshin-back-fullbody.png`，見檔頭說明，不得重新命名既有 PNG）

```text
Use case: identity-preserve
Asset type: single back-view full-body orthographic reference

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Images 2-4: shared style references only; do not copy their character identities.

Primary request:
Render Ipranshin as ONE full-body BACK view (180 degrees) in true orthographic projection, in the same standard neutral A-pose as the front view: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, no contrapposto, no action pose, no T-pose. Head faces exactly away from the viewer. Clearly show the pushed-back hood and full heavy mantle drape covering the back; no chest sigil is visible from behind.

Identity invariants:
Identical character from Image 1: same sleek near-black hair (#17151A) seen from behind, same build and proportions.

Body metrics:
Height read ~180cm. Approximately 7.0 heads tall. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Identical attire from Image 1 seen from behind: dark hooded mantle (#2B2A2E / #2E3550) draping fully over the back and shoulders, hood pushed back and resting behind the neck, wide sleeves hanging naturally with both hands visible beyond the cuffs, waist sash tied at the back, floor-length heavy robe hem, dark soft boots. NO weapon, NO handheld prop, NO chest sigil visible from behind; all accessories reserved for prop sheet 09.

Composition:
Single figure centered, entire body inside frame, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-metal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, armor, weapon, sword, wings, horns, tail, crown, ornate gemstones, gold pauldrons, shining jewels, visible sigil on back, reference character face, copying any style-image character, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting, front view, face visible, profile, three-quarter view

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- Character and costume only; zero props; flat lighting; true orthographic back view.
- No text or watermark. Do not invent missing canonical details.
- Note: this canonical slot's already-approved source image is currently stored on disk as `03-ipranshin-back-fullbody.png` (legacy numbering); do not rename or overwrite it.
```

---

## 05 — `05-ipranshin-four-view-master.png`（STAGE 2 — 已核准）

```text
Use case: identity-preserve
Asset type: four-view orthographic master turnaround sheet

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render a single master turnaround sheet of Ipranshin containing four full-body orthographic views of the SAME character in one row on one shared ground line, in this exact left-to-right order: FRONT (0 degrees), LEFT profile (camera at anatomical left, 90 degrees), RIGHT profile (camera at anatomical right, 90 degrees), BACK (180 degrees). All four views use the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, shoulders level, weight evenly distributed, identical height, identical head-to-body ratio, identical arm angles and foot spacing in every view, true orthographic projection, no contrapposto, no action pose, no T-pose. Keep the face clear and identifiable in the front and profile views as on Image 1; do not sink the face into shadow.

Identity invariants:
All four figures are the identical character from Image 1: same face, deep calm enigmatic gaze with dark amber eyes (#6E4A17), half-lit mood expressed only as a soft one-sided face shadow, sleek near-black hair (#17151A), fair cool skin (#F0DECB), slender seven-heads proportions with the frame concealed by the wide robe. Head-top line and foot line perfectly horizontally aligned across all four views; silhouettes must be mutually alignable.

Kinship invariants:
None.

Body metrics:
Height read ~180cm. Approximately 7.0 heads tall, slender build concealed by the wide robe. Shoulder width approximately 2.0 head-widths.

Costume invariants:
Every view wears the identical shadow-schemer attire from Image 1: dark hooded clerical robe (#2B2A2E / #2E3550 / #4A362B) with oversized hood pushed back (face fully visible), draped hooded mantle, high covered collar joined to the hood, the single dark-gold clerical sigil (#8A7239) on the LEFT chest (fixed side in front/left views, occluded in the right-side view, absent from the back view), wide long sleeves with concealed inner storage for scrolls and hidden orders, low understated waist sash, floor-length heavy draped robe and dark soft boots. In every view, both arms are visibly separated from the torso, the sleeves hang naturally from the extended arms without fusing into the robe or mantle, and both relaxed hands remain fully visible beyond the cuffs. Same count, positions, colors and materials in all four views. The back view must clarify how the hooded mantle drapes behind the extended arms and over the back. Character and costume only - no weapons, no handheld items, no standalone props.

Composition:
A single ultra-wide horizontal banner, four full-body figures in ONE row at equal scale, evenly spaced, none cropped, no second row, flat even ambient lighting with no cast shadows, warm light-gray background, no props beyond the canonical worn robe and concealed sleeve contents, no grid lines, no labels.

Positive style prompt:
refined Japanese anime fantasy character design, professional production character sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-metal fittings, flat even ambient lighting, low-contrast warm light-gray background, clean orthographic presentation, consistent scale and anatomy, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, bright cheerful lighting, sunny high-key lighting, armor, plate armor, weapon, sword, wings, horns, tail, crown, fully hidden face, blank void under hood, muscular warrior build, inconsistent scale between views, different height per view, mismatched costume between views, ornate gemstones, gold pauldrons, shining jewels, heavy metal armor, mirrored sigil, sigil visible in right-side or back view, reference character face, copying any style-image character, blending the three reference characters, weapon, sword, scabbard, sheath, shield, staff, prop object, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, action pose, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs, hands on hips, crossed arms, dynamic pose, walking, running, cast shadows, strong highlights, rim light, dramatic lighting

Constraints:
- Preserve the exact approved character identity from Image 1 in all four views.
- View order is fixed: front, left (camera at anatomical left), right (camera at anatomical right), back. Same height, same size, same body proportions, true orthographic projection in every view.
- The mantle stays behind the arms in every view; never hide the arm separation or hands inside the sleeves.
- The left-chest sigil is fixed to the left side; occluded (not mirrored) in the right-side view, absent from the back view.
- Character and costume only; zero props; flat lighting.
- No text or watermark. Do not invent missing canonical details.
```

---

## 06 — `06-ipranshin-expression-sheet.png`（STAGE 2 — 已核准；八表情臉部表）

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet (also serves as expression keyframe reference for video generation)

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference (the approved 00-ipranshin-character-identity-anchor.png). Ignore its original pose, framing and composition.
- Images 2-4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose Ipranshin into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the head or hood. The head must occupy approximately 70-75 percent of each panel. The face must stay clear and fully readable in all eight panels; do not hide it in shadow.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity and face proportions, deep dark amber eyes (#6E4A17) with a calm enigmatic gaze, fair cool skin tone (#F0DECB), sleek near-black hair (#17151A), neck proportions, the oversized hood pushed back and framing (never covering) the face, the high covered clerical collar and the dark-gold clerical sigil (#8A7239) trim at the collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
Exactly eight portraits and a 4x2 grid. Straight-on 0-degree view only. Head-and-shoulders close-up only. No full body, half body, waist-up, upper-body, bust-length, half-bust or zoomed-out composition. No different person, altered face, changed hairstyle, profile, side view, three-quarter view, head rotation, inconsistent lighting, inconsistent crop, inconsistent scale, costume change or extra accessories. The face must remain clear and identifiable; the hood may frame the face but must never obscure it.

Negative prompt:
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, changed facial proportions, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, bright cheerful lighting, sunny high-key lighting, fully hidden face, blank void under hood, armor, weapon, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits, ornate gemstones, gold pauldrons, shining jewels, heavy metal armor, reference character face, copying any style-image character, blending the three reference characters, holding weapon, weapon in hand, hand on sword pommel, arms touching torso, arms pressed against body, contrapposto, heroic pose, battle stance, T-pose, bent elbows, uneven shoulders, crossed legs
```

---

## 07 — `07-ipranshin-costume-detail-sheet.png`（STAGE 2 — 已核准；服裝細節表，含外層拆解）

```text
Use case: identity-preserve
Asset type: costume construction detail sheet with outer-layer separation

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a professional costume construction sheet for Ipranshin's shadow-schemer attire, organized as clean callout panels on one sheet:
1. LAYER SEPARATION (required for 3D modeling): the oversized hood and heavy draped hooded mantle drawn SEPARATELY as a flat garment piece, AND one torso view of the robe WITHOUT the mantle so the body silhouette and collar construction are fully visible.
2. High covered collar joined to the hood, showing how the hood attaches at the neckline.
3. Left-chest dark-gold clerical sigil detail, enlarged.
4. Wide sleeve construction, including the concealed inner storage pocket where scrolls and hidden orders are kept.
5. Waist sash and floor-length hem detail.
6. Dark soft boot detail visible under the hem.

Identity invariants:
This is a costume study; do not introduce a different character. Any partial figure fragment shown must match Image 1's colors, materials and construction exactly. No face-focused portrait is required.

Kinship invariants:
None.

Costume invariants:
All details must match Image 1 exactly in count, position, color and material: dark charcoal-to-deep-indigo woven wool robe (#2B2A2E / #2E3550), matte dark draped mantle, restrained dark-gold clerical sigil (#8A7239) on the LEFT chest, minimal dark-metal fittings (#6E7079), no gemstones. Do not redesign, add or remove any element; no weapon anywhere.

Composition:
Clean production-sheet layout on warm light-gray background, panels evenly arranged with generous spacing, flat even ambient lighting, no text labels, no annotation arrows with letters.

Positive style prompt:
refined Japanese anime fantasy character design, professional production costume sheet, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, fabric-focused material separation with minimal dark-metal fittings, flat even ambient lighting, low-contrast warm light-gray background, balanced negative space, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, dramatic cinematic background, scenery, action pose, extreme perspective, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry, different costume, costume redesign, random accessories, extra character, full-body pin-up, weapon, sword, scabbard, sheath, shield, holding weapon, cast shadows, strong highlights, rim light, ornate gemstones, shining jewels, reference character costume, copying any style-image character

Constraints:
- Preserve the exact approved costume from Image 1; Images 2-4 are style only.
- The mantle separation panel and the mantle-less torso view are mandatory.
- No weapons on this sheet. No text or watermark. Do not invent missing canonical details.
```

---

## 08 — `08-ipranshin-color-material-sheet.png`（STAGE 2 — 已核准；色票／材質表，已補固定 hex）

```text
Use case: identity-preserve
Asset type: color palette and material reference sheet

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Create a production color-and-material sheet for Ipranshin: a medium-size neutral A-pose front figure (character and costume only, no weapon) on the left, and on the right a column of large clean color swatches with material rendering patches for each locked color:
- charcoal black #2B2A2E (robe main)
- deep indigo #2E3550 (mantle)
- dark umber brown #4A362B (accent)
- restrained antique dark gold #8A7239 (clerical sigil)
- dark silver metal #6E7079 (minor fittings)
- fair cool skin #F0DECB
- near-black hair #17151A
- deep dark amber eye #6E4A17
Each swatch pairs a flat color block with a small material patch showing how that surface reads (matte wool weave, draped mantle fabric, dark-metal fitting, embroidered sigil thread).

Identity invariants:
The reference figure is the identical character from Image 1; same face, hair, proportions (~180cm, 7.0 heads, slender build concealed by the robe).

Kinship invariants:
None.

Costume invariants:
Exact attire from Image 1; no redesign; no weapon anywhere; no gemstones.

Composition:
Clean layout, warm light-gray background, flat even ambient lighting, swatches aligned in a tidy vertical column, no text labels (color blocks only; hex values are for internal reference and must not be rendered as visible text on the sheet).

Positive style prompt:
refined Japanese anime fantasy character design, professional production color script sheet, clean delicate linework, soft cel shading, precise material separation for wool cloth, draped mantle fabric and dark metal, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, muddy colors, dramatic background, scenery, action pose, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, wrong palette, shifted hues, extra colors, neon colors, pastel palette, costume redesign, weapon, sword, scabbard, holding weapon, cast shadows, rim light, extra character, ornate gemstones, shining jewels, copying any style-image character

Constraints:
- Colors must match the locked hex palette exactly; hue drift = reject.
- Character and costume only; zero props; flat lighting.
- No text or watermark.
```

---

## 09 — `09-ipranshin-prop-construction-sheet.png`（STAGE 2 — 已核准；特殊構造表：無固定武器，改放紋章／構造）

```text
Use case: stylized-concept
Asset type: accessory and construction sheet (props only, no fixed weapon)

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png - use ONLY to match the dark-charcoal/dark-gold material language and craftsmanship level; do not depict the character.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Ipranshin has no fixed weapon; this sheet presents his clerical sigil, hood construction and sleeve-concealment mechanism only:
1. The dark-gold embroidered circular Tiandi-Orthodox clerical sigil (#8A7239): enlarged flat emblem study showing its internal design.
2. The oversized hood: a structural three-quarter study showing how it is cut and joined to the high collar, and how it is worn pushed back to frame (never cover) the face.
3. The wide sleeve concealment mechanism: an exploded/cutaway study showing the inner storage pocket where rolled parchment scrolls and hidden orders are kept, with a scroll shown tucked inside as a construction reference.
4. The waist sash and its knot/fastening detail.

Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.

Identity invariants:
Not applicable - this sheet shows objects and construction details only. All studies must match Image 1's colors, materials and construction exactly.

Kinship invariants:
None.

Costume/props invariants:
The sigil, hood and sleeve-mechanism studies match the dark charcoal (#2B2A2E) / deep indigo (#2E3550) / dark-gold (#8A7239) palette on Image 1. Do not add, remove or redesign any element; no weapon of any kind appears anywhere on this sheet.

Composition:
Neatly arranged construction studies and exploded views on a warm light-gray low-contrast background, consistent scale, balanced negative space, optional blank headless tailor form only for the hood/collar attachment study, no grid, no labels, no numbers, no text.

Positive style prompt:
refined Japanese anime fantasy prop design, professional production prop sheet, clean delicate linework, controlled fine outlines, soft cel shading with subtle painterly rendering, precise embroidery and fabric-construction rendering, flat even ambient lighting, low-contrast warm light-gray background, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, full-body character, miniature person, portrait, face, human silhouette, character scale inset, weapon, sword, dagger, staff, greatsword, hands, arms, wrong palette, neon colors, cast shadows, rim light, ornate gemstones, shining jewels, fully hidden face, blank void under hood

Constraints:
- No weapon of any kind may appear anywhere on this sheet - Ipranshin has no fixed weapon.
- Match the locked palette exactly (dark charcoal #2B2A2E, deep indigo #2E3550, dark-gold trim #8A7239).
- No character depiction beyond an optional headless tailor form. No text or watermark.
```

---

## 10 — `10-ipranshin-body-reference-sheet.png`（STAGE 2 — 尚未生成；素體參考圖，SMPL-X／人體擬合用）

```text
Use case: identity-preserve
Asset type: body reference sheet for parametric human-body fitting (SMPL-X)

Input images:
- Image 1: the approved 00-ipranshin-character-identity-anchor.png and sole identity authority (face, hair, skin tone, body proportions).
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
Render Ipranshin WITHOUT the robe, hood, mantle or any outer garment - wearing only a plain tight dark-gray bodysuit (form-fitting underlayer, no folds, no accessories) - as TWO full-body views on one sheet: straight-on FRONT view and LEFT profile view (camera at the character's anatomical left side). Both views in the exact same standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread and clearly separated, shoulders level, weight evenly distributed, true orthographic projection, no contrapposto, no action pose, no T-pose. The body silhouette must be fully visible and unobstructed: no robe, no hood, no mantle, no loose clothing; the hair is short-to-medium and does not cover the neck or shoulder outline. The face stays clearly lit and identifiable, consistent with Image 1 - not shadowed.

Identity invariants:
Same character as Image 1: same face, sleek near-black hair (#17151A), fair cool skin (#F0DECB), deep dark amber eyes (#6E4A17). The body underneath must be consistent with the robed figure of the approved sheets: slender, previously concealed by the wide robe.

Body metrics:
Height read ~180cm. Approximately 7.0 heads tall, slender build. Shoulder width approximately 2.0 head-widths. Identical height and proportions in both views; head-top and foot lines horizontally aligned across the two views.

Composition:
Two figures side by side (front, then left profile), equal scale, shared ground line, flat even ambient lighting with no cast shadows, warm light-gray background, no props, no labels.

Positive style prompt:
refined Japanese anime character body reference, professional production model sheet, clean delicate linework, minimal soft cel shading, accurate consistent anatomy, flat even ambient lighting, low-contrast warm light-gray background, true orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, 3D render, western comic style, chibi, thick outlines, sketchy lines, muddy colors, dramatic background, scenery, text, labels, letters, numbers, logo, signature, watermark, low resolution, blurry, armor, cape, cloak, hood, outer garment, loose clothing, weapon, props, accessories, jewelry, crown, boots, gauntlets, folds, drapery, nudity, different face, different hairstyle, different proportions than approved sheets, muscular hulking build, fully hidden face, blank void, action pose, contrapposto, T-pose, bent elbows, uneven shoulders, crossed legs, cast shadows, strong highlights, rim light, three-quarter view, back view, extra views, more than two figures

Constraints:
- Preserve the exact approved identity from Image 1; Images 2-4 are style only.
- No hood, no sigil, no accessories on this sheet (this is a stripped body-fitting reference).
- Body silhouette fully visible; tight plain bodysuit only; zero props; flat lighting; true orthographic.
- No text or watermark.
```

---

## 逐張驗收清單（強制 — 任一項漂移即 REJECT，不得繼續下一張）

生成順序：00 →（使用者核准）→ 01 → 02 → 03 → 04 → 05 → 06 → 07 → 08 → 09 → 10。
每張生成後逐項檢查；REJECT 的圖不覆蓋既有檔案，存入 `rejects/` 後重生成本張。

**每張圖共同檢查項：**

- [ ] 臉型與臉部身份與 00 號正本一致（06 的人像面板亦同）；臉清楚可辨、未被兜帽或陰影遮蔽
- [ ] 髮型、髮色（近黑短至中髮 #17151A）一致；深不可測沉靜眼神一致
- [ ] 身材比例：約 180cm／7.0 頭身／肩寬約 2.0 倍頭寬／被寬袍遮掩的修長身形
- [ ] 服裝結構與 Costume Lock 一致（兜帽長袍層次、袖藏機構、腰間束帶位置）
- [ ] 左右位置正確：神職紋章固定於左胸，須跨圖一致，未鏡像翻轉
- [ ] 色票未漂移：炭黑 #2B2A2E／深靛 #2E3550／暗褐 #4A362B／暗金神職紋章 #8A7239／深暗琥珀瞳 #6E4A17
- [ ] 無任何固定武器出現於任一圖（09 亦僅紋章／構造，非武器）；平光無投影陰影（06 攝影棚柔光除外）
- [ ] 血緣相似：不適用（本角色無血緣親屬，見 §13，跳過）

**單張額外檢查項：**

| 張 | 額外驗收 |
| --- | --- |
| 00 | 三視圖齊全（A-pose 正面全身＋正面頭肩＋45° 頭肩），缺一即 REJECT；臉清楚可辨 |
| 01 | 正面、A-pose、正交 |
| 02 | 相機位於解剖學左側、A-pose、正交（不得只寫「朝左」）；紋章可見 |
| 03 | 相機位於解剖學右側、A-pose、正交（不得只寫「朝右」）；紋章在遠側不可見；對應既有已核准檔名 `04-ipranshin-right-profile-fullbody.png` |
| 04 | 背面、A-pose、正交；背面無紋章；對應既有已核准檔名 `03-ipranshin-back-fullbody.png` |
| 05 | 順序正面→左→右→背；四視圖同高度、同尺寸、同比例、頭頂線與腳底線水平對齊 |
| 06 | 恰好 8 格 4×2、順序正確、只有表情改變；臉清楚可辨未入陰影 |
| 07 | 兜帽斗篷拆解面板＋無斗篷軀幹視圖必須存在 |
| 08 | 色票方塊與鎖定色系（炭黑／深靛／暗褐／暗金）完全一致 |
| 09 | 只有神職紋章、兜帽構造、袖藏經卷機構等特殊構造；無任何武器、無角色全身、無臉、無人物剪影 |
| 10 | 素體無任何外層；身體輪廓完全可見；正面＋左側兩視圖；臉清楚可辨、不遮蔽 |
