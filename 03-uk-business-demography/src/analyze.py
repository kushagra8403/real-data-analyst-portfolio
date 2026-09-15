import pandas as pd
from pathlib import Path
p=Path(__file__).parents[1]
x=p/"data/business_demography.xlsx"
xls=pd.ExcelFile(x)
print("Sheets:",xls.sheet_names)
for s in xls.sheet_names[:4]:
    df=pd.read_excel(x,sheet_name=s)
    print("\n",s,df.shape); print(df.head(3))
