# 05 — Post-launch analytics, A/B test design and decision framework

**Status:** Future measurement plan, not proof of deployment or a completed experiment.

## North star and assumptions

North-star proxy: qualified user completion of the core value moment for **guided feature discovery and contextual education**. Goals and numeric values below are **planning assumptions**, not observed change.

| KPI | Hypothetical baseline | Target |
| --- | --- | --- |
| Feature awareness | 30% | 45% |
| 7-day feature adoption | 18% | 27% |
| Week-4 repeat usage | 12% | 17% |


## KPI contracts

| Business KPI | Illustrative numerator | Illustrative denominator | Window | Owner |
| --- | --- | --- | --- | --- |
| Feature awareness | Distinct eligible users satisfying event/condition | Distinct eligible exposed users | Rolling 7 or 30 days | Product Analytics |
| 7-day feature adoption | Distinct eligible users satisfying event/condition | Distinct eligible exposed users | Rolling 7 or 30 days | Product Analytics |
| Week-4 repeat usage | Distinct eligible users satisfying event/condition | Distinct eligible exposed users | Rolling 7 or 30 days | Product Analytics |


**Important:** The generic numerator/denominator above is a placeholder, not a production-ready SQL contract for duration and time-to-resolution metrics. For duration metrics use qualifying task durations and median; for rate metrics specify unique user/account eligibility, exclusion and event definitions. Validate all KPI contracts before shipping.

## Event contract

**Primary event:** `feature_activated` (example event name)

| Field | Type | Meaning / QC |
|---|---|---|
| event_id | UUID | deduplication key |
| occurred_at_utc | ISO 8601 | stable timezone basis |
| anonymous_user_id | string | hashed/pseudonymous identifier |
| account_id | string nullable | analysis grain where consented |
| experiment_id | string nullable | treatment attribution |
| variant | enum | control / treatment |
| journey_step | enum | stage for funnel analysis |
| device_type | enum | desktop / mobile / tablet |
| success | boolean | explicit success, not merely click |
| feature_version | string | instrument version / cohort comparability |

Avoid logging raw addresses, names, card/payment data or sensitive free text. Verify idempotence, event ordering, server/client parity and cross-device identities.

## Experiment design

- **Question:** Does guided feature discovery and contextual education improve the primary success metric relative to the existing experience?
- **Control:** existing baseline experience.
- **Treatment:** revised experience meeting pre-specified UX changes.
- **Unit of randomization:** stable user or account, chosen to minimize cross-user contamination and match the outcome grain.
- **Assignment:** deterministic stable bucket; no mid-test reassignment. Exclude bots, internal/test accounts and events outside exposure eligibility using pre-registered filters.
- **Statistical plan:** choose minimum detectable effect, alpha, power, baseline and eligible traffic *before* deriving sample size/duration. No invented statistical significance or arbitrary fixed sample size.
- **Analysis:** intention-to-treat for exposed/assigned units as appropriate; predeclare primary outcome, guardrails, segmentation and stopping rules.
- **Integrity checks:** allocation balance (SRM), event missingness, bot contamination, novelty effects, simultaneous experiments and spillover.

## Core segments and guardrails

Segments: new user, low-frequency active user, power user. Guardrails: prompt dismissal rate < 40%, support contact rate stable, no decline in core-task completion. Inspect differential impact and accessibility complaints, but do not over-interpret post-hoc small segments.

## Daily, weekly, monthly operating cadence

| Cadence | Review | Action |
|---|---|---|
| 0–24h | correctness, crash/error logs, event volume, serious support complaints | pause/rollback for critical customer harm |
| Days 2–7 | exposure→engagement→success funnel, segment adoption, early issues | improve messaging or halt stage expansion |
| Days 8–14 | stabilized behavior and guardrails | maintain experiment integrity, do not peek for opportunistic significance |
| Day 30 | eligible cohort adoption, retention, customer themes and full economics | scale / iterate / rollback / kill decision |

## Decision tree

1. **Any critical safety, privacy, payment or data correctness incident?** Stop expansion and follow incident protocol immediately.
2. **Primary outcome improved and guardrails healthy with planned statistical confidence?** Consider expanding after reproducibility and cost review.
3. **Primary neutral but clear usability improvement?** Investigate power, instrumentation and segment relevance; iterate, do not claim win.
4. **Outcome worsened or operational cost outweighs benefit?** Roll back or redesign; capture learning.
5. **Insufficient data?** Extend within pre-declared rules or mark decision inconclusive.

## 7-day review memo (TEMPLATE — NOT FILLED)

- Launch cohort and exact dates: **TBD**
- Exposure and assignment integrity: **TBD**
- Primary KPI, denominator and uncertainty interval: **TBD**
- Guardrails and customer support impact: **TBD**
- Severity 1/2 incidents, owners, mitigation: **TBD**
- Recommendation and explicit owner: **TBD**

## 30-day outcome report (TEMPLATE — NOT FILLED)

- Objective and pre-registered hypothesis: **TBD**
- Version, cohort, date range and eligibility rules: **TBD**
- KPI comparison with actual source/query links: **TBD**
- Experiment conclusion and limitations: **TBD**
- Qualitative feedback triangulation: **TBD**
- Financial, infrastructure, support and accessibility tradeoffs: **TBD**
- Decision and upcoming milestones: **TBD**

Avoid reporting planned targets as achieved results.
