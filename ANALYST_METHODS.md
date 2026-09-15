# Analyst Methods Demonstrated

This repository is designed to show an end-to-end analyst workflow on genuine UK public data.

## Workflow
1. Identify the official publisher and document the source.
2. Download the published data reproducibly.
3. Inspect schema, missing values, duplicates and categorical values.
4. Build analysis-ready tables without hiding the transformation logic.
5. Use SQL for repeatable aggregation, segmentation and ranking.
6. Use Python/pandas for validation, transformation and exploratory analysis.
7. Separate descriptive facts from interpretation.
8. Present the result through dashboard-ready KPIs and visuals.

## SQL techniques
- GROUP BY and conditional aggregation
- CTEs
- RANK and ROW_NUMBER
- LAG for period comparisons
- Rolling/cumulative calculations where supported by the source
- Segment-level scorecards

## Data-quality principles
- Prefer official publisher data over scraped summaries.
- Keep source URLs and release dates visible.
- Do not commit large raw files unnecessarily.
- Do not turn a descriptive correlation into a causal claim.
- Preserve the statistical definition of published measures such as indexes, rates and experimental estimates.
