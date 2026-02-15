-- Weekly cohort retention (signup week vs active weeks)
WITH signups AS (
  SELECT user_id, DATE_TRUNC(MIN(event_date), WEEK(MONDAY)) AS cohort_week
  FROM analytics.events_daily
  WHERE event_name='signup'
  GROUP BY user_id
),
activity AS (
  SELECT user_id, DATE_TRUNC(event_date, WEEK(MONDAY)) AS activity_week
  FROM analytics.events_daily
  WHERE event_name IN ('login','key_action')
  GROUP BY user_id, activity_week
)
SELECT
  cohort_week,
  DATE_DIFF(activity_week, cohort_week, WEEK) AS week_n,
  COUNT(DISTINCT activity.user_id) AS active_users
FROM signups
JOIN activity USING(user_id)
GROUP BY cohort_week, week_n
ORDER BY cohort_week, week_n;
