# Road Safety Analytics — STATS19

## Real data, code and visual evidence

This project uses the **Department for Transport STATS19** road-safety dataset.

### Headline facts
- **1,538 fatalities** in 2025
- **29,918 killed or seriously injured (KSI) casualties**
- **127,883 casualties** of all severities
- Fatalities **4% lower** than 2024; KSI casualties **4% higher**

### Visual

<img src="https://raw.githubusercontent.com/kushagra8403/real-data-analyst-portfolio/main/01-road-safety-stats19/visuals/published_metrics.svg" alt="DfT STATS19 published metrics dashboard" width="900">

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
[Department for Transport — Road Safety Open Data](https://www.gov.uk/government/statistical-data-sets/road-safety-open-data)

### Reproduce
```bash
pip install -r requirements.txt
python src/download_data.py
python src/analyze.py
python src/build_outputs.py
```
