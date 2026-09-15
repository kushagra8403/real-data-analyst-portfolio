import requests
from pathlib import Path
URL="https://www.ons.gov.uk/file?uri=%2Fbusinessindustryandtrade%2Fbusiness%2Factivitysizeandlocation%2Fdatasets%2Fbusinessdemographyquarterlyexperimentalstatisticsuk%2Fcurrent%2Fbusinessdemographyquarterly.xlsx"
out=Path(__file__).parents[1]/"data/business_demography.xlsx"; out.parent.mkdir(exist_ok=True)
r=requests.get(URL,timeout=60); r.raise_for_status(); out.write_bytes(r.content)
print(out)
