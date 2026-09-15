from pathlib import Path
import pandas as pd
import matplotlib.pyplot as plt
ROOT=Path(__file__).parents[1]
df=pd.read_csv(ROOT/'data/featured_metrics.csv')
df[['period','metric','value']].to_csv(ROOT/'output/summary_metrics.csv',index=False)
fig,ax=plt.subplots(figsize=(10,5.5)); ax.barh(df['metric'],df['value']); ax.set_title('UK House Prices — published metrics'); ax.grid(axis='x',alpha=.25)
for y,v in enumerate(df['value']): ax.text(v,y,f' {v:,.1f}' if isinstance(v,float) and not v.is_integer() else f' {v:,.0f}',va='center')
fig.tight_layout(); fig.savefig(ROOT/'visuals/published_metrics.png',dpi=160); plt.close(fig)
print(df.to_string(index=False))
