# UK Electricity & Renewables Analysis

## Real data, code and visual evidence

This project uses **DESNZ Energy Trends / UK electricity and renewables** data.

### Headline facts — 2025
- Renewable generation: **152.5 TWh**
- Renewable share of generation: **52.5%**
- Wind generation: **87.1 TWh**
- Solar generation: **20.0 TWh**
- Low-carbon share of Major Power Producer generation: **64.8%**

### Visual

<img src="https://raw.githubusercontent.com/kushagra8403/real-data-analyst-portfolio/main/05-uk-electricity-generation/visuals/published_metrics.svg" alt="DESNZ electricity and renewables published metrics" width="900">

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
[DESNZ — Energy Trends, electricity section](https://www.gov.uk/government/statistics/electricity-section-5-energy-trends)

### Reproduce
```bash
pip install -r requirements.txt
python src/download_data.py
python src/analyze.py
python src/build_outputs.py
```
