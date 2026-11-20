-- Trains a logistic model of top-3 status on hospital traits.
CREATE OR REPLACE MODEL `your_project.busm410.top3_model`
OPTIONS (model_type='logistic_reg', input_label_cols=['is_top3'],
  calculate_p_values=TRUE, category_encoding_method='DUMMY_ENCODING',
  max_iterations=50, early_stop=FALSE) AS
SELECT is_top3, other_drg_discharges, drg_breadth, avg_covered_charges_470,
       avg_medicare_payment_470, state_hospital_count, is_hawaii
FROM `your_project.busm410.analysis_table`;

SELECT * FROM ML.EVALUATE(MODEL `your_project.busm410.top3_model`);
SELECT is_top3, COUNT(*) AS row_count FROM `your_project.busm410.analysis_table` GROUP BY is_top3;
SELECT * FROM ML.ADVANCED_WEIGHTS(MODEL `your_project.busm410.top3_model`);
