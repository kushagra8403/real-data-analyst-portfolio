# Real-World UK Data Analyst Portfolio

Six portfolio projects using **genuine UK public-sector datasets** from DfT, HM Land Registry, ONS, NHS England and DESNZ.

> **Two-repository portfolio:** this repository uses genuine UK public-sector data. See also the [Business Analytics Portfolio](https://github.com/kushagra8403/sales-data-analysis-excel) built around reproducible synthetic business datasets.

## Real-data evidence

The repository contains committed analysis-ready evidence tables, executable Python/SQL analysis and SVG visuals using published figures. Full publisher datasets are retrieved through the documented source/download scripts rather than duplicated into Git.

![Road Safety published metrics](./01-road-safety-stats19/visuals/published_metrics.svg)

![Retail Sales published metrics](./06-uk-retail-sales/visuals/published_metrics.svg)

## What is actually in the repository

This is not just a collection of project summaries. Each project contains:

- `data/` — analysis-ready evidence tables with publisher-backed metrics
- `src/download_data.py` — reproducible retrieval route for the underlying publisher dataset
- `src/analyze.py` — analysis/validation code
- `sql/analysis.sql` and `sql/advanced_analysis.sql` — repeatable SQL analysis
- `output/summary_metrics.csv` — analytical output table
- `visuals/published_metrics.svg` — visible visual using real published values
- `visuals/dashboard.svg` — dashboard-style project preview
- `README.md` — business question, source, methodology and reproduction steps

The large raw publisher files are **not** committed because several are tens of MB or distributed as Excel/CSV releases. The repository therefore keeps a lightweight evidence layer while documenting how to retrieve the full source dataset.

| # | Project | Real source | Main analytical skills |
|---|---|---|---|
| 01 | Road Safety STATS19 | Department for Transport | Data quality, segmentation, risk analysis, SQL |
| 02 | UK House Prices | HM Land Registry | Time series, regional analysis, trend comparison |
| 03 | Business Demography | ONS | Cohorts, birth/death rates, survival analysis |
| 04 | NHS A&E Performance | NHS England | KPI analysis, provider comparison, trend analysis |
| 05 | Electricity & Renewables | DESNZ | Time series, mix analysis, growth and share metrics |
| 06 | Retail Sales | ONS | Retail KPIs, YoY/MoM trends, online-channel analysis |

## Real published evidence

The committed evidence tables use published figures from the official sources: 2025 DfT road-safety figures, June 2026 HM Land Registry house prices, Q2 2026 ONS business demography, summer 2026 NHS A&E figures, 2025 DESNZ renewable generation and July 2026 ONS retail metrics.

## Analyst workflow

1. Identify the official publisher and document the source.
2. Retrieve the published data reproducibly.
3. Inspect schema, missing values, duplicates and categorical values.
4. Build analysis-ready tables without hiding transformation logic.
5. Use SQL for repeatable aggregation, segmentation and ranking.
6. Use Python for validation, transformation and exploratory analysis.
7. Separate descriptive facts from interpretation.
8. Present the result through dashboard-ready KPIs and visuals.

## Run an individual project

```bash
pip install -r requirements.txt
python src/download_data.py
python src/analyze.py
```

The download scripts provide the route to the full publisher datasets, while the committed evidence tables make real published metrics inspectable directly on GitHub.

## Data principle

Large raw publisher files are intentionally **not duplicated into Git**. This avoids bloating the repository while preserving source traceability and reproducibility. The committed evidence tables make actual real-data evidence visible directly in GitHub rather than leaving the repository as documentation only.

See [`ANALYST_METHODS.md`](./ANALYST_METHODS.md) for the common methodology.
