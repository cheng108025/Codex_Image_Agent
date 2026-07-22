# STYLE_LOCK — 共用畫風正本

> 本檔是所有角色 `PROMPTS.md` 的**畫風單一來源**。撰寫任何提示詞時，`Style` / `Positive style prompt`
> 一律貼下方 §1；`Negative prompt` 一律貼下方 §2；不得逐張重寫或加入夏日海邊、金色夕陽、
> 電影散景等非本專案的描述。三張 style 圖只鎖畫風，**不得複製其中任何角色的臉、髮型或服裝**。

## style/ 三張共用畫風參考圖

```
../style/SV8zdQHTYqQAAAABJRU5ErkJggg.png
../style/McEZ7GwGWkAAAAABJRU5ErkJggg.png
../style/8fJgh1kde6P3IAAAAASUVORK5CYII.png
```

它們只控制：精緻日系奇幻角色設定稿風格、乾淨纖細線稿、柔和賽璐璐＋輕微厚塗、金屬/寶石/刺繡/布料/皮革的精細材質、淺灰白低干擾背景、全身正交視圖版式、柔和均勻無戲劇陰影的設計稿照明。

## §1 共用正向畫風提示詞（Positive style — 逐字貼用）

> 注意：§1 內含 `elegant slender proportions`，那是**預設體型**。魁梧（馬爾科、帕拉諾雅、艾維斯）、
> 年長清瘦（安德烈、班尼迪克）等角色，仍逐字貼 §1，但在該張的 Character definition／Identity invariants
> 以 `massive heavyweight build` / `elderly aged frame` 等明確描述覆蓋，並在負向補 `slender` / `youthful`
> 對治。畫風不變、體型由角色定義決定。

```text
refined Japanese anime fantasy character design, professional production character sheet, elegant slender proportions, clean delicate linework, controlled fine outlines, soft cel shading blended with subtle painterly rendering, highly detailed costume construction, ornate but readable fantasy design, precise embroidery, layered fabric, polished metal, leather and gemstone material separation, restrained luminous highlights, soft neutral studio lighting, low-contrast warm light-gray background, clean orthographic presentation, balanced negative space, consistent scale and anatomy, high-resolution concept art
```

## §2 共用負向提示詞（Negative — 逐字貼用；各張圖再依需求追加專屬互斥詞）

```text
photorealistic, 3D render, western comic style, chibi, super-deformed, thick outlines, harsh lineart, sketchy unfinished lines, flat unshaded colors, muddy colors, excessive bloom, dramatic cinematic background, scenery, action pose, extreme perspective, fisheye, cropped body, inconsistent anatomy, different face, different hairstyle, costume redesign, random accessories, duplicate character, extra limbs, extra fingers, text, labels, letters, numbers, logo, signature, watermark, jpeg artifacts, low resolution, blurry
```

## §3 兩階段流程（強制）

1. 先只寫 / 生成 **00 號身份基準圖**（正面全身 ＋ 大型正面頭肩臉部，同一角色出現兩次、零漂移）。
2. 使用者核准 00 號後，才把它當 Image 1 身份正本生成 01–09。
3. 06 號＝八表情臉部表（4×2 網格、正面 0° 頭肩、自然/輕笑/露齒大笑/開懷大笑/驚訝/憤怒/悲傷/眨眼）。
4. 09 號＝純道具表（禁止全身人物、迷你人物、肖像、臉、人物剪影；僅展示背帶/連接時可用無頭裁縫人台）。

## §4 正典標記規則

- `CANON`：`角色文檔.md` 或場次卡明確記載的外觀事實（例：蕾瓦娜斯的角與翼、馬修的金墜、馬爾科的重甲、克里茲的金/紅金瞳與雙生聖劍）。
- `DESIGN-PROPOSAL`：`角色文檔.md` 的「外觀設定」段落——該段開頭已註明是「概念設計提案」，故身高/體型/髮色/服裝細節除非場景卡另有明載，一律標記為提案。
- `PENDING-USER-INPUT`：會明顯改變辨識度、文檔無法決定的重大分歧。
- 圖與文字衝突時（例：克里茲圖為紅金瞳、文字寫金瞳）：**以現有圖為外觀正本**，並在 SPEC 的「正典衝突」記一筆。

---

## §5 畫布比例（Canvas ratio — 對齊三張範例 2048×672 ≈ 3.05:1）

三張 style 圖都是 **2048×672（約 3:1 超寬橫幅）**。缺比例會讓四視圖被壓縮或換行。各編號的畫布區塊逐字貼入該提示詞的 `Composition` / `Sheet layout`：

- **00 身份錨**（逐字貼）：
  ```text
  Sheet layout: a single ultra-wide horizontal sheet, aspect ratio approximately 3:1 (reference 2048x672). Left ~55% of the canvas holds one neutral straight-on FULL-BODY front view, entire body from top of head to soles inside frame. Right ~45% holds one large straight-on HEAD-AND-SHOULDERS portrait of the same character, the head occupying at least 60% of that panel's height so the face reads clearly as the identity authority. Both halves share identical face, hair, colors and costume; no identity drift.
  ```
- **05 四視圖總表**（逐字貼）：
  ```text
  Sheet layout: a single ultra-wide horizontal banner, aspect ratio approximately 3:1 (reference 2048x672). Four full-body figures in ONE row at equal scale on one shared ground line, evenly spaced, none cropped, no second row, no wrapping.
  ```
- **01–04 單視圖**：`Standard single-figure vertical full-body sheet, taller than wide, whole body inside frame.`
- **06 表情表**：維持 §6.4 的 4×2 網格與純白背景，**不**強制 3:1。
- **07/08/09 設定表**：橫向設定板即可，不強制 3:1。

## §6 防止複製範例角色（Anti-reference-copy — 每張 prompt 的 Negative 與 Constraints 都要含）

三張 style 圖分別是克里茲（黑金肩甲＋鏈條＋紫寶石）、蕾瓦娜斯（冰晶角＋晶翼＋尾）、馬修（白金淡紫神職長袍）。基準反複製負向詞（貼入 Negative；**若某條正是本角色自身正典，刪該條**）：

```text
reference character face, copying any style-image character, blending the three reference characters, Kritz black-and-gold pauldrons, shoulder chains, purple gemstones, Revanas ice-crystal horns, crystalline wings, tail, white-gold pale-purple clergy robe
```

Constraints 追加（逐字貼）：
```text
- The three style images define lighting, linework, shading and material rendering ONLY. Do NOT reproduce their characters' faces, hairstyles, costumes, colors or anatomy, and do not blend them into this character.
```
（範例：馬修自身穿白金神職袍→刪那條；蕾瓦娜斯有角翼→刪 horns/wings，但保留 `tail` 與 `ice-crystal`，因她是深色實角、無尾。）

## §7 服裝材質對齊角色（避免 §1 的華麗材質詞帶入不屬於本角色的東西）

§1 的 `gemstone / polished metal / precise embroidery` 是**畫風可表現的材質庫，不是每個角色都要有**。撰寫時：
- 在該角色的 `Character definition` / `Positive` 明寫其**實際主要材質**（例：伊普拉新＝`matte dark cloth robe, minimal metal, no gemstones`）。
- 在該角色 `Negative` 追加它**不該有**的材質（例：素袍角色加 `ornate gemstones, gold pauldrons, shining jewels, heavy metal armor`）。
- **正向詞也要對齊**：§1 內含 `leather and gemstone material separation`。對**素布為主、明確禁寶石**的角色（如伊普拉新、萊拉澤爾、安德烈、賽希莉亞、皇后阿格妮絲、菲利浦），把該子句改成 `fabric-focused material separation with minimal dark-metal fittings`，避免正向詞把寶石/皮革推回畫面。有寶石或皮革為主的角色（克里茲紫寶石、馬修金墜、艾德里金飾、士兵皮甲等）維持 §1 原句。

## §8 身份鎖定（把辨識度關鍵的 PENDING 鎖成 00 的具體值）

00 錨定圖必須是**完全確定**的角色，否則模型會隨機決定。撰寫 00 前：
- 把每個**辨識度關鍵**的 `PENDING-USER-INPUT`（瞳色、髮色/髮長/露出量、宗教或家族紋章樣式、性別、年齡）改成一個**鎖定預設值**，寫進 00 的 `Character definition`（用具體描述，不留「待定」）。
- 在 SPEC 新增 `## 鎖定錨定預設值（可覆蓋）` 條列這些值，供使用者事後覆蓋。
- 只有**不影響辨識度**的瑣碎項可續留 PENDING。鎖定值須與故事配色（金／銀藍／深色）一致。
