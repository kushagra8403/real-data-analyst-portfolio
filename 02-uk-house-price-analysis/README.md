# UK House Price Analysis

## Real data, code and visual evidence

This project uses the **HM Land Registry UK House Price Index**.

### Headline facts — June 2026
- UK average property price: **£272,000**
- Annual change: **+2.0%**
- Monthly change: **+0.1%**
- England average: **£293,000**
- North West annual growth: **+4.7%**
- London annual change: **−2.5%**

### Visual

<img src="https://raw.githubusercontent.com/kushagra8403/real-data-analyst-portfolio/main/02-uk-house-price-analysis/visuals/published_metrics.svg" alt="UK house price published metrics" width="900">

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
[HM Land Registry — UK House Price Index](https://www.gov.uk/government/statistics/uk-house-price-index-for-june-2026)

### Reproduce
```bash
pip install -r requirements.txt
python src/download_data.py
python src/analyze.py
python src/build_outputs.py
```
