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
├─ _families/
│  └─ FAMILY-<家族ID>-resemblance-sheet.png（家族對照表，見 §13.4）
└─ 角色名稱/
   ├─ source/
   │  └─ 角色文檔或場次資料.md
   ├─ CHARACTER_SPEC.md
   ├─ PROMPTS.md
   ├─ _archive_template_v1/（舊版 Markdown 備份，見 §12.2）
   ├─ rejects/（驗收未過的圖，見 §11）
   ├─ 00-character-identity-anchor.png
   └─ 使用 00 號圖生成的十張正式 PNG（01–10；非人形角色九張，無 10 號素體圖）
```

### 3.1 強制兩階段流程

1. Claude 先根據角色文檔建立文字版 `CHARACTER_SPEC.md`，把正典事實、設計提案與未知事項分開標記。
2. Claude 為 `00-character-identity-anchor.png` 撰寫獨立提示詞。
3. Codex **只生成 00 號圖**；畫面必須嚴格包含同一角色的三個視圖：A-pose 正面全身設定、大型正面頭肩臉部基準、45° 三分之四視角頭肩像——**缺一不可，缺任一視圖即 REJECT 重生成**。
4. 使用者確認或要求修改 00 號圖。
5. 只有 00 號圖確認後，Claude 或 Codex 才能把它列為後續圖片的 Image 1 身份正本。
6. Codex 再生成 01–10 十張正式圖片（非人形角色為 01–09 九張）。

不得在沒有身份基準圖的情況下一次生成 01–10；否則各張圖片會出現不同臉型、髮型與服裝結構。

## 4. Claude 的工作內容

請為每個角色建立獨立的「圖片生成任務包」。

### 4.1 `CHARACTER_SPEC.md`

必須包含以下欄位：

```markdown
# 角色名稱

## 基本資料
- 中文名：
- 英文名：
- 角色版本 ID：（格式 `<NAME>-V<n>-<版本描述>`，例 `ALDRICH-V1-FOUNDER-KING`）
- 性別：
- 年齡／外觀年齡：
- 身高：
- 體型：
- 故事時期：
- 服裝版本：（不同故事時期或服裝不得混在同一角色版本；需要另一時期／服裝時建立新版本 ID）

## 身體量化鎖定 Body Metrics Lock
- 身高（cm）：
- 頭身比：
- 肩寬（頭寬倍數）：
- 左右不對稱特徵：（佩章側、疤痕側、髮分邊等；無則明寫「無，全對稱」）

## 血緣關係鎖定 Kinship Lock（無血緣親屬則明寫「無」）
- 親屬清單：（角色版本 ID＋關係，例 `KRITZ-V1-... — 子`）
- 家族錨點：（該家族以誰的 00 為相似基準，見 §13 家族註冊表）
- 承襲特徵：（逐項「特徵 ← 來源親屬」，例「方正下顎與深眉弓 ← 父奧德里奇」）
- 刻意區分特徵：（避免混淆的差異項，例「本人深棕瞳，非金瞳」）
- 禁止混淆項：（不得誤植到本角色身上的親屬特徵）

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
> 固定色票：每一項給出鎖定色名＋近似色碼（hex），跨全部圖片不得漂移。
- 主色：
- 輔色：
- 金屬：
- 寶石：
- 布料：
- 皮革：
- 特殊材質：
- 膚色／髮色／瞳色（hex）：

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
| 00 | `00-character-identity-anchor.png` | 身份基準圖；A-pose 正面全身＋大型正面頭肩臉部＋45° 三分之四視角頭肩像，只先生成這張。**只有角色本身與衣裝，零道具** |
| 01 | `01-character-front-fullbody.png` | 正面獨立全身視圖，固定 A-pose，零道具 |
| 02 | `02-character-left-profile-fullbody.png` | 左側獨立全身視圖，固定 A-pose，零道具 |
| 03 | `03-character-right-profile-fullbody.png` | 右側獨立全身視圖，固定 A-pose，零道具 |
| 04 | `04-character-back-fullbody.png` | 背面獨立全身視圖，固定 A-pose，零道具 |
| 05 | `05-character-four-view-master.png` | 四視圖總表（正面→左→右→背），四視圖全部固定同一 A-pose，零道具 |
| 06 | `06-character-expression-sheet.png` | 八表情臉部表，固定 4×2 網格 |
| 07 | `07-character-costume-detail-sheet.png` | 服裝細節表（含外層拆解視圖） |
| 08 | `08-character-color-material-sheet.png` | 色票／材質表 |
| 09 | `09-character-prop-construction-sheet.png` | 道具／特殊構造表；**所有武器與道具（含佩掛）唯一出現位置** |
| 10 | `10-character-body-reference-sheet.png` | 素體參考圖（僅人形角色）；無鎧甲、無外層服裝的貼身素體，正面＋左側，供 SMPL-X／參數化人體擬合 |

不可把 00–10 合併成一條巨大提示詞。每個輸出檔案必須有自己的提示詞與限制；00 號圖未經使用者核准前，01–10 不得進入生成階段。非人形角色（四足獸、龍、馬等）不產 10 號素體圖。

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

Body metrics:
[身高（cm）、頭身比、肩寬相對比例、左右不對稱特徵——取自 Body Metrics Lock]

Kinship invariants:
[有血緣角色必填：英文承襲特徵描述（承襲來源／刻意區分／禁止混淆），取自 Kinship Lock；無血緣填 none]

Primary request:
Design one new and visually distinct character from the written specification. Create an identity-anchor sheet containing exactly three views of the same character — all three are mandatory; missing any view = REJECT:
1. one neutral straight-on full-body front view in a standard A-pose (standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread);
2. one large straight-on head-and-shoulders portrait;
3. one 45-degree three-quarter head-and-shoulders portrait (for video-generation reference).
Suggested layout: full-body view on the left ~45% of the canvas, straight-on portrait top-right, three-quarter portrait bottom-right. All three views must have identical facial identity, hairstyle, colors and costume. The straight-on head-and-shoulders portrait is the facial identity authority for later generations. Character and costume only — no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields.

Style:
[由三張共用風格圖提煉的畫風描述]

Constraints:
- The three input images control visual style only; do not reproduce or blend their characters.
- Follow all CANON facts exactly.
- Follow approved DESIGN-PROPOSAL items consistently.
- Do not invent unresolved PENDING-USER-INPUT details.
- Character and costume only: no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields. All weapons and props belong exclusively to the prop construction sheet (09).
- Flat even ambient lighting, no cast shadows, no strong highlights, no rim light.
- Neutral front-facing presentation, plain warm light-gray background, no scene or action pose.
- No text, labels, logo, signature or watermark.
- Exactly one character identity shown three times; no identity drift between the three views. Missing any of the three views = invalid sheet, REJECT and regenerate.
```

### 5.2 01–10 正式圖片（00 號圖核准後）

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

Kinship invariants:
[有血緣角色必填：英文承襲特徵描述，例 "square jaw and deep brow consistent with his father Aldrich's face structure; warm red-gold eyes inherited from his mother Agnes"；無血緣填 none]

Body metrics:
[身高（cm）、頭身比、肩寬相對比例——01–05 與 10 必填，供參數化人體擬合的數值錨點]

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
- For full-body views (01–05, 10): character and costume only — no weapons, no handheld items, no standalone props, no belt-worn weapons, scabbards or slung shields; flat even ambient lighting, no cast shadows, no rim light.
- No text, captions, labels, logo, signature or watermark.
- No extra character, duplicate figure, extra limbs or unspecified accessories.
- Do not invent missing canonical details.
```

### 5.3 全身視圖的強制 A-pose 規則

00 號身份基準圖的正面全身視圖，以及 01–05、10 全部全身視圖，**一律固定為標準 A-pose**：

- 身體直立，雙腳與肩同寬、腳尖朝前。
- 雙臂自然伸直，與身體約呈 30–45 度張開，手掌張開、五指微張（供 rigging 辨識）。
- 頭部正對對應視角（正面 0°、左 90°、右 90°、背面 180°），不歪頭、不轉頭。
- 四視圖總表（05）中四個視圖依「正面→左→右→背」排列，必須是同一個 A-pose 的正交投影，身高、比例、服裝輪廓完全對齊。
- **零道具**：00–05 與 10 全部全身視圖一律無道具——所有武器與道具（含腰帶佩劍、劍鞘、背掛盾牌等佩掛型）只出現在 09 道具表。
- 禁止動作姿勢、對立式平衡（contrapposto）、叉腰、持武器擺姿、T-pose 或任何非 A-pose 站姿。
- **非人形豁免**：四足獸、龍、馬等無人類手臂的角色不適用 A-pose 與素體圖規則（改用自然站立的正交視圖）；有翅膀／角／尾巴的人形角色照常適用。

對應的英文提示詞必須包含：

```text
Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind.
```

負面提示詞必須包含：

```text
action pose, dynamic pose, contrapposto, hands on hips, crossed arms, T-pose, walking, running, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand
```

### 5.4 3D 建模強化規則（01–05、10 全身視圖）

供 image-to-3D 與參數化人體擬合使用，全身視圖必須滿足：

- **平光**：flat even ambient lighting，無投影陰影、無強高光、無 rim light——陰影與高光會被烘進 3D 貼圖。
- **手部**：open palms, fingers slightly spread, clearly separated——自動綁骨需要辨識五指。
- **05 正交對齊**：固定順序「正面→左側→右側→背面」；四視圖同高度、同尺寸、同身材比例、同一相機高度、true orthographic projection、輪廓可跨視圖對齊（silhouette-alignable），頭頂線與腳底線在四視圖間完全水平對齊。
- **07 外層拆解**：披風、大衣等會遮擋身體輪廓的外層服裝，須在 07 服裝細節表中單獨拆出繪製，並附一組移除外層後的身體視圖。

### 5.5 第十張素體參考圖的強制規則（僅人形角色）

`10-character-body-reference-sheet.png` 供 SMPL-X／參數化人體模型擬合身體輪廓使用——鎧甲與外層服裝的輪廓會讓體型擬合完全失準，因此需要素體。

- **所有人形角色一律必須產生 10 號素體圖，無例外。**
- 內容：同一角色（身份源自核准後的 00 號圖）**無鎧甲、無披風、無外層服裝**，僅著貼身素體衣（tight plain bodysuit / underlayer）的正面＋左側兩個全身視圖。
- **身體輪廓必須完全可見**：披風、鎧甲、寬鬆服裝、長髮不得遮擋身體輪廓（長髮於素體圖中收攏至身後或紮起）。
- 同一標準 A-pose、正交投影、平光，遵循 §5.3 與 §5.4 全部規則。
- 保留臉部身份、髮型與膚色；體型必須與 01–05 中被服裝包覆的身體一致。
- 提示詞必須填寫 `Body metrics`（身高 cm、頭身比、肩寬相對比例）。
- 負面提示詞必須包含：`armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry`。
- 非人形角色（四足獸、龍、馬等）不產此圖。

## 6. 第六張八表情臉部表的強制規則

第六張必須是標準化的臉部表情表。上傳的角色圖片只作為角色身份參考，不沿用原圖的全身構圖、姿勢或鏡頭距離。八格表情同時作為影片生成（img2vid／角色一致性參考）的表情關鍵幀（keyframe）依據。

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

Kinship invariants:
[有血緣角色必填：承襲特徵與刻意區分特徵在八格中恆定，取自 Kinship Lock；無血緣填 none]

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

第九張必須是純道具與構造設定表。**這是所有武器與道具的唯一出現位置**——包含原本設定為佩掛在服裝上的武器（腰帶佩劍、劍鞘、背掛盾牌等）。00–05 與 10 的角色圖上一律不出現任何武器或道具。

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

注意：01–05 與 10 全身圖的照明以 §5.4 的「平光無投影陰影」**覆蓋**上述 `soft neutral studio lighting`；`elegant slender proportions` 在體格特殊的角色（魁梧、年長清瘦）以該角色 Body Metrics Lock 覆蓋。

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

PROMPTS.md 必須包含 00–10 的獨立完整英文提示詞（非人形角色為 00–09）。00 號是角色身份基準圖；三張 style 圖只能控制畫風。00 號圖經使用者核准後，才成為 01–10 的 Image 1 身份與服裝正本。

00 號圖必須同時包含同一角色的三個視圖：A-pose 正面全身設定、大型正面頭肩臉部基準、45° 三分之四視角頭肩像。不得生成多個候選角色，不得複製或混合三張 style 圖中的角色身份。

00 號的正面全身視圖與 01–05、10 全部全身視圖，一律固定為標準 A-pose（雙腳與肩同寬、雙臂約 30–45 度自然張開、手掌張開五指微張），平光無投影陰影，禁止動作姿勢、T-pose 與 contrapposto。視圖順序：01 正面、02 左側、03 右側、04 背面、05 四視圖總表（正面→左→右→背）。

00–05 與 10 一律零道具：不得出現任何武器、手持物或佩掛武器（含腰帶佩劍、劍鞘、背掛盾牌），所有武器與道具只出現在 09 道具表。00–05 與 10 的提示詞必須填寫 Body metrics（身高 cm、頭身比、肩寬相對比例）。

人形角色必須包含第十張素體參考圖（無鎧甲、無外層服裝、貼身素體衣，正面＋左側，供 SMPL-X／參數化人體擬合）；非人形角色（四足獸、龍、馬等）不適用 A-pose 與素體圖，改用自然站立正交視圖。

第六張必須是八表情臉部表，使用固定 4×2 網格、正面 0° 頭肩特寫，並依照自然、輕笑、露齒大笑、開懷大笑、驚訝、憤怒、悲傷、眨眼的順序排列。

第九張必須是純道具表，禁止全身人物、迷你人物、肖像、臉部或人物剪影；只有展示背帶或服裝連接時可以使用無頭裁縫人台。

CHARACTER_SPEC.md 必須鎖定：角色版本 ID、故事時期、服裝版本、身高、頭身比、肩寬、左右不對稱特徵與固定色票（hex）。不同故事時期或服裝不得混在同一角色版本。

有血緣關係的角色必須填寫 Kinship Lock（SPEC）與 Kinship invariants（提示詞），依 §13 家族註冊表執行；家族錨點的 00 先行，成員承襲特徵成對一致；文檔無明載的承襲特徵標 PENDING-USER-INPUT。

PROMPTS.md 開頭必須寫入用途聲明（3D 建模參考包，非完成模型；正式影片以核准的 Blender／VRM 模型為唯一角色正本），並附逐張驗收清單（見交接規範 §11）——任一視圖出現臉型、髮型、身材、服裝結構、左右位置或色票漂移即 REJECT，不得繼續下一張。

可以提出合理的 DESIGN-PROPOSAL，但不得把提案冒充正典。資訊有重大分歧或會明顯改變角色辨識度時，標記 PENDING-USER-INPUT，不得自行決定。
```

## 10. 交給 Codex 產圖時的指令

Claude 完成任務包後，使用者只需要告訴 Codex：

```text
按照 output/Story_Character/角色名稱/PROMPTS.md 執行兩階段產圖。
第一階段只生成 00-character-identity-anchor.png（三視圖：A-pose 正面全身、正面頭肩像、45° 三分之四頭肩像；零道具；缺任一視圖即 REJECT 重生成），使用 style 資料夾三張圖片鎖定共同畫風，不得把其中角色當成新角色身份。生成後停止，等待我確認。
我確認 00 號圖後，再把它作為 Image 1 身份正本生成 01–10（非人形角色為 01–09）。每生成一張先過 PROMPTS.md 的逐張驗收清單；任一項漂移即 REJECT，存 rejects/ 後重生成本張，不得繼續下一張，也不得刪除或覆蓋任何現有 PNG。
有血緣的角色遵守 §13：家族錨點的 00 先生成先核准；家族全部成員 00 核准後，產出 _families/FAMILY-<家族ID>-resemblance-sheet.png 供我驗證相似度。
```

Codex 將先讀取文字規格與三張共同畫風圖，只生成 00 號身份基準圖。使用者核准後，再以 00 號圖鎖定臉、髮型、身材與服裝，依序生成十張正式圖片並逐張驗收（非人形角色九張）。全身視圖零道具、平光、標準 A-pose；所有武器與道具只出現在 09 道具表。

## 11. 逐張驗收規則（強制）

每個角色的 `PROMPTS.md` 必須附「逐張驗收清單」。每生成一張圖，先過清單再進下一張：

驗收項目（任一項漂移即 **REJECT**，重生成本張，不得繼續下一張）：

- [ ] 臉型與臉部身份與 00 號正本一致
- [ ] 髮型、瀏海、髮色一致
- [ ] 身材比例（身高、頭身比、肩寬）與 Body Metrics Lock 一致
- [ ] 服裝結構（層次、配件數量、位置）與 Costume Lock 一致
- [ ] 左右不對稱特徵位置正確、未鏡像翻轉
- [ ] 色票未漂移（對照 CHARACTER_SPEC.md 固定色票）
- [ ] 該張圖片自身的構圖規則（視圖數量、順序、A-pose、零道具、平光）全部滿足
- [ ] 血緣相似：承襲特徵與家族錨點的核准 00 可辨識地一致；刻意區分特徵未混淆（無血緣角色跳過；見 §13）

REJECT 的圖片不覆蓋既有檔案，另存 `rejects/` 子資料夾留檔比對。

## 12. 用途聲明與檔案安全規則

### 12.1 用途聲明（必須寫進每個角色的 PROMPTS.md 開頭）

**這套圖片是 3D 建模參考包（modeling reference pack），不是完成的 3D 模型。**
純 AI img2vid 無法保證跨鏡頭的角色完全一致；正式影片必須先以這套參考包建立同一個經核准的 Blender／VRM 角色模型，並以該模型作為**唯一角色正本**驅動所有鏡頭。

### 12.2 檔案安全

- 不得刪除或覆蓋任何現有 PNG；重生成的圖片先以新檔名或 `rejects/` 存放，經使用者核准後才取代正本。
- 更新規格時只改 `CHARACTER_SPEC.md`、`PROMPTS.md`、`README.md`；舊版 Markdown 先備份到該角色資料夾的 `_archive_template_v1/` 再改寫。

### 12.3 正典不明時

遇到正典不明、外貌衝突或重大設計分歧，一律標記 `PENDING-USER-INPUT` 等待使用者決定，不得自行決定。

## 13. 血緣相似規則（Kinship Lock，純文字鎖定）

有血緣關係的角色，生成圖片必須有可辨識的家族相似度。機制為**純文字鎖定**：相似度由 CHARACTER_SPEC.md 的 Kinship Lock 區段與提示詞的 `Kinship invariants:` 欄位控制，**不引用親屬圖片作為生成輸入**。

### 13.1 家族註冊表

| 家族 ID | 成員 | 相似錨點 |
| --- | --- | --- |
| `ROYAL` | 克里茲、奧德里奇、皇后阿格妮絲 | **克里茲**（主角先鎖，父母特徵從他反推） |
| `ANDRE` | 安德烈、菲利浦、賽希莉亞 | **安德烈**（父，世代源頭） |

夫妻之間無血緣、不需外貌相似（奧德里奇↔阿格妮絲全庫無明文夫妻關係，僅由頭銜間接推定，不自行新增設定）。

### 13.2 生成順序

家族錨點的 00 號圖**先生成、先核准**；其他家族成員的 00 才能進入生成階段。錨點的臉是全家族相似度的比對基準。

### 13.3 承襲特徵撰寫規則

- 只鎖**骨架級**特徵（臉型、下顎、眉弓、鼻形、眼型）與正典明文的色彩承襲（如金瞳承母系）。
- 髮型、表情、年齡感、體格**不鎖**——親屬相似不等於同臉複製。
- Kinship Lock 必須成對一致：A 的清單列了 B，B 的清單必須列回 A，且承襲方向描述相符。
- 承襲特徵文檔無明載時，標 `PENDING-USER-INPUT`，不得自行決定。

### 13.4 家族對照表（下游產圖 AI 的必要產出）

一個家族全部成員的 00 號圖核准後，產圖 AI 必須產出：

```text
output/Story_Character/_families/FAMILY-<家族ID>-resemblance-sheet.png
```

內容：全體家族成員的正面頭肩像以相同構圖、相同鏡頭距離並排，供使用者直接目視驗證承襲特徵。驗收不過 → 修正漂移成員的 00 → 重產對照表。

### 13.5 驗收

§11 驗收清單新增之血緣項對所有家族成員生效；比對對象為家族錨點的核准 00 號圖。
