# Project Charter — Data Voyagers

## The question

Did Hawaiʻi's three busiest reporting hospitals handle a larger share of FY2015 MS-DRG 470 Medicare discharges than the top three in similarly sized state reporting groups?

## The decision this supports

A hospital network planner can decide whether to investigate backup capacity and referral arrangements for joint replacement.

## Scope

Use the BigQuery public CMS Medicare FY2015 inpatient table. One source row represents one hospital and one DRG. Compare Hawaiʻi with other states with 7–13 reporting hospitals for DRG 470, giving each peer state equal weight. CMS suppresses low-volume hospital and procedure combinations.

## What success looks like

- Reproduce hospital and discharge counts in BigQuery.
- Explain the peer group and compare the top-three shares.
- Express the gap in percentage points and equivalent discharges at Hawaiʻi's reported volume.
- Show a chart and explain the limits for capacity planning.
