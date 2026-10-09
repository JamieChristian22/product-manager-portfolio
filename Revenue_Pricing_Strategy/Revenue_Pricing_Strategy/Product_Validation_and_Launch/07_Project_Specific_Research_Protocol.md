# 07 — Scenario-specific usability study and research operations

> **STATUS: RESEARCH DESIGN + SYNTHETIC WORKED EXAMPLE.** No actual participants have been observed. Replace worked examples with real consented findings before making research-execution claims.

## Product hypothesis and bounded decision
- **Feature:** Transparent plan comparison and upgrade decision support
- **Primary persona:** Price-sensitive small-team buyer
- **Job to be done:** Compare plans and choose the correct option with no billing ambiguity
- **Current friction hypothesis:** Included usage and renewal terms are hard to compare
- **Candidate adjustment:** Offer plan comparison matrix, total cost preview and accessible renewal disclosure
- **Decision:** Is the revised prototype understandable enough for a limited opt-in pilot, not whether conversion uplift is proven?

## Participant screening and recruitment
Recruit **6–8 adults** across: Solo buyer, Growing team buyer, Finance approver. Request prior experience with comparable products, device preferences, assistive technology needs and familiarity. Screen out employees who designed the feature; log recruitment source and incentives. Avoid collecting names in downloadable research datasets; store consent/contact info separately with restricted access. Compensate irrespective of task success.

## 35-minute moderated protocol
| Minute | Moderator action | Neutral wording | Record |
|---|---|---|---|
| 0–4 | Explain purpose, consent, recording optional | “We are evaluating the design, not you.” | permission |
| 4–7 | Context interview | “How do you typically approach this kind of task?” | experience |
| 7–23 | Prototype tasks, one at a time | “Please show me how you would…” | click path, errors, time, quotes |
| 23–28 | Follow-up probes | “What did you expect here?” | expectation vs actual |
| 28–32 | SEQ after tasks and confidence | “How easy or difficult was that task?” | SEQ 1–7 |
| 32–35 | Debrief and referral | “What would you change first?” | improvement suggestions |

### Tasks and realistic success standards
**T1 — Compare limits.** Start state: fresh prototype screen. Success: participant independently completes intended action and can explain the current state. Record completion (independent / assisted / failed), elapsed time, navigation errors, direct quote, and observer notes. Do not coach before recording unassisted outcome.

**T2 — Identify billing interval.** Start state: fresh prototype screen. Success: participant independently completes intended action and can explain the current state. Record completion (independent / assisted / failed), elapsed time, navigation errors, direct quote, and observer notes. Do not coach before recording unassisted outcome.

**T3 — Check total due today.** Start state: fresh prototype screen. Success: participant independently completes intended action and can explain the current state. Record completion (independent / assisted / failed), elapsed time, navigation errors, direct quote, and observer notes. Do not coach before recording unassisted outcome.

**T4 — Select suitable plan.** Start state: fresh prototype screen. Success: participant independently completes intended action and can explain the current state. Record completion (independent / assisted / failed), elapsed time, navigation errors, direct quote, and observer notes. Do not coach before recording unassisted outcome.

## Evaluation gates (predeclared illustrative thresholds)
- Core task completion: at least 6/8 independently in exploratory moderated testing; this is a **qualitative pilot gate, not statistical proof**.
- No unresolved severity-4 blocker, privacy issue or inaccessible keyboard path.
- Explainability: at least 6/8 can correctly describe the central decision/action in their own words.
- Re-test the failing task after one prototype revision with **new or counterbalanced participants**, and retain both versions.

## Scenario-specific failure taxonomy
| Code | Hypothesis to validate | Observed signal to capture | Candidate improvement |
|---|---|---|---|
| FIND | Included usage and renewal terms are hard to compare | Users pause or retrace steps before reaching the desired control | Improve information scent and grouping |
| MEANING | Key terminology needs a plain-language explanation | Participants cannot confidently articulate what a number or label means | Offer plan comparison matrix, total cost preview and accessible renewal disclosure |
| TRUST | Misleading pricing or unclear tax terms could damage customer trust | Participants seek reassurance before committing | Surface a contextual explanation and confirmation state |
| RECOVER | User loses context when a step fails | Participant repeats earlier input after a recoverable failure | Preserve user state and make next action explicit |

## Field-note template
`participant_pseudonym,consent_confirmed,segment,device,task_id,prototype_version,start_time,end_time,outcome,assists,error_count,SEQ,confidence_1to5,verbatim_quote,observer_interpretation,issue_code,recording_restricted_location`

## Analysis method
1. Separate direct observation from interpretation. Code moments at the task level, with a second coder reviewing a subset.
2. Count affected **participants**, not quote frequency; publish denominator and missingness.
3. Severity = user harm × persistence × recoverability; privacy, billing and lost-data defects force critical regardless of sample frequency.
4. Triangulate task outcomes, comments and screen recordings before making a design recommendation.
5. Log contradictory observations and accessibility issues, not only results that support the hypothesis.

## Accessibility / ethics
Use native labels, focus-visible outlines, keyboard-only walkthroughs, 200% zoom, readable contrasts, no forced disclosure of payment or sensitive details, no live account credentials, no real payments, participant right to stop, written retention policy and clear synthetic/live labeling.
