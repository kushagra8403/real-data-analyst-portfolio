import requests
from pathlib import Path
URL="https://publicdata.landregistry.gov.uk/market-trend-data/house-price-index-data/UK-HPI-full-file-2026-05.csv"
out=Path(__file__).parents[1]/"data/uk_hpi.csv"; out.parent.mkdir(exist_ok=True)
r=requests.get(URL,timeout=60); r.raise_for_status(); out.write_bytes(r.content)
print(out)
