---
name: characters-to-sheets
description: 【產線第 2 段·中游】把上游角色資料新建或刷新成成對一致的角色參考包——同一輪、同一來源同步寫入 CHARACTER_SPEC.md（版本 ID、Body Metrics、hex 色票、身份鎖、Kinship）與 PROMPTS.md（01–07 完整英文提示詞），禁止只更新其中一份。當使用者要「把角色檔產成設定圖提示詞」「依角色總表刷新角色包」「同步 SPEC 與 PROMPTS」「建角色包」「/characters-to-sheets」時使用。不生圖。上游接 scene-to-characters，下游接 sheets-to-codex。
---

# characters-to-sheets —【中游】角色檔 → SPEC ＋ 7 張制 PROMPTS

產線三段的第 2 段。輸入上游的每角色抽取檔或權威角色總表，新建或刷新每角色資料夾中的 `CHARACTER_SPEC.md`＋`PROMPTS.md`（01–07）。**兩份文件必須成對更新；只產 MD，不生圖**。

```
(上游) scene-to-characters → [本段] 角色檔 → SPEC ＋ PROMPTS  →  (下游) sheets-to-codex → Codex 生圖
```

> **兩階段分清楚**：本段只做 **產 MD（Phase A）**——此時專案裡沒有任何圖。PROMPTS 對「首角色 01」的引用是**檔名前向引用**，不要求該檔當下存在。生圖先後是下游（Phase B）的事。產 MD 可一次全寫完。

## SPEC／PROMPTS 成對同步契約（最高優先）

1. 先把本輪權威來源整理成每角色一份 `Canonical Fact Map`，至少包含：名稱／別名、版本、外貌、體型、服裝、色彩、道具、關係、時期與 PENDING。
2. 同一角色的 `CHARACTER_SPEC.md` 與 `PROMPTS.md` 必須只從同一份 Fact Map 產生，並在同一輪一起寫入；禁止只修改其中一份。
3. 刷新既有角色包時，直接把新權威事實整合進原欄位並移除衝突舊值；不得只在檔頭追加「最高優先 override」而保留正文互相矛盾。
4. 權威來源未提及的舊設計只可在不衝突時保留並標 `DESIGN-PROPOSAL`；不得繼續標成 `CANON`。無法判定時標 `PENDING-USER-INPUT`。
5. 任一份文件寫入或驗證失敗，該角色即為 `PAIR-SYNC-FAILED`；不得把單邊更新視為完成。
6. 有正式 PNG 的角色預設凍結。只有使用者明確授權「同步已有圖片角色的文件」時，才可成對更新 SPEC／PROMPTS；若新文字與已核准圖片衝突，標記 `IMAGE-DRIFT-REVIEW-REQUIRED` 並等待使用者決定，絕不自動修改圖片。

批次刷新既有角色包時，先確認每份舊 `PROMPTS.md` 都已有經人工／LLM 核對、來源指向權威總表的 `MASTER-TABLE-CANON-REFRESH` 區塊。Windows PowerShell 5.1 須以 UTF-8 讀取腳本再執行：`$s = Get-Content scripts/rebuild_pairs.ps1 -Raw -Encoding UTF8; & ([scriptblock]::Create($s)) -RepoRoot <repo-root> -Apply`。腳本只負責把已核對的 Fact Map 確定性重建成雙檔，不負責猜測或翻譯新的 Canon。

## 路徑/檔名約定（交接契約）
- **`<repo-root>` ＝生圖 repo 根目錄**：直接 clone `Codex_Image_Agent` 時就是 clone 出來的資料夾；從外層 `claude-Godzilla-z` 專案使用時是 `output/`。**不要**兩者相加。
- **路徑＝暫定可改**：專案根預設 `<repo-root>/<專案名>/`；接手者可搬，維持「一專案一根、每角色一子資料夾」。
- **檔名＝固定不可改**：專案根 `STYLE_ANCHOR.md`；每角色資料夾 `CHARACTER_SPEC.md`、`PROMPTS.md`、`rejects/`；圖片 `NN-<name>-<sheet>.png`（`NN`＝01–07，非人形 01–06；`<sheet>` 固定字串見 §3）。`<name>` 沿用上游角色檔的英文小寫名。

---

## 執行前先確認（強制，core.md §10）
1. **輸入角色檔**：上游 `characters_extracted/` 的哪些角色檔？全部或指定？
2. **權威來源與優先序**：指定本輪唯一來源組合（例如 `全角色總表.md` 高於舊角色包）；同一輪不得讓 SPEC 與 PROMPTS 各自採用不同來源。
3. **操作模式**：`CREATE`（新建）或 `REFRESH-PAIR`（成對刷新）。已有角色包時不得退化成單檔 patch。
4. **專案名**：決定 `<repo-root>/<專案名>/`。
5. **首角色**：若使用者已指定要先製作的零圖片角色，直接採用；尚未指定時保留 `PENDING-FIRST-REQUEST`，不得自行挑選。
6. **首角色畫風 bootstrap 依據**：畫風參考圖路徑，或文字畫風描述。
7. **人形/非人形**：非人形走 6 張（無 07）；01/02 用自然站立正交取代 A-pose。
8. 辨識關鍵分歧（髮型/武器/角組等，上游標 PENDING 的）→ 本段不硬定，沿用 PENDING 並在檔頭鎖「未定案不得生成 01」。

---

## 詳細步驟

### 步驟 1｜專案初始化（只做一次）
1. 建 `<repo-root>/<專案名>/`。
2. 寫 `STYLE_ANCHOR.md`：
```markdown
# STYLE_ANCHOR — <專案名>
- 狀態：`PENDING-APPROVAL`
- 首角色：`PENDING-FIRST-REQUEST`
- 畫風錨圖片：`PENDING-FIRST-REQUEST`
- 核准日期：`PENDING-APPROVAL`
- bootstrap 畫風依據：<畫風參考圖路徑或文字畫風描述>（僅供首角色 01 一次性使用，核准後失效）
- 首次規則：第一次指定的零圖片角色自動登記為首角色，只生成其 01 並等待核准。
- ACTIVE 規則：後續角色只認首角色 01，不得直接引用 bootstrap 依據。
```

### 步驟 2｜逐角色寫入或刷新 CHARACTER_SPEC.md
先建立該角色的 Canonical Fact Map，再從 Fact Map 逐欄填寫。`REFRESH-PAIR` 模式須重寫所有受權威來源影響的欄位，清除相反舊值，不得只加註解覆蓋：
1. **角色版本 ID** `<NAME>-V1-<描述>`（描述取自故事時期/服裝版本，例 `KRITZ-V1-1587-EXPEDITION`）。不同時期/服裝＝不同版本，不得混包。
2. **身份正本欄**：鎖 `01-<name>-front-fullbody.png`，生成前填 `PENDING-GENERATION`。
3. **Body Metrics Lock**：身高 cm、頭身比、肩寬（頭寬倍數）、左右不對稱特徵。上游有數值就用；沒有就提案並標 `DESIGN-PROPOSAL`（可覆蓋）；無不對稱寫「無，全對稱」。
4. **外貌鎖定**：臉/膚/瞳/髮，每項帶標記（CANON 引上游的 SCENE 出處、或 DESIGN-PROPOSAL）。
5. **服裝鎖定**：層次/領口/肩/胸/袖手/腰/下襬披風/腿鞋/背面，逐項。
6. **固定 hex 色票**：主/輔/金屬/寶石/布料/皮革/膚髮瞳，每項色名＋hex。無實圖 → 由色名推定近似 hex，標 `DESIGN-PROPOSAL`。
7. **道具與特殊構造**：武器/飾品/隨身道具/翅角尾——**全部註明「僅 06 出現」**。
8. **Kinship Lock**：從上游血緣線索填親屬清單、家族錨點、承襲特徵、刻意區分、禁止混淆；無血緣寫「無」。成對一致。
9. **八表情**：用上游情緒線索把八格角色化（自然/輕笑/露齒/開懷/驚訝/憤怒/悲傷/眨眼）。
10. **禁止特徵、正典衝突與待確認**：把上游 PENDING 收進「待確認」。

### 步驟 3｜用同一份 Fact Map 寫入或刷新 PROMPTS.md（檔頭 → 七張 → 文末）

PROMPTS 的每個 Identity／Body／Costume／Color／Prop／Kinship invariants 必須由步驟 2 使用的同一份 Fact Map 產生。不得從舊 PROMPTS 複製與新 SPEC 衝突的正文；不得用檔頭 override 掩蓋正文衝突。

#### 3.1 檔頭：Codex 生成清單（機器可讀，既有五項＋單次生成政策）
- **(a) 確切檔名清單**：人形 01–07／非人形 01–06，逐一列出。
- **(b) 兩階段閘門**：第一階段只生 01 → 停止等核准 → 核准後才生其餘。若 `STYLE_ANCHOR.md` 尚為 `PENDING-FIRST-REQUEST`，第一次指定的零圖片角色自動成為首角色；核准後其 01 登記為專案畫風錨。血緣角色標「家族錨點 <名> 的 01 須先核准」。
- **(c) 一致性聲明**：(a) 檔名與下方各節標題檔名逐一相同。
- **(d) 雙層錨點 input images**：所有角色都先讀 `../../STYLE_ANCHOR.md` 動態解析，不在角色 Prompt 寫死首角色名稱。
  - 被登記為首角色者：01 使用 `STYLE_ANCHOR.md` 的 bootstrap 畫風依據；02–07 的 Image 1＝自己 01。
  - 後續角色：01 的 Image 1 空、Image 2＝`STYLE_ANCHOR.md` 登記的首角色 01（畫風）；02–07 的 Image 1＝自己 01（身份）、Image 2＝首角色 01（畫風）。
- **(e) 既有 PNG 標記**：全 `PENDING-GENERATION`（新角色）或標「已生成/不得覆蓋」。
- **(f) 單次生成政策**：寫明「使用者每次要求最多呼叫一次圖片生成工具、只產出一張；生成後立即呈現並停止；技術檢查只回報，不自動重生；只有使用者明確要求修改才將上一張未核准候選移入 `rejects/` 並另生一張」。

#### 3.2 七張提示詞（每張的重點與骨架）

**01 front-fullbody（身份錨點，stage 1）**
- Primary：Full-body front view, standard A-pose, face clearly visible and identifiable. No weapon/prop.
- 必含：A-pose 英文句、Body metrics、Identity invariants、Kinship invariants（有血緣才填）、Costume invariants（含「所有武器僅 06」）、Composition（正交正面、平背景）、Positive（依 `STYLE_ANCHOR.md` 判定 bootstrap 或已核准畫風錨）、零道具負面詞。

**02 four-view-master**
- Primary：One turnaround sheet, four full-body views 正面→左→右→背, same A-pose.
- 必含：四視圖同高度/同尺寸/同比例、true orthographic、頭頂線腳底線水平對齊；左視＝camera on the character's anatomical LEFT side、右視＝anatomical RIGHT（禁止只寫朝左/朝右）；零道具、平光。

**03 expression-sheet**
- Primary：Eight head-and-shoulders portraits, 4×2 grid, straight-on 0°, 頭部佔 70–75%。
- 八表情順序：neutral / gentle smile / broad smile with teeth / joyful open laughter / surprised / angry / sad / wink。只臉部變、身份不變。

**04 costume-detail-sheet**
- Primary：服裝拆解面板；**披風/外層拆解＋一組無外層軀幹視圖**（供 3D 建模身體輪廓）。零武器。

**05 color-material-sheet**
- Primary：色票方塊＋材質球，逐一對應 SPEC 的固定 hex；一個中性 A-pose 小圖參照。零武器。

**06 prop-construction-sheet**
- Primary：**所有武器與道具（含佩掛）唯一出現位置**；正面/側面/拆解圖。props only，無全身人物、無臉、無人物剪影（可用無頭裁縫人台展示佩掛）。

**07 body-reference-sheet（僅人形）**
- Primary：無鎧甲無外層、貼身素體衣、身體輪廓完全可見（長髮收攏）、正面＋左側、A-pose、保留臉部身份。供 SMPL-X。負面含 `armor, cape, cloak, outer garment, loose clothing, weapon, props, accessories, jewelry`。

共用片段：
- A-pose 句：`Standard neutral A-pose: standing upright, feet shoulder-width apart, arms straight and relaxed at approximately 30-45 degrees away from the body, palms open with fingers slightly spread, no action pose, no contrapposto, no T-pose. Character and costume only, no weapons or props of any kind.`
- 零道具/A-pose 負面詞：`action pose, contrapposto, hands on hips, crossed arms, T-pose, weapon-holding stance, weapon, sword, scabbard, sheath, staff, shield, prop object, holding weapon, weapon in hand, cast shadows, strong highlights, rim light`

#### 3.3 文末：逐張 REJECT 驗收清單
每生成一張即呈現並停止，再用清單回報觀察。任一項漂移只標示為 REJECT 候選並等待使用者決定，不得自行移檔或重生成。只有使用者明確要求修改時，才把上一張未核准候選存 `rejects/`，另生成一張後再次停止；不得覆蓋既有 PNG。
- [ ] 臉型/臉部身份與該角色 01 一致
- [ ] 髮型/瀏海/髮色一致
- [ ] 身材比例與 Body Metrics Lock 一致
- [ ] 服裝結構與 Costume Lock 一致
- [ ] 左右不對稱位置正確、未鏡像
- [ ] 色票未漂移（對照固定 hex）
- [ ] 該張構圖規則（視圖數/順序/A-pose/零道具/平光）全滿足
- [ ] **畫風與專案畫風錨（首角色 01）一致**（角色 2..N 適用）
- [ ] 血緣相似：承襲特徵與家族錨點一致、刻意區分未混淆（有血緣才查）

#### 3.4 檔尾：交給 Codex 的一鍵指令（區塊，下游會用）
放一段可直接複製、含專案與角色資料夾路徑、兩階段措辭的指令（詳細模板見下游 sheets-to-codex）。

### 步驟 4｜自查（grep）
- 條數：人形 7 個 `## 01`–`## 07`／非人形 6 個。
- 零道具殘留：01/02/03/04/05/07 內文不得出現手持武器；武器只在 06。
- 所有角色 PROMPTS 只引用 `STYLE_ANCHOR.md`；不得直接出現 bootstrap 圖檔名或寫死首角色路徑。
- hex：SPEC 色票每項有值；PROMPTS 用到的顏色與 SPEC 一致。
- Kinship 成對：本角色與親屬互列。
- 成對更新：本輪每個被修改的 `PROMPTS.md` 都必須有同角色的 `CHARACTER_SPEC.md` 修改，反之亦然；檔案集合不相等即失敗。
- Canon 對齊：名稱／別名、外貌、體型、服裝、道具、關係與時期逐欄比對；SPEC 與 PROMPTS 不得存在互斥敘述。
- 舊值清理：搜尋本輪被權威來源取代的舊詞；若仍以 `CANON` 或鎖定正文存在，判定 `PAIR-SYNC-FAILED`。
- 圖片保護：已有正式 PNG 而獲授權刷新文件者，若文字與圖片身份衝突，必須列出 `IMAGE-DRIFT-REVIEW-REQUIRED`，不得宣告整包完成。

---

## Kinship 血緣規則（純文字鎖定）
相似度由 SPEC 的 Kinship Lock 與提示詞的 Kinship invariants 控制，不引用親屬圖片。只鎖骨架級（臉型/下顎/眉弓/鼻形/眼型）與明文色彩承襲；髮型/表情/年齡/體格不鎖。成對一致。家族錨點的 01 先核准，其他成員才進生成。文本無明載的承襲＝PENDING-USER-INPUT。

## 完成後回報
結論先行：專案路徑、操作模式、SPEC／PROMPTS 成對更新數、成對檔案集合是否完全相等、完成角色清單＋版本 ID、每角色條數齊否、PENDING-USER-INPUT 與 IMAGE-DRIFT-REVIEW-REQUIRED 總表。提醒下游 sheets-to-codex 執行兩階段產圖。

## 鐵律
**張號只有一種：人形 01–07、非人形 01–06。從故事文字建立新角色時直接使用此格式。**

不生圖；SPEC 與 PROMPTS 必須同源、同輪、成對更新，禁止單邊 patch；產出的 PROMPTS 必須寫入「一次要求只生一張、技術檢查不自動重生」；不刪不覆蓋 PNG；已有正式 PNG 的角色包預設凍結，只有使用者明確授權才可成對刷新文件；辨識關鍵分歧 PENDING-USER-INPUT 並鎖「未定案不得生成 01」，不自決；非人形跳 A-pose 與 07；不發明文本沒有的數值（hex/身高標 DESIGN-PROPOSAL 可覆蓋）。
