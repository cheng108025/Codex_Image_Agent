# STYLE_ANCHOR — Story_Character 專案畫風錨

## 目前狀態

- 狀態：`PENDING-APPROVAL`
- 首角色：`PENDING-FIRST-REQUEST`
- 畫風錨圖片：`PENDING-FIRST-REQUEST`
- 核准日期：`PENDING-APPROVAL`

## 首次生成規則

1. 使用者第一次要求製作「尚無正式 PNG 的角色」時，該角色自動登記為首角色。
2. 只先生成該角色的 `01-<角色英文名>-front-fullbody.png`。
3. 圖片生成後停止，等待使用者核准。
4. 核准後，將本檔的狀態改為 `ACTIVE`，並填入首角色、畫風錨圖片相對路徑與核准日期。
5. 首角色 01 尚未核准前，不得生成其他角色。
6. 已有正式 PNG 的凍結角色不參與首角色登記，也不得因此被修改。

## Bootstrap 畫風依據

以下三張圖片僅供首角色 01 使用一次，只控制畫風，不得複製其中人物的臉、髮型、服裝、身材或身份：

- `style/SV8zdQHTYqQAAAABJRU5ErkJggg.png`
- `style/McEZ7GwGWkAAAAABJRU5ErkJggg.png`
- `style/8fJgh1kde6P3IAAAAASUVORK5CYII.png`

首角色 01 核准後，以上 bootstrap 圖立即失效；後續角色不得再直接引用。

## ACTIVE 後規則

- 首角色核准後的 01 是全專案唯一畫風錨。
- 後續角色的 01：以首角色 01 作為畫風參考。
- 後續角色的 02–07（非人形至 06）：以自己的 01 作為身份參考；若不是首角色，再以首角色 01 作為畫風參考。
- 不得未經使用者核准更換畫風錨。
- 任何圖若與畫風錨不一致，必須放入該角色的 `rejects/`，不得進入下一張。

## 登記歷程

| 日期 | 事件 |
| --- | --- |
| 2026-07-26 | 建立動態首角色畫風錨；等待第一次零圖片角色生成請求 |
