# Cloud Agent GitHub Push 規則

## 觸發
當使用者說「push」（或明確要求推送）時，依本規則執行。

## 強制行為
1. **直推 `main`**：一律在 `main` 上提交並 `git push origin main`。
2. **禁止開分支**：不得建立 feature branch、不得用 PR 流程替代直推（除非使用者明確要求開分支／開 PR）。
3. **本機較新時先同步再 push**：
   - 先 `git fetch origin main`
   - 若 `origin/main` 有本機沒有的提交：先 `git pull --rebase origin main`（或等價同步）再 push
   - 若本機 `main` 領先遠端：直接 push
   - 若有衝突：解決衝突後再 push，仍不開分支
4. **工作區有變更**：先 commit 到 `main`，再依上列步驟 push

## 禁止
- `git checkout -b …` / 建立 `cursor/…` 等任何新分支來完成「push」
- force push（除非使用者明確要求）
- 用 draft PR 代替「使用者說的 push」

## 成功條件
- 遠端 `origin/main` 已包含本次應推送的提交
- 結束時仍在 `main`，且與 `origin/main` 對齊（或已說明無法推送的原因）
