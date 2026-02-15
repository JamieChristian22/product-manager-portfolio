-- Seller scorecard with weighted quality score
SELECT
  seller_id,
  AVG(rating) AS avg_rating,
  SAFE_DIVIDE(SUM(CASE WHEN is_return=1 THEN 1 ELSE 0 END), COUNT(*)) AS return_rate,
  AVG(fulfillment_days) AS avg_fulfillment_days,
  (0.6*AVG(rating))
  + (0.2*(1- SAFE_DIVIDE(SUM(CASE WHEN is_return=1 THEN 1 ELSE 0 END), COUNT(*))))
  + (0.2*(1/NULLIF(AVG(fulfillment_days),0))) AS quality_score
FROM marketplace.orders
WHERE order_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY)
GROUP BY seller_id
ORDER BY quality_score DESC;
