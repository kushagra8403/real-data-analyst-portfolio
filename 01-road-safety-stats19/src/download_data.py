import requests
from pathlib import Path
URL = "https://data.dft.gov.uk/road-accidents-safety-data/dft-road-casualty-statistics-collision-2025.csv"
out = Path(__file__).parents[1] / "data" / "collisions_2025.csv"
out.parent.mkdir(exist_ok=True)
r=requests.get(URL, timeout=60); r.raise_for_status()
out.write_bytes(r.content)
print(f"Downloaded {out}")
