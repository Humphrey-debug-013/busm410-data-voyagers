# SQL — CP1 discharge concentration

Run [04_volume_concentration.sql](04_volume_concentration.sql) in BigQuery against `bigquery-public-data.cms_medicare.inpatient_charges_2015`. The console estimated 13.15 MB. The November 17, 2026 run returned Hawaiʻi plus six peers and excluded zero DRG 470 rows. [BigQuery job](https://console.cloud.google.com/bigquery?project=dotted-lexicon-509700-t8&ws=!1m5!1m4!1m3!1sdotted-lexicon-509700-t8!2sjob_DCi7jdoLi48Vf761S2josruw4P7L!3sUS)

The query filters DRG 470, trims state, casts discharge counts to integers, and excludes missing provider IDs or states, nonpositive counts, and all rows for repeated provider IDs within this DRG. Rank by discharge count and break ties using provider ID. There are no patient dates or events in these aggregates. CMS suppresses low-volume rows. [CMS documentation](https://data.cms.gov/provider-summary-by-type-of-service/medicare-inpatient-hospitals/medicare-inpatient-hospitals-by-provider-and-service)

Sum the three largest provider volumes and all reported volumes per state. Average the six eligible non-Hawaiʻi state shares equally. Hawaiʻi: 606 / 933 = 64.95%. Peers: 55.51%. Difference: 9.44 percentage points, or about 88 discharges at Hawaiʻi's observed volume. See [findings](../findings.md).
