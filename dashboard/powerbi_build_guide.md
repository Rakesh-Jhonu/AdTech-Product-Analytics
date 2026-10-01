# Power BI Build Guide

## Page 1 — Executive Overview
KPI cards: Impressions, Clicks, CTR, Conversions, Conversion Rate, Revenue, RPM, Profit.

Visuals:
- Monthly revenue trend
- Revenue by country
- CTR by device
- RPM by placement

## Page 2 — Product Performance
Slicers: date, country, device, ad type, publisher, advertiser.

Visuals:
- Placement CTR vs RPM scatter
- Publisher revenue ranking
- Ad-type conversion rate
- Country/device heatmap

## Page 3 — Experiment
- Control vs Treatment CTR
- Control vs Treatment conversion rate
- Revenue per 1K impressions
- Country/device breakdown
- Statistical-significance note

### DAX
CTR = DIVIDE(SUM(adtech_events[clicks]), SUM(adtech_events[impressions]))
Conversion Rate = DIVIDE(SUM(adtech_events[conversions]), SUM(adtech_events[clicks]))
RPM = DIVIDE(SUM(adtech_events[revenue]), SUM(adtech_events[impressions])) * 1000
Profit = SUM(adtech_events[revenue]) - SUM(adtech_events[cost])
