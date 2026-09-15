import pandas as pd
from pathlib import Path
p=Path(__file__).parents[1]
x=p/"data/et_5_1.xlsx"
xls=pd.ExcelFile(x)
print("Sheets:",xls.sheet_names)
for s in xls.sheet_names[:3]:
    df=pd.read_excel(x,sheet_name=s)
    print("\n",s,df.shape); print(df.head(5))
