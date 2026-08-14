# Meta 廣告上線清單｜環球置業

> 623 / AURA / 品牌 / 說明會 四條線通用  
> 文案來源：`工具/outputs/`  
> 最後更新：2026-08-14

---

## Phase 0｜上線前準備（一次性）

### 帳戶與追蹤

- [ ] Meta Business Suite 廣告帳戶已開
- [ ] Pixel 已安裝在 WP 全站（或 GTM �觸發）
- [ ] CAPI 已串接（Conversions API — 原生表單 + 官網 Lead）
- [ ] GA4 已連結 Meta（選填，交叉驗證）
- [ ] 域名驗證完成（business.facebook.com）

### 素材

- [ ] Bannerboo 1080×1080（Feed）× 至少 3 張
- [ ] Bannerboo 1080×1920（Reels/Story）× 至少 2 支
- [ ] 623 / AURA / 環球 logo 高清版
- [ ] CTA 字卡模板（繁中）

### 文案

- [ ] 從 outputs 挑選並替換 `[日期]` 等 placeholder
- [ ] 每 Ad Set 至少 2 版文案 A/B
- [ ] CTA 末行確認：`👉 填表留下資料，專人與您聯繫`

---

## Phase 1｜Campaign 結構

### 建議命名

```
Campaign: GR-MEL-2026-Q3-LEADS
├── AdSet: 623-invest-broad-TW35-54
├── AdSet: 623-live-interest-melbourne
├── AdSet: aura-invest-broad-TW35-54
├── AdSet: global-trust-retarget-7d
└── AdSet: seminar-taipei-YYYYMMDD
```

### 第一週最小可行（MVP）— 5 個 Ad Set

| Ad Set | 建案 | 受眾 | 文案來源 | 素材 |
|--------|------|------|----------|------|
| 1 | 623 | 投資 Broad TW 35-54 | 623 投資 ① | CBD 渲染 |
| 2 | AURA | 投資 Broad TW 35-54 | AURA 投資 ① | 河景渲染 |
| 3 | 環球 | 首購 興趣海外投資 | 環球 首購 ① | 品牌信任圖 |
| 4 | 623 | Retarget 7d 官網訪客 | 623 投資 ② | Reels 15s |
| 5 | 說明會 | 活動受眾+Broad | seminar 投資 ① | 說明會字卡 |

---

## Phase 2｜每個 Ad 設定

### 目的地二選一

| 模式 | 設定 | 適用 |
|------|------|------|
| **原生表單** | Instant Form + CAPI Lead | 主線，維護成本低 |
| **Landing** | WP URL + UTM | 說明會、需 SEO 頁 |

### UTM（Landing 模式）

用 `工具/utm-builder.html` 產生，範例：

```
https://yoursite.com/contact/?utm_source=facebook&utm_medium=paid&utm_campaign=623&utm_content=invest-1
```

### 原生表單欄位

| 欄位 | 必填 |
|------|------|
| 姓名 | ✅ |
| 手機 | ✅ |
| Email | ✅ |
| 感興趣建案（623/AURA/都想） | ✅ |
| 投資/自住/首購 | ✅ |

**hidden**：`utm_campaign` 對應 Ad Set 名稱（若表單支援）

---

## Phase 3｜受眾設定參考

### Broad（冷受眾）

- 地區：台灣
- 年齡：35–54（可測 28–54）
- 語言：繁體中文
- 興趣（選填）：海外投資、房地產、澳洲、移民

### 興趣疊加（自住）

- 移民、家庭、教育、墨爾本

### Retargeting

- 官網 7 天訪客（Pixel PageView）
- 影片 50% 觀看（Reels）
- 表單開啟未提交（若有）

### 排除

- 過去 30 天已 Lead 名單（Customer List 或 Pixel Lead）

---

## Phase 4｜預算與出價

| 階段 | 日預算建議 | 出價 |
|------|------------|------|
| 學習期（D1–7） | 每 Ad Set $300–800 TWD | 最低費用或 Lead 最大化 |
| 優化期（D8+） | 加碼 CPA 低的 Ad Set | 維持或略提高 |

**注意**：單 Ad Set 日預算太低（< $200）學習期會拉長。

---

## Phase 5｜上線當天 Checklist

- [ ] 所有 Ad 預覽確認繁中顯示正常
- [ ] 原生表單測試提交一筆（自己手機）
- [ ] CAPI 測試事件在 Events Manager 收到
- [ ] Landing UTM 在 GA4 Realtime 看得到
- [ ] 廣告排程確認（若限時說明會）
- [ ] 通知業務：新 Lead 來源標籤說明

---

## Phase 6｜第一週優化（D7）

| 指標 | 動作 |
|------|------|
| CTR < 0.8% | 換 Hook 文案或素材 |
| CPC 過高 | 縮窄受眾或換 Broad |
| CPA 達標 | 加預算 20% |
| 某建案 Lead 多 | 加碼該 Ad Set，減弱另一建案 |
| Reels 完播率高 | 複製格式到其他建案 |

紀錄於：`templates/週報-廣告檢視.md`

---

## 文案 × 素材 × UTM 對照表

| outputs 檔案 | 組數 | 建議 Ad Set | utm_campaign |
|--------------|------|-------------|--------------|
| `623-collins-fb-ads-9組.md` | 9 | 623-* | 623 |
| `aura-melbourne-square-fb-ads-9組.md` | 9 | aura-* | aura |
| `環球置業-fb-ads-9組.md` | 9 | global-* | global-realty |
| `seminar-fb-ads-9組.md` | 9 | seminar-* | seminar-2026 |

**合計 36 組文案** — 第一週每線挑 1～2 組即可，其餘 A/B 輪替。

---

## 相關檔案

- `docs/行銷漏斗與追蹤策略.md`
- `docs/adpeekr-競品追蹤清單.md`
- `docs/建案對照-cheat-sheet.md`
- `templates/素材Checklist.md`
- `templates/週報-廣告檢視.md`
