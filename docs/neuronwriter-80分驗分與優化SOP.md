# NeuronWriter 80 分驗分與優化 SOP

> 50 篇初稿位置：`工具/outputs/seo-articles/`  
> 原則：**每一篇都必須 NW Content Score ≥80 才能發 WP**  
> 達不到 → 依本 SOP 迭代，直到達標

---

## 一、單篇驗分流程（約 10～15 分鐘／篇）

### Step 1｜建立 Query
1. 開 NeuronWriter → **New Query**
2. 貼該篇 YAML 的 `primary_keyword`（或 `title` 中的核心詞）
3. 語言：**Chinese (Traditional)** 或 English（若繁中 SERP 少，可雙語各跑一次取較高分）

### Step 2｜SERP 對標
1. **Analyze SERP** → 選 **Top 5** 競爭頁
2. 偏好：繁中置產網站、Ray White 類、澳洲政府 FIRB 頁、Medium 繁中攻略
3. 記下 NeuronWriter 顯示的 **Target Word Count**（通常取中位數 **+10%**）

### Step 3｜貼文評分
1. 從 `outputs/seo-articles/NN-xxx.md` 複製**正文**（不含 YAML 也可，但建議含 H1）
2. 貼入 NeuronWriter Editor → 看 **Content Score**
3. 記錄到 `00-進度追蹤.md` 該篇 NW 欄

### Step 4｜若 <80 → 優化迴圈

| 分數區間 | 動作 |
|----------|------|
| **70–79** | 補缺 **Recommended Terms**（5～10 個）+ 加 1～2 個 FAQ |
| **60–69** | 加 H3 小節、加 1 張表、字數補到 Target +10% |
| **<60** | 對照 SERP Top3 結構重排 H2 + 重寫開頭 200 字 |

**優化順序（效率最高）：**
1. 右側 **Terms** 標紅/灰 → 自然插入正文
2. **Questions** → 複製到 FAQ 區（H3 問句 + 段落答）
3. **Word count** 不足 → 擴寫「常見 FAQ」「表格說明列」
4. **Headings** 建議 → 調整 H2 用詞貼近 SERP
5. 重新貼上 → 再驗分

### Step 5｜≥80 → 下游
1. ✅ 進度表標 🎯
2. **Katteb** 查：FIRB 費、印花稅%、完工日、價格
3. **ZimmWriter**（可選潤飾）或直貼 **WP 草稿**
4. Featured image + 內連確認

---

## 二、各類型文章 NW 加分技巧

| 類型 | 必備元素（NW 常加分） |
|------|------------------------|
| Pillar（01） | 8 步驟流程、三城表、10+ FAQ、3000+ 字 |
| FIRB（02, 41） | 費用級距表、可購類型表、Foreign Investment Review Board 英文 |
| 建案（03, 04） | 地段、Southern Cross / Yarra River、Off-the-plan、developer 名 |
| 比較（05, 29, 27） | 大對照表 ≥10 行、vs 標題 |
| 費用（07, 10） | 成本 breakdown 表、surcharge、stamp duty |
| 區域（20, 21） | CBD、Southbank、Free Tram、具體地名 |
| 品牌（06, 38） | Global Realty、一站式、台灣團隊 |

---

## 三、每篇文末「NeuronWriter 優化備註」用法

初稿文末已有 **15～20 個預埋 NLP 詞**。若仍 <80：
- 對照 NW Terms 面板，**刪掉未出現的、補上缺的**
- 回覆 Cloud Agent：「#07 NW 72 分，缺詞：xxx, xxx，請優化」→ Agent 改檔後您再驗

---

## 四、批次驗分建議順序

**第一批（轉換優先）**：01, 02, 03, 04, 29, 07, 10  
**第二批（墨爾本 SEO）**：19, 20, 21, 29, 30, 31  
**第三批**：其餘 37 篇

每批驗完再發 WP，避免低分頁面上線。

---

## 五、<80 時請這樣回報 Agent 優化

```
篇號：#07
目前 NW 分數：74
缺詞（NW Terms 面板）：land tax, settlement, off-the-plan deposit, conveyancer
缺問題：台灣人澳洲買房要準備多少頭期款？
請優化 07-澳洲買房總成本.md 並維持繁中、合規、不改 slug
```

Agent 會改檔 → 您再貼 NW 驗分 → 直到 ≥80。

---

## 六、Katteb 必查篇（發 WP 前）

| 篇號 | 查什麼 |
|------|--------|
| 02, 41 | FIRB 費用級距、住宅禁令 |
| 07, 10, 25, 26 | 各州 stamp duty、surcharge % |
| 03, 04 | 完工日、戶數、價格「以官方為準」是否需更新 |
| 28 | ABS 人口數據 |
| 43, 44 | RBA 利率、租賃統計方向 |

---

## 七、與 ZimmWriter 銜接

NW ≥80 後：
1. 複製**優化後全文**（非僅大綱）
2. ZimmWriter → SEO Blog Writer → 貼入或讓其「潤飾」
3. **勿**讓 ZimmWriter 刪減 FAQ 與表格
4. WP 發草稿 → 人工最後 eyeball CTA 與內連

---

## 相關檔案

- 進度：`工具/outputs/seo-articles/00-進度追蹤.md`
- 大綱總表：`工具/briefs/50-官網SEO選題大綱總表.md`
- 產線：`docs/zimmwriter-wordpress-產線.md`
