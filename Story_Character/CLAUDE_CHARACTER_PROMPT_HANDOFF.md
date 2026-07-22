# Claude 角色圖片提示詞交接規範

## 1. 目的

Claude 負責閱讀角色文檔與參考圖，整理角色設定及圖片生成提示詞；Codex 負責讀取整理後的任務包、引用指定圖片、生成圖片並驗收成品。

Claude **只整理資料與提示詞，不生成圖片**。

## 2. 共用畫風基準

共用畫風參考位於：

```text
output/Story_Character/style/
├─ 8fJgh1kde6P3IAAAAASUVORK5CYII.png
├─ McEZ7GwGWkAAAAABJRU5ErkJggg.png
└─ SV8zdQHTYqQAAAABJRU5ErkJggg.png
```

這三張圖片只控制：

- 精緻日系奇幻角色設定稿風格。
- 乾淨、纖細的線稿。
- 柔和賽璐璐上色與輕微厚塗質感。
- 金屬、寶石、刺繡、布料與皮革的精細材質表現。
- 淺灰白、低干擾的角色設計背景。
- 全身正交視圖與製作設定表的專業版式。
- 柔和均勻、沒有戲劇性陰影的設計稿照明。

這三張圖片**不得被當成新角色的身份參考，也不得直接複製其中任何一人的臉、髮型或服裝**。新角色一開始沒有 character sheet；其外觀先由角色文檔與 Claude 明確標記的設計提案組成文字規格，再由 Codex 生成 `00-character-identity-anchor.png`。只有經使用者確認的 00 號圖，才能成為其餘圖片的角色身份正本。

## 3. 建議資料夾結構

```text
output/Story_Character/
├─ style/
│  ├─ 三張共用畫風參考圖
│  └─ STYLE_LOCK.md
└─ 角色名稱/
   ├─ source/
   │  └─ 角色文檔或場次資料.md
   ├─ CHARACTER_SPEC.md
   ├─ PROMPTS.md
   ├─ 00-character-identity-anchor.png
   └─ 使用 00 號圖生成的九張正式 PNG
```

### 3.1 強制兩階段流程

1. Claude 先根據角色文檔建立文字版 `CHARACTER_SPEC.md`，把正典事實、設計提案與未知事項分開標記。
2. Claude 為 `00-character-identity-anchor.png` 撰寫獨立提示詞。
3. Codex **只生成 00 號圖**；畫面包含同一角色的正面全身設定與大型正面頭肩臉部基準。
4. 使用者確認或要求修改 00 號圖。
5. 只有 00 號圖確認後，Claude 或 Codex 才能把它列為後續圖片的 Image 1 身份正本。
6. Codex 再生成 01–09 九張正式圖片。

不得在沒有身份基準圖的情況下一次生成 01–09；否則各張圖片會出現不同臉型、髮型與服裝結構。

## 4. Claude 的工作內容

請為每個角色建立獨立的「圖片生成任務包」。

### 4.1 `CHARACTER_SPEC.md`

必須包含以下欄位：

```markdown
# 角色名稱

## 基本資料
- 中文名：
- 英文名：
- 性別：
- 年齡／外觀年齡：
- 身高：
- 體型：
- 故事時期／服裝版本：

## 參考圖片
- 初始角色外觀圖片：無
- 核准後的角色身份正本：`00-character-identity-anchor.png`（生成前填 `PENDING-GENERATION`）
- 共用畫風參考 1：`../style/檔名.png`
- 共用畫風參考 2：`../style/檔名.png`
- 共用畫風參考 3：`../style/檔名.png`

## 設計來源標記
- `CANON`：角色文檔明確記載的外觀事實
- `DESIGN-PROPOSAL`：Claude 根據角色身分、時代與故事功能提出的視覺設計
- `PENDING-USER-INPUT`：會明顯改變角色辨識度、但無法由文檔決定的項目

## 外貌鎖定 Identity Lock
- 臉型：
- 膚色：
- 眼型與眼睛顏色：
- 髮型、髮色與固定髮束：
- 身材比例：
- 標誌性輪廓：
- 不可改變特徵：

## 服裝鎖定 Costume Lock
- 服裝層次：
- 領口：
- 肩部：
- 胸前：
- 袖口／手部：
- 腰部：
- 下襬／披風：
- 腿部／鞋靴：
- 背面結構：

## 色票與材質
- 主色：
- 輔色：
- 金屬：
- 寶石：
- 布料：
- 皮革：
- 特殊材質：

## 道具與特殊構造
- 武器：
- 飾品：
- 隨身道具：
- 翅膀／角／尾巴／其他特殊構造：
- 配戴或連接方式：

## 八種固定表情
1. 自然 Neutral
2. 輕笑 Gentle smile
3. 大笑、可見牙齒 Broad smile with visible teeth
4. 開懷大笑 Joyful open laughter
5. 驚訝 Surprise
6. 憤怒 Anger
7. 悲傷 Sadness
8. 眨眼 Wink

## 禁止特徵
- 不可新增的配件：
- 不可出現的顏色：
- 不可改變的左右位置：
- 不可使用的風格：

## 正典衝突與待確認事項
- 已決定：
- `PENDING-USER-INPUT`：
```

Claude 可以補充完整的視覺設計提案，但不得把提案寫成正典事實。文檔已明確記載者標記 `CANON`；合理補完者標記 `DESIGN-PROPOSAL`；具有兩種以上重大方向者標記 `PENDING-USER-INPUT`，等待使用者決定。

### 4.2 `PROMPTS.md`

以下每個檔案都要有一條獨立、完整的英文提示詞：

| 編號 | 檔案 | 內容 |
| --- | --- | --- |
| 00 | `00-character-identity-anchor.png` | 身份基準圖；正面全身＋大型正面頭肩臉部，只先生成這張 |
| 01 | `01-character-front-fullbody.png` | 正面獨立全身視圖 |
| 02 | `02-character-left-profile-fullbody.png` | 左側獨立全身視圖 |
| 03 | `03-character-back-fullbody.png` | 背面獨立全身視圖 |
| 04 | `04-character-right-profile-fullbody.png` | 右側獨立全身視圖 |
| 05 | `05-character-four-view-master.png` | 四視圖總表 |
| 06 | `06-character-expression-sheet.png` | 八表情臉部表，固定 4×2 網格 |
| 07 | `07-character-costume-detail-sheet.png` | 服裝細節表 |
| 08 | `08-character-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-character-prop-construction-sheet.png` | 道具／特殊構造表 |

不可把 00–09 合併成一條巨大提示詞。每個輸出檔案必須有自己的提示詞與限制；00 號圖未經使用者核准前，01–09 不得進入生成階段。

## 5. 每條圖片提示詞的固定格式

### 5.1 00 號身份基準圖（尚無角色參考圖）

```text
Use case: stylized-concept
Asset type: new-character identity anchor sheet

Input images:
- Image 1: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 2: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.
- Image 3: shared visual-style reference only. Do not copy the depicted character's identity, face, hairstyle, costume or anatomy.

Character definition:
[完整貼入 CHARACTER_SPEC.md 中已核准的 CANON 與 DESIGN-PROPOSAL 外觀規格]

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly two views of the same character: one neutral straight-on full-body front view and one large straight-on head-and-shoulders portrait. Both views must have identical facial identity, hairstyle, colors, costume and accessories. The head-and-shoulders portrait is the facial identity authority for later generations.

Style:
[由三張共用風格圖提煉的畫風描述]

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly.
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown twice; no identity drift between the two views.
```

### 5.2 01–09 正式圖片（00 號圖核准後）

```text
Use case: identity-preserve or stylized-concept
Asset type: [具體圖片類型]

Input images:
- Image 1: the approved 00-character-identity-anchor.png and sole identity/costume authority.
- Image 2: shared style reference only; do not copy character identity.
- Image 3: shared style reference only; do not copy character identity.
- Image 4: shared style reference only; do not copy character identity.

Primary request:
[這張圖片要生成的具體內容]

Identity invariants:
[臉、眼睛、髮型、身材與特殊構造中不可改變的部分]

Costume invariants:
[服裝層次、配件數量、位置、顏色與材質]

Composition:
[視角、站姿、裁切、畫面比例、背景與排版]

Positive style prompt:
[由三張共用風格圖提煉的畫風描述]

Negative prompt:
[品質、風格、結構與內容上的禁止事項]

Constraints:
- Preserve the exact approved character identity from Image 1.
- Use Images 2–4 for visual style only.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

## 6. 第六張八表情臉部表的強制規則

第六張必須是標準化的臉部表情表。上傳的角色圖片只作為角色身份參考，不沿用原圖的全身構圖、姿勢或鏡頭距離。

### 6.1 構圖規則

- 正好包含 8 個人像，以 4 欄 × 2 列整齊排列。
- 每格都是正面 0° 的標準頭肩人像。
- 畫面從鎖骨下方剛好裁切到頭頂上方少量留白。
- 頭部約佔單格畫面的 70–75%。
- 禁止全身、半身、腰部以上、上半身、半胸像或縮小人物。
- 八格必須使用相同構圖、鏡頭距離、頭部大小、正面角度、燈光、背景與色彩處理。
- 純白無縫背景，格線或間距簡潔，不加入文字標籤。

### 6.2 身份一致性規則

八格必須保持同一角色，完整保留：

- 相同臉部身份與臉部比例。
- 相同髮型、瀏海、頭髮長度與髮色。
- 相同膚色、眼睛顏色、頸部比例。
- 相同且固定的領口可見服裝與飾品。
- 相同正面 0° 頭部角度，不得側臉、旋轉或改變視角。

只有眉毛、眼睛、眼瞼、臉頰與嘴部形成的表情可以改變。

### 6.3 固定表情順序

依照由左至右、由上至下排列：

1. 自然。
2. 輕笑。
3. 大笑，可見牙齒。
4. 開懷大笑。
5. 驚訝。
6. 憤怒。
7. 悲傷。
8. 眨眼。

### 6.4 可直接使用的英文提示詞模板

```text
Use case: identity-preserve
Asset type: professional eight-expression anime character face sheet

Input images:
- Image 1: use only as the character identity, hairstyle, costume-collar and color reference. Ignore its original pose, framing and composition.
- Images 2–4: shared visual-style references only. Do not copy their character identities, faces, hairstyles, costumes or anatomy.

Primary request:
Recompose the referenced character into standardized head-and-shoulders studio portraits. Create exactly eight portraits arranged neatly in a 4-column by 2-row grid on a pure white seamless background. Every portrait must use a straight-on front view at 0 degrees. Crop from just below the collarbones to slightly above the top of the hair. The head must occupy approximately 70–75 percent of each panel.

Identity invariants:
Keep exactly the same character in all eight portraits. Preserve the identical facial identity, face proportions, skin tone, eye color, hairstyle, bangs, hair length, neck proportions, and visible costume collar. Use the same framing, camera distance, head size, lighting, color grading and front-facing angle in every panel. Only the facial expression may change.

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
full body, half body, waist-up, upper body, bust portrait, half-bust, zoomed out, long shot, medium shot, different composition, different person, changed face, changed facial proportions, different hairstyle, changed bangs, changed hair length, profile, side view, three-quarter view, head turned, tilted head, inconsistent lighting, inconsistent color grading, beauty filter, photorealistic, live-action photography, 3D render, CGI, western comic style, chibi, thick outlines, blurry, low resolution, text, caption, label, letters, numbers, logo, signature, watermark, extra portrait, missing portrait, more than eight portraits, fewer than eight portraits
```

原始需求中的「逼真工作室人像、超逼真」與「禁止插圖、動畫」會破壞三張共用動漫角色設定圖的風格，因此正式模板改為日系奇幻角色設定稿，僅保留 85mm 人像鏡頭等效構圖、柔和漫射光與嚴格的頭肩裁切。

## 7. 第九張道具表的強制規則

第九張必須是純道具與構造設定表。

提示詞必須明確包含：

```text
Props only: no full-body character, miniature person, portrait, face or human silhouette anywhere. A blank headless tailor form is allowed only when required to explain a harness or garment attachment. Do not include a character scale inset.
```

可以包含：

- 武器正面、側面與拆解圖。
- 劍鞘、槍套、背帶、腰帶與掛鉤。
- 飾品、徽章、項鍊與寶石。
- 翅膀、角、尾巴、機械或魔法構造的局部拆解。
- 無頭、無臉的裁縫人台或結構線框。

不可包含：

- 角色全身照。
- 迷你人物比例圖。
- 頭像或表情。
- 場景插圖。
- 其他角色。

## 8. 共用畫風提示詞的設計原則

三張圖片的共通風格應描述為：

```text
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art
```

共用負面提示詞至少包含：

```text
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry
```

不要直接套用夏日海邊、金色夕陽、景深散景或電影場景等描述；那些不是這三張角色設定圖的共同畫風。

## 9. Claude 可直接執行的任務指令

```text
請讀取指定角色的角色文檔，以及
output/Story_Character/style/ 內三張共用畫風參考圖。

此角色沒有正面圖、character sheet 或其他身份參考圖片。不得把三張 style 圖中的任何角色當成新角色本人，也不得混合他們的臉、髮型或服裝。

你只負責整理角色設定與圖片生成提示詞，不生成圖片。

請建立：
1. CHARACTER_SPEC.md
2. PROMPTS.md

CHARACTER_SPEC.md 必須分開記錄角色外貌、服裝、色票材質、道具特殊構造、八種固定表情、禁止特徵，以及正典衝突。文檔明載內容標記 CANON；合理視覺補完標記 DESIGN-PROPOSAL；需要使用者決定的重大分歧標記 PENDING-USER-INPUT。

PROMPTS.md 必須包含 00–09 的獨立完整英文提示詞。00 號是角色身份基準圖；三張 style 圖只能控制畫風。00 號圖經使用者核准後，才成為 01–09 的 Image 1 身份與服裝正本。

00 號圖必須同時包含同一角色的正面全身設定與大型正面頭肩臉部基準。不得生成多個候選角色，不得複製或混合三張 style 圖中的角色身份。

第六張必須是八表情臉部表，使用固定 4×2 網格、正面 0° 頭肩特寫，並依照自然、輕笑、露齒大笑、開懷大笑、驚訝、憤怒、悲傷、眨眼的順序排列。

第九張必須是純道具表，禁止全身人物、迷你人物、肖像、臉部或人物剪影；只有展示背帶或服裝連接時可以使用無頭裁縫人台。

可以提出合理的 DESIGN-PROPOSAL，但不得把提案冒充正典。資訊有重大分歧或會明顯改變角色辨識度時，標記 PENDING-USER-INPUT。
```

## 10. 交給 Codex 產圖時的指令

Claude 完成任務包後，使用者只需要告訴 Codex：

```text
按照 output/Story_Character/角色名稱/PROMPTS.md 執行兩階段產圖。
第一階段只生成 00-character-identity-anchor.png，使用 style 資料夾三張圖片鎖定共同畫風，不得把其中角色當成新角色身份。生成後停止，等待我確認。
我確認 00 號圖後，再把它作為 Image 1 身份正本生成 01–09。
```

Codex 將先讀取文字規格與三張共同畫風圖，只生成 00 號身份基準圖。使用者核准後，再以 00 號圖鎖定臉、髮型、身材、服裝與配件，依序生成九張正式圖片並逐張驗收。
