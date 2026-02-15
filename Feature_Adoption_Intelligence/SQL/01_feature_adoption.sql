-- Feature adoption: users who used feature at least once / active users
WITH active AS (
  SELECT DISTINCT user_id
  FROM analytics.events_daily
  WHERE event_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
    AND event_name IN ('login','session_start')
),
used AS (
  SELECT DISTINCT user_id
  FROM analytics.events_daily
  WHERE event_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
    AND event_name='feature_used'
)
SELECT
  COUNT(*) AS active_users,
  (SELECT COUNT(*) FROM used) AS feature_users,
  SAFE_DIVIDE((SELECT COUNT(*) FROM used), COUNT(*)) AS adoption_rate
FROM active;
