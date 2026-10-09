# 01 — Task-based usability research plan

**Initiative:** Simplified first-purchase checkout flow | **Research stage:** Discovery → formative evaluation → re-test | **Status:** Planned, not conducted.

## Decision to inform

Determine whether the proposed flow should ship in its current form, requires a targeted redesign, or should be deprioritized. This research explores: **Can a new shopper complete a purchase with confidence?**

## Background and hypotheses

- User/problem context: Users abandon their first checkout because of shipping uncertainty and form friction.
- Intended improvement: Earlier shipping transparency and fewer required fields will increase first-order completion.
- Competing explanation: Poor performance may reflect different intent, awareness or data quality—not only UI friction.
- Explicit exclusion: A handful of moderated sessions cannot estimate real-market conversion uplift.

## Participants & recruitment

- Proposed sample: **8 participants**, allocated **3 / 3 / 2** across segments: mobile guest, desktop first-time buyer, promotion-driven shopper.
- Recruit based on recent relevant behavior, device/accessibility needs and role. Exclude people who helped design the feature.
- Include at least 2 sessions using mobile experiences and at least 1 participant exercising keyboard navigation if appropriate.
- Record only pseudonymous session identifiers; ask before recording. Offer participant withdrawal.
- Screening prompts: “When did you last attempt this task?”, “Which device do you normally use?”, “What constraints affect your decision?”

## Session structure — 35 minutes

| Time | Activity | What to capture |
|---|---|---|
| 0–4 min | Consent, study explanation | recording opt-in, contextual notes |
| 4–8 min | Background, recent behavior | existing workflows, baseline confidence |
| 8–26 min | Three randomized tasks | task completion, elapsed time, misclicks, errors, quotes |
| 26–31 min | Post-task confidence and ease ratings | SEQ 1–7, participant rationale |
| 31–35 min | Overall feedback, debrief | unmet needs, improvement opportunities |

## Neutral tasks — do not coach navigation

1. Purchase a two-item cart using guest checkout
2. Locate shipping cost before payment
3. Recover from an invalid promo code without losing cart

For each task, define a start screen, objective completion criterion and 4-minute soft cap. If the person requests help, record `with_help` (not `success`). Use the same task set for baseline and proposed designs; counterbalance order when feasible.

## Moderator questions

Before: “How do you accomplish this today?” During: “What do you think this option does?” When stuck: “What would you try next?” After: “What made this step harder or easier?” Avoid steering toward the intended new feature.

## Scoring and thresholds (hypothetical pilot acceptance gates)

- Core task unassisted completion at least **7/8** for Task 1 and **6/8** for Tasks 2–3; these are practical qualitative gates, not inferential significance.
- No unresolved critical or high-severity usability blocker, particularly for accessible core journeys.
- Median task time on proposed design better than or comparable to baseline without masking blocked participants.
- Post-task Single Ease Question (1–7) median at least **5**, paired with observation rather than used in isolation.
- Document failures, workarounds and genuine disagreements separately.

## Synthesis method & traceability

1. Transfer participant-level observation (timestamp, task, behavior, error) into the study matrix.
2. Deduplicate recurring patterns but retain incidence (`n/N`) and affected segments.
3. Apply the severity rubric from `00_START_HERE/REUSABLE_MODERATOR_KIT.md`.
4. Link each observation to a proposed design or copy change and its owner.
5. Re-test altered critical flows with fresh sessions when possible. Never infer adoption from moderated behavior alone.

## Deliverables & responsibilities

PM owns hypotheses, decision memo and prioritization. UX researcher/design owns facilitation and synthesis. Analytics owns experiment/metric alignment. Engineering advises feasibility and accessibility remediation. Product/Support observers only attend under participant consent.

## Study limitations

Convenience sample, artificial tasks, limited coverage and prototype fidelity may constrain generalizability. Any finding below is simulated until real sessions occur.
