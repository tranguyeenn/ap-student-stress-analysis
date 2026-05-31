# Data Dictionary — Case Study #1

Dataset: `data/cleaned/student_stress.csv`

This file describes the cleaned, anonymized participant-level export from the original AP Research study. Results describe **participants at the studied school in this sample only**.

## Row grain

One row per survey participant who completed the modified Perceived Stress Scale (PSS) and was included in the final analysis sample.

## Columns

| Column | Type | Description |
|--------|------|-------------|
| `participant_id` | integer | Anonymized participant identifier. Non-consecutive IDs reflect exclusions from the original study sample. |
| `course_type` | string | AP course grouping used in the original study: `STEM` or `Humanities`. |
| `pss_score` | float | Total score on the modified PSS for that participant. Higher values indicate higher perceived stress in this instrument. |
| `source` | string | Data origin label from the original study (`My Study`). Retained for traceability. |
| `stress_level` | string | Categorical stress band assigned in the original study: `Low`, `Moderate`, or `High`. Thresholds were defined in the AP Research paper; they are not re-derived in this repository. |
| `cohort` | string | Student cohort label from the original study (`AP`). |

## Valid values

- **course_type:** `STEM`, `Humanities`
- **stress_level:** `Low`, `Moderate`, `High`
- **cohort:** `AP`

## Sample size (this export)

- **Total:** 51 participants
- **STEM:** 12
- **Humanities:** 39

## Data provenance and limitations

- Raw survey responses and the original survey instrument are **not** included in this repository.
- This CSV is a cleaned export suitable for SQL, Python, and BI tools.
- The modified PSS was used in the original study but was **not formally revalidated** in this portfolio project.
- Do not treat this file as representative of all AP students or all high school students.

## Related documentation

- [Methodology](methodology.md)
- [Project context](project_context.md)
- Original AP Research paper: `paper/Perceived Stress In AP Students_ A Comparative Study Of STEM and Humanities.pdf`
