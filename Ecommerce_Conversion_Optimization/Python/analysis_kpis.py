"""Portfolio-ready analysis script.
Reads CSV in ./CSV/ and prints executive KPI summary.
"""
import pandas as pd

def pct(a, b):
    return (a / b) * 100 if b else 0.0

df = pd.read_csv("CSV/events_sample.csv")
sessions = df[df.event_name=="session_start"]["session_id"].nunique()
purchases = df[df.event_name=="purchase"]["session_id"].nunique()
atc = df[df.event_name=="add_to_cart"]["session_id"].nunique()
checkout = df[df.event_name=="checkout_start"]["session_id"].nunique()

print("Sessions:", sessions)
print("Add-to-cart rate:", round(pct(atc, sessions), 2), "%")
print("Checkout start rate:", round(pct(checkout, sessions), 2), "%")
print("Purchase rate:", round(pct(purchases, sessions), 2), "%")
