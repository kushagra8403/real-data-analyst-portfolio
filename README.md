# Real-World UK Data Analyst Portfolio

Six portfolio projects using **genuine UK public-sector datasets** from DfT, HM Land Registry, ONS, NHS England and DESNZ.

> **Portfolio structure:** Repository 1 contains reproducible synthetic business datasets. This repository deliberately uses real published UK data.

| # | Project | Real source | Main analytical skills |
|---|---|---|---|
| 01 | Road Safety STATS19 | Department for Transport | Data quality, segmentation, risk analysis, SQL |
| 02 | UK House Prices | HM Land Registry | Time series, regional analysis, trend comparison |
| 03 | Business Demography | ONS | Cohorts, birth/death rates, survival analysis |
| 04 | NHS A&E Performance | NHS England | KPI analysis, provider comparison, trend analysis |
| 05 | Electricity & Renewables | DESNZ | Time series, mix analysis, growth and share metrics |
| 06 | Retail Sales | ONS | Retail KPIs, YoY/MoM trends, online-channel analysis |

## What each project demonstrates

- **Source traceability:** official publisher and source page documented in every project.
- **Reproducibility:** download scripts retrieve the published source rather than hiding a manually prepared dataset.
- **Data preparation:** source data is documented before analysis.
- **SQL:** aggregation, segmentation, CTEs, window functions, rankings and period-over-period analysis.
- **Python:** pandas-based cleaning, validation, transformation and exploratory analysis.
- **Business communication:** a clear question, KPI selection, findings and dashboard specification.
- **Visual evidence:** each project has an SVG dashboard preview using figures from the published source.

## Analyst workflow

1. Identify the official publisher and document the source.
2. Download the published data reproducibly.
3. Inspect schema, missing values, duplicates and categorical values.
4. Build analysis-ready tables without hiding the transformation logic.
5. Use SQL for repeatable aggregation, segmentation and ranking.
6. Use Python for validation, transformation and exploratory analysis.
7. Separate descriptive facts from interpretation.
8. Present the result through dashboard-ready KPIs and visuals.

## Important data principle

Large raw publisher files are intentionally **not duplicated into Git**. The repository contains the code, documentation and source references required to retrieve them. This keeps the portfolio lightweight and makes data provenance clear.

## Recommended recruiter path

Start with **01 Road Safety** for data-quality and segmentation work, then **02 House Prices** for time-series/regional analysis, and **04 NHS A&E** for KPI reporting. Together they demonstrate different analyst workflows rather than six versions of the same dashboard.

See [`ANALYST_METHODS.md`](./ANALYST_METHODS.md) for the common methodology used across the portfolio.
