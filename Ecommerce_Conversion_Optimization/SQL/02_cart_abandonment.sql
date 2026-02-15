-- Cart abandonment: sessions with add_to_cart but no purchase
WITH s AS (
  SELECT session_id,
         MAX(CASE WHEN event_name='add_to_cart' THEN 1 ELSE 0 END) AS has_cart,
         MAX(CASE WHEN event_name='purchase' THEN 1 ELSE 0 END) AS has_purchase
  FROM analytics.events
  WHERE event_ts >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
  GROUP BY session_id
)
SELECT
  COUNTIF(has_cart=1) AS sessions_with_cart,
  COUNTIF(has_cart=1 AND has_purchase=0) AS abandoned,
  SAFE_DIVIDE(COUNTIF(has_cart=1 AND has_purchase=0), COUNTIF(has_cart=1)) AS abandonment_rate
FROM s;
