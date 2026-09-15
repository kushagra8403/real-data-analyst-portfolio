import pandas as pd
from pathlib import Path
p=Path(__file__).parents[1]
df=pd.read_csv(p/"data/collisions_2025.csv", low_memory=False)
print("Rows:", len(df))
print("Columns:", len(df.columns))
for c in ["accident_severity","speed_limit","urban_or_rural_area","road_type","month","day_of_week"]:
    if c in df.columns:
        print("\n", c); print(df[c].value_counts(dropna=False).head(10))
if "accident_severity" in df:
    print("\nSeverity counts:")
    print(df["accident_severity"].value_counts())
