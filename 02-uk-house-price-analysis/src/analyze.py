import pandas as pd
from pathlib import Path
ROOT=Path(__file__).parents[1]
df=pd.read_csv(ROOT/"data/analysis_ready.csv")
print("\nUK House Prices — June 2026")
print(df.to_string(index=False))
print("\nSource: https://www.gov.uk/government/statistics/uk-house-price-index-for-june-2026")
