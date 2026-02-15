-- Upgrade rate by plan and acquisition channel
SELECT
  channel,
  plan_from,
  plan_to,
  COUNT(*) AS upgrades,
  SAFE_DIVIDE(COUNT(*), SUM(COUNT(*)) OVER(PARTITION BY channel, plan_from)) AS upgrade_rate
FROM billing.plan_changes
WHERE change_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 180 DAY)
GROUP BY channel, plan_from, plan_to;
