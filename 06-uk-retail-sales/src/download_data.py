import requests
from pathlib import Path
URL="https://www.ons.gov.uk/businessindustryandtrade/retailindustry/datasets/retailsales"
out=Path(__file__).parents[1]/"data/source_page.html"; out.parent.mkdir(exist_ok=True)
r=requests.get(URL,timeout=60); r.raise_for_status(); out.write_bytes(r.content)
print("Saved source page:",out)
print("The ONS page provides the current DRSI CSV/XLS downloads. Download the latest CSV from the page into data/retail_sales.csv before running analysis.")
