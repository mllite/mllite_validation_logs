WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3",
   "Values"."sv_4" AS "sv_4",
   "Values"."sv_5" AS "sv_5",
   "Values"."sv_6" AS "sv_6",
   "Values"."sv_7" AS "sv_7",
   "Values"."sv_8" AS "sv_8",
   "Values"."sv_9" AS "sv_9"
  FROM
  (
     SELECT 0 AS "sv_idx", -0.594326 AS "coeff", -0.052738 AS "sv_0", -0.044642 AS "sv_1", 0.071397 AS "sv_2", -0.074527 AS "sv_3", -0.015328 AS "sv_4", -0.001314 AS "sv_5", 0.004460 AS "sv_6", -0.021412 AS "sv_7", -0.046883 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.020218 AS "sv_2", -0.036656 AS "sv_3", -0.013953 AS "sv_4", -0.015092 AS "sv_5", 0.059685 AS "sv_6", -0.039493 AS "sv_7", -0.096435 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.104809 AS "sv_2", 0.070072 AS "sv_3", -0.035968 AS "sv_4", -0.026679 AS "sv_5", -0.024993 AS "sv_6", -0.002592 AS "sv_7", 0.003709 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -0.005515 AS "sv_0", 0.050680 AS "sv_1", 0.001339 AS "sv_2", -0.084856 AS "sv_3", -0.011201 AS "sv_4", -0.016658 AS "sv_5", 0.048640 AS "sv_6", -0.039493 AS "sv_7", -0.041176 AS "sv_8", -0.088062 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.749999 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", 0.071397 AS "sv_2", 0.008101 AS "sv_3", 0.038334 AS "sv_4", 0.015909 AS "sv_5", -0.017629 AS "sv_6", 0.034309 AS "sv_7", 0.073407 AS "sv_8", 0.085907 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -0.155673 AS "coeff", -0.099961 AS "sv_0", -0.044642 AS "sv_1", -0.067641 AS "sv_2", -0.108956 AS "sv_3", -0.074494 AS "sv_4", -0.072712 AS "sv_5", 0.015505 AS "sv_6", -0.039493 AS "sv_7", -0.049872 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", -0.049105 AS "sv_0", -0.044642 AS "sv_1", 0.160855 AS "sv_2", -0.046985 AS "sv_3", -0.029088 AS "sv_4", -0.019790 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.028020 AS "sv_8", 0.011349 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -174.716248 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  exp(min(max(-32.0, -46.103394 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2))), 32.0))  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t