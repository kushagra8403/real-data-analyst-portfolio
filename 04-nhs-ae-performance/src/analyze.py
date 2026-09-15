import pandas as pd
from pathlib import Path
p=Path(__file__).parents[1]
df=pd.read_csv(p/"data/ae_august_2026.csv")
print("Rows:",len(df)); print("Columns:",list(df.columns))
print(df.head())
