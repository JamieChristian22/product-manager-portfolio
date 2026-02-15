"""Portfolio-ready analysis script.
Reads CSV in ./CSV/ and prints executive KPI summary.
"""
import pandas as pd

def pct(a, b):
    return (a / b) * 100 if b else 0.0

df = pd.read_csv("CSV/weekly_cohorts_sample.csv")
week0 = df[df.week_n==0]["active_users"].sum()
week4 = df[df.week_n==4]["active_users"].sum()
print("Week0 users:", week0)
print("Week4 active:", week4)
print("Week4 retention:", round(pct(week4, week0), 2), "%")
