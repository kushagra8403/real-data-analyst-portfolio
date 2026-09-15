import pandas as pd
from pathlib import Path
p=Path(__file__).parents[1]/"data/analysis_ready.csv"
df=pd.read_csv(p)
print(df.to_string(index=False))
print("\nOfficial source:",df.source.iloc[0])
