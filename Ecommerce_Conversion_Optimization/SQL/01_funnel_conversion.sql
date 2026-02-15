-- Funnel conversion by step (sessions -> product_view -> add_to_cart -> checkout_start -> purchase)
WITH events AS (
  SELECT user_id, session_id, event_name, event_ts
  FROM analytics.events
  WHERE event_ts >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
),
steps AS (
  SELECT user_id, session_id,
         MAX(CASE WHEN event_name='session_start' THEN 1 ELSE 0 END) AS session_start,
         MAX(CASE WHEN event_name='product_view' THEN 1 ELSE 0 END) AS product_view,
         MAX(CASE WHEN event_name='add_to_cart' THEN 1 ELSE 0 END) AS add_to_cart,
         MAX(CASE WHEN event_name='checkout_start' THEN 1 ELSE 0 END) AS checkout_start,
         MAX(CASE WHEN event_name='purchase' THEN 1 ELSE 0 END) AS purchase
  FROM events
  GROUP BY user_id, session_id
)
SELECT
  COUNTIF(session_start=1) AS sessions,
  COUNTIF(product_view=1) AS product_views,
  COUNTIF(add_to_cart=1) AS carts,
  COUNTIF(checkout_start=1) AS checkouts,
  COUNTIF(purchase=1) AS purchases,
  SAFE_DIVIDE(COUNTIF(purchase=1), COUNTIF(session_start=1)) AS session_to_purchase
FROM steps;
