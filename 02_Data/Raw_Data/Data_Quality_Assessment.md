# Data Quality Assessment

## Objective

A data quality assessment was performed before analysis to evaluate the completeness, consistency, and reliability of the dataset. The objective was to identify potential issues that could affect business insights and ensure the data was suitable for SQL analysis and Power BI reporting.

---

## Data Quality Summary

| Assessment | Status | Observation |
|------------|--------|-------------|
| Missing Values | ✅ No | No missing values were identified. |
| Duplicate Records | ✅ No | No duplicate customer journey records were detected. |
| Data Types | ✅ Valid | All columns were converted to appropriate data types before analysis. |
| Data Consistency | ✅ Good | Campaign names, touchpoints, and conversion metrics were consistently formatted. |
| Invalid Records | ✅ None | No corrupted or invalid records were identified. |
| Outliers | ⚠️ Reviewed | Revenue values were reviewed and retained as valid business observations. |

---

## Data Cleaning Activities

The following preprocessing steps were performed before analysis:

- Verified column names and data types.
- Checked for missing and duplicate records.
- Validated numerical columns for analysis.
- Standardised date formatting.
- Reviewed revenue and conversion metrics for consistency.
- Confirmed categorical variables were suitable for reporting.

---

## Result

The dataset passed all quality validation checks and was considered suitable for SQL analysis, Power BI dashboard development, and business intelligence reporting.
