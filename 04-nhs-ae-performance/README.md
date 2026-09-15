# NHS A&E Performance Analysis

## Real data, code and visual evidence

This project uses **NHS England A&E Attendances and Emergency Admissions** data.

### Headline facts — June to August 2026
- **7,268,445** A&E attendances
- **5,462,182** within-four-hours activity
- **2,455,833** ambulance call-outs
- Attendances were more than **240,000 higher** than the comparable 2025 period

### Visual

<img src="https://raw.githubusercontent.com/kushagra8403/real-data-analyst-portfolio/main/04-nhs-ae-performance/visuals/published_metrics.svg" alt="NHS A&E published metrics" width="900">

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
[NHS England — A&E Attendances and Emergency Admissions](https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/)

### Reproduce
```bash
pip install -r requirements.txt
python src/download_data.py
python src/analyze.py
python src/build_outputs.py
```
