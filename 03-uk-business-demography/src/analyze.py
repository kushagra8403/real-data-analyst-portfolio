import pandas as pd
from pathlib import Path
df=pd.read_csv(Path(__file__).parents[1]/"data/analysis_ready.csv")
assert not df.empty and df.value.notna().all()
print(df.to_string(index=False))
