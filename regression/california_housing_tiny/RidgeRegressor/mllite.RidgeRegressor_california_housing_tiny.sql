WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  model_input."index" AS "index",
   -1843197.000000 + -25146.962891 * X_0 + -32087.527344 * X_1 + 3569.271973 * X_2 + 22.283113 * X_3 + 76.998955 * X_4 + -93.764740 * X_5 + -61.739590 * X_6 + 32377.666016 * X_7 + 0.000000 * X_8 AS "Estimator"
  FROM model_input
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte