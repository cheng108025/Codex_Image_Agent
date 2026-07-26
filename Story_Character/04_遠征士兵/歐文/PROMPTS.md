# 歐文 — Image Generation Prompts

<!-- MASTER-TABLE-CANON-REFRESH:BEGIN -->
> **Authoritative story canon — source: <repo-root>/全角色總表.md**
>
> Source SHA-256: F1B720F99C76183EBE7254C4CA150517A046D1D2BCEDD911DB6D9AD866EDC129
> Pair sync ID: owen-F1B720F99C76
>
> Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.
>
> Only facts stated above are CANON. Unstated visual details are DESIGN-PROPOSAL or PENDING-USER-INPUT; they must never be promoted to Canon by inference.
<!-- MASTER-TABLE-CANON-REFRESH:END -->

## Codex 生成清單

- 操作模式：REFRESH-PAIR
- Pair sync ID：owen-F1B720F99C76
- 生成閘門：READY-FOR-DOWNSTREAM-CHECK
- 圖片狀態：PENDING-GENERATION — no direct PNG exists.
- 一致性：本檔與 CHARACTER_SPEC.md 使用完全相同的 Canonical Fact Map。
- Input images：先讀 ../../STYLE_ANCHOR.md。01 依畫風錨狀態決定畫風輸入；02 之後以核准的本角色 01 作身份參考，非首角色另加專案畫風錨。
- 單次生成：使用者每次要求最多呼叫一次圖片生成工具，只產出一張；生成後立即呈現並停止。技術檢查只回報，不自動重生。

| 編號 | 確切檔名 |
| --- | --- |
| 01 | 01-owen-front-fullbody.png |
| 02 | 02-owen-four-view-master.png |
| 03 | 03-owen-expression-sheet.png |
| 04 | 04-owen-costume-detail-sheet.png |
| 05 | 05-owen-color-material-sheet.png |
| 06 | 06-owen-prop-construction-sheet.png |
| 07 | 07-owen-body-reference-sheet.png |

第一階段只生成 01-owen-front-fullbody.png，生成後停止等待使用者核准。核准後才逐次生成下一張；每次仍只生成一張。

---

## 01 — **01-owen-front-fullbody.png**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet 01

Canonical character facts (do not add or contradict): Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.

Primary request:
Render exactly one complete front full-body view in a standard neutral A-pose: feet shoulder-width apart, arms straight 30-45 degrees away from the torso, open hands, even weight, true orthographic projection. Character and locked costume only; no removable prop.

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light
~~~

---

## 02 — **02-owen-four-view-master.png**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet 02

Canonical character facts (do not add or contradict): Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.

Primary request:
Create one four-view turnaround sheet in this exact order: front, anatomical-left profile, anatomical-right profile, back. Use the same neutral A-pose, identical scale and proportions, aligned head-top and ground lines, true orthographic views, zero removable props.

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light
~~~

---

## 03 — **03-owen-expression-sheet.png**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet 03

Canonical character facts (do not add or contradict): Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.

Primary request:
Create exactly eight head-and-shoulders portrait panels in a clean 4x2 grid: neutral, gentle/relaxed, broad positive, joyful, surprised, angry, sad, alert/wink-equivalent. Change expression only; preserve identity and anatomy.

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light
~~~

---

## 04 — **04-owen-costume-detail-sheet.png**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet 04

Canonical character facts (do not add or contradict): Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.

Primary request:
Create a costume construction detail sheet showing only Canon garment layers, front/back construction, collar, sleeves, waist, hem, footwear, fastenings, and material close-ups. No weapons or removable props.

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light
~~~

---

## 05 — **05-owen-color-material-sheet.png**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet 05

Canonical character facts (do not add or contradict): Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.

Primary request:
Create a color-and-material reference sheet using only Canon named colors plus explicitly marked SPEC design-proposal hex candidates. Include clean swatches/material patches and one neutral reference subject. Do not render visible text or hex labels.

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light
~~~

---

## 06 — **06-owen-prop-construction-sheet.png**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet 06

Canonical character facts (do not add or contradict): Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.

Primary request:
Create a props/special-construction sheet containing only removable weapons, pendants, tools, tack, or special structures explicitly permitted by the Canon summary. If none are Canon, show only non-invented construction/material studies. No full character, portrait, face, text, or labels.

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light
~~~

---

## 07 — **07-owen-body-reference-sheet.png**

~~~text
Use case: stylized-concept
Asset type: modeling reference sheet 07

Canonical character facts (do not add or contradict): Owen is a Hector member and quarantine-zone guard who works with Gawain, Gloria, and Alafalt before departing for Arcadia. The story does not state his fixed appearance or later fate. Existing face, hair, eye, age, weapon, and costume details remain DESIGN-PROPOSAL; removable equipment appears only on sheet 06.

Primary request:
Create a human body-reference sheet for modeling: front and anatomical-left profile at identical scale, neutral A-pose, plain tight dark-gray bodysuit, hair secured away from the silhouette, no costume outer layers, accessories, jewelry, weapons, props, text, or labels.

Source invariants:
- Use only the Canon facts above.
- Read CHARACTER_SPEC.md for the same Pair sync ID.
- Treat all unstated details as DESIGN-PROPOSAL or PENDING-USER-INPUT.
- All removable props are forbidden outside sheet 06.
- Preserve the approved 01 identity on sheets 02 onward when an approved 01 exists.

Style:
refined Japanese anime fantasy production character sheet, clean delicate linework, controlled soft cel shading with subtle painterly rendering, flat even ambient lighting, low-contrast warm light-gray background, orthographic presentation, high-resolution concept art

Negative prompt:
photorealistic, live-action, 3D render, CGI, western comic style, chibi, thick outlines, dramatic scenery, extreme perspective, cropped subject, duplicate subject, extra limbs, malformed hands, invented identity traits, invented costume, invented props, text, labels, letters, numbers, logo, signature, watermark, cast shadows, rim light
~~~

---

## 逐張驗收清單

- [ ] Canon 身份、外貌、體型、服裝、道具、關係與時期未被推測內容覆蓋。
- [ ] SPEC 與 PROMPTS 的 Pair sync ID 完全相同。
- [ ] 01 為單一正面身份錨；02 為四視圖；03 恰好八格；其餘構圖符合各節。
- [ ] 所有可拆卸武器、墜飾、工具與道具只出現在 06。
- [ ] 圖片只用 Canon 命名色；候選 hex 不得覆蓋 Canon。
- [ ] 無文字、標籤、logo、簽名或浮水印。
- [ ] 有 PNG 的角色已完成 IMAGE-DRIFT-REVIEW-REQUIRED 複核。

驗收只回報偏差並等待使用者，不得自行移檔或重生成。只有使用者明確要求修改時，才歸檔上一張未核准候選並只生成一張新圖。
