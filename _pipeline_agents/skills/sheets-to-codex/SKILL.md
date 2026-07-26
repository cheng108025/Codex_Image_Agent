---
name: sheets-to-codex
description: 【產線第 3 段·下游】把中游產好的角色包（SPEC＋PROMPTS）交給 Codex／圖像模型執行兩階段產圖並逐張驗收——首角色 01 先生先核准成為專案畫風錨，再依序生其餘與後續角色，每張過 REJECT 清單。當使用者要「交 Codex 產圖」「開始生成角色圖」「/sheets-to-codex」時使用。本段驅動生圖與驗收，Claude 不直接生圖。
---

# sheets-to-codex —【下游】角色包 → Codex 兩階段產圖與驗收

產線三段的第 3 段。輸入中游產好的 `<repo-root>/<專案名>/`（每角色 SPEC＋PROMPTS），驅動 Codex／圖像模型**照 PROMPTS 逐張生圖**，並主持核准與 REJECT 驗收。**Claude 不生圖**——本段是產圖的編排與驗收指令；實際輸出 PNG 由 Codex 執行。

```
(上游) scene-to-characters → (中游) characters-to-sheets → [本段] 驅動 Codex 生圖＋驗收 → PNG
```

> **`<repo-root>` ＝生圖 repo 根目錄。** 直接 clone `Codex_Image_Agent` 時就是 clone 出來的資料夾；
> 從外層 `claude-Godzilla-z` 專案使用時是 `output/`。**不要**兩者相加。

## 前提檢查（六項全過才能執行本段）

- [ ] 設定圖為 01–07 格式（非人形 01–06）；已有正式 PNG 的凍結角色不進入本段
- [ ] `CHARACTER_SPEC.md` 完整：版本 ID、Body Metrics Lock、固定 hex 色票、身份正本欄、Kinship Lock
- [ ] `PROMPTS.md` 完整：檔頭 Codex 生成清單五項齊（檔名／閘門／一致性／input images／既有 PNG 標記）
- [ ] `<repo-root>/<專案名>/STYLE_ANCHOR.md` 存在；可為等待首次請求的 `PENDING-FIRST-REQUEST`，或已登記首角色且狀態為 `PENDING-APPROVAL`／`ACTIVE`
- [ ] 無阻擋生圖的 `PENDING-USER-INPUT`（檔頭無「未定案不得生成 01」鎖）——有鎖的角色先擱置，回報使用者定案
- [ ] `PROMPTS.md` 有明確的 `## 01`–`## 07` 生圖段落（非人形 `## 01`–`## 06`）

任一項不成立 → 回報缺項並停止，**不得開始生圖**。

## 執行前解析（強制）
1. **專案**：以目前開啟的 Git 根目錄與已找到的角色包自動解析，不重複詢問。
2. **本輪範圍**：以使用者訊息中的指定角色為準；若畫風錨尚未登記，該零圖片角色就是首角色。
3. **生圖執行者**：優先使用目前 Codex 環境可用的 ImageGen／圖片生成工具，產出 PNG 放角色資料夾（檔名照生成清單）。

只有上述資訊無法從 repo、使用者訊息或可用工具判定時，才詢問缺少的單一必要資訊。

---

## 詳細流程

### 階段 0｜閘門檢查
1. 讀 `STYLE_ANCHOR.md`：若首角色是 `PENDING-FIRST-REQUEST`，把本次指定的零圖片角色寫入「首角色」，把其預定 `01-<slug>-front-fullbody.png` 相對路徑寫入「畫風錨圖片」，登記當天日期，狀態維持 `PENDING-APPROVAL`。此後在使用者核准前，**本專案只能做該首角色的 01**，其餘全部擋住。
2. 血緣專案：家族錨點角色的 01 未核准前，其他家族成員擋住。
3. 有 PENDING 鎖的角色：擱置，列入回報。

### 階段 1｜首角色 stage-1（生 01，建立畫風錨）
1. 從首角色 `PROMPTS.md` 取 `## 01` 提示詞與檔頭 (d) 的 input images（＝bootstrap 畫風依據）。
2. 交 Codex 生成 `01-<first>-front-fullbody.png`（**只生這張**）。
3. 生成後**停止**，把圖呈現給使用者核准。
4. **REJECT 驗收**（對照 PROMPTS 文末清單）：A-pose？零道具？平光？臉清晰？身材/色票符合 SPEC？
   - 不過 → 存 `<first>/rejects/`、記原因、重生成本張，**不覆蓋**、不往下。
   - 技術驗收通過 → 仍須停止並呈現圖片；只有使用者明確核准後才進階段 2。

### 階段 2｜登記畫風錨
1. 使用者核准首角色 01 後，把 `STYLE_ANCHOR.md` 狀態改 `ACTIVE`，畫風錨圖確立為該 01。
2. 自此所有角色 2..N 的畫風以此 01 為唯一參考。

### 階段 3｜首角色 02–07
1. 依序生成 `02`→`07`（非人形到 06）。input images：Image 1＝首角色自己的 01。
2. 每張過 REJECT 清單；不過存 `rejects/` 重生成，過才進下一張。
3. 06 是唯一能出現武器道具的張；01/02/04/05/07 出現武器即 REJECT。

### 階段 4｜角色 2..N（依序，每人一輪兩階段）
對每個後續角色：
1. **stage-1 生 01**：input images＝Image 1 空、Image 2＝首角色 01（畫風）。生成後停、呈使用者核准。
   - REJECT 清單多一項：**畫風與畫風錨（首角色 01）一致？** 不一致即 REJECT。
2. 核准後 **生 02–07**：input images＝Image 1＝本角色自己的 01（身份）、Image 2＝首角色 01（畫風）。
3. 每張過 REJECT，存 `rejects/` 處理不過的。
4. 血緣角色：家族錨點先完成，其成員 01 的 Kinship 驗收對照家族錨點的臉。

### 階段 5｜逐張驗收細則（REJECT 判準）
每張都查（對照該角色 PROMPTS 文末清單與 SPEC）：
- 臉型/身份、髮型/髮色、身材比例（Body Metrics）、服裝結構、左右不對稱未鏡像、色票未漂移、該張構圖規則（視圖數/順序/A-pose/零道具/平光）、畫風一致（2..N）、血緣相似（有血緣）。
- 任一漂移：`mv` 到 `<角色>/rejects/<檔名>-reject-<n>.png`、記一行原因、用同提示詞重生成、**絕不覆蓋既有正式 PNG、不跳下一張**。

---

## 交給 Codex 的一鍵指令（模板，複製後填入路徑）

**首角色（stage-1）：**
```
按照 <repo-root>/<專案名>/<首角色>/PROMPTS.md 執行第一階段：只生成 01-<first>-front-fullbody.png，
使用檔頭 (d) 指定的 bootstrap 畫風依據，遵守 A-pose／零道具／平光。生成後停止，等我核准。
不得覆蓋任何既有 PNG；未過驗收的存 <首角色>/rejects/。
```
**首角色核准後（其餘＋開放後續角色）：**
```
我已核准 <首角色> 的 01。將 STYLE_ANCHOR.md 轉 ACTIVE。
接著生成 <首角色> 的 02–07（Image 1＝<首角色> 01）。
之後每個後續角色，依其 PROMPTS.md：先生 01（Image 2＝<首角色>/01 畫風）→ 停、等我核准 →
核准後生 02–07（Image 1＝該角色 01，Image 2＝<首角色> 01）。每張過 PROMPTS 文末 REJECT 清單，
不過的存該角色 rejects/、重生成，不覆蓋、不跳張。
```

---

## 完成後回報
結論先行：專案進度（各角色 01 核准狀態、02–07 完成數）、畫風錨狀態（PENDING/ACTIVE）、REJECT 統計（哪些張重生成幾次）、仍擱置的角色（PENDING 未定案）、產出 PNG 清單。

## 鐵律
Claude 不生圖（生圖是 Codex）；不刪不覆蓋既有 PNG（重生成一律 `rejects/`）；首角色 01 未核准前不得開後續角色；有 PENDING 鎖的角色不生 01；每張過驗收才進下一張。
