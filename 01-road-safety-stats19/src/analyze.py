import pandas as pd
from pathlib import Path
ROOT=Path(__file__).parents[1]
df=pd.read_csv(ROOT/"data/analysis_ready.csv")
print("\nRoad Safety STATS19 — 2025")
print(df.to_string(index=False))
print("\nSource: https://www.gov.uk/government/statistical-data-sets/road-safety-open-data")
