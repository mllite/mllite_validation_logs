WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "iris_small" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3"
  FROM
  (
     SELECT 0 AS "sv_idx", 4.500000 AS "sv_0", 2.300000 AS "sv_1", 1.300000 AS "sv_2", 0.300000 AS "sv_3"
     UNION ALL
     SELECT 1 AS "sv_idx", 5.100000 AS "sv_0", 3.300000 AS "sv_1", 1.700000 AS "sv_2", 0.500000 AS "sv_3"
     UNION ALL
     SELECT 2 AS "sv_idx", 5.700000 AS "sv_0", 3.800000 AS "sv_1", 1.700000 AS "sv_2", 0.300000 AS "sv_3"
     UNION ALL
     SELECT 3 AS "sv_idx", 5.400000 AS "sv_0", 3.900000 AS "sv_1", 1.700000 AS "sv_2", 0.400000 AS "sv_3"
     UNION ALL
     SELECT 4 AS "sv_idx", 6.300000 AS "sv_0", 3.300000 AS "sv_1", 4.700000 AS "sv_2", 1.600000 AS "sv_3"
     UNION ALL
     SELECT 5 AS "sv_idx", 6.000000 AS "sv_0", 3.400000 AS "sv_1", 4.500000 AS "sv_2", 1.600000 AS "sv_3"
     UNION ALL
     SELECT 6 AS "sv_idx", 5.100000 AS "sv_0", 2.500000 AS "sv_1", 3.000000 AS "sv_2", 1.100000 AS "sv_3"
     UNION ALL
     SELECT 7 AS "sv_idx", 5.500000 AS "sv_0", 2.400000 AS "sv_1", 3.700000 AS "sv_2", 1.000000 AS "sv_3"
     UNION ALL
     SELECT 8 AS "sv_idx", 6.500000 AS "sv_0", 2.800000 AS "sv_1", 4.600000 AS "sv_2", 1.500000 AS "sv_3"
     UNION ALL
     SELECT 9 AS "sv_idx", 6.900000 AS "sv_0", 3.100000 AS "sv_1", 4.900000 AS "sv_2", 1.500000 AS "sv_3"
     UNION ALL
     SELECT 10 AS "sv_idx", 6.300000 AS "sv_0", 2.800000 AS "sv_1", 5.100000 AS "sv_2", 1.500000 AS "sv_3"
     UNION ALL
     SELECT 11 AS "sv_idx", 7.900000 AS "sv_0", 3.800000 AS "sv_1", 6.400000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 12 AS "sv_idx", 6.000000 AS "sv_0", 3.000000 AS "sv_1", 4.800000 AS "sv_2", 1.800000 AS "sv_3"
     UNION ALL
     SELECT 13 AS "sv_idx", 5.700000 AS "sv_0", 2.500000 AS "sv_1", 5.000000 AS "sv_2", 2.000000 AS "sv_3"
     UNION ALL
     SELECT 14 AS "sv_idx", 6.900000 AS "sv_0", 3.100000 AS "sv_1", 5.100000 AS "sv_2", 2.300000 AS "sv_3"
   ) AS "Values"
 ),
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.062339 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 1.189430 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 2.212704 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 0.691368 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 1.189430 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 2.212704 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 0.691368 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 0 AS "sv_idx", 0.272051 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 1 AS "sv_idx", 0.744270 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 2 AS "sv_idx", 0.744270 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 3 AS "sv_idx", 0.025657 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", 1.189430 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 11 AS "sv_idx", 2.212704 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 12 AS "sv_idx", 0.691368 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 4 AS "sv_idx", 0.272051 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 0.744270 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 6 AS "sv_idx", 0.744270 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 7 AS "sv_idx", 0.025657 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 37.633785 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 3.780087 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", 0.272051 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 11 AS "sv_idx", 0.744270 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 12 AS "sv_idx", 0.744270 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 13 AS "sv_idx", 0.025657 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 14 AS "sv_idx", 37.633785 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.187131 AS "rho", -2.713226 AS "probA", 0.046657 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", 0.023573 AS "rho", -2.992968 AS "probA", 0.087734 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", 0.431615 AS "rho", -1.909243 AS "probA", 0.008860 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   SUM( CASE WHEN (t1."c_1" == 2 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 2 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
)
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte