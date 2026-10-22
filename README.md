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

## Project files

- [Team charter](charter.md)
- [Audit protocol](audit_protocol.md)
- [Audit log](audit_log.md)
- [SQL notes](sql/notes.md)
- [Model notes](model/notes.md)
- [Visualization notes](visuals/notes.md)

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
