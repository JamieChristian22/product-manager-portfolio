"""Portfolio-ready analysis script.
Reads CSV in ./CSV/ and prints executive KPI summary.
"""
import pandas as pd

def pct(a, b):
    return (a / b) * 100 if b else 0.0

df = pd.read_csv("CSV/journey_sample.csv")
df["hours_to_purchase"] = (pd.to_datetime(df.purchase_ts) - pd.to_datetime(df.signup_ts)).dt.total_seconds()/3600
print("Median hours to first purchase:", round(df.hours_to_purchase.median(), 2))
print("Avg hours to first purchase:", round(df.hours_to_purchase.mean(), 2))
