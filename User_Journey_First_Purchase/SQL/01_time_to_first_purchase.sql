-- Time to first purchase in hours from signup
WITH s AS (
  SELECT user_id, MIN(event_ts) AS signup_ts
  FROM analytics.events
  WHERE event_name='signup'
  GROUP BY user_id
),
p AS (
  SELECT user_id, MIN(event_ts) AS purchase_ts
  FROM analytics.events
  WHERE event_name='purchase'
  GROUP BY user_id
)
SELECT
  APPROX_QUANTILES(TIMESTAMP_DIFF(purchase_ts, signup_ts, HOUR), 100)[OFFSET(50)] AS median_hours_to_first_purchase,
  AVG(TIMESTAMP_DIFF(purchase_ts, signup_ts, HOUR)) AS avg_hours_to_first_purchase
FROM s
JOIN p USING(user_id);
