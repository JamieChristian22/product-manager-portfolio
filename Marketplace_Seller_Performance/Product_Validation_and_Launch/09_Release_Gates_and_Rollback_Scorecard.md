# 09 — Release readiness, launch and rollback scorecard

**Simulation / unapproved:** this is an executable decision template, NOT evidence that a production release occurred.

## Release brief
- **Candidate:** Seller performance scorecard and corrective actions
- **Baseline:** Summary-only scorecard
- **Treatment:** Glossary plus action panel and order drilldown
- **Expected mechanism:** Transparent definitions and next actions increase useful scorecard engagement
- **North star / primary:** `seller_action_completion_rate`
- **Guardrail:** `seller_support_contact_rate`
- **Rollback:** metric reconciliation failures > 0 or dispute contacts rise 15%

## Stage gates and required signoffs
| Gate | Evidence required | Accountable role | Status | Blocker resolution |
|---|---|---|---|---|
| G0 discovery | completed real moderated study + issue triage | Product | NOT RUN | conduct research |
| G1 build | accepted stories, QA, keyboard/assistive-tech passes | Engineering | NOT RUN | implement/test |
| G2 data integrity | event schema contract, duplication checks, exposure parity | Analytics | NOT RUN | QA events |
| G3 legal/security | privacy, consent, terms, and data review | Security/Legal | NOT RUN | approvals |
| G4 operations | flag working, rollback drill, escalation rota | SRE | NOT RUN | rehearsal |
| G5 comms | help center, support macros, release note review | Support | NOT RUN | publish draft |
| G6 pilot | no critical issues, decision owner signoff | Product | NOT RUN | final gate |

**Go/no-go policy:** any unapproved mandatory gate -> NO GO. Do not infer approval from completed template checkboxes.

## Simulated exposure plan (relative days)
| Day | Exposure | Condition to proceed | Observation window |
|---|---|---|---|
| -7 to -1 | 0%, QA/sandbox | Validate instrumentation and rollback | manual replay |
| 0 | internal-only | all mandatory gates signed | 2–4 hours |
| 1–2 | 1% eligible opt-in | zero critical defects | daily review |
| 3–5 | 5% eligible | stable guards + sample adequacy plan | daily review |
| 6–9 | 20% eligible | no cohort imbalance, Support ready | daily review |
| 10+ | 50% then 100% only after decision | primary metric and uncertainty reviewed | 7/30-day reviews |

Do not interpret this cadence as a universal statistically valid experiment duration. Keep randomized assignments sticky, account for seasonality, and require statistical power analysis prior to a real A/B test.

## Operational runbook
1. On-call checks ingestion health, primary KPI sample counts, p95 latency, error budget and support queue.
2. If `metric reconciliation failures > 0 or dispute contacts rise 15%`, freeze expansion and convene Product+Engineering+Analytics.
3. Engineering toggles the feature off or restores known-good config; preserve user state.
4. Validate the old flow with smoke tests; review outstanding affected accounts.
5. File an incident with timeline, severity, customer impact, owner and follow-up actions.
6. Re-enable only after root-cause validation, retesting and new signoffs.

## User-facing launch message template
**Subject:** An easier way to diagnose late shipment performance and identify next best action.

We've updated the seller performance scorecard and corrective actions experience to make key decisions easier to understand. The change will be introduced gradually. The existing path remains available during early rollout. If anything looks wrong, reach out via the normal support channel.

*Do not publish this message before real availability is confirmed.*
