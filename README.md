# AdTech Product Analytics & Revenue Optimization

An end-to-end **Product Analytics and AdTech analytics project** focused on understanding advertising performance, identifying product opportunities, and converting data into actionable product recommendations.

The project analyzes advertising events across **publishers, advertisers, countries, devices, ad formats, and placements** using SQL and Python, with an A/B testing framework and a Power BI dashboard specification.



---

## 🎯 Business Problem

An advertising platform needs to understand how effectively ad impressions are converted into clicks, conversions, and revenue.

The key business questions addressed in this project are:

* Which markets generate the highest revenue?
* Which devices and ad formats have the best engagement?
* Which ad placements have weak performance?
* Which publishers contribute the most revenue?
* Where are potential funnel bottlenecks?
* Does a new ad placement improve conversion performance?
* What product improvements should be tested next?

---

## 🛠️ Tech Stack

* **SQL** — KPI analysis, segmentation, CTEs, aggregations, window functions
* **Python** — Pandas, NumPy, SciPy
* **Data Visualization** — Matplotlib
* **Power BI** — Dashboard design and KPI framework
* **Statistics** — A/B testing and two-proportion z-test
* **Git/GitHub** — Version control and project documentation

---

## 📊 Dataset

The project contains **120,000 synthetic advertising events** covering:

| Dimension          | Coverage                       |
| ------------------ | ------------------------------ |
| Advertising Events | 120,000+                       |
| Markets            | 7                              |
| Publishers         | 30                             |
| Advertisers        | 20                             |
| Devices            | Mobile, Desktop, Tablet        |
| Ad Types           | Native, Display, Video, Search |
| Placements         | 5                              |
| Experiment Groups  | Control, Treatment             |

### Key Metrics

* Impressions
* Clicks
* CTR
* Conversions
* Conversion Rate
* Revenue
* Cost
* Profit
* RPM
* CPC

---

## 🔄 Analytical Workflow

```text
Raw Advertising Events
          ↓
     Data Validation
          ↓
      SQL Analysis
          ↓
   KPI & Segmentation
          ↓
    Python EDA
          ↓
Performance Diagnosis
          ↓
     A/B Testing
          ↓
Product Hypotheses
          ↓
Product Recommendations
          ↓
 Dashboard & Monitoring
```

---

## 🔎 SQL Analysis

The SQL analysis focuses on product and business performance.

### Core KPI Analysis

Calculates:

* Total impressions
* Clicks
* CTR
* Conversions
* Conversion rate
* Revenue
* Profit
* RPM

### Segmentation Analysis

Performance is analyzed across:

* Countries
* Devices
* Ad types
* Placements
* Publishers
* Advertisers

### Advanced SQL

The project demonstrates:

* `GROUP BY`
* Aggregations
* `CASE WHEN`
* CTEs
* `LAG()`
* `RANK()`
* Window functions
* Month-over-month analysis
* Segment-level performance diagnostics

---

## 📈 Product Performance Analysis

The project evaluates advertising performance from both engagement and monetization perspectives.

### Example analytical framework

**Traffic**

```text
Impressions
```

↓

**Engagement**

```text
Clicks → CTR
```

↓

**Conversion**

```text
Conversions → Conversion Rate
```

↓

**Monetization**

```text
Revenue → RPM → Profit
```

This helps identify whether a performance problem originates from traffic, engagement, conversion, or monetization.

---

## 🧪 A/B Testing

A treatment-vs-control experiment is included to evaluate a potential advertising-placement improvement.

### Experiment metrics

* CTR
* Conversion Rate
* Revenue
* Revenue per 1,000 impressions

A **two-proportion z-test** is used to evaluate the conversion-rate difference between treatment and control groups.

The experiment is designed around a product decision:

```text
Product Change
      ↓
A/B Test
      ↓
Measure KPI
      ↓
Check Statistical Significance
      ↓
Evaluate Business Impact
      ↓
Product Decision
```

---

## 🐍 Python Analysis

Python is used for exploratory data analysis and visualization.

The analysis includes:

* Overall KPI calculation
* Country-level performance
* Monthly revenue trends
* Placement performance
* RPM analysis
* Experiment analysis
* Statistical testing

Generated visualizations are available in:

```text
images/
```

---

## 📊 Power BI Dashboard

The project includes a Power BI dashboard specification designed around three analytical pages.
<img width="1216" height="817" alt="image" src="https://github.com/user-attachments/assets/c752a311-60ca-4167-81d3-7d70f53013c9" />


### Page 1 — Executive Overview

Key KPIs:

* Impressions
* Clicks
* CTR
* Conversions
* Conversion Rate
* Revenue
* RPM
* Profit

Visualizations:

* Monthly revenue trend
* Revenue by country
* CTR by device
* RPM by placement

### Page 2 — Product Performance

Includes:

* Placement performance
* Publisher revenue ranking
* Ad-type conversion rate
* Country/device analysis
* CTR vs RPM analysis

### Page 3 — Experiment Analysis

Includes:

* Control vs Treatment CTR
* Control vs Treatment conversion rate
* Revenue comparison
* Country/device experiment segmentation
* Statistical significance

---

## 💡 Product Analytics Framework

The project converts analytical findings into product decisions using:

```text
Observation
     ↓
Opportunity
     ↓
Hypothesis
     ↓
Experiment
     ↓
Success Metric
     ↓
Decision
```

For example:

> Identify a high-traffic segment with weak engagement → investigate placement performance → formulate an optimization hypothesis → run an A/B test → measure CTR/conversion/revenue → evaluate the result.

This approach connects **data analysis with product improvement**, rather than stopping at dashboard creation.

---

## 📁 Repository Structure

```text
AdTech-Product-Analytics/
│
├── data/
│   └── adtech_events.csv
│
├── sql/
│   ├── 01_kpi_analysis.sql
│   ├── 02_product_diagnostics.sql
│   └── 03_ab_test.sql
│
├── python/
│   ├── 01_eda.py
│   └── 02_ab_test.py
│
├── docs/
│   ├── case_study.md
│   ├── metric_dictionary.md
│   └── resume_bullets.md
│
├── dashboard/
│   └── powerbi_build_guide.md
│
├── images/
│   ├── monthly_revenue.png
│   └── placement_rpm.png
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## 🚀 How to Run

### 1. Clone the repository

```bash
git clone https://github.com/Rakesh-Jhonu/AdTech-Product-Analytics.git
cd AdTech-Product-Analytics
```

### 2. Install Python dependencies

```bash
pip install -r requirements.txt
```

### 3. Run exploratory analysis

```bash
python python/01_eda.py
```

### 4. Run A/B test analysis

```bash
python python/02_ab_test.py
```

### 5. SQL Analysis

Load:

```text
data/adtech_events.csv
```

into a PostgreSQL/SQL environment and execute the SQL scripts in:

```text
sql/
```

---

## 📌 Key Takeaways

This project demonstrates an end-to-end approach to **Product Analytics**:

* Translating business questions into analytical problems
* Writing analytical SQL
* Building and interpreting product KPIs
* Segmenting product performance
* Identifying performance gaps
* Performing statistical experimentation
* Converting analysis into product hypotheses
* Designing actionable dashboards
* Communicating insights for product decisions

---

## 👨‍💻 Author

**Rakesh Kumar**

B.Tech — Metallurgical & Materials Engineering
Indian Institute of Technology Patna

**Skills demonstrated:**
SQL • Python • Pandas • NumPy • Statistics • Power BI • Product Analytics • Data Analysis • A/B Testing

---

## ⭐ Project Focus

**Product Analytics | AdTech | SQL | Python | A/B Testing | Revenue Optimization**

