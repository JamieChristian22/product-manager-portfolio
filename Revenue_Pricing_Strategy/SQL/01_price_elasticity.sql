-- Simple price elasticity proxy: change in conversions by price bucket
SELECT
  price_bucket,
  COUNT(*) AS sessions,
  COUNTIF(purchased=1) AS purchases,
  SAFE_DIVIDE(COUNTIF(purchased=1), COUNT(*)) AS conversion_rate
FROM analytics.pricing_experiment_sessions
GROUP BY price_bucket
ORDER BY price_bucket;
