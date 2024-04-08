WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_medium" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.542192 + -0.130990 * t."OUT_0"  + 0.154237 * t."OUT_1"  + 0.485681 * t."OUT_2"  + 0.579797 * t."OUT_3"  + 0.268727 * t."OUT_4"  + 0.212743 * t."OUT_5"  + -0.202162 * t."OUT_6"  + -0.007192 * t."OUT_7"  + -0.135851 * t."OUT_8"  + -0.354397 * t."OUT_9" AS "OUT_0",
    0.445798 + 0.275705 * t."OUT_0"  + -0.388788 * t."OUT_1"  + 0.036010 * t."OUT_2"  + -0.527127 * t."OUT_3"  + -0.281510 * t."OUT_4"  + -0.751481 * t."OUT_5"  + -0.698827 * t."OUT_6"  + -0.073888 * t."OUT_7"  + 0.275188 * t."OUT_8"  + 0.473970 * t."OUT_9" AS "OUT_1",
    0.085837 + -0.213427 * t."OUT_0"  + 0.116856 * t."OUT_1"  + 0.465933 * t."OUT_2"  + -0.233404 * t."OUT_3"  + -0.290281 * t."OUT_4"  + -0.185770 * t."OUT_5"  + -0.415503 * t."OUT_6"  + -0.507640 * t."OUT_7"  + -0.099472 * t."OUT_8"  + -0.408115 * t."OUT_9" AS "OUT_2",
    0.529529 + -0.056541 * t."OUT_0"  + 0.052776 * t."OUT_1"  + -0.115636 * t."OUT_2"  + 0.288733 * t."OUT_3"  + -0.414992 * t."OUT_4"  + -0.039403 * t."OUT_5"  + 0.486498 * t."OUT_6"  + -0.024651 * t."OUT_7"  + 0.190889 * t."OUT_8"  + 0.261429 * t."OUT_9" AS "OUT_3"
 FROM "Input_Layer_BA" AS t
),
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3"
 FROM "Hidden_Layer_1_BA" AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    0.405774 + -0.358356 * t."OUT_0"  + 0.437299 * t."OUT_1"  + -0.525418 * t."OUT_2"  + 0.768800 * t."OUT_3" AS "OUT_0",
    0.341827 + -0.599200 * t."OUT_0"  + 0.667517 * t."OUT_1"  + 0.127580 * t."OUT_2"  + 0.591476 * t."OUT_3" AS "OUT_1",
    0.726604 + 0.201500 * t."OUT_0"  + -0.432068 * t."OUT_1"  + 0.187728 * t."OUT_2"  + 0.004493 * t."OUT_3" AS "OUT_2",
    -0.250469 + 0.217574 * t."OUT_0"  + 0.416597 * t."OUT_1"  + 0.512381 * t."OUT_2"  + -0.480774 * t."OUT_3" AS "OUT_3",
    0.393973 + 0.556681 * t."OUT_0"  + 0.310177 * t."OUT_1"  + -0.505172 * t."OUT_2"  + 0.032764 * t."OUT_3" AS "OUT_4",
    0.420497 + 0.537880 * t."OUT_0"  + 0.138572 * t."OUT_1"  + 0.434091 * t."OUT_2"  + 0.602033 * t."OUT_3" AS "OUT_5",
    0.437081 + 0.469670 * t."OUT_0"  + -0.001023 * t."OUT_1"  + -0.461576 * t."OUT_2"  + -0.584244 * t."OUT_3" AS "OUT_6",
    0.004751 + -0.428698 * t."OUT_0"  + 0.505744 * t."OUT_1"  + -0.547420 * t."OUT_2"  + 0.255112 * t."OUT_3" AS "OUT_7"
 FROM "Hidden_Layer_1_Activation" AS t
),
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7"
 FROM "Hidden_Layer_2_BA" AS t
),
"Hidden_Layer_3_BA" AS
 ( SELECT t."index" as "index",
    0.512755 + -0.660453 * t."OUT_0"  + -0.309322 * t."OUT_1"  + 0.137606 * t."OUT_2"  + -0.151474 * t."OUT_3"  + -0.361498 * t."OUT_4"  + 0.303741 * t."OUT_5"  + 0.270368 * t."OUT_6"  + 0.079984 * t."OUT_7" AS "OUT_0",
    -0.516164 + 0.238809 * t."OUT_0"  + 0.515144 * t."OUT_1"  + -0.283437 * t."OUT_2"  + 0.476088 * t."OUT_3"  + -0.022767 * t."OUT_4"  + 0.378539 * t."OUT_5"  + 0.297431 * t."OUT_6"  + -0.328748 * t."OUT_7" AS "OUT_1",
    -0.211593 + -0.033121 * t."OUT_0"  + 0.073114 * t."OUT_1"  + -0.319523 * t."OUT_2"  + 0.538929 * t."OUT_3"  + 0.236394 * t."OUT_4"  + 0.093141 * t."OUT_5"  + -0.372893 * t."OUT_6"  + 0.338606 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.557300 * t."OUT_3"  + 0.443776 * t."OUT_4"  + -0.225065 * t."OUT_5"  + 0.212193 * t."OUT_6"  + -0.618701 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.480768 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.269611 * t."OUT_2"  + 0.475690 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.178974 * t."OUT_5"  + -0.417195 * t."OUT_6"  + -0.588556 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.619361 * t."OUT_0"  + -0.586402 * t."OUT_1"  + -0.462554 * t."OUT_2"  + 0.371699 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.324393 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.488080 * t."OUT_7" AS "OUT_5"
 FROM "Hidden_Layer_2_Activation" AS t
),
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5"
 FROM "Hidden_Layer_3_BA" AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    -0.516460 + -0.236859 * t."OUT_0"  + -0.147027 * t."OUT_1"  + -0.701991 * t."OUT_2"  + -0.667527 * t."OUT_3"  + -0.819586 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
 FROM "Hidden_Layer_3_Activation" AS t
),
model_scores_cte AS 
( SELECT t."index" AS "index",
   -0.5 * t."OUT_0" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.5 * t."OUT_0" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "Output_Layer_BA" AS t ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte