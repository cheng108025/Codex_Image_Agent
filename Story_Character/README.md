# Story Character 角色參考包

本資料夾提供角色文字設定、圖片提示詞、專案畫風錨與正式三段式產圖流程。

## 目前可生圖範圍

- 26 位尚無正式 PNG 的角色已使用 01–07 格式；巨龍、夜光馬使用非人形 01–06。
- 奧德里奇、伊普拉新、克里茲、班尼迪克、蕾瓦娜斯已有正式 PNG，整個角色包凍結，不修改也不重新生成。
- 新角色從故事文字建立時，直接產生 01–07／01–06。

## 正式流程

1. [`scene-to-characters`](Story_Character_skill/scene-to-characters/SKILL.md)：故事場次整理成每角色抽取檔。
2. [`characters-to-sheets`](Story_Character_skill/characters-to-sheets/SKILL.md)：建立 `CHARACTER_SPEC.md` 與 `PROMPTS.md`。
3. [`sheets-to-codex`](Story_Character_skill/sheets-to-codex/SKILL.md)：按兩階段閘門生成圖片並逐張驗收。

流程總覽見 [`Story_Character_skill/README.md`](Story_Character_skill/README.md)。

## 畫風與身份錨

- 專案畫風狀態唯一正本：[`STYLE_ANCHOR.md`](STYLE_ANCHOR.md)。
- 第一次被要求生成的零圖片角色，自動成為首角色候選。
- 只先生成首角色 01；使用者核准後，該圖成為全專案唯一畫風錨。
- 每位角色自己的 01 是該角色的身份正本。
- 後續角色不得直接引用 bootstrap 畫風圖。

## 圖片編號

| 張號 | 內容 |
| --- | --- |
| 01 | 正面全身身份錨 |
| 02 | 四視圖總表 |
| 03 | 八表情／非人形頭部狀態表 |
| 04 | 服裝或體表細節 |
| 05 | 色彩與材質 |
| 06 | 道具或非人形構造 |
| 07 | 人形素體參考；非人形不產 |

## 安全規則

- 不覆蓋、不重新命名既有 PNG。
- 失敗候選圖放進角色 `rejects/`。
- 第一張 01 完成後停止，等待使用者核准。
- `PENDING-USER-INPUT` 不得自行改成 `CANON`。
