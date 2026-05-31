# Academic Stress Analytics

A data analytics portfolio project examining perceived academic stress among AP students. **Case Study #1** re-analyzes a cleaned export from an original AP Research paper comparing AP STEM and AP Humanities students at a single high school.

> **Scope note:** Findings describe **participants at the studied school in this sample only**. They should not be generalized to all AP students nationally.

## Project overview

This repository demonstrates an end-to-end analytics workflow:

- Cleaned participant-level data (`data/cleaned/`)
- Python notebooks for loading, EDA, descriptive stats, inferential tests, and charts
- SQL schema and queries for aggregations
- Documentation of methods, limitations, and data definitions

The original AP Research study is documented in:

`paper/Perceived Stress In AP Students_ A Comparative Study Of STEM and Humanities.pdf`

## Academic context (Case Study #1)

The original study investigated whether AP STEM and AP Humanities students differed in perceived stress, measured with a **modified Perceived Stress Scale (PSS)**. The design was:

- Non-experimental, cross-sectional survey
- Voluntary response at one high school
- Primary comparison: mean PSS scores between course categories
- Original analysis included a two-sample t-test and interpretation using stress psychology frameworks

This portfolio project reproduces and extends that analysis on the **cleaned dataset** using Python and SQL.

## Data access

| File | Description |
|------|-------------|
| `data/cleaned/student_stress.csv` | Analysis-ready, anonymized participant export (51 rows) |
| `docs/data_dictionary.md` | Column definitions and valid values |

Compatible with pandas, SQL databases, Power BI, and Tableau.

## Reproducibility limitation

**This project is not fully reproducible from raw survey responses.**

The original survey form and individual response records are no longer available. All analysis in this repository runs on a **cleaned, anonymized CSV** generated from the original AP Research study. You can replicate the notebooks and SQL queries on that file, but you cannot reconstruct the full data collection pipeline.

## Methodology summary

1. Load and validate `student_stress.csv`
2. Explore distributions and category counts
3. Compute descriptive statistics by `course_type` (STEM vs Humanities)
4. Run a **Welch two-sample t-test** (unequal n and variance in this sample)
5. Report **Cohen's d** and a **95% confidence interval** for the mean difference
6. Export histogram, boxplot, and mean-by-group charts to `visuals/`

See [docs/methodology.md](docs/methodology.md) for full detail. The modified PSS was used in the original study but was **not formally revalidated** in this repository.

## Key statistical result (this sample)

Using the cleaned export (STEM *n* = 12, Humanities *n* = 39):

| Group | Mean PSS | SD |
|-------|----------|-----|
| STEM | 23.42 | 8.47 |
| Humanities | 20.33 | 4.71 |

| Test | Result |
|------|--------|
| Mean difference (STEM − Humanities) | 3.09 |
| Welch *t* | 1.21 |
| *p*-value | 0.25 (not significant at α = 0.05) |
| Cohen's *d* | 0.53 |
| 95% CI for mean difference | −2.44 to 8.60 |

In this sample, STEM students reported somewhat higher mean perceived stress, but the difference was **not statistically significant** at the 0.05 level. The confidence interval is wide and includes zero, and the small STEM subgroup limits precision. Re-run `notebooks/04_inferential_analysis.ipynb` to reproduce these values.

## Repository structure

```
├── data/cleaned/          # Analysis-ready CSV
├── notebooks/             # Python analysis (run in order 01–05)
├── sql/                   # schema.sql, queries.sql
├── visuals/               # Chart outputs from notebooks
├── docs/                  # Data dictionary, methodology, context
├── paper/                 # Original AP Research paper (PDF)
├── README.md
└── requirements.txt
```

## Quick start

```bash
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
jupyter lab notebooks/
```

Run notebooks from `01_data_loading.ipynb` through `05_visualizations.ipynb`.

### SQL

```bash
# Example: SQLite
sqlite3 stress.db < sql/schema.sql
# Import CSV with your DB's bulk load tool, then:
sqlite3 stress.db < sql/queries.sql
```

## Limitations

- **Single-school sample** — results may not transfer to other schools
- **Voluntary response** — non-response bias possible
- **Self-report bias** — PSS reflects perceived stress, not objective measures
- **Cleaned-only data** — raw surveys unavailable
- **Modified PSS not revalidated** — psychometric assumptions from original study only
- **Non-experimental design** — no causal claims about course type and stress
- **Unequal group sizes** — STEM *n* = 12 limits inferential power for that group

## Future work

Planned extensions (not yet in this repository):

- Integrate **external student wellness datasets** for broader population comparisons
- Build interactive dashboards (e.g., Power BI) for exploratory views
- Add new case studies that clearly separate single-school findings from national benchmarks

External data would address the generalizability limits of Case Study #1 without overclaiming what this sample alone can show.

## Documentation

- [Data dictionary](docs/data_dictionary.md)
- [Methodology](docs/methodology.md)
- [Project context](docs/project_context.md)

## License

Add a license if you plan to publish this portfolio publicly.
