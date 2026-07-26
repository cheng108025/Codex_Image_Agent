# Story_Character 產線工具包

產出 `Story_Character/` 角色參考包（每角色資料夾＋CHARACTER_SPEC.md＋PROMPTS.md＋00–10 設定圖）所用的 Claude Code Agent 與 Skill。

> **只收 Story_Character 這條產線。** 另一條 `text-to-images` / `image-to-images`（單角色多風格）與此無關，不在本包。

## 產線全貌

```
故事文本
  │  /story-extract  ──派發──▶  story-character-extractor（抽角色特徵）
  ▼
CHARACTER_SPEC.md 草稿（DRAFT）
  │  人工核准
  ▼
  │  /character-pack  ──派發──▶  character-spec-manager（建資料夾＋SPEC＋PROMPTS.md）
  ▼
角色資料夾＋SPEC＋PROMPTS.md（含 Codex 生成清單）
  │  交 Codex（兩階段：00 先生先核准）
  ▼
00–10 PNG  ──▶  逐張 REJECT 驗收
```

**圖片本體由 Codex／圖像模型生成，Claude Code 不生圖。** 本產線做到 PROMPTS.md 為止。

## 內容

| 檔案 | 類型 | 功能 |
| --- | --- | --- |
| `skills/story-extract/SKILL.md` | Skill 入口 | `/story-extract`：拆故事文本抽角色設定 → SPEC 草稿 |
| `agents/story-character-extractor.md` | Agent 執行體 | 逐句抽特徵，CANON 帶行號、推測標 DESIGN-PROPOSAL、缺口標 PENDING-USER-INPUT |
| `skills/character-pack/SKILL.md` | Skill 入口 | `/character-pack`：把已核准設定建成完整參考包 |
| `agents/character-spec-manager.md` | Agent 執行體 | 建資料夾＋SPEC＋PROMPTS.md（00–10），含 Codex 生成清單；可平行派多個 |

## 規則正本（不在本包，避免重複；正本位置）

- `../Story_Character/CLAUDE_CHARACTER_PROMPT_HANDOFF.md` — 唯一規則正本（三視圖 00、零道具、A-pose、Body Metrics、hex 色票、Kinship 血緣、逐張驗收…）
- 結構範本：`../Story_Character/01_主角陣營/克里茲/`（人形 00–10）、`../Story_Character/02_反派陣營/巨龍/`（非人形 00–09）

兩個 agent 動工前都會讀上述正本，因此本包保持薄——規則改一處，全產線生效。

## 安裝（在使用本產線的 Claude Code 專案）

把檔案放到專案的 `.claude/`：

```
.claude/agents/story-character-extractor.md
.claude/agents/character-spec-manager.md
.claude/skills/story-extract/SKILL.md
.claude/skills/character-pack/SKILL.md
```

新增後於下個 session 生效（harness 註冊時機）。skill 用 `/story-extract`、`/character-pack` 觸發；agent 由 skill 自動派發。

## 用法

1. 有新故事文本 → `/story-extract`（給文本路徑）→ 得到 SPEC 草稿 → 人工核准
2. `/character-pack`（指定角色與範圍）→ 得到資料夾＋SPEC＋PROMPTS.md
3. 依各角色 PROMPTS.md 檔尾「交給 Codex 的一鍵指令」交 Codex 兩階段產圖
4. 血緣角色：家族錨點的 00 先生先核准（見 PROMPTS.md 生成清單的家族閘門）
