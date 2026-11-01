"""Dependency-free product KPI calculations. Synthetic portfolio exercises only."""
def rate(numerator, denominator):
    if denominator <= 0 or numerator < 0 or numerator > denominator:
        raise ValueError("Expected 0 <= numerator <= denominator and denominator > 0")
    return numerator / denominator

def conversion_rate(purchases, eligible_sessions):
    return rate(purchases, eligible_sessions)

def retention_rate(returning_users, cohort_size):
    return rate(returning_users, cohort_size)

def relative_lift(treatment, control):
    if control <= 0:
        raise ValueError("Control baseline must be positive")
    return (treatment - control) / control

def rice_score(reach, impact, confidence, effort):
    if reach < 0 or impact < 0 or not 0 <= confidence <= 1 or effort <= 0:
        raise ValueError("Invalid RICE inputs")
    return reach * impact * confidence / effort
