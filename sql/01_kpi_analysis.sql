-- Core product KPIs and market/publisher ranking
SELECT SUM(impressions) impressions, SUM(clicks) clicks,
       ROUND(100.0*SUM(clicks)/NULLIF(SUM(impressions),0),3) ctr_pct,
       SUM(conversions) conversions,
       ROUND(100.0*SUM(conversions)/NULLIF(SUM(clicks),0),3) conversion_rate_pct,
       ROUND(SUM(revenue),2) revenue,
       ROUND(SUM(revenue-cost),2) profit,
       ROUND(1000.0*SUM(revenue)/NULLIF(SUM(impressions),0),2) rpm
FROM adtech_events;

SELECT country, SUM(impressions) impressions, SUM(clicks) clicks,
       ROUND(100.0*SUM(clicks)/NULLIF(SUM(impressions),0),3) ctr_pct,
       ROUND(SUM(revenue),2) revenue
FROM adtech_events
GROUP BY country ORDER BY revenue DESC;

WITH p AS (
 SELECT publisher_id, SUM(revenue) revenue, SUM(clicks) clicks, SUM(impressions) impressions
 FROM adtech_events GROUP BY publisher_id
)
SELECT *, RANK() OVER (ORDER BY revenue DESC) revenue_rank,
       ROUND(100.0*clicks/NULLIF(impressions,0),3) ctr_pct
FROM p ORDER BY revenue_rank;
