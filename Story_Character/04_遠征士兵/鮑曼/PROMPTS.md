# PROMPTS — 鮑曼

> Operation mode: CREATE-CHARACTER
> Sources: <repo-root>/Story_Character/預告片_按場次重新整理.md + <repo-root>/全角色總表.md + <repo-root>/Story_Character/角色文檔.md
> Character type: human memory-image
> Trailer evidence: SCENE 14; preserve Bowman as Kriz's deliberately incomplete memory
> Generation gate: READY — first generate only 01, present it, then stop for user approval.

## Codex Generation Manifest

### (a) Exact filenames
- [ ] 01-bowman-front-fullbody.png — PENDING-GENERATION
- [ ] 02-bowman-four-view-master.png — PENDING-GENERATION
- [ ] 03-bowman-expression-sheet.png — PENDING-GENERATION
- [ ] 04-bowman-costume-detail-sheet.png — PENDING-GENERATION
- [ ] 05-bowman-color-material-sheet.png — PENDING-GENERATION
- [ ] 06-bowman-prop-construction-sheet.png — PENDING-GENERATION
- [ ] 07-bowman-body-reference-sheet.png — PENDING-GENERATION

### (b) Character gate

Generate only 01-bowman-front-fullbody.png first. Present that single image and stop. Generate 02–07 only after explicit user approval of 01.

### (c) Consistency statement

The filenames above exactly match the section filenames below. The intentional facial erasure, body metrics, scout armor and palette come from the same Canonical Fact Map as CHARACTER_SPEC.md.

### (d) Fixed input images

For 01, use all three images only as style references and never copy their depicted person's identity:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

For 02–07, additionally use ./01-bowman-front-fullbody.png as Bowman's memory-image identity reference while retaining all three style images.

### (e) Existing PNG state

All files are PENDING-GENERATION. Do not overwrite any future approved PNG.

### (f) Single-generation policy

Each user image request permits at most one image-generation call and one new image. Present it immediately and stop. Technical inspection may report deviations but must not auto-reject, move or regenerate. Only an explicit modification request authorizes archiving the prior unapproved candidate and generating one replacement.

## 01 — 01-bowman-front-fullbody.png

Input images:
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Full-body front view of Bowman as Kriz's incomplete memory of a fallen Hector scout. Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed 30-45 degrees away from the body, palms open, no action pose, no contrapposto, no T-pose. True orthographic front camera, flat warm-gray background, even shadowless light, entire body visible. Adult male scout silhouette; the face softly loses specific features into pale memory haze and must remain intentionally unidentifiable, not wounded or monstrous. Short indistinct dark hair. DESIGN-PROPOSAL body metrics: 176 cm, 7.4 heads, shoulders 2.3 head widths, lean field-scout build. Standard light scout armor: charcoal gambeson, dull steel plates, worn leather straps, flexible boots, faded Hector-blue scarf. No weapon or prop. Exactly five fingers per hand and five toes per foot.

Negative prompt:
clear resolved face, sharp eye color, celebrity face, heroic glamour portrait, skull, mask, visor, gore, zombie, copied reference identity, weapon, knife, map case, whistle, action pose, T-pose, cast shadow, rim light, cropped head, cropped feet, text, watermark, extra fingers, six fingers, fused fingers, missing fingers, malformed hands, extra toes

## 02 — 02-bowman-four-view-master.png

Input images:
- ./01-bowman-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
One turnaround sheet with four complete views in this exact order: front, camera on the character's anatomical LEFT side, camera on the character's anatomical RIGHT side, back. Same neutral A-pose, height, scale, lean scout proportions and armor in every panel; true orthographic camera; aligned head-top and ground lines. Preserve Bowman's intentionally erased, unidentifiable memory-face and the same charcoal light armor, dull steel, worn leather, faded blue scarf and pale memory haze. No weapons or loose props. Exactly five fingers per visible hand.

Negative prompt:
clear different faces, identity invention, inconsistent facial erasure, different armor, weapon, prop, wrong view order, duplicate view, perspective, action pose, cast shadow, cropped body, text, watermark, extra fingers, six fingers, fused fingers, missing fingers, malformed hands

## 03 — 03-bowman-expression-sheet.png

Input images:
- ./01-bowman-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Eight head-and-shoulders memory portraits in a 4x2 grid, straight-on camera, same Bowman silhouette and armor neckline. Exact sequence: neutral memory trace, faint comradely warmth, barely readable smile, distant remembered laughter, startled trace, tense trace, sorrowful fading trace, final nearly blank memory. Only a faint expression trace changes; every face remains softly erased and unidentifiable, with no fixed eye color or recoverable facial geometry. Consistent pale haze and desaturated palette.

Negative prompt:
sharp complete face, eight different people, clear eye color, identity invention, skull, mask, gore, horror, hairstyle change, armor change, profile view, inconsistent grid, text, watermark

## 04 — 04-bowman-costume-detail-sheet.png

Input images:
- ./01-bowman-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Costume construction sheet for Bowman's standard Hector scout light armor: front and back breakdowns, detached charcoal gambeson layers, dull steel plates, worn leather straps, flexible field boots and faded Hector-blue scarf, plus one torso view without outer armor for body-contour reference. Preserve the same erased memory-face when the head is visible. No weapons, map case, whistle or utility knife. Flat orthographic production presentation with no readable labels. Exactly five fingers per visible hand.

Negative prompt:
clear face, identity invention, heavy knight plate, ornate royal armor, weapon, knife, map case, whistle, action pose, dramatic light, cropped main views, text, watermark, extra fingers, six fingers, fused fingers, missing fingers, malformed hands

## 05 — 05-bowman-color-material-sheet.png

Input images:
- ./01-bowman-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Color and material reference sheet with unlabeled swatches and material spheres for memory gray #B8BBC0, field charcoal #343940, faded Hector blue #465A70, worn leather #66503E, dull steel #7C858C, pale haze #D8D9D7 and indistinct dark hair #3A3838. Include one small neutral full-body reference preserving Bowman's erased, unidentifiable face and scout armor. Flat neutral lighting, no weapon or loose prop.

Negative prompt:
clear face, fixed eye color, saturated heroic colors, palette drift, weapon, knife, map case, whistle, action scene, text, hex labels, watermark, cropped body, extra fingers, malformed hands

## 06 — 06-bowman-prop-construction-sheet.png

Input images:
- ./01-bowman-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
Props-only construction sheet for conservative DESIGN-PROPOSAL standard scout equipment: one worn leather map case, one simple signal whistle and one short utility knife with sheath. Show front, side and exploded views with consistent scale and construction. No casualty roster, no desk, no full-body person, no face and no character silhouette; a headless tailor mannequin may show belt attachment only.

Negative prompt:
full-body character, face, head, clear identity, casualty roster, Kriz's desk, sword, shield, fantasy artifact, ornate decoration, prop being held, duplicate incompatible designs, text, watermark

## 07 — 07-bowman-body-reference-sheet.png

Input images:
- ./01-bowman-front-fullbody.png
- ../../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
- ../../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
- ../../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png

Positive prompt:
SMPL-X body reference sheet with front and camera-on-anatomical-LEFT-side views of the same adult male scout memory-image. Preserve the intentionally erased, unidentifiable face and indistinct short hair. Plain fitted neutral dark-gray body suit, full body contour visible. Standard neutral A-pose, true orthographic camera, identical scale and aligned ground line. DESIGN-PROPOSAL body metrics: 176 cm, 7.4 heads, shoulders 2.3 head widths, lean scout build. Exactly five fingers per hand and five toes per foot. No armor, scarf, weapon, prop or jewelry.

Negative prompt:
clear face, fixed eye color, identity invention, armor, cape, scarf, loose clothing, weapon, props, accessories, jewelry, action pose, T-pose, cast shadow, cropped body, perspective, extra fingers, six fingers, fused fingers, missing fingers, malformed hands, extra toes

## Per-sheet REJECT Review Checklist

- [ ] The face remains intentionally erased and does not invent a definitive identity.
- [ ] Hair silhouette, memory haze, age impression and scout silhouette remain consistent.
- [ ] Body proportions match Body Metrics Lock.
- [ ] Costume structure matches Costume Lock.
- [ ] Colors match the fixed proposal palette.
- [ ] Sheet layout, view count, order, neutral pose, zero-prop rule and flat lighting are satisfied.
- [ ] Style matches all three fixed style-reference images.
- [ ] Visible human hands have exactly five fingers per hand.
- [ ] No other named character's identity has been copied.

## PENDING-USER-INPUT

PENDING-USER-INPUT: Bowman's clear facial features, eye color, exact hair color, age, weapon and personal history remain unavailable. The package intentionally represents the erased memory-image.

## Instruction for Codex

Read <repo-root>/Story_Character/04_遠征士兵/鮑曼/CHARACTER_SPEC.md and this PROMPTS.md. Follow the generation gate. Generate exactly one image per user request, begin with 01-bowman-front-fullbody.png, present it and stop for approval.
