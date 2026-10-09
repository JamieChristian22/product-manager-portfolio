# 08 — Stakeholder decision log and RACI (SIMULATED PLANNING)

> No stakeholder approvals or actual release decisions are represented here. Owner names below are **roles, not real individuals**.

## Explicit decision ledger

| ID | Choice | Rationale | Trade-off | Proposal | Decision owner | Required evidence | State |
|---|---|---|---|---|---|---|---|
| D-01 | Problem selection | Sort and filter controls are buried below promotional cards | User outcome risk | Make filters sticky, surface delivery estimates and clarify applied filter count | UX lead | Requires usability evidence | Draft |
| D-02 | Pilot scope | Sticky filter bar with visible chip state and delivery information | Expanded functionality / implementation time | Limit to existing baseline-supported flows | Engineering | Requires QA and accessible task path | Not approved |
| D-03 | Exposure strategy | Start with staff or sandbox cohort | Slower learning | Stage opt-in pilot; hold on guardrails | Product + SRE | Requires flag and rollback drill | Not approved |
| D-04 | Scale decision | Cart-add rate improves without a checkout-error increase | An aggressive new layout could obscure accessibility or promotional content | No rollout increase before metric QA | Product + Analytics | Requires minimum data quality and uncertainty review | Open |

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
- **Risk:** An aggressive new layout could obscure accessibility or promotional content
- **Stop/rollback trigger:** cart-add drop greater than 5% relative or checkout errors greater than +0.5 percentage points
- **Escalation:** Engineering on-call first; Product decides exposure hold; incident commander handles customer-facing severity events.
