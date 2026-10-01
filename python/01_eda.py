import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
df = pd.read_csv(ROOT/"data/adtech_events.csv", parse_dates=["date"])

def kpis(x):
    imp, clk, conv, rev = x.impressions.sum(), x.clicks.sum(), x.conversions.sum(), x.revenue.sum()
    return pd.Series({
        "impressions": imp, "clicks": clk, "ctr": clk/imp if imp else 0,
        "conversions": conv, "conversion_rate": conv/clk if clk else 0,
        "revenue": rev, "rpm": 1000*rev/imp if imp else 0
    })

print(kpis(df))
print("\nCountry performance\n", df.groupby("country").apply(kpis, include_groups=False).sort_values("revenue", ascending=False))

out = ROOT/"images"; out.mkdir(exist_ok=True)
monthly = df.groupby(df.date.dt.to_period("M")).apply(kpis, include_groups=False)
monthly.revenue.plot(title="Monthly Revenue", figsize=(9,5))
plt.tight_layout(); plt.savefig(out/"monthly_revenue.png", dpi=160); plt.close()

placement = df.groupby("placement").apply(kpis, include_groups=False).sort_values("rpm", ascending=False)
placement.rpm.plot(kind="bar", title="RPM by Placement", figsize=(9,5))
plt.ylabel("RPM"); plt.tight_layout(); plt.savefig(out/"placement_rpm.png", dpi=160); plt.close()
