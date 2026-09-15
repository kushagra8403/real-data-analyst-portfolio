import requests
from pathlib import Path
URL="https://assets.publishing.service.gov.uk/media/6a6a0f222607fd81ff068812/ET_5.1_JUL_26.xlsx"
out=Path(__file__).parents[1]/"data/et_5_1.xlsx"; out.parent.mkdir(exist_ok=True)
r=requests.get(URL,timeout=60); r.raise_for_status(); out.write_bytes(r.content)
print(out)
