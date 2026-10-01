-- Placement and segment diagnostics
SELECT placement, SUM(impressions) impressions, SUM(clicks) clicks,
       SUM(conversions) conversions,
       ROUND(100.0*SUM(clicks)/NULLIF(SUM(impressions),0),3) ctr_pct,
       ROUND(100.0*SUM(conversions)/NULLIF(SUM(clicks),0),3) conversion_rate_pct,
       ROUND(1000.0*SUM(revenue)/NULLIF(SUM(impressions),0),2) rpm
FROM adtech_events
GROUP BY placement ORDER BY rpm DESC;

WITH x AS (
 SELECT country, device, ad_type, SUM(impressions) impressions,
        SUM(clicks) clicks, SUM(revenue) revenue
 FROM adtech_events GROUP BY country, device, ad_type
)
SELECT *, ROUND(100.0*clicks/NULLIF(impressions,0),3) ctr_pct
FROM x ORDER BY impressions DESC, ctr_pct ASC;

WITH m AS (
 SELECT DATE_TRUNC('month', CAST(date AS DATE)) month, SUM(revenue) revenue
 FROM adtech_events GROUP BY 1
)
SELECT month, revenue,
       LAG(revenue) OVER (ORDER BY month) previous_revenue,
       ROUND(100.0*(revenue-LAG(revenue) OVER (ORDER BY month))
       /NULLIF(LAG(revenue) OVER (ORDER BY month),0),2) mom_growth_pct
FROM m ORDER BY month;
