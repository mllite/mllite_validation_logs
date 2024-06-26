WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_tiny" AS "ADS" 
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
   "Values"."sv_8" AS "sv_8"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -121.910004 AS "sv_0", 36.630001 AS "sv_1", 42.000000 AS "sv_2", 817.000000 AS "sv_3", 194.000000 AS "sv_4", 391.000000 AS "sv_5", 193.000000 AS "sv_6", 2.177600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", -121.430000 AS "sv_0", 38.660000 AS "sv_1", 35.000000 AS "sv_2", 1814.000000 AS "sv_3", 367.000000 AS "sv_4", 1076.000000 AS "sv_5", 372.000000 AS "sv_6", 2.717900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -121.580002 AS "sv_0", 39.500000 AS "sv_1", 29.000000 AS "sv_2", 1947.000000 AS "sv_3", 383.000000 AS "sv_4", 925.000000 AS "sv_5", 337.000000 AS "sv_6", 2.165800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.000000 AS "coeff", -120.239998 AS "sv_0", 39.349998 AS "sv_1", 8.000000 AS "sv_2", 4195.000000 AS "sv_3", 725.000000 AS "sv_4", 291.000000 AS "sv_5", 115.000000 AS "sv_6", 3.479200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -122.019997 AS "sv_0", 38.369999 AS "sv_1", 16.000000 AS "sv_2", 2495.000000 AS "sv_3", 331.000000 AS "sv_4", 1118.000000 AS "sv_5", 338.000000 AS "sv_6", 6.489400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", -122.010002 AS "sv_0", 37.180000 AS "sv_1", 37.000000 AS "sv_2", 3852.000000 AS "sv_3", 652.000000 AS "sv_4", 1534.000000 AS "sv_5", 567.000000 AS "sv_6", 5.859600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", -117.699997 AS "sv_0", 33.500000 AS "sv_1", 4.000000 AS "sv_2", 2351.000000 AS "sv_3", 445.000000 AS "sv_4", 834.000000 AS "sv_5", 397.000000 AS "sv_6", 5.567700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", -117.410004 AS "sv_0", 33.959999 AS "sv_1", 27.000000 AS "sv_2", 2341.000000 AS "sv_3", 418.000000 AS "sv_4", 1272.000000 AS "sv_5", 415.000000 AS "sv_6", 3.020800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", -122.449997 AS "sv_0", 37.669998 AS "sv_1", 36.000000 AS "sv_2", 1664.000000 AS "sv_3", 326.000000 AS "sv_4", 963.000000 AS "sv_5", 322.000000 AS "sv_6", 4.781300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", -122.730003 AS "sv_0", 38.439999 AS "sv_1", 35.000000 AS "sv_2", 1120.000000 AS "sv_3", 297.000000 AS "sv_4", 659.000000 AS "sv_5", 274.000000 AS "sv_6", 2.382400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", -121.919998 AS "sv_0", 37.480000 AS "sv_1", 23.000000 AS "sv_2", 4314.000000 AS "sv_3", 676.000000 AS "sv_4", 1972.000000 AS "sv_5", 623.000000 AS "sv_6", 5.381300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", -122.440002 AS "sv_0", 37.779999 AS "sv_1", 52.000000 AS "sv_2", 1118.000000 AS "sv_3", 279.000000 AS "sv_4", 514.000000 AS "sv_5", 284.000000 AS "sv_6", 2.419600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", -118.290001 AS "sv_0", 33.930000 AS "sv_1", 32.000000 AS "sv_2", 1815.000000 AS "sv_3", 488.000000 AS "sv_4", 1715.000000 AS "sv_5", 475.000000 AS "sv_6", 1.724400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", -121.790001 AS "sv_0", 38.000000 AS "sv_1", 34.000000 AS "sv_2", 3090.000000 AS "sv_3", 593.000000 AS "sv_4", 1588.000000 AS "sv_5", 566.000000 AS "sv_6", 3.611800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", -116.959999 AS "sv_0", 33.730000 AS "sv_1", 20.000000 AS "sv_2", 4735.000000 AS "sv_3", 973.000000 AS "sv_4", 2306.000000 AS "sv_5", 904.000000 AS "sv_6", 3.069000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", -121.309998 AS "sv_0", 38.259998 AS "sv_1", 22.000000 AS "sv_2", 1768.000000 AS "sv_3", 396.000000 AS "sv_4", 1005.000000 AS "sv_5", 420.000000 AS "sv_6", 1.884600 AS "sv_7", 0.000000 AS "sv_8"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -162899.875000 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.000000 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
