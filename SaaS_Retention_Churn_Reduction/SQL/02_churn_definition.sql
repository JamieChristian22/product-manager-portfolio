-- Churned users: no key_action in last 28 days and had previously been active
WITH last_seen AS (
  SELECT user_id, MAX(event_date) AS last_active
  FROM analytics.events_daily
  WHERE event_name='key_action'
  GROUP BY user_id
)
SELECT COUNT(*) AS churned_users
FROM last_seen
WHERE last_active < DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY);
