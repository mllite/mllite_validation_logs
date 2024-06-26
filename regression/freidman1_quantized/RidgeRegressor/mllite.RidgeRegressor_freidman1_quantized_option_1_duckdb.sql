WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_quantized" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   0.727697 + 0.632069 * t."X_0" + 0.832912 * t."X_1" + 0.142218 * t."X_2" + 1.019196 * t."X_3" + 0.421361 * t."X_4" + 0.106347 * t."X_5" + -0.036988 * t."X_6" + 0.001189 * t."X_7" + -0.091148 * t."X_8" + 0.079896 * t."X_9" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
