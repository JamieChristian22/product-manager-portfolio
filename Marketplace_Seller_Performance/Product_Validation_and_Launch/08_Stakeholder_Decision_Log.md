# 08 — Stakeholder decision log and RACI (SIMULATED PLANNING)

> No stakeholder approvals or actual release decisions are represented here. Owner names below are **roles, not real individuals**.

## Explicit decision ledger

| ID | Choice | Rationale | Trade-off | Proposal | Decision owner | Required evidence | State |
|---|---|---|---|---|---|---|---|
| D-01 | Problem selection | Scorecard lacks metric definitions and mixes delayed and fulfilled orders | User outcome risk | Introduce metric definitions, time-window selector and prioritized action panel | UX lead | Requires usability evidence | Draft |
| D-02 | Pilot scope | Glossary plus action panel and order drilldown | Expanded functionality / implementation time | Limit to existing baseline-supported flows | Engineering | Requires QA and accessible task path | Not approved |
| D-03 | Exposure strategy | Start with staff or sandbox cohort | Slower learning | Stage opt-in pilot; hold on guardrails | Product + SRE | Requires flag and rollback drill | Not approved |
| D-04 | Scale decision | Sellers understand performance and complete appropriate action | Incorrect aggregation could lead to unfair seller decisions | No rollout increase before metric QA | Product + Analytics | Requires minimum data quality and uncertainty review | Open |

## Delivery RACI

| Workstream | Product | Design | Engineering | Analytics | Support | Legal/Security |
|---|---|---|---|---|---|---|
| Prototype and scripts | A | R | C | C | I | I |
| Instrumentation | A | C | R | R | I | C |
| UX accessibility | A | R | R | C | I | C |
| Pilot gate | A | C | R | R | C | C |
| Incident / rollback | C | I | A/R | C | R | C |
| Customer communication | A | C | C | I | R | C |

R=Responsible; A=Accountable; C=Consulted; I=Informed. Assign actual owners and dated approvals only after a real project kickoff.

## Decision meeting template

- Date, attendees, competing alternatives, data considered, dissenting view, decision, owner, due date, next review.
- For a no-go: identify blocking test, remediation issue, retest owner and gate-reopening criteria.
- For a go: log signed gate sheet, pilot cohort, flag configuration, monitoring, rollback authority and communication readiness.

## Unresolved risks
- **Risk:** Incorrect aggregation could lead to unfair seller decisions
- **Stop/rollback trigger:** metric reconciliation failures > 0 or dispute contacts rise 15%
- **Escalation:** Engineering on-call first; Product decides exposure hold; incident commander handles customer-facing severity events.
