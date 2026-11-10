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

In FY2015, Hawaiʻi hospitals reported **$47,984.03** in discharge-weighted average covered charges for major hip and knee joint replacement (MS-DRG 470), versus **$57,888.71** at other reporting providers in the same service group. That is **$9,904.68 lower per discharge (17.1%)**. At Hawaiʻi's **914 reported discharges**, the difference was about **$9.05 million in billed charges** relative to the peer rate. Each source row summarizes one hospital and one DRG. This comparison describes charges, not costs, payments, or savings.

**Value calculation.** ($57,888.705583 − $47,984.029540) × 914 discharges ≈ **$9,052,874** in billed charges at Hawaiʻi's reported volume. Both weighted rates come from the [official CMS FY2015 provider and service release](https://data.cms.gov/sites/default/files/2023-05/81895338-4c5c-4ad7-a490-8e5a9a972825/MUP_IHP_RY23_P03_V10_DY15_PRVSVC.CSV).

## Explore the work

| File or link | What it's for |
| --- | --- |
| [Charter](charter.md) | Question, manager's decision, scope, and success criteria |
| [Findings](findings.md) | Gap, peer benchmark, dollar calculation, and chart |
| [SQL guide](sql/README.md) | How the data was loaded, checked, and analyzed |
| [01: Access check](sql/01_access_check.sql) | Original unverified BigQuery access check |
| [02: Data quality](sql/02_quality.sql) | Missing fields, invalid values, and duplicate checks |
| [03: Gap and value](sql/03_gap.sql) | Discharge-weighted charges and the dollar comparison |
| [Gap chart](visuals/gap_chart.png) and [visual notes](visuals/notes.md) | Visual comparison of Hawaiʻi and peers |
| [Dataset documentation](Other/README.md) | Official CMS download, field definitions, and methodology |
| [Table diagram](Other/inpatient_2015.svg) and [DBML](Other/inpatient_2015.dbml) | One hospital-by-DRG table; no joins |
| [Agent instructions](AGENTS.md) | Project facts, cleaning rules, and instructions |
| [Audit protocol](Other/audit_protocol.md) | How the team reviews AI-assisted work |
| [Audit log](Other/audit_log.md) and [audit skill](.agents/skills/project-audit/SKILL.md) | Human review categories and instructions |
| [Model notes](model/notes.md) and [model card](model/model_card.md) | Placeholders for a later checkpoint |

The numbers come from the official FY2015 CMS download and were reproduced by running the numbered analysis SQL locally. See the [SQL guide](sql/README.md) for the distinction between this release and the selected BigQuery mirror. AI assisted with analysis and documentation; human audit checks are still pending.

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
