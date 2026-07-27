# PROMPTS — 文森特

> Operation mode: CREATE-CHARACTER
> Sources: <repo-root>/Story_Character/預告片_按場次重新整理.md + <repo-root>/全角色總表.md
> Character type: human
> Trailer evidence: Selected by 預告片_按場次重新整理.md; use that source as the exact scene authority
> Generation gate: READY — first generate only 01, present it, then stop for user approval.

## Codex Generation Manifest

### (a) Exact filenames
- [ ] 01-vincent-front-fullbody.png — PENDING-GENERATION
- [ ] 02-vincent-four-view-master.png — PENDING-GENERATION
- [ ] 03-vincent-expression-sheet.png — PENDING-GENERATION
- [ ] 04-vincent-costume-detail-sheet.png — PENDING-GENERATION
- [ ] 05-vincent-color-material-sheet.png — PENDING-GENERATION
- [ ] 06-vincent-prop-construction-sheet.png — PENDING-GENERATION
- [ ] 07-vincent-body-reference-sheet.png — PENDING-GENERATION

### (b) Character gate

Generate only 01-vincent-front-fullbody.png first. Present that single image and stop. Generate the remaining sheets only after explicit user approval of 01. Other characters do not change this character's gate.

### (c) Consistency statement

The filenames above exactly match the section filenames below. Identity, body metrics, costume and fixed palette come from the same Canonical Fact Map as CHARACTER_SPEC.md.

### (d) Fixed input images

For 01, use all three style images below only as visual-style references and never copy their depicted person's identity:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

For 02–07, additionally use ./01-vincent-front-fullbody.png as this character's identity reference while retaining all three fixed style images.

### (e) Existing PNG state

All files are PENDING-GENERATION. Do not overwrite any future approved PNG.

### (f) Single-generation policy

Each user image request permits at most one image-generation call and one new image. Present it immediately and stop. Technical inspection may report possible deviations but must not auto-reject, move or regenerate. Only after the user explicitly requests a modification may the prior unapproved candidate be placed in rejects/ and one replacement generated.

## 01 — 01-vincent-front-fullbody.png

Input images:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Full-body front view, face or head clearly visible and identifiable. Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind. Orthographic front camera, flat light-gray background, even shadowless studio light, entire body inside frame. 文森特. TRAILER CANON: surviving expedition soldier who pushes Gawain away from a fatal attack; DESIGN-PROPOSAL: black wavy hair, gray eyes, olive skin and narrow serious face. Body metrics: 180 cm; 7.55 heads; shoulders 2.4 head widths; lean soldier build; bilateral symmetry. Costume: DESIGN-PROPOSAL: standard Hector field armor with a faded red scarf, split leather skirt and flexible boots. Fixed palette: field charcoal #3A4149; faded red #7E4244; leather #674936; steel #858E96; olive skin #B48C70; black hair #29272A; gray eyes #69717A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 02 — 02-vincent-four-view-master.png

Input images:
- ./01-vincent-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
One turnaround sheet with four complete views in this exact order: front, camera on the character's anatomical LEFT side, camera on the character's anatomical RIGHT side, back. Same neutral pose, height, scale and proportions in every panel; true orthographic camera; aligned head-top and ground lines. 文森特. TRAILER CANON: surviving expedition soldier who pushes Gawain away from a fatal attack; DESIGN-PROPOSAL: black wavy hair, gray eyes, olive skin and narrow serious face. Body metrics: 180 cm; 7.55 heads; shoulders 2.4 head widths; lean soldier build; bilateral symmetry. Costume: DESIGN-PROPOSAL: standard Hector field armor with a faded red scarf, split leather skirt and flexible boots. Fixed palette: field charcoal #3A4149; faded red #7E4244; leather #674936; steel #858E96; olive skin #B48C70; black hair #29272A; gray eyes #69717A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 03 — 03-vincent-expression-sheet.png

Input images:
- ./01-vincent-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Eight head-and-shoulders portraits in a 4x2 grid, straight-on 0-degree camera, head occupies 70-75 percent of each cell. Exact order: neutral, gentle smile, broad smile with teeth, joyful open laughter, surprised, angry, sad, wink. Only expression changes. 文森特. TRAILER CANON: surviving expedition soldier who pushes Gawain away from a fatal attack; DESIGN-PROPOSAL: black wavy hair, gray eyes, olive skin and narrow serious face. Body metrics: 180 cm; 7.55 heads; shoulders 2.4 head widths; lean soldier build; bilateral symmetry. Costume: DESIGN-PROPOSAL: standard Hector field armor with a faded red scarf, split leather skirt and flexible boots. Fixed palette: field charcoal #3A4149; faded red #7E4244; leather #674936; steel #858E96; olive skin #B48C70; black hair #29272A; gray eyes #69717A.

Negative prompt:
identity drift, different faces, hairstyle change, eye-color change, age change, profile view, tilted head, inconsistent grid, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 04 — 04-vincent-costume-detail-sheet.png

Input images:
- ./01-vincent-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Costume construction sheet with front and back garment breakdowns, detached outer-layer panels, seam and fastening callouts shown visually without readable text, plus one torso view without the outer layer for 3D body contour reference. No weapons. 文森特. TRAILER CANON: surviving expedition soldier who pushes Gawain away from a fatal attack; DESIGN-PROPOSAL: black wavy hair, gray eyes, olive skin and narrow serious face. Body metrics: 180 cm; 7.55 heads; shoulders 2.4 head widths; lean soldier build; bilateral symmetry. Costume: DESIGN-PROPOSAL: standard Hector field armor with a faded red scarf, split leather skirt and flexible boots. Fixed palette: field charcoal #3A4149; faded red #7E4244; leather #674936; steel #858E96; olive skin #B48C70; black hair #29272A; gray eyes #69717A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 05 — 05-vincent-color-material-sheet.png

Input images:
- ./01-vincent-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Color and material reference sheet: clean color swatches and material spheres corresponding exactly to field charcoal #3A4149; faded red #7E4244; leather #674936; steel #858E96; olive skin #B48C70; black hair #29272A; gray eyes #69717A, plus one small neutral full-body reference in the same identity and pose. No weapons or loose props. Flat neutral lighting. 文森特. TRAILER CANON: surviving expedition soldier who pushes Gawain away from a fatal attack; DESIGN-PROPOSAL: black wavy hair, gray eyes, olive skin and narrow serious face. Body metrics: 180 cm; 7.55 heads; shoulders 2.4 head widths; lean soldier build; bilateral symmetry. Costume: DESIGN-PROPOSAL: standard Hector field armor with a faded red scarf, split leather skirt and flexible boots. Fixed palette: field charcoal #3A4149; faded red #7E4244; leather #674936; steel #858E96; olive skin #B48C70; black hair #29272A; gray eyes #69717A. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

Negative prompt:
identity drift, wrong character, copied reference-person identity, age drift, palette drift, costume redesign, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, action pose, contrapposto, T-pose, cast shadows, strong highlights, rim light, cropped head, cropped feet, perspective distortion, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 06 — 06-vincent-prop-construction-sheet.png

Input images:
- ./01-vincent-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Props-only construction sheet for 文森特: TRAILER CANON: field weapon not specified; DESIGN-PROPOSAL: arming sword and compact buckler, only in sheet 06. Show front, side and exploded construction views of every documented prop and detachable fitting. No full-body person, no face, no character silhouette; a headless tailor mannequin is permitted only for attachment placement.

Negative prompt:
full-body character, face, head, human silhouette, action scene, prop being held, cropped object, duplicate object, inconsistent scale, text, watermark, extra fingers, six fingers, too many fingers, fused fingers, missing fingers, duplicated thumbs, malformed hands, extra toes, missing toes

## 07 — 07-vincent-body-reference-sheet.png

Input images:
- ./01-vincent-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
SMPL-X body reference sheet with front and camera-on-anatomical-LEFT-side views. Preserve face identity. Fitted plain neutral body suit, body contour fully visible, long hair gathered away from shoulders and back. Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind. Body metrics: 180 cm; 7.55 heads; shoulders 2.4 head widths; lean soldier build; bilateral symmetry. Anatomically correct human hands; exactly five fingers on each hand, one thumb and four fingers, clearly separated natural digits; exactly five toes per foot.

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

PENDING-USER-INPUT: character is absent from the total character table; fixed appearance and weapon are proposals.

## Instruction for Codex

Read <repo-root>/Story_Character/04_遠征士兵/文森特/CHARACTER_SPEC.md and this PROMPTS.md. Follow the generation gate. Generate exactly one image per user request, begin with 01-vincent-front-fullbody.png, present it and stop for approval.