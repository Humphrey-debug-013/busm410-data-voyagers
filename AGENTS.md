# AGENTS.md

BUSM 410 semester project: Data Voyagers. Read [README.md](README.md) for current project details and setup status.

## How to work with the team

- Use plain language and explain technical terms when needed.
- Preserve existing data and project facts. Do not substitute instructor-example results, tables, team details, or completed work for this project's own work.
- Keep unverified work and incomplete sections explicitly marked as pending.
- Support new data claims with sources or reproducible calculations. Distinguish documented facts from assumptions and interpretations.
- Inspect actual tables and columns before drafting new analysis. The instructor's synthetic readmission dataset is different from this project's hospital-charge table.

## Project facts

- Team: Data Voyagers; Canvas team 5 (originally Group 5).
- Members: John Humphrey Valiente (`Humphrey-debug-013`) and Kalenn Brodien (`Qa-l-e`).
- Dataset: `bigquery-public-data.cms_medicare`.
- Starting table: `bigquery-public-data.cms_medicare.inpatient_charges_2015`.
- Google Cloud project: `dotted-lexicon-509700-t8`.
- Course-listed row meaning: one hospital's charges for one type of treatment.
- CP1 source: official FY2015 CMS Medicare Inpatient Hospitals by Provider and Service public release, linked in [Other/README.md](Other/README.md). Steps 2–3 ran locally in SQLite; the BigQuery access check and mirror equivalence remain unverified.
- Grain: one hospital (CMS Certification Number) and MS-DRG; one source table, no joins. Used fields: provider ID, DRG code, provider state, total discharges, and average submitted covered charge.
- Cleaning: preserve leading zeros; require populated keys and state, positive discharges, and nonnegative charges. Exclude repeated provider/DRG keys rather than double-counting. Of 199,807 source rows, none had missing required fields or invalid amounts/counts, and none of the 2,682 DRG 470 rows had duplicate provider keys. No dates or event-level records exist in the projection.
- Gap: FY2015 DRG 470 Hawaiʻi (10 providers, 914 discharges), $47,984.03 per discharge versus $57,888.71 for other reporting providers (2,672 providers, 470,849 discharges). Rates are weighted by discharge counts. Difference: $9,904.68 per discharge (17.1%) and about $9.05 million at Hawaiʻi's observed volume.
- Sources and calculations: [CMS documentation](Other/README.md), [SQL results and method](sql/README.md), and [findings](findings.md). These are billed charges, not actual payments, costs, or savings.

## File organization

- `charter.md`: team charter, question, scope, and intended decision.
- `findings.md`: verified findings and recommendations when available.
- `sql/`: numbered queries and documentation.
- `model/`: notes and model card placeholder.
- `visuals/`: charts and visualization notes.
- `Other/`: audit records and project-specific references.

Use numbered SQL filenames and explain each query's purpose, estimated scan, result, and decision in `sql/README.md`. Do not run queries or claim results during a formatting-only task.

## Audit records

Use [project-audit guidance](.agents/skills/project-audit/SKILL.md) when recording human checks. Only record actual human checks. Follow the [approved CP1 audit protocol](Other/audit_protocol.md).

## Publishing

Local formatting work does not authorize committing, pushing, merging, or publishing. Follow the user's instructions for those actions.
