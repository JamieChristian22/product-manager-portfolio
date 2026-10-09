# 02 — Usability findings, triage and iteration (SYNTHETIC EXAMPLE)

> **NOT REAL RESEARCH.** This is an illustrative observation set generated to demonstrate how a PM would analyze sessions. Do not claim these sessions occurred.

## Pilot question

Can sellers prioritize the most impactful operational issue?

## Example observation matrix

| Participant | Segment | Task | Outcome | Seconds | SEQ (1–7) | Issue | Severity |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SYN-01 | new seller | T1 | with_help | 75 | 3 | DISCOVERY | High |
| SYN-02 | high-volume seller | T2 | yes | 103 | 5 | COPY | Medium |
| SYN-03 | operations manager | T3 | yes | 126 | 6 | NAV | Low |
| SYN-04 | new seller | T1 | no | 145 | 2 | ERROR | Medium |
| SYN-05 | high-volume seller | T2 | yes | 164 | 4 | DISCOVERY | High |
| SYN-06 | operations manager | T3 | yes | 193 | 6 | NAV | Low |
| SYN-07 | new seller | T1 | yes | 208 | 5 | COPY | Medium |
| SYN-08 | high-volume seller | T2 | with_help | 233 | 4 | ERROR | Low |


**Interpretation warning:** This table has one illustrative task observation per synthetic participant; it does not measure complete per-participant success across all three tasks. Use the full tracking form when running a real study.

## Thematic insight and design decisions

| Theme | Behavioral signal to look for | Hypothesized root cause | Action / owner | Validation |
|---|---|---|---|---|
| DISCOVERY | User scans repeatedly before finding entry point | weak information scent | improve entry label and hierarchy / UX | unassisted path finding |
| COPY | User misinterprets instruction or status | jargon or hidden business rules | contextual microcopy / Content | comprehension probe |
| NAV | User returns/backtracks across screens | unclear mental model | simplify step order / UX+Eng | median time and backtracking |
| ERROR | User cannot recover after unexpected state | incomplete error handling | inline guidance and preserved inputs / Eng | recovery success |

## Severity-based triage rubric

- **4 Critical:** impossible to complete a mandatory core action, or introduces safety/privacy/payment defects; **no-go**.
- **3 High:** recurring severe task failure; fix prior to expansion.
- **2 Medium:** meaningful friction with viable workaround; prioritize via incidence/impact.
- **1 Low:** cosmetic or isolated non-blocking issue; backlog.

## Iteration plan

**Iteration A:** Fix the highest-severity core path and error recovery. Acceptance: clear destination, plain language and no data loss. **Iteration B:** Refine onboarding/help copy and navigation labels. **Iteration C:** Run an unbiased re-test on updated prototype with counterbalanced task order, record observed outcomes, and document what changed.

## Research-to-roadmap decision record — illustrative

- **Proposed decision:** Defer broad launch until core-task blockers are addressed and retested.
- **Why:** Small sample may reveal important failure modes but cannot substantiate business uplift.
- **Tradeoff:** A narrower, comprehensible MVP over a wider set of features.
- **Evidence needed to change decision:** Recorded usability success metrics from real participants, functional QA and instrumented pilot logs.

## Illustrative acceptance criteria

1. All participants can recover from a failed input without losing previous work.
2. Accessibility checks cover keyboard reachability, focus order and understandable control names.
3. Analytics event `seller_alert_actioned` fires once per qualified user action, after event QA.
4. Product and engineering sign off on known issues, risk register and rollback conditions.
