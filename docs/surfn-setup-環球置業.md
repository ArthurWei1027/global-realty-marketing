# Surfn AI T2｜環球置業實際流程 SOP

> 方案：AppSumo **T2**（$159）— 1,000 credits/月、35 MB storage、10 agents  
> 搭配：WordPress 官網表單、GA4、ZeroRank、FB 原生表單 + CAPI（不變）  
> 最後更新：2026-08-13

---

## 一、買完當天（30～60 分鐘）

### 1. 兌換與基本設定

1. AppSumo 結帳 → 收 redemption email → 註冊 Surfn 帳號  
2. 後台確認方案：**10 agents / 1,000 credits / 35 MB**  
3. **Integrations → Google Sheets**：授權並新建「Surfn Leads」試算表  
4. **Settings → Pixels**（若之後要串 Meta）：可先略過，官網以 WP 表單 + GA4 為主  

### 2. 先不要急著 embed

WP 本週上線 → **等至少「623 頁 + 填表頁 + 關於我們」可開** 再 embed，避免 AI 答到空頁或舊內容。

---

## 二、Agent 怎麼分（T2 建議用 5～6 個）

| # | Agent 名稱 | 部署位置 | 訓練來源 |
|---|------------|----------|----------|
| 1 | **環球置業｜總入口** | 全站 popup（預設） | 首頁、sitemap、關於我們、FIRB 總覽 |
| 2 | **623 Collins** | 623 建案頁 embed | `briefs/03`、WP 623 頁、sitemap 子路徑 |
| 3 | **AURA Melbourne Square** | AURA 建案頁 embed | `briefs/04`、WP AURA 頁 |
| 4 | **FIRB／海外買家** | 指南類文章頁或 FAQ | `briefs/02`、01 指南摘要 |
| 5 | **說明會／QR** | 獨立 Agent 連結 + QR | 精簡 Q&A、填表連結、Calendly（若有） |
| 6～10 | 預留 | Blog 熱門文、A/B 測試版 | 上線後依數據再加 |

**原則：** 建案頁用 **專屬 agent**；首頁用 **總入口** 分流到 623／AURA。

---

## 三、建立第一個 Agent（以「623」為例，每個重複）

### Step A｜訓練資料

1. **Add link** → 貼 WP 623 頁 URL → Continue → 勾選爬到的子頁  
2. **Add sitemap**（可選）→ `https://你的網域/sitemap.xml`  
3. **Add file** → 上傳 `briefs/03-623-Collins-建案解析.md`（或匯出 PDF）  
4. **Add Q&A** → 見下方「必備 Q&A」  
5. **Add text** → 合規 guardrails（見下方）  
6. 確認 storage **< 35 MB 總量**（全 agent 共用）

### Step B｜Agent 設定

| 欄位 | 623 建議 |
|------|----------|
| Model | **Gemini Flash** 或 **Claude Haiku**（省 credits） |
| 語言 | 繁體中文 |
| Role | Lead qualification / Product specialist |
| Welcome | 「您好，我是 623 Collins 顧問助手。想了解地段、房型還是 FIRB？」 |
| Suggested prompts | `623 適合投資嗎？` `和 AURA 怎麼選？` `FIRB 流程？` `如何預約？` |
| Instructions | 見下方 guardrails |

### Step C｜AI Tasks（核心）

**Task 1｜捕獲 lead**

- **When**：使用者提到「預約、諮詢、填表、聯繫、想買」  
- **Then**：Ask questions → 姓名、Email、電話（選填）、投資/自住/首購  
- **Then**：Show rich link → **WP 填表頁 URL**（加 UTM）  
- **Then**：Sync → Google Sheets  

**Task 2｜導向 AURA（選填）**

- **When**：使用者明確要河景、Southbank、較早完工  
- **Then**：簡述 AURA → 按鈕連 AURA 頁  

**Task 3｜不合規拒答**

- **When**：問保證報酬率、確定增值  
- **Then**：Instruct AI → 說明無法保證，建議預約顧問  

### Step D｜設計與發布

1. Design → 環球置業配色、logo、dark/light  
2. Share → **Publish** → Privacy: Public  
3. Embed → 選 **Popup** → 複製 code → WP（外掛或主題「自訂 HTML」/footer）  
4. 只在 **623 相關頁** 貼 embed（全站用總入口 agent 的 code）

### Step E｜測試（必做）

用無痕視窗問 5 題：

- [ ] FIRB 台灣人能不能買？  
- [ ] 623 在哪裡？  
- [ ] 保證租金多少？（應拒答或保守）  
- [ ] 我想預約（應觸發 Task → 表單連結）  
- [ ] 和 AURA 差在哪？  

---

## 四、Guardrails（每個 agent 的 Instructions 必含）

```
- 一律使用繁體中文，語氣專業、親切。
- 僅根據訓練資料回答；不確定時請建議填表由顧問聯繫。
- 不得保證租金報酬率、增值、匯率收益。
- 價格、完工日、戶數以官網／官方最新資料為準，不可捏造數字。
- 複雜個案（貸款、稅務、移民）請引導填表或預約人工顧問。
- 回答後可建議下一步：填表、閱讀建案頁、比較 623 與 AURA。
```

---

## 五、必備 Q&A（可貼到每個 agent，依建案刪改）

| 問題 | 答案方向 |
|------|----------|
| 台灣人可以在澳洲買房嗎？ | FIRB 海外買家需申請；新建案一般可購；詳情依個案 |
| 623 Collins 在哪？ | 墨爾本 CBD Collins Street 西端，近 Southern Cross |
| AURA 在哪？ | 墨爾本 Southbank，Melbourne Square 第三期 |
| 623 和 AURA 怎麼選？ | CBD 核心 vs 南岸河景；完工期、生活風格不同 → 建議預約 |
| 買房流程？ | FIRB → 選戶 → 簽約 → 分期；環球置業可協助 |
| 如何聯繫？ | 請填官網表單，專人與您聯繫 |

---

## 六、與現有堆疊怎麼接

```
訪客 → Surfn 對話（FAQ、篩選）
         ↓
     WP 表單填寫（正式收單）
         ↓
     通知信 / CRM / 試算表
         ↓
     人工顧問 follow-up

FB 廣告 → 原生表單 + CAPI（不經 Surfn，維持不變）

GA4 → 追官網表單轉換、頁面流量（Surfn 不取代 GA4）

ZeroRank → 監測 AI 搜尋是否推薦品牌（與 Surfn 對話無關）

Sheets ← Surfn leads（Surfn 對話名單，可與 WP 表單分 sheet 比對）
```

### UTM（導向 WP 表單時）

```
?utm_source=surfn&utm_medium=chatbot&utm_campaign=623
?utm_source=surfn&utm_medium=chatbot&utm_campaign=aura
```

GA4 可看到 Surfn 導來的填表成效。

---

## 七、上線時程（本週 WP）

| 天 | 動作 |
|----|------|
| **D0** | 買 T2、接 Sheets、建「623」agent 草稿 |
| **D1** | WP 623／AURA／填表頁上線 → retrain 623 agent |
| **D2** | 623 頁 embed popup；自測 5 題 |
| **D3** | 建 AURA agent + 總入口 agent |
| **D4～7** | 全站總入口；監控 credits 用量 |
| **第 2 週** | 看 Leads 表 + GA4；補 Q&A；retrain 新文章 |

---

## 八、上線後每週／每月

### 每週（15 分鐘）

- 後台 **Leads** + Sheets：有無新名單、對話品質  
- **Usage**：credits 用了多少（>70% 則下月改用 Flash/Haiku）  
- 業務回饋：AI 答錯什麼 → 補 Q&A 或 retrain  

### WP 更新後

- 改價格、完工日、新文章 → **Retrain** 該 agent（不會自動重爬）  

### 每月

- Credits 重置（月初）  
- 對照 ZeroRank：官網 SEO 文是否增加  
- 決定是否加第 6 個 agent（Blog 專用）  

---

## 九、Credits 不夠時

1. 確認 model 用 Flash/Haiku  
2. Suggested prompts 引導常見問題，減少試探性閒聊  
3. 總入口 agent 只做分流，深度問題導建案頁 agent  
4. 仍不夠 → 評估 T3（目前無加購 credits）  

---

## 十、常見錯誤（避免）

| ❌ | ✅ |
|----|-----|
| WP 還沒上就 embed | 有內容再 train + embed |
| 只用一個 agent 餵全部 | 建案頁用專屬 agent |
| 用 Sonnet/GPT 高階模型 | 預設 Flash/Haiku |
| 忘記 retrain | 官網大改後手動 retrain |
| Surfn 取代 FB 原生表單 | FB 線維持 CAPI；Surfn 只服官網 |
| 保證報酬在 Q&A 寫太滿 | 合規 guardrails |

---

## 十一、60 天退款前檢核

若以下 **至少 3 項** 達標，代表值得留：

- [ ] 官網月對話 > 30 次  
- [ ] Surfn 或 WP 表單有來自 chat 的 lead  
- [ ] 業務少回覆重複 FAQ  
- [ ] credits 每月用不到 80%（代表還有餘裕）  
- [ ] 無嚴重答錯導致客訴  

---

## 相關檔案

- `docs/工具堆疊與採購決策.md`  
- `docs/行銷漏斗與追蹤策略.md`  
- `工具/briefs/03-623-Collins-建案解析.md`  
- `工具/briefs/04-AURA-Melbourne-Square-建案解析.md`  
- `工具/briefs/02-FIRB申請與海外買家限制.md`
