# SQL Notes

## CP0 source and project

- Google Cloud project: `dotted-lexicon-509700-t8`
- Public dataset: `bigquery-public-data.cms_medicare`
- Starting table: `bigquery-public-data.cms_medicare.inpatient_charges_2015`
- Topic: Medicare inpatient hospital charges for 2015.
- Row meaning from the course dataset list: one hospital's charges for one type of treatment.

## Sample access check

Run this GoogleSQL query with our Google Cloud project selected in BigQuery. It requests ten sample rows from the existing public table.

```sql
SELECT *
FROM `bigquery-public-data.cms_medicare.inpatient_charges_2015`
LIMIT 10;
```

Execution status: prepared, but not yet verified in the project. Record the execution date and result after running it.

Later checkpoints will add analysis queries, explanations, and results here.
