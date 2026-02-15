"""Portfolio-ready analysis script.
Reads CSV in ./CSV/ and prints executive KPI summary.
"""
import pandas as pd

def pct(a, b):
    return (a / b) * 100 if b else 0.0

df = pd.read_csv("CSV/orders_sample.csv")
score = df.groupby("seller_id").agg(
    avg_rating=("rating","mean"),
    return_rate=("is_return","mean"),
    avg_fulfillment_days=("fulfillment_days","mean"),
).reset_index()
score["quality_score"] = 0.6*score.avg_rating + 0.2*(1-score.return_rate) + 0.2*(1/(score.avg_fulfillment_days.replace(0,1)))
print(score.sort_values("quality_score", ascending=False).head(10))
