import pandas as pd
from pathlib import Path
p=Path(__file__).parents[1]
df=pd.read_csv(p/"data/uk_hpi.csv")
print("Rows:",len(df)); print(df.head())
print("\nColumns:",list(df.columns))
