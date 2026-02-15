-- Activation -> adoption funnel
SELECT
  DATE_TRUNC(event_date, WEEK(MONDAY)) AS week,
  COUNTIF(event_name='signup') AS signups,
  COUNTIF(event_name='activation_complete') AS activated,
  COUNTIF(event_name='feature_used') AS feature_users
FROM analytics.events_daily
WHERE event_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY)
GROUP BY week
ORDER BY week;
