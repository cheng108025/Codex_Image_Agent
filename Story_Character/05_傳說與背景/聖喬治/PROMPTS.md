# PROMPTS — 聖喬治

> Operation mode: CREATE-CHARACTER
> Sources: <repo-root>/Story_Character/預告片_按場次重新整理.md + <repo-root>/全角色總表.md + <repo-root>/Story_Character/角色文檔.md
> Character type: human iconographic figure
> Trailer evidence: SCENE 00 mural and SCENE 02 legend; generate the in-world mural depiction only
> Generation gate: READY — first generate only 01, present it, then stop for user approval.

## Codex Generation Manifest

### (a) Exact filenames
- [ ] 01-saint-george-front-fullbody.png — PENDING-GENERATION
- [ ] 02-saint-george-four-view-master.png — PENDING-GENERATION
- [ ] 03-saint-george-expression-sheet.png — PENDING-GENERATION
- [ ] 04-saint-george-costume-detail-sheet.png — PENDING-GENERATION
- [ ] 05-saint-george-color-material-sheet.png — PENDING-GENERATION
- [ ] 06-saint-george-prop-construction-sheet.png — PENDING-GENERATION
- [ ] 07-saint-george-body-reference-sheet.png — PENDING-GENERATION

### (b) Character gate

Generate only 01-saint-george-front-fullbody.png first. Present that single image and stop. Generate 02–07 only after explicit user approval of 01. Approval applies to the in-world mural icon and does not establish physical historicity.

### (c) Consistency statement

The filenames above exactly match the section filenames below. Iconographic identity, body metrics, armor, palette and mural-scope lock come from the same Canonical Fact Map as CHARACTER_SPEC.md.

### (d) Fixed input images

For 01, use all three images only as style references and never copy their depicted person's identity:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

For 02–07, additionally use ./01-saint-george-front-fullbody.png as the mural icon's identity reference while retaining all three style images.

### (e) Existing PNG state

All files are PENDING-GENERATION. Do not overwrite any future approved PNG.

### (f) Single-generation policy

Each user image request permits at most one image-generation call and one new image. Present it immediately and stop. Technical inspection may report deviations but must not auto-reject, move or regenerate. Only an explicit modification request authorizes archiving the prior unapproved candidate and generating one replacement.

## 01 — 01-saint-george-front-fullbody.png

Input images:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Full-body front identity reference for Hector's in-world Hero Festival mural depiction of Saint George, not a confirmed living historical person. Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed 30-45 degrees away from the body, palms open, no action pose, no contrapposto, no T-pose. True orthographic front camera, flat warm-gray background, even shadowless production light, entire body visible. Classical dragon-slaying holy knight; DESIGN-PROPOSAL mature solemn masculine face, bronze-brown swept-back hair and blue-gray eyes. DESIGN-PROPOSAL body metrics: 188 cm, 7.8 heads, shoulders 2.5 head widths, idealized heroic build. Antique silver-steel full plate with aged-gold edging, ivory tabard and short ceremonial mantle, restrained sacred-gold glow. No lance, dragon, weapon or prop. Exactly five fingers per hand and five toes per foot.

Negative prompt:
claim of living historical scene, Kriz face, Benedict face, Aldrich face, copied reference identity, modern armor, weapon, lance, spear, dragon, gore, action pose, T-pose, cast shadow, rim light, cropped head, cropped feet, text, watermark, extra fingers, six fingers, fused fingers, missing fingers, malformed hands, extra toes

## 02 — 02-saint-george-four-view-master.png

Input images:
- ./01-saint-george-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
One turnaround sheet of the same approved Saint George mural icon with four complete views in this exact order: front, camera on the character's anatomical LEFT side, camera on the character's anatomical RIGHT side, back. Same neutral A-pose, height, heroic proportions, face and antique plate armor in every panel; true orthographic camera; aligned head-top and ground lines. Preserve silver steel, aged gold, ivory tabard, short red mantle and restrained sacred-gold radiance. No lance, dragon, weapon or loose prop. Exactly five fingers per visible hand.

Negative prompt:
different faces, copied project character, wrong view order, duplicate view, living battle scene, weapon, lance, dragon, action pose, perspective, cast shadow, cropped body, text, watermark, extra fingers, six fingers, fused fingers, missing fingers, malformed hands

## 03 — 03-saint-george-expression-sheet.png

Input images:
- ./01-saint-george-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Eight head-and-shoulders portraits of the same approved in-world Saint George mural icon in a 4x2 grid, straight-on camera, identical scale and armor neckline. Exact order: solemn neutral, gentle blessing, restrained victorious smile, open celebratory joy, sacred revelation, righteous anger, compassion and grief, calm reassuring wink. Only expression changes. Preserve the mature idealized face, bronze-brown swept-back hair, blue-gray eyes and sacred iconographic character.

Negative prompt:
eight different people, Kriz face, Benedict face, Aldrich face, hairstyle change, eye-color change, age change, profile view, modern person, inconsistent grid, weapon, dragon, text, watermark

## 04 — 04-saint-george-costume-detail-sheet.png

Input images:
- ./01-saint-george-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Costume construction sheet for the approved Saint George mural armor: front and back armor breakdowns, detached plate layers, articulated shoulder, elbow, gauntlet, hip and knee construction, ivory tabard and short ceremonial mantle, plus one torso view without outer plate for body-contour reference. Silver-steel plate, aged-gold edging and restrained sacred-gold glow. No lance, dragon, weapon or loose prop. Flat orthographic production presentation with no readable labels. Exactly five fingers per visible hand.

Negative prompt:
identity drift, modern armor, costume redesign, weapon, lance, spear, dragon, battle pose, dramatic scenery, cropped main views, readable text, watermark, extra fingers, six fingers, fused fingers, missing fingers, malformed hands

## 05 — 05-saint-george-color-material-sheet.png

Input images:
- ./01-saint-george-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Color and material reference sheet with unlabeled swatches and material spheres for silver steel #A8AFB5, sacred gold #D5B45D, aged gold #A98538, ivory #E9E1CF, mantle red #87423C, bronze-brown hair #624838, blue-gray eyes #657889 and warm skin #D9B096. Include one small neutral full-body reference of the same approved Saint George mural icon. Flat neutral lighting, no lance, dragon, weapon or loose prop.

Negative prompt:
palette drift, neon colors, black evil armor, copied project character, weapon, lance, dragon, action scene, text, hex labels, watermark, cropped body, extra fingers, malformed hands

## 06 — 06-saint-george-prop-construction-sheet.png

Input images:
- ./01-saint-george-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Props-only construction sheet for Saint George's in-world mural iconography. Show one coherent ceremonial dragon-slaying lance in complete front, side, tip, shaft-joint and exploded construction views, plus one shallow-relief generic dragon emblem for mural staging. The emblem must be generic iconography and must not copy the project's living Giant Dragon identity. No full-body person, face, severed dragon anatomy, gore or battle scene.

Negative prompt:
full-body character, face, living project Giant Dragon, realistic dead dragon, gore, severed anatomy, multiple incompatible lances, weapon being held, action scene, text, watermark

## 07 — 07-saint-george-body-reference-sheet.png

Input images:
- ./01-saint-george-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
SMPL-X body reference for the same approved in-world Saint George mural icon, with complete front and camera-on-anatomical-LEFT-side views at identical scale. Preserve the mature idealized face, bronze-brown hair and heroic body proportions without asserting historical reality. Plain fitted neutral dark-gray body suit, hair gathered away from the neck, standard neutral A-pose, true orthographic camera and aligned ground line. DESIGN-PROPOSAL body metrics: 188 cm, 7.8 heads, shoulders 2.5 head widths. Exactly five fingers per hand and five toes per foot. No armor, mantle, lance, dragon, weapon, prop or jewelry.

Negative prompt:
armor, cape, mantle, tabard, loose clothing, weapon, lance, dragon, props, accessories, jewelry, action pose, T-pose, cast shadow, cropped body, perspective, extra fingers, six fingers, fused fingers, missing fingers, malformed hands, extra toes

## Per-sheet REJECT Review Checklist

- [ ] Identity matches the approved in-world mural icon without copying another project character.
- [ ] Hair, eyes, age impression and armor identity remain consistent.
- [ ] Body proportions match Body Metrics Lock.
- [ ] Costume structure matches Costume Lock.
- [ ] Colors match the fixed proposal palette.
- [ ] Lance and dragon emblem appear only in sheet 06.
- [ ] Sheet layout, view count, order, neutral pose, zero-prop rule and flat lighting are satisfied.
- [ ] Style matches all three fixed style-reference images.
- [ ] Visible human hands have exactly five fingers per hand.
- [ ] No image claims Saint George is confirmed as a physically historical person.

## PENDING-USER-INPUT

PENDING-USER-INPUT: Saint George's status as a religious-canonical figure versus a physically historical person remains unresolved. These prompts define only the Hero Festival mural and legend depiction.

## Instruction for Codex

Read <repo-root>/Story_Character/05_傳說與背景/聖喬治/CHARACTER_SPEC.md and this PROMPTS.md. Follow the generation gate. Generate exactly one image per user request, begin with 01-saint-george-front-fullbody.png, present it and stop for approval.
