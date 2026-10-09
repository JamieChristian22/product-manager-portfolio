# 04 — Feature launch plan and cross-functional delivery playbook

**Feature:** Personalized onboarding checklist and reactivation nudges | **Launch type:** Proposed controlled rollout | **Status:** NOT LAUNCHED.

## Product brief

- **Customer:** trial accounts and early-stage paying customers.
- **Opportunity:** New users fail to reach activation and stop returning after the first week.
- **Value proposition:** A role-aware onboarding checklist with helpful reminders will improve activation and 30-day retention.
- **Target outcome:** Improve primary KPI while protecting guardrails and user trust.
- **Not in scope (MVP):** major platform migration, unrelated redesigns, speculative advanced automation, or unvalidated additions.

## MVP user story, acceptance and edge cases

**As a** target user, **I want** to use personalized onboarding checklist and reactivation nudges **so that** I can achieve the relevant task more reliably and confidently.

Acceptance criteria:
1. Entry point is discoverable in expected customer workflows and has helpful empty state.
2. Successful action creates the expected saved/output state and emits `onboarding_milestone_completed` exactly once.
3. Error state gives actionable recovery and does not silently discard inputs.
4. The UI supports keyboard navigation, visible focus, comprehensible labels and responsive layout.
5. Existing users outside the enabled cohort retain unchanged behavior.

Edge cases: unstable network, partially completed actions, permission denial, duplicate submission, missing data, narrow mobile viewport, screen-reader labels and state refresh.

## Timeline and gate artifacts

| Window | Milestone | Accountable roles | Required evidence |
| --- | --- | --- | --- |
| T−21 to T−14 | Finalize scope, success and guardrail metrics | PM / Design / Eng | Documented acceptance criteria |
| T−14 to T−7 | Instrumentation, threat/privacy review, accessibility and regression QA | Eng / Data / QA | Verified non-prod event logs |
| T−7 to T−2 | Dogfood / pilot-readiness, help content, support training | PM / Support / Marketing | Runbook and blocker disposition |
| T−1 | Go/no-go checkpoint | PM + functional owners | Written decision |
| Launch day | Internal → 5% → 20% → 50% → 100% gates | Engineering / PM | Stop/go notes per stage |
| D+1 / D+7 | Incident review and early adoption analysis | PM / Data / Support | Daily pulse / week-one review |
| D+30 | Success evaluation, postmortem and roadmap decision | PM / Stakeholders | Decision memo |


## Owners and responsibility matrix (proposed)

| Stakeholder / role | Primary role marker |
| --- | --- |
| PM | A |
| lifecycle marketing | R |
| product design | C |
| backend engineering | C |
| analytics | C |
| customer success | C |


`A`=accountable for overall product decision; `R`=responsible for assigned delivery work; `C`=consulted. **This simple chart is a role map, not a mutually exclusive full RACI**: each release task must name exactly one accountable owner at the operational checklist level.

## Dependencies and critical path

1. Product and UX agree on requirements and high-severity usability fixes.
2. Engineering implements feature behind a remotely configurable flag where supported.
3. Analytics validates event schema, identity stitching and sample payloads in staging.
4. QA confirms core/regression/accessibility flows; privacy/legal approves where relevant.
5. Support and customer-facing teams receive FAQ, escalation routes and known limitations.
6. PM chairs release-readiness and records go/no-go with owners and time.

## Controlled rollout protocol

- **Internal (0% external):** smoke test, telemetry verification, error log coverage.
- **Canary (5% eligible users):** 24–48-hour observation; verify correctness, performance and guardrails.
- **Early access (20%):** compare behavior by segment and inspect support cases.
- **Expanded (50%):** confirm no novel blockers and sufficient operational coverage.
- **General availability (100%):** only after signed gates and documented contingency.

These percentages are planning examples; actual rollout duration, traffic and experiment design must be determined by expected volume and risk. Avoid varying rollout based on protected personal traits.

## KPI targets — illustrative only

| Metric | Assumed baseline | Planning target |
| --- | --- | --- |
| 7-day activation | 35% | 44% |
| Day-30 retention | 42% | 50% |
| Weekly feature adoption | 35% | 46% |


**Guardrails:** unsubscribe rate < 3%, complaint volume stable, no increase in setup time for power users. These are thresholds/monitoring topics for proposed launch readiness, not observed results.

## Launch risks and contingencies

| Risk | Detection | Response | Owner |
| --- | --- | --- | --- |
| Excessive reminders | Monitor relevant leading signal daily | Pause rollout, assess blast radius and restore previous behavior | Engineering / PM |
| Wrong persona classification | Monitor relevant leading signal daily | Pause rollout, assess blast radius and restore previous behavior | Engineering / PM |
| Biased retention cohorts | Monitor relevant leading signal daily | Pause rollout, assess blast radius and restore previous behavior | Engineering / PM |


## Rollback authority and incident response

A designated engineering on-call may **immediately disable** a risky feature flag in the event of data loss, security/privacy defect or customer harm; alert PM and incident commander. For non-critical guardrail breaches, PM + engineering + analytics make a documented pause/rollback decision. Stop expansion, preserve logs, classify severity, notify support and affected customers as appropriate. Do not assume database rollback is safe after irreversible writes; pre-plan compensating migration.

## Communications plan — DRAFTS, not sent

- **Internal notice:** “The personalized onboarding checklist and reactivation nudges pilot is gated and will proceed only with QA, analytics and support readiness. Please escalate issues via the launch runbook.”
- **Customer message:** “We’re exploring improvements that make this workflow clearer and easier to complete. Availability may be limited while we validate the experience.”
- **Channels:** onboarding UI, lifecycle email, customer success playbook.
- **Support FAQ:** eligibility, how to find/use the feature, known limitations, data retention, how to report a problem, and fallback workflow.

## Go / no-go signoff template

| Decision item | Gate | State |
|---|---|---|
| User journey | No open critical/high blockers | UNVERIFIED |
| Quality | P0/P1 bugs closed; regression/accessibility verified | UNVERIFIED |
| Privacy and security | Required reviews completed | UNVERIFIED |
| Data | Primary event and denominator verified in staging | UNVERIFIED |
| Performance | Guardrail thresholds demonstrably met | UNVERIFIED |
| Operations | On-call, alerting, support and rollback rehearsed | UNVERIFIED |
| Approval | Named approvers + timestamp + written call | NOT HELD |

**Current decision: NO GO — no production or real user validation is represented.**
