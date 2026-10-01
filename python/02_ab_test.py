import pandas as pd
from scipy.stats import proportions_ztest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
df = pd.read_csv(ROOT/"data/adtech_events.csv")

g = df.groupby("experiment_group").agg(
    impressions=("impressions","sum"), clicks=("clicks","sum"),
    conversions=("conversions","sum"), revenue=("revenue","sum"))
g["ctr"] = g.clicks/g.impressions
g["conversion_rate"] = g.conversions/g.clicks
print(g)

t, c = g.loc["Treatment"], g.loc["Control"]
stat, pvalue = proportions_ztest([t.conversions,c.conversions],[t.clicks,c.clicks])
print(f"z={stat:.4f}, p={pvalue:.6f}")
