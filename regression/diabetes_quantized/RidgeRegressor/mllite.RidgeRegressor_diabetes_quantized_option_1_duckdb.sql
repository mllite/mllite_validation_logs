WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_quantized" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   78.556236 + 0.227095 * t."X_0" + -2.471044 * t."X_1" + 8.243037 * t."X_2" + 5.186954 * t."X_3" + -3.528026 * t."X_4" + -0.079232 * t."X_5" + -3.110271 * t."X_6" + 1.129951 * t."X_7" + 9.796718 * t."X_8" + 1.023484 * t."X_9" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
