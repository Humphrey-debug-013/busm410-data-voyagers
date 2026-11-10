# Project Charter — Data Voyagers

## The question

In FY2015, how did Hawaiʻi hospitals' discharge-weighted average covered charge for major hip and knee joint replacement (MS-DRG 470) compare with other reporting providers, and what dollar difference does that imply at Hawaiʻi's reported volume?

## The decision this project supports

A Hawaiʻi hospital finance manager can decide whether to investigate how covered charges are set for this procedure group and whether to request a more comparable hospital-level review before considering any change.

## Scope

Use the FY2015 CMS Medicare Inpatient Hospitals by Provider and Service public release. One source row represents one hospital and one diagnosis-related group (DRG), summarizing qualifying Original Medicare fee-for-service discharges. Compare reporting Hawaiʻi providers with all reporting providers outside Hawaiʻi for DRG 470. Use discharge counts as weights. No other years, joins, payment estimates, or patient-level claims are in scope.

## What success looks like

- Another reader can reproduce the group counts, charges, and difference from the numbered SQL and source instructions.
- The benchmark uses the same year and DRG, excludes Hawaiʻi, and states its limitations.
- One chart shows the two discharge-weighted averages with their units.
- The dollar comparison uses unrounded rates and reported Hawaiʻi discharges and is clearly distinguished from cost, payment, and savings.
