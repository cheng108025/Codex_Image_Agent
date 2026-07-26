# 菲利浦 — CHARACTER_SPEC

<!-- MASTER-TABLE-CANON-REFRESH:BEGIN -->
> **Authoritative story canon — source: <repo-root>/全角色總表.md**
>
> Source SHA-256: F1B720F99C76183EBE7254C4CA150517A046D1D2BCEDD911DB6D9AD866EDC129
> Pair sync ID: philip-F1B720F99C76
>
> Philip is Duke Andre's son and Cecilia's sibling. The story does not state his age, fixed face, hair, eye color, body metrics, complete political office, weapon, or costume. Existing visual choices remain DESIGN-PROPOSAL. Kinship resemblance to Andre and Cecilia must not be invented beyond user-approved shared traits.
>
> Only facts stated above are CANON. Unstated visual details are DESIGN-PROPOSAL or PENDING-USER-INPUT; they must never be promoted to Canon by inference.
<!-- MASTER-TABLE-CANON-REFRESH:END -->

> 本檔與同資料夾 PROMPTS.md 由同一份 Canonical Fact Map 成對重建。用途為 3D 建模參考包；正式影片仍以核准的 Blender／VRM 模型為唯一身份正本。

## 同步與狀態

- 操作模式：REFRESH-PAIR
- Pair sync ID：philip-F1B720F99C76
- 角色版本 ID：PHILIP-V1-STUDY-INFILTRATION
- 生成閘門：READY-FOR-DOWNSTREAM-CHECK
- 圖片狀態：PENDING-GENERATION — no direct PNG exists.
- 身份正本：01-philip-front-fullbody.png
- 專案畫風正本：../../STYLE_ANCHOR.md

## Canonical Fact Map

- 名稱／別名、外貌、體型、服裝、道具、關係、時期與 PENDING：以上方權威 Canon 摘要為唯一故事事實。
- 未被摘要明載的臉、髮、瞳、年齡、身材、服裝、武器、血緣或歷史：PENDING-USER-INPUT，不得自行升格為 Canon。
- 舊角色包中的非衝突視覺補完全部降級為 DESIGN-PROPOSAL。

## Body Metrics Lock

- 身高（cm）：**176**（DESIGN-PROPOSAL；只保留數值，不沿用舊體型敘述）
- 頭身比：**7.0–7.5**（DESIGN-PROPOSAL；只保留數值，不沿用舊體型敘述）
- 肩寬（頭寬倍數）：**約 2.1 倍頭寬**（DESIGN-PROPOSAL；只保留數值，不沿用舊體型敘述）
- 左右不對稱：只採用 Canon 摘要明載內容；未指定側別時為 PENDING-USER-INPUT。

## Identity Lock

- CANON：Philip is Duke Andre's son and Cecilia's sibling. The story does not state his age, fixed face, hair, eye color, body metrics, complete political office, weapon, or costume. Existing visual choices remain DESIGN-PROPOSAL. Kinship resemblance to Andre and Cecilia must not be invented beyond user-approved shared traits.
- 臉部身份、髮型、瞳色、膚色與體型不得加入摘要未載的固定事實。
- 若已有核准 01，後續圖片維持該圖身份；若與新 Canon 衝突，先處理 IMAGE-DRIFT-REVIEW-REQUIRED。

## Costume Lock

- 只鎖定 Canon 摘要明載的服裝版本與材質方向。
- 摘要列出兩個時期／服裝時，必須分開建立版本，不得混穿。
- 未載細節均為 DESIGN-PROPOSAL 或 PENDING-USER-INPUT。

## 固定色票與材質

- Canon 明載的色名優先；任何 hex 僅為建模候選，不得反向覆蓋 Canon 色名。
- Canon 未指定色名；沿用的舊版候選 hex 全部為 DESIGN-PROPOSAL：#F0DCC7、#6B4423、#1C1712、#1E2A3F、#8C8C94
- Canon 色名與候選 hex 發生衝突時：PENDING-USER-INPUT，不得生圖定案。

## 道具與特殊構造

- 只允許 Canon 摘要明載的可拆卸武器、飾品、工具、坐騎裝具或特殊構造。
- 所有可拆卸道具只出現在 06-philip-prop-construction-sheet.png。
- 01–05 與人形 07 一律零可拆卸道具。

## Kinship Lock

- 親屬、婚姻、父子女、手足與陣營關係只採 Canon 摘要明載內容。
- 摘要未明載可視化承襲特徵時，不得自行發明家族臉。

## 八種表情／狀態

neutral／gentle or relaxed／broad positive／joyful／surprised／angry／sad／alert or wink-equivalent。只改表情或狀態，不改身份與 Canon 特徵。

## 禁止與待確認

- 禁止任何與權威 Canon 摘要相反的舊髮色、瞳色、體型、服裝、道具、關係或時期設定。
- BLOCKING SOURCE MISMATCH 或重大身份 PENDING 未解決前，不得生成 01。
- 有既有 PNG 的角色須先完成圖片漂移複核；本輪不修改、不刪除、不重新命名任何 PNG。
