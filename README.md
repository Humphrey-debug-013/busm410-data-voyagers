# Data Voyagers — BUSM 410 Semester Project

## Team and project

| Item | Details |
| --- | --- |
| Fun team name | Data Voyagers |
| Canvas team number | 5 (originally Group 5; now named Data Voyagers) |
| Team member 1 | John Humphrey Valiente — GitHub: `Humphrey-debug-013` |
| Team member 2 | Kalenn Brodien — GitHub: `Qa-l-e` |
| Selected dataset | `bigquery-public-data.cms_medicare` — Healthcare |
| Starting table | `inpatient_charges_2015` |
| BigQuery project ID | `dotted-lexicon-509700-t8` |
| Class dataset reservation | Pending confirmation (maximum two teams per dataset) |
| IAM screenshot | To be added after project access is verified |

## Dataset

We selected the CMS Medicare dataset and will start with `bigquery-public-data.cms_medicare.inpatient_charges_2015`. Each row represents one hospital's charges for one type of treatment in 2015, as described in the course dataset list.

[Open the selected table in BigQuery](https://console.cloud.google.com/bigquery?ws=!1m6!1m5!4m3!1sbigquery-public-data!2scms_medicare!3sinpatient_charges_2015!23sWS_URL_PARAM&project=dotted-lexicon-509700-t8).

The public source data is hosted in `bigquery-public-data`. Our own Google Cloud project is `dotted-lexicon-509700-t8`. A sample access-check query is in [SQL notes](sql/notes.md); its execution has not yet been verified.

## Explore the work

| File or link | What it's for |
| --- | --- |
| [charter.md](charter.md) | Team charter, question, scope, and intended decision |
| [findings.md](findings.md) | Future findings, charts, and recommendations; currently pending |
| [sql/](sql/README.md) | Query documentation and the existing access-check notes |
| [model/](model/notes.md) | Model notes and the [model card](model/model_card.md) placeholder |
| [visuals/](visuals/notes.md) | Visualization notes; charts are pending |
| [Other/](Other/README.md) | Audit records and space for project-specific reference documents |
| [AGENTS.md](AGENTS.md) | Project facts and working instructions for AI assistance |
| [Other/audit_protocol.md](Other/audit_protocol.md) | Audit protocol placeholder |
| [Other/audit_log.md](Other/audit_log.md) | Audit log; no results recorded yet |
| [Audit skill](.agents/skills/project-audit/SKILL.md) | Guidance for recording actual human checks of AI work |
| [Other/CLAUDE.md](Other/CLAUDE.md) | Points to the shared project instructions |
| [.gitignore](.gitignore) | Excludes local credentials and temporary files from future uploads |

These files provide the CP0 setup structure. Analysis and audit results have not been completed.

## CP0 setup checklist

- [x] Both partners have joined the same Canvas team.
- [x] The fun team name is recorded above.
- [x] The Canvas team number is recorded above.
- [x] The selected dataset and starting table are recorded above.
- [ ] The dataset's class availability is confirmed (maximum two teams).
- [x] The BigQuery project is created and its project ID is recorded above.
- [ ] The partner has Editor access to the BigQuery project.
- [ ] The instructor has Viewer access to the BigQuery project.
- [ ] The IAM screenshot is uploaded and linked above.
- [x] This project is in the public GitHub repository `busm410-data-voyagers`.
- [x] The partner has collaborator access to the GitHub repository.
- [ ] The public repository link is submitted in Canvas.

## Problem framing

To be completed by the team. The selected topic is Medicare inpatient hospital charges for 2015. A specific analysis question, intended decision, and findings have not yet been recorded.

## Check the numbers

The [sample access check](sql/01_access_check.sql) matches the query already recorded in [SQL notes](sql/notes.md). Its execution has not yet been verified. No analysis results, workbook, or completed charts have been recorded.

## Who did the work

John Humphrey Valiente and Kalenn Brodien are the team members listed above. AI assistance was used to align this repository's structure and document formatting with the [instructor example](https://github.com/jakebramwell/busm410-instructor-example). This formatting work did not run the sample query or perform data analysis.
