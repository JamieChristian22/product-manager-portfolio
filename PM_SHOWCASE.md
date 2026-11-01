# Product management interactive showcase

[Open the interactive showcase](showcase/index.html) (download the repository and open locally, or serve using a static host).

This is an educational, synthetic scenario tool, **not** evidence of a live product launch. Adjust the control and treatment conversion counts to explore conversion rates and relative lift. The tool deliberately does not claim statistical significance. Validate randomization, sample size, uncertainty, and guardrails before making a real launch decision.

## Decision workflow

1. **Discover:** Define the target customer, problem, evidence and alternatives.
2. **Prioritize:** Use transparent RICE assumptions; do not confuse a ranking with strategy.
3. **Experiment:** Pre-register hypothesis, unit of randomization, primary metric, guardrails, minimum detectable effect, and duration.
4. **Decide:** Check instrumentation, sample-ratio mismatch, uncertainty, practical impact and adverse guardrails.
5. **Roadmap:** Organize outcomes in Now / Next / Later; list dependencies and exit criteria.

## Metric definitions

| KPI | Numerator | Denominator | Notes |
| --- | --- | --- | --- |
| Purchase conversion | Eligible sessions with a purchase | Eligible sessions | Session-level; use consistent eligibility and attribution window |
| Cohort retention | Returning cohort users | Users in starting cohort | Fix observation window and qualifying activity |
| Relative lift | Treatment rate minus control rate | Control rate | Undefined for zero control baseline |

Run checks: `python -m unittest discover -s tests -v`.

## Release criteria

No decision to ship solely on positive lift. Require trustworthy assignment and tracking, appropriate sample-size planning, an uncertainty analysis, healthy guardrails, and an explicit owner for rollback.
