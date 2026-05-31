# Methodology — Case Study #1

## Research question

In the original AP Research study (Case Study #1), the author asked whether AP STEM and AP Humanities students **at the studied school** differed in perceived stress levels, measured with a modified Perceived Stress Scale (PSS).

This portfolio project re-analyzes the **cleaned participant export** using descriptive and inferential statistics. Findings apply to **this sample only**.

## Instrument: modified PSS

The original study used a modified version of the Perceived Stress Scale (PSS), adapted for the AP student context. The modification was a research design choice in the original paper.

**Important:** The modified PSS was **not formally revalidated** in this repository. Psychometric properties (reliability, validity, factor structure) should be treated as assumptions carried forward from the original study, not re-established here.

## Study design

- **Design type:** Non-experimental, cross-sectional, observational
- **Sampling:** Voluntary response from students at a single high school
- **Comparison groups:** AP STEM vs AP Humanities (`course_type`)
- **Primary outcome:** `pss_score` (continuous)
- **Secondary field:** `stress_level` (categorical bands from the original study)

## Analytical workflow in this repository

1. **Data loading** — Read `data/cleaned/student_stress.csv`; validate types and drop incomplete rows.
2. **Exploratory data analysis** — Sample sizes, distributions, missing values.
3. **Descriptive statistics** — Mean, SD, min, max, and counts by `course_type`.
4. **Inferential analysis**
   - **Welch two-sample t-test** comparing mean `pss_score` between STEM and Humanities (unequal group sizes and variances in this sample).
   - **Cohen's d** (pooled-SD formula) as an effect-size estimate.
   - **95% confidence interval** for the mean difference (STEM minus Humanities), using Welch-Satterthwaite degrees of freedom.
5. **Visualizations** — Histogram, boxplot, and mean stress by group saved to `visuals/`.
6. **SQL mirror** — Same aggregations in `sql/queries.sql` for portfolio SQL demonstration.

## Interpretation guidelines

- Use language such as **"in this sample"** and **"at the studied school."**
- A non-significant p-value does not prove groups are equal; it may reflect limited power (especially the small STEM subgroup, n = 12).
- Effect sizes should be reported alongside p-values.
- Do **not** generalize results to all AP students nationally.

## Limitations

| Limitation | Implication |
|------------|-------------|
| Single-school sample | Findings may not transfer to other schools or regions. |
| Voluntary response | Participants may differ systematically from non-respondents. |
| Self-report bias | PSS scores reflect perceived stress, not objective workload or physiology. |
| Cleaned-only data | Raw responses unavailable; full reproduction from source surveys is not possible. |
| Modified PSS not revalidated | Score interpretation depends on original instrument assumptions. |
| Non-experimental design | Group differences cannot be attributed to causation (e.g., course type vs. selection effects). |
| Unequal group sizes | STEM n = 12 vs. Humanities n = 39 limits precision for the STEM estimate. |

## Reference

Full study design, survey wording, and original statistical reporting:

`paper/Perceived Stress In AP Students_ A Comparative Study Of STEM and Humanities.pdf`
