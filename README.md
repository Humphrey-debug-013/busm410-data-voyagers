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

## Problem framing

In FY2015, Hawaiʻi's three busiest reporting hospitals handled 606 of 933 reported Medicare discharges for major hip and knee joint replacement and related procedures (MS-DRG 470). Their share was **64.95%**, compared with **55.51%** across six peer states, a **9.44 percentage-point gap**. At Hawaiʻi's reported volume, 606 − (0.55510273 × 933) ≈ **88 discharges** above the benchmark. One source row summarizes one hospital and procedure group. [BigQuery job](https://console.cloud.google.com/bigquery?project=dotted-lexicon-509700-t8&ws=!1m5!1m4!1m3!1sdotted-lexicon-509700-t8!2sjob_DCi7jdoLi48Vf761S2josruw4P7L!3sUS)

## Explore the work

| File or link | What it's for |
| --- | --- |
| [Charter](charter.md) | Question, manager's decision, scope, and success criteria |
| [Findings](findings.md) | Gap, peer benchmark, dollar calculation, and chart |
| [SQL guide](sql/README.md) | How the data was loaded, checked, and analyzed |
| [BigQuery analysis](sql/04_volume_concentration.sql) | Query used for the revised gap |
| [Gap chart](visuals/gap_chart.svg) and [visual notes](visuals/notes.md) | Visual comparison of Hawaiʻi and peers |
| [Dataset documentation](Other/README.md) | Official CMS download, field definitions, and methodology |
| [Table diagram](Other/inpatient_2015.svg) and [DBML](Other/inpatient_2015.dbml) | One hospital-by-DRG table; no joins |
| [Agent instructions](AGENTS.md) | Project facts, cleaning rules, and instructions |
| [Audit protocol](Other/audit_protocol.md) | How the team reviews AI-assisted work |
| [Audit log](Other/audit_log.md) and [audit skill](.agents/skills/project-audit/SKILL.md) | Human review categories and instructions |
| [Model notes](model/notes.md) and [model card](model/model_card.md) | Placeholders for a later checkpoint |

The revision uses BigQuery results. Human audit checks are recorded when reported by the team.

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
