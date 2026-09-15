# UK Retail Sales Analysis

## Real data, code and visual evidence

This project uses the **ONS Retail Sales Index**.

### Headline facts — July 2026
- Retail sales volumes **−0.5% MoM**
- Volumes **+1.6% YoY**
- Three-month change: **+1.1%**
- Online spending values **+6.5% YoY**
- Online sales share: **28.3%**

### Visual

<img src="https://raw.githubusercontent.com/kushagra8403/real-data-analyst-portfolio/main/06-uk-retail-sales/visuals/published_metrics.svg" alt="ONS retail sales published metrics" width="900">

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
[ONS — Retail Sales](https://www.ons.gov.uk/businessindustryandtrade/retailindustry/datasets/retailsales)

### Reproduce
```bash
pip install -r requirements.txt
python src/download_data.py
python src/analyze.py
python src/build_outputs.py
```
