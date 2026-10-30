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
- Sample access query: prepared, execution not yet verified.
- Analysis and audit results have not been completed. See the README checklist for remaining CP0 items.

## File organization

- `charter.md`: team charter, question, scope, and intended decision.
- `findings.md`: verified findings and recommendations when available.
- `sql/`: queries and documentation; retain existing notes.
- `model/`: notes and model card placeholder.
- `visuals/`: charts and visualization notes.
- `Other/`: audit records and project-specific references.

Use numbered SQL filenames and explain each query's purpose, estimated scan, result, and decision in `sql/README.md`. Do not run queries or claim results during a formatting-only task.

## Audit records

Use [project-audit guidance](.agents/skills/project-audit/SKILL.md) when recording human checks. Preserve the CP0 status until actual checks occur. The audit protocol remains a placeholder for the team to complete.

## Publishing

Local formatting work does not authorize committing, pushing, merging, or publishing. Follow the user's instructions for those actions.
