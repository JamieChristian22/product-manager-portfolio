"""Portfolio-ready analysis script.
Reads CSV in ./CSV/ and prints executive KPI summary.
"""
import pandas as pd

def pct(a, b):
    return (a / b) * 100 if b else 0.0

df = pd.read_csv("CSV/pricing_sessions_sample.csv")
summary = df.groupby("price_bucket").agg(
    sessions=("session_id","nunique"),
    purchases=("purchased","sum")
).reset_index()
summary["conversion_rate"] = summary["purchases"]/summary["sessions"]
print(summary)
