# Story Character 角色參考包

本資料夾提供偽典故事角色文字設定、圖片提示詞、固定風格參考圖與正式三段式產圖流程。

## 目前可生圖範圍

- 32 位預告片具名角色皆已建立角色資料夾、`CHARACTER_SPEC.md` 與 `PROMPTS.md`。
- 31 位尚無正式 PNG；人形使用 01–07，巨龍、夜光馬與惡魔使用非人形 01–06。
- 皇后阿格妮絲已有完整 01–07 PNG，整個角色包凍結，不覆蓋也不重新生成。
- 新角色從故事文字建立時，直接產生 01–07／01–06。

## 正式流程

1. [`scene-to-characters`](Story_Character_skill/scene-to-characters/SKILL.md)：故事場次整理成每角色抽取檔。
2. [`characters-to-sheets`](Story_Character_skill/characters-to-sheets/SKILL.md)：建立 `CHARACTER_SPEC.md` 與 `PROMPTS.md`。
3. [`sheets-to-codex`](Story_Character_skill/sheets-to-codex/SKILL.md)：按兩階段閘門生成圖片並逐張驗收。

流程總覽見 [`Story_Character_skill/README.md`](Story_Character_skill/README.md)。

## 固定風格參考與身份錨

- 所有角色固定使用 `style/` 內三張原始參考圖控制畫風。
- 不建立額外風格狀態檔或角色間風格依賴。
- 每位角色自己的 01 是該角色的身份正本；02–07 以自己的核准 01 鎖定身份。
- 三張風格圖只控制線條、上色、材質與光影，不得複製參考圖人物身份。

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
