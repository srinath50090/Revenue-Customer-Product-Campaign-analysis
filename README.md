# E-commerce & Marketing Analytics | SQL & Power BI

**Prioritizing High-Impact Revenue Problems Through Data Analytics**

An end-to-end business analytics project focused on identifying the factors contributing most to revenue performance and prioritizing the business problems with the greatest potential financial impact.

Using SQL, Power Query, DAX, and Power BI, I analyzed e-commerce transactions, customer behavior, product performance, and marketing campaigns to identify where revenue was declining, which customer segments were affected, and which areas deserved further investigation.

The project focuses on one principle: **Instead of spreading resources across many small problems, identify a few high-impact problems and prioritize them based on their potential financial impact.**

## 1. Business Requirement

A business wants to increase revenue by solving fewer problems that have a higher financial impact instead of spreading efforts across many small issues.

### Business Objective

Identify the small number of customer segments, products, and marketing channels that contribute most significantly to revenue decline, quantify their impact where the data allows, and prioritize the investigations that could create the greatest opportunity to improve revenue.

### Key Business Questions

- Which markets, categories, and customer segments contribute most to revenue?
- Where is the largest revenue decline occurring?
- Which customer segments and products contribute most to the decline?
- Are changes in customer spending, purchase frequency, or marketing performance associated with the decline?
- Which problems should the business investigate first based on their financial significance?

## 2. Project Overview

| Detail | Description |
|---|---|
| Domain | E-commerce & Marketing Analytics |
| Tools | SQL, Power BI, DAX, Power Query, Excel |
| Analysis Period | January 2021 – December 2023 |
| Customers | 100K |
| Events | 1M+ |
| Orders | 46K+ |
| Campaigns | 50 |
| Main Deliverable | Interactive Power BI dashboards and business recommendations |

## 3. Analytical Approach: Prioritize by Financial Impact

Rather than investigating every small variation in the data, I followed a structured approach to narrow the analysis toward the most significant business problems.

**Step 1 — Identify the overall performance problem**

Analyze revenue trends, order volume, customer activity, average order value, and revenue per customer to identify where business performance is weakening.

**Step 2 — Locate the largest area of concern**

Break down revenue performance by country, category, customer demographics, and marketing channel to identify the areas contributing most to the decline.

**Step 3 — Narrow the problem to specific drivers**

Drill down into the affected customer segment, product IDs, purchase frequency, and campaign channels to identify the most relevant areas for investigation.

**Step 4 — Prioritize the next investigations**

Use revenue contribution, year-over-year revenue change, the number of affected customers, and product-level declines to determine which issues deserve attention first.

**Step 5 — Recommend targeted action**

Translate the findings into specific business questions and investigation priorities rather than recommending broad changes without sufficient evidence.

## 4. Key Business Findings

### Finding 1: Revenue Drivers

The analysis identified a concentration of revenue across a small number of markets, categories, and customer segments.

- The US contributes approximately 35% of total revenue.
- The US and India together contribute approximately 55% of total revenue.
- Electronics and Home contribute nearly two-thirds of revenue across the six categories.
- Customers aged 25–44 contribute approximately 70% of gross revenue.
- November and December consistently record the highest revenue each year.
- Approximately 80% of revenue is associated with campaign-tagged transactions, while 20% is attributed to organic transactions.

**Business implication:** Revenue performance is concentrated in particular markets, categories, and customer segments. These areas deserve attention when prioritizing business investigations.

### Finding 2: US Revenue Decline

US revenue declined by approximately 4% compared with the previous year, continuing a decline observed over the preceding two years.

However:

- Orders increased.
- Purchasing customers increased.
- Average Order Value (AOV) decreased by approximately 4%.
- Average Revenue per Customer (ARPC) decreased by approximately 4%.

**Business implication:** Increasing customer and order volume has not translated into higher revenue. Lower spending per order and per customer are important areas to investigate.

### Finding 3: A High-Priority Customer Segment

The analysis identified US male customers aged 18–34 who purchased Electronics as a major contributor to the revenue decline.

- The identified group contains 730 customers.
- Only 229 made a purchase during the current comparison year.
- Purchasing customers declined by approximately 12% compared with the previous year.
- Among these 229 purchasing customers, 62% made one purchase and 31% made two purchases.

**Business implication:** This segment combines a decline in purchasing customers with limited purchase frequency. Investigating this group provides a focused starting point for understanding changes in customer spending and repeat purchases.

### Finding 4: Product-Level Revenue Declines

Several products within the identified customer segment experienced substantial year-over-year revenue declines.

| Product ID | Revenue Decline |
|---|---:|
| 1988 | 83% |
| 705 | 79% |
| 362 | 71% |
| 171 | 69% |
| 223 | 64% |
| 902 | 10% |

**Business implication:** Products with substantial revenue declines provide specific targets for investigating changes in demand, pricing, discounts, availability, and product mix.

Product IDs are used because the source dataset does not contain product names or brand names.

### Finding 5: Marketing Channel Performance

Paid Search and Affiliate were leading campaign channels within the identified customer segment. However, both experienced approximately 15% lower revenue than the previous year.

**Business implication:** Investigating these two channels may help determine whether changes in traffic, conversion, customer acquisition, or campaign performance are associated with the decline.

Campaign-tagged revenue alone does not establish that marketing caused or prevented revenue changes.

## 5. Prioritized Business Investigation

Based on the observed findings, I would prioritize the following areas rather than distributing resources equally across every issue.

### Priority 1 — Investigate the US Revenue Decline

**Why it matters:** The US contributes approximately 35% of total revenue and has experienced a sustained decline.

Investigate:
- Changes in AOV and ARPC.
- Differences in customer spending and order frequency.
- Revenue changes across customer segments and product categories.

**Expected business value:** Identify the major drivers of declining revenue in the largest contributing market.

### Priority 2 — Investigate the Affected Customer Segment

**Why it matters:** US male customers aged 18–34 purchasing Electronics were identified as a major contributor to the decline.

Investigate:
- The decline in purchasing customers.
- Differences in spending compared with other demographics.
- The reasons for low repeat-purchase frequency.

**Expected business value:** Identify opportunities to improve customer spending and repeat purchases within a defined segment.

### Priority 3 — Investigate the Products with the Largest Declines

**Why it matters:** Several products experienced revenue declines exceeding 60%.

Investigate:
- Changes in product demand and sales volume.
- Pricing and discount changes.
- Product availability and product mix.
- The contribution of each product to the segment's total revenue decline.

**Expected business value:** Determine which products account for the largest financial losses and where targeted product-level action may be justified.

### Priority 4 — Investigate Paid Search and Affiliate

**Why it matters:** Both channels experienced approximately 15% lower revenue within the affected customer segment.

Investigate:
- Traffic and conversion changes.
- Customer acquisition quality.
- Campaign costs and return on advertising spend, where reliable cost data is available.
- Changes in the products and customer groups reached by each channel.

**Expected business value:** Identify whether channel performance changes warrant adjustments to campaign strategy or allocation.

**Prioritization principle:** These are investigation priorities, not confirmed solutions. Before allocating resources or changing budgets, compare the absolute revenue impact, the cost of intervention, and the expected recoverable revenue for each problem.

## 6. Power BI Dashboards

The project contains five analytical pages, each supporting a different stage of the business investigation.

### Revenue Intelligence Dashboard

Analyzes revenue, orders, customers, AOV, ARPC, and refund rate across time, countries, categories, age groups, and campaign channels.

**Purpose:** Identify revenue drivers and detect where performance is weakening.

![Revenue Intelligence Dashboard](Dashboard%20Images/01.png)

### Customer Intelligence Dashboard

Analyzes customer purchasing activity, returning customers, purchase frequency, loyalty tiers, and cohort retention.

**Purpose:** Identify customer segments with declining purchasing activity or potential retention opportunities.

![Customer Intelligence Dashboard](Screenshots/customer_dashboard.png)

### Product Performance Dashboard

Analyzes category revenue, units sold, top and bottom products, brand performance, product segments, and refund rates.

**Purpose:** Identify products with significant revenue contributions or declines.

![Product Performance Dashboard](Screenshots/product_dashboard.png)

### Campaign Performance Dashboard

Analyzes campaign revenue, orders, customers, conversion rates, event funnels, and expected versus observed campaign uplift.

**Purpose:** Identify marketing channels and funnel stages that require further investigation.

![Campaign Performance Dashboard](Screenshots/campaign_dashboard.png)

### Business Insights & Recommendations

Combines findings from the analytical dashboards to investigate the US revenue decline, identify the affected customer segment, examine declining products, and prioritize further analysis.

**Purpose:** Convert dashboard findings into a focused business investigation.

![Business Insights](Screenshots/business_insights.png)

## 7. Technical Implementation

### Data Preparation
- Transformed and prepared multiple datasets using SQL and Power Query.
- Addressed missing values and incomplete transaction records.
- Validated data types, relationships, and KPI calculations.
- Documented data limitations and analytical assumptions.

### Data Modeling
- Integrated customer, product, transaction, event, and campaign data.
- Created relationships to support cross-filtering and segment-level analysis.
- Developed a model supporting revenue, customer, product, and campaign reporting.

### DAX & KPI Development
Developed measures for:

- Gross Revenue and Net Revenue.
- Total Orders and Purchasing Customers.
- Average Order Value and Average Revenue per Customer.
- Refund Rate and Product Revenue.
- Campaign Funnel Conversion Rates.
- Year-over-Year and Month-over-Month Performance.
- Repeat Purchase Rate and Cohort Retention.
- Expected and Observed Campaign Uplift.

### Analytical Methods
- Revenue contribution analysis.
- Year-over-year performance comparisons.
- Customer segmentation.
- Product-level performance analysis.
- Purchase frequency and cohort retention analysis.
- Marketing funnel analysis.
- Targeted drill-down investigation.

## 8. Data Limitations

- The analysis covers January 2021 to December 2023.
- The source dataset does not contain product or brand names; product-level findings use IDs.
- Some transaction records contain missing product identifiers and revenue values. These records require explicit handling to avoid misleading product and revenue calculations.
- Campaign-tagged revenue represents an association with campaigns, not necessarily incremental revenue caused by them.
- Observed revenue declines do not independently establish their underlying causes.
- The dataset is suitable for demonstrating analytical methods but should not be treated as verified evidence about a specific real-world business.

## 9. Project Outcome

This project demonstrates how SQL and Power BI can be used to move from broad performance reporting to focused business problem investigation.

Instead of treating every revenue fluctuation as equally important, the analysis narrows the investigation to:

- A major market experiencing a sustained revenue decline.
- A specific customer segment associated with that decline.
- Products experiencing substantial revenue reductions.
- Marketing channels requiring further performance evaluation.

The result is a structured approach to deciding **where to investigate first, which evidence matters most, and how to focus business resources on problems with the greatest potential financial impact.**

The analysis identifies priorities for further investigation; the actual revenue recovery and financial return would need to be validated through additional analysis and measured after implementation.

## 10. Explore the Project

- **Power BI Dashboard:** [Add your PBIX file or repository link]
- **SQL Scripts:** [Add your SQL folder link]
- **Dashboard Screenshots:** [Add your screenshots folder link]
- **Dataset Source:** [Add your dataset source link]

---

**Skills demonstrated:** SQL · Power BI · DAX · Power Query · Data Modeling · Business Analytics · Revenue Analysis · Customer Segmentation · Product Analytics · Marketing Analytics · Root-Cause Investigation · Business Recommendations

---

## 🤝 Open to Internship and Full-Time Opportunities

I am actively seeking **Data Analyst, BI Analyst, Reporting Analyst, Business Analyst, and other data-related internship or full-time opportunities**.

I am eager to contribute my SQL, Power BI, and analytical skills to a team, solve business problems using data, and continue learning through practical industry experience.

If you are hiring for an entry-level analytics role or would like to discuss my project, I would be happy to connect.

[Linkedin](https://www.linkedin.com/in/srinathvenkatachalam/)

[Github](https://github.com/srinath50090/)

**Email** : srinath50090@gmail.com

