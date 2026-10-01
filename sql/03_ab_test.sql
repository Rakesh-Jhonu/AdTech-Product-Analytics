-- Treatment vs control
SELECT experiment_group, SUM(impressions) impressions, SUM(clicks) clicks,
       SUM(conversions) conversions,
       ROUND(100.0*SUM(clicks)/NULLIF(SUM(impressions),0),3) ctr_pct,
       ROUND(100.0*SUM(conversions)/NULLIF(SUM(clicks),0),3) conversion_rate_pct,
       ROUND(SUM(revenue),2) revenue
FROM adtech_events GROUP BY experiment_group;

-- Segment consistency
SELECT experiment_group, country, device,
       SUM(clicks) clicks, SUM(conversions) conversions,
       ROUND(100.0*SUM(conversions)/NULLIF(SUM(clicks),0),3) conversion_rate_pct
FROM adtech_events
GROUP BY experiment_group, country, device
ORDER BY country, device, experiment_group;
