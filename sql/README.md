# SQL — CP1 gap charter

The CP0 project selected the BigQuery CMS Medicare mirror. For CP1 we used the official [CMS FY2015 provider and service download](https://data.cms.gov/sites/default/files/2023-05/81895338-4c5c-4ad7-a490-8e5a9a972825/MUP_IHP_RY23_P03_V10_DY15_PRVSVC.CSV) and ran steps 2–3 locally in SQLite. We did not run or bill a BigQuery job, and equivalence between this CMS release and the BigQuery mirror was not verified.

## Step 1: Original BigQuery access check

[01_access_check.sql](01_access_check.sql) is the original sample for the selected mirror. Execution remains unverified. It is not used to compute the findings.

## Prepare the source

Import the CSV into a local scratch database. Project these fields into a table or view named `inpatient_2015`; trim text, treat empty fields as NULL, and parse the last two fields as integer and decimal respectively. Reject malformed numeric values instead of silently turning them into zero.

| CMS CSV column | Analysis column |
| --- | --- |
| Rndrng_Prvdr_CCN | provider_id |
| DRG_Cd | drg_code |
| Rndrng_Prvdr_State_Abrvtn | provider_state |
| Tot_Dschrgs | discharges |
| Avg_Submtd_Cvrd_Chrg | avg_covered_charge |

Keep the provider and DRG codes as text to preserve leading zeros. Download SHA-256: `af7283f10d7b215dcf09436a3571945845d1c1b28ccbef653768b5eea6cdacd6`. Do not add the CSV or database to the repo.

## Step 2: Check quality and coverage

[02_quality.sql](02_quality.sql) checks all 199,807 source rows for missing analysis fields and for nonpositive discharge counts or negative charges; both counts were zero. DRG 470 had 2,682 rows with zero duplicate provider keys. Retain positive discharge counts and nonnegative charges, with populated keys and state; exclude ambiguous repeated provider/DRG keys rather than double-count them. No such exclusions were needed for DRG 470. No individual dates, closures, or event-level duplicates can be inferred from this fixed-year aggregate release; no date cutoff was applied. Missing provider/DRG combinations are not zeros.

## Step 3: Compare the gap and value

[03_gap.sql](03_gap.sql) calculates weighted rates as the sum of (discharges × average covered charge) divided by the sum of discharges. Hawaiʻi: 10 providers, 914 discharges, $47,984.029540 per discharge. Peers: 2,672 providers, 470,849 discharges, $57,888.705583 per discharge. Subtract the Hawaiʻi rate from the peer rate and multiply by 914: approximately $9,052,874. No Google Sheets or external pricing assumptions were used.
