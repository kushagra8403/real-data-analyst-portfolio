import pandas as pd
from pathlib import Path
p=Path(__file__).parents[1]
csv=p/"data/retail_sales.csv"
if not csv.exists():
    raise SystemExit("Place the latest ONS DRSI CSV at data/retail_sales.csv. The official source page is saved by download_data.py.")
df=pd.read_csv(csv)
print("Rows:",len(df)); print("Columns:",list(df.columns)); print(df.tail())
