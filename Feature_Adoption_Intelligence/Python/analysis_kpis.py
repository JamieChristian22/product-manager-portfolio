"""Portfolio-ready analysis script.
Reads CSV in ./CSV/ and prints executive KPI summary.
"""
import pandas as pd

def pct(a, b):
    return (a / b) * 100 if b else 0.0

df = pd.read_csv("CSV/feature_usage_sample.csv")
active = df[df.event_name.isin(["login","session_start"])].user_id.nunique()
feature = df[df.event_name=="feature_used"].user_id.nunique()
print("Active users:", active)
print("Feature users:", feature)
print("Adoption rate:", round(pct(feature, active), 2), "%")
