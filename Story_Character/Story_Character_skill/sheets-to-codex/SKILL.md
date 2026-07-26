---
name: sheets-to-codex
description: 【產線第 3 段·下游】把中游產好的角色包（SPEC＋PROMPTS）交給 Codex／圖像模型執行兩階段產圖並逐張驗收——首角色 01 先生先核准成為專案畫風錨，再依序生其餘與後續角色，每張過 REJECT 清單。當使用者要「交 Codex 產圖」「開始生成角色圖」「/sheets-to-codex」時使用。本段驅動生圖與驗收，Claude 不直接生圖。
---

# sheets-to-codex —【下游】角色包 → Codex 兩階段產圖與驗收

產線三段的第 3 段。輸入中游產好的 `output/<專案名>/`（每角色 SPEC＋PROMPTS），驅動 Codex／圖像模型**照 PROMPTS 逐張生圖**，並主持核准與 REJECT 驗收。**Claude 不生圖**——本段是產圖的編排與驗收指令；實際輸出 PNG 由 Codex 執行。

```
(上游) scene-to-characters → (中游) characters-to-sheets → [本段] 驅動 Codex 生圖＋驗收 → PNG
```

## 前提檢查
- `output/<專案名>/STYLE_ANCHOR.md` 存在，畫風錨指向某角色 01，狀態 `PENDING-APPROVAL`。
- 每角色資料夾有 `PROMPTS.md`（檔頭有 Codex 生成清單）與 `CHARACTER_SPEC.md`。
- 檢查各 PROMPTS 檔頭是否有「未定案不得生成 01」的鎖——有鎖的角色先擱置，回報使用者定案。

## 執行前先確認（強制，core.md §10）
1. **專案**：哪個 `output/<專案名>/`？
2. **本輪範圍**：先做首角色，還是指定角色？（首角色 01 未核准前，其他角色不能開始——見閘門）
3. **生圖執行者**：由哪個 Codex／圖像工具生成？產出 PNG 放各角色資料夾（檔名照生成清單）。

---

## 詳細流程

### 階段 0｜閘門檢查
1. 讀 `STYLE_ANCHOR.md`：若狀態 `PENDING-APPROVAL` → **本專案只能先做首角色的 01**，其餘全部擋住。
2. 血緣專案：家族錨點角色的 01 未核准前，其他家族成員擋住。
3. 有 PENDING 鎖的角色：擱置，列入回報。

### 階段 1｜首角色 stage-1（生 01，建立畫風錨）
1. 從首角色 `PROMPTS.md` 取 `## 01` 提示詞與檔頭 (d) 的 input images（＝bootstrap 畫風依據）。
2. 交 Codex 生成 `01-<first>-front-fullbody.png`（**只生這張**）。
3. 生成後**停止**，把圖呈現給使用者核准。
4. **REJECT 驗收**（對照 PROMPTS 文末清單）：A-pose？零道具？平光？臉清晰？身材/色票符合 SPEC？
   - 不過 → 存 `<first>/rejects/`、記原因、重生成本張，**不覆蓋**、不往下。
   - 過 → 進階段 2。

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
按照 output/<專案名>/<首角色>/PROMPTS.md 執行第一階段：只生成 01-<first>-front-fullbody.png，
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
