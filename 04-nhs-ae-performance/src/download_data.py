import requests
from pathlib import Path
URL="https://www.england.nhs.uk/statistics/wp-content/uploads/sites/2/2026/09/August-2026-CSV-De2k3n.csv"
out=Path(__file__).parents[1]/"data/ae_august_2026.csv"; out.parent.mkdir(exist_ok=True)
r=requests.get(URL,timeout=60); r.raise_for_status(); out.write_bytes(r.content)
print(out)
