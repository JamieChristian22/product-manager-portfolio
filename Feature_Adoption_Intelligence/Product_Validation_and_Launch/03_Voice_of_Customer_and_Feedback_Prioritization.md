# 03 — Voice of Customer (VoC), feedback collection and prioritization

**Status:** Proposed process with **synthetic example entries**. No actual responses are claimed.

## Objective

Translate feedback from **new and occasional SaaS users** into product decisions for **Guided feature discovery and contextual education**. Separate articulated preferences from observed task-level pain and measured behavior.

## Intake design

| Source | Trigger | What to ask / collect | Bias / safeguard |
|---|---|---|---|
| Onboarding intercept | first use or abandonment | “What stopped you from completing your goal?” + optional open text | do not interrupt critical tasks |
| CS/support tagging | relevant ticket | problem category, steps to reproduce, severity, segment | support contacts overrepresent frustrated users |
| Targeted follow-up | 48–72 hours after first use | value achieved? lingering obstacle? | opt-in, limit message frequency |
| Moderated testing | purposefully recruited participant | observed behavior, direct statements, task result | not representative of market scale |
| Product telemetry | qualifying events | funnel exits, repeated errors and completion | behavior cannot tell us motivations alone |

## Short survey (draft)

1. “Were you able to complete what you came to do?” (Yes / Partly / No)
2. “What, if anything, made the task difficult?” (free text)
3. “How easy was it to complete?” (1 very difficult – 7 very easy)
4. “What would have helped most?” (free text)
5. “May we contact you for a follow-up study?” (independent opt-in; never publicly export contact information)

Avoid asking “Did you love our improved feature?” or using NPS as the only measure of usability.

## Fictional raw feedback examples — NOT CUSTOMER QUOTES

| ID | Channel | Illustrative paraphrase | Theme | Impact | Persona |
| --- | --- | --- | --- | --- | --- |
| FB-01 | Support | Finding the feature is difficult | Discovery | High | New user |
| FB-02 | In-product survey | The labels do not explain the benefit | Copy | Medium | Low-frequency user |
| FB-03 | Research interview | I worry my action did not save | Status | High | Admin |
| FB-04 | Sales / CS | Show me what changed after an action | Feedback loop | Medium | Team lead |
| FB-05 | Feedback widget | A short example would help | Education | Low | New user |


## Coding and prioritization

Tag each item with `journey_step`, `theme`, `persona`, `severity`, `repeat_count`, `evidence_link`, `source`, `privacy_review`, and `status`. Confidence increases with triangulation: observed testing behavior + feedback + product telemetry.

### Transparent impact-effort framework

Use 1–5 ordinal scales. **Priority score = (User Impact × Confidence × Reach) / Effort**. This is a discussion aid, not an objective truth. Example scoring:

| Candidate | Impact | Confidence | Reach | Effort | Score | Proposal |
| --- | --- | --- | --- | --- | --- | --- |
| Improve first-use discoverability | 5 | 4 | 4 | 3 | 26.7 | P1 |
| Clarify ambiguous labels | 4 | 4 | 4 | 2 | 32.0 | P1 |
| Add advanced personalization | 3 | 2 | 2 | 5 | 2.4 | Later |
| Improve error-state recovery | 5 | 4 | 3 | 2 | 30.0 | P1 |


## Close-the-loop workflow

**Capture → classify → validate → decide → assign → update → respond → measure.**

- PM: weekly triage of themes, duplicate detection, root-cause hypothesis and changelog.
- Design: convert high-impact friction into prototype and re-test plan.
- Engineering: technical risk, estimates, dependency map and acceptance criteria.
- Customer success: human-readable follow-up where consent/channel permits.
- Analytics: measure whether prioritized change addresses actual behavioral pain.

## Example stakeholder update (not sent)

“Discovery and copy friction are top hypotheses for Guided feature discovery and contextual education. We propose testing two adjustments before expanding rollout. Next decision depends on moderated comprehension results and stable telemetry; all sample findings are simulated.”

## Privacy and research integrity

Collect minimal consented information; store identifiable contacts separately. Do not publish real feedback or imply synthetic comments were gathered from users. Treat any confidential business context as out of scope without permission.
