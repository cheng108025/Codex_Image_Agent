# PROMPTS — 皇后阿格妮絲

> Operation mode: CREATE-CHARACTER
> Sources: <repo-root>/Story_Character/預告片_按場次重新整理.md + <repo-root>/全角色總表.md
> Character type: human
> Trailer evidence: Selected by 預告片_按場次重新整理.md; use that source as the exact scene authority
> Generation gate: COMPLETE — approved 01 and generated 02–07 are present.

## Codex Generation Manifest

### (a) Exact filenames
- [x] 01-queen-mother-front-fullbody.png — APPROVED
- [x] 02-queen-mother-four-view-master.png — PRESENT
- [x] 03-queen-mother-expression-sheet.png — PRESENT
- [x] 04-queen-mother-costume-detail-sheet.png — PRESENT
- [x] 05-queen-mother-color-material-sheet.png — PRESENT
- [x] 06-queen-mother-prop-construction-sheet.png — PRESENT
- [x] 07-queen-mother-body-reference-sheet.png — PRESENT

### (b) Character gate

01-queen-mother-front-fullbody.png is approved and 02–07 are present. Do not regenerate or overwrite any sheet unless the user explicitly requests a replacement.

### (c) Consistency statement

The filenames above exactly match the section filenames below. Identity, body metrics, costume and fixed palette come from the same Canonical Fact Map as CHARACTER_SPEC.md.

### (d) Fixed input images

For 01, use all three style images below only as visual-style references and never copy their depicted person's identity:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

For 02–07, additionally use ./01-queen-mother-front-fullbody.png as this character's identity reference while retaining all three fixed style images.

### (e) Existing PNG state

All seven required PNG files are present. The approved 01 is the identity master for 02–07. Do not overwrite any existing PNG.

### (f) Single-generation policy

Each user image request permits at most one image-generation call and one new image. Present it immediately and stop. Technical inspection may report possible deviations but must not auto-reject, move or regenerate. Only after the user explicitly requests a modification may the prior unapproved candidate be placed in rejects/ and one replacement generated.

## 01 — 01-queen-mother-front-fullbody.png

Input images:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Full-body front view, face or head clearly visible and identifiable. Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind. Orthographic front camera, flat light-gray background, even shadowless studio light, entire body inside frame. 皇后阿格妮絲. CANON: flowing brown hair glowing gold in candlelight, champagne-gold eyes, red lips, delicate face and slender arms; DESIGN-PROPOSAL: fair warm skin. Body metrics: 170 cm; 7.4 heads; shoulders 2.15 head widths; slender hourglass build; bilateral symmetry. Costume: CANON: pure white satin nightgown and silver Pandora necklace; DESIGN-PROPOSAL: floor-length bias-cut gown with modest royal embroidery. Fixed palette: satin white #F4F0E8; champagne gold #C9A45C; silver #C8CCD3; muted crimson #A54852; fair skin #F1CFB8; brown-gold hair #8A6848; champagne eyes #C9A15A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 02 — 02-queen-mother-four-view-master.png

Input images:
- ./01-queen-mother-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
One turnaround sheet with four complete views in this exact order: front, camera on the character's anatomical LEFT side, camera on the character's anatomical RIGHT side, back. Same neutral pose, height, scale and proportions in every panel; true orthographic camera; aligned head-top and ground lines. 皇后阿格妮絲. CANON: flowing brown hair glowing gold in candlelight, champagne-gold eyes, red lips, delicate face and slender arms; DESIGN-PROPOSAL: fair warm skin. Body metrics: 170 cm; 7.4 heads; shoulders 2.15 head widths; slender hourglass build; bilateral symmetry. Costume: CANON: pure white satin nightgown and silver Pandora necklace; DESIGN-PROPOSAL: floor-length bias-cut gown with modest royal embroidery. Fixed palette: satin white #F4F0E8; champagne gold #C9A45C; silver #C8CCD3; muted crimson #A54852; fair skin #F1CFB8; brown-gold hair #8A6848; champagne eyes #C9A15A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 03 — 03-queen-mother-expression-sheet.png

Input images:
- ./01-queen-mother-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Eight head-and-shoulders portraits in a 4x2 grid, straight-on 0-degree camera, head occupies 70-75 percent of each cell. Exact order: neutral, gentle smile, broad smile with teeth, joyful open laughter, surprised, angry, sad, wink. Only expression changes. 皇后阿格妮絲. CANON: flowing brown hair glowing gold in candlelight, champagne-gold eyes, red lips, delicate face and slender arms; DESIGN-PROPOSAL: fair warm skin. Body metrics: 170 cm; 7.4 heads; shoulders 2.15 head widths; slender hourglass build; bilateral symmetry. Costume: CANON: pure white satin nightgown and silver Pandora necklace; DESIGN-PROPOSAL: floor-length bias-cut gown with modest royal embroidery. Fixed palette: satin white #F4F0E8; champagne gold #C9A45C; silver #C8CCD3; muted crimson #A54852; fair skin #F1CFB8; brown-gold hair #8A6848; champagne eyes #C9A15A.

Negative prompt:
identity drift, different faces, hairstyle change, eye-color change, age change, profile view, tilted head, inconsistent grid, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 04 — 04-queen-mother-costume-detail-sheet.png

Input images:
- ./01-queen-mother-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Costume construction sheet with front and back garment breakdowns, detached outer-layer panels, seam and fastening callouts shown visually without readable text, plus one torso view without the outer layer for 3D body contour reference. No weapons. 皇后阿格妮絲. CANON: flowing brown hair glowing gold in candlelight, champagne-gold eyes, red lips, delicate face and slender arms; DESIGN-PROPOSAL: fair warm skin. Body metrics: 170 cm; 7.4 heads; shoulders 2.15 head widths; slender hourglass build; bilateral symmetry. Costume: CANON: pure white satin nightgown and silver Pandora necklace; DESIGN-PROPOSAL: floor-length bias-cut gown with modest royal embroidery. Fixed palette: satin white #F4F0E8; champagne gold #C9A45C; silver #C8CCD3; muted crimson #A54852; fair skin #F1CFB8; brown-gold hair #8A6848; champagne eyes #C9A15A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 05 — 05-queen-mother-color-material-sheet.png

Input images:
- ./01-queen-mother-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Color and material reference sheet: clean color swatches and material spheres corresponding exactly to satin white #F4F0E8; champagne gold #C9A45C; silver #C8CCD3; muted crimson #A54852; fair skin #F1CFB8; brown-gold hair #8A6848; champagne eyes #C9A15A, plus one small neutral full-body reference in the same identity and pose. No weapons or loose props. Flat neutral lighting. 皇后阿格妮絲. CANON: flowing brown hair glowing gold in candlelight, champagne-gold eyes, red lips, delicate face and slender arms; DESIGN-PROPOSAL: fair warm skin. Body metrics: 170 cm; 7.4 heads; shoulders 2.15 head widths; slender hourglass build; bilateral symmetry. Costume: CANON: pure white satin nightgown and silver Pandora necklace; DESIGN-PROPOSAL: floor-length bias-cut gown with modest royal embroidery. Fixed palette: satin white #F4F0E8; champagne gold #C9A45C; silver #C8CCD3; muted crimson #A54852; fair skin #F1CFB8; brown-gold hair #8A6848; champagne eyes #C9A15A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 06 — 06-queen-mother-prop-construction-sheet.png

Input images:
- ./01-queen-mother-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Props-only construction sheet for 皇后阿格妮絲: CANON: silver Pandora necklace, only in sheet 06. Show front, side and exploded construction views of every documented prop and detachable fitting. No full-body person, no face, no character silhouette; a headless tailor mannequin is permitted only for attachment placement.

Negative prompt:
full-body character, face, head, human silhouette, action scene, prop being held, cropped object, duplicate object, inconsistent scale, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 07 — 07-queen-mother-body-reference-sheet.png

Input images:
- ./01-queen-mother-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
SMPL-X body reference sheet with front and camera-on-anatomical-LEFT-side views. Preserve face identity. Fitted plain neutral body suit, body contour fully visible, long hair gathered away from shoulders and back. Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind. Body metrics: 170 cm; 7.4 heads; shoulders 2.15 head widths; slender hourglass build; bilateral symmetry. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped body, perspective distortion, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## Per-sheet REJECT Review Checklist

- [ ] Face or head identity matches this character's approved 01.
- [ ] Hair, surface pattern, eyes and age impression remain consistent.
- [ ] Body proportions match Body Metrics Lock.
- [ ] Costume structure matches Costume Lock.
- [ ] Left/right asymmetry is correct and not mirrored.
- [ ] Colors match the fixed hex palette.
- [ ] Sheet layout, view count, order, neutral pose, zero-prop rule and flat lighting are satisfied.
- [ ] Style matches all three fixed style-reference images.
- [ ] Human hands, when visible, have exactly five fingers per hand: one thumb plus four fingers, with no extra, fused, duplicated or missing digits.
- [ ] Kinship traits, where applicable, are consistent without cloning the relative.

## PENDING-USER-INPUT

PENDING-USER-INPUT: the character table says her true name is unrecorded while the trailer calls her Agnes; use the trailer label without declaring Agnes world-canon.

## Instruction for Codex

Read <repo-root>/Story_Character/01_主角陣營/皇后阿格妮絲/CHARACTER_SPEC.md and this PROMPTS.md. The package is complete; do not regenerate or overwrite an existing PNG unless the user explicitly requests a replacement. For an approved replacement request, generate exactly one image and present it for review.
