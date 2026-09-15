# UK Business Demography Analysis

## Real data, code and visual evidence

This project uses **Office for National Statistics Business Demography** data.

### Headline facts — Q2 2026
- **79,325** business creations
- **76,840** business closures
- Creations **+2.2%** YoY
- Closures **+2.0%** YoY
- Creations increased in **9 of 16** main industrial groups
- Closures increased in **11 of 16**

### Visual

<img src="https://raw.githubusercontent.com/kushagra8403/real-data-analyst-portfolio/main/03-uk-business-demography/visuals/published_metrics.svg" alt="ONS business demography published metrics" width="900">

### Open the actual project files
- [Real-data evidence table](./data/featured_metrics.csv)
- [Analytical output](./output/summary_metrics.csv)
- [Python analysis](./src/analyze.py)
- [Data download script](./src/download_data.py)
- [Output/visual builder](./src/build_outputs.py)
- [SQL analysis](./sql/analysis.sql)
- [Advanced SQL](./sql/advanced_analysis.sql)
- [Dashboard visual](./visuals/dashboard.svg)
- [Published-metrics visual](./visuals/published_metrics.svg)

### Source
[ONS — Business demography, quarterly UK](https://www.ons.gov.uk/businessindustryandtrade/business/activitysizeandlocation/datasets/businessdemographyquarterlyexperimentalstatisticsuk)

### Reproduce
```bash
pip install -r requirements.txt
python src/download_data.py
python src/analyze.py
python src/build_outputs.py
```
