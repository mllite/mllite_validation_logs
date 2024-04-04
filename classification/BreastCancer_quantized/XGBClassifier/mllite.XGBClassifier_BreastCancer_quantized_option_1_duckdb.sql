WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_22" < 6.000000) THEN CASE WHEN (t."X_27" < 7.000000) THEN CASE WHEN (t."X_26" < 7.000000) THEN CASE WHEN (t."X_13" < 7.000000) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_22" < 7.000000) THEN CASE WHEN (t."X_24" < 6.000000) THEN CASE WHEN (t."X_21" < 6.000000) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_5" < 4.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.123533 AS "P_0", -0.123533 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.134796 AS "P_0", 0.134796 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.293289 AS "P_0", -0.293289 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.206864 AS "P_0", -0.206864 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.339003 AS "P_0", -0.339004 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.258536 AS "P_0", 0.258536 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.131151 AS "P_0", 0.131151 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.216284 AS "P_0", 0.216284 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.094262 AS "P_0", -0.094262 AS "P_1"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_22" < 6.000000) THEN CASE WHEN (t."X_27" < 7.000000) THEN CASE WHEN (t."X_1" < 7.000000) THEN 7 ELSE CASE WHEN (t."X_27" < 4.000000) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_7" < 6.000000) THEN CASE WHEN (t."X_17" < 4.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_21" < 2.000000) THEN 11 ELSE CASE WHEN (t."X_6" < 6.000000) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.089264 AS "P_0", -0.089264 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.216117 AS "P_0", 0.216117 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.099420 AS "P_0", -0.099420 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.181365 AS "P_0", 0.181365 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.036244 AS "P_0", -0.036244 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.198202 AS "P_0", 0.198202 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.000791 AS "P_0", 0.000791 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.117351 AS "P_0", -0.117351 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.246194 AS "P_0", -0.246194 AS "P_1"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_7" < 6.000000) THEN CASE WHEN (t."X_23" < 7.000000) THEN CASE WHEN (t."X_13" < 6.000000) THEN 7 ELSE CASE WHEN (t."X_7" < 4.000000) THEN 11 ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_26" < 5.000000) THEN 5 ELSE CASE WHEN (t."X_23" < 5.000000) THEN 9 ELSE CASE WHEN (t."X_1" < 2.000000) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.126120 AS "P_0", -0.126120 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.140224 AS "P_0", 0.140224 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.191568 AS "P_0", 0.191568 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.064330 AS "P_0", 0.064330 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.171677 AS "P_0", 0.171677 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.004890 AS "P_0", -0.004890 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.027371 AS "P_0", -0.027371 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.211500 AS "P_0", -0.211500 AS "P_1"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_22" < 7.000000) THEN CASE WHEN (t."X_27" < 7.000000) THEN CASE WHEN (t."X_1" < 7.000000) THEN CASE WHEN (t."X_23" < 6.000000) THEN 11 ELSE CASE WHEN (t."X_21" < 2.000000) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_20" < 5.000000) THEN CASE WHEN (t."X_4" < 3.000000) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_12" < 5.000000) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_4" < 8.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_29" < 1.000000) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.092741 AS "P_0", -0.092741 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.190344 AS "P_0", -0.190344 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.024960 AS "P_0", 0.024960 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.200040 AS "P_0", -0.200040 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.177638 AS "P_0", 0.177638 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.192332 AS "P_0", 0.192332 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.043817 AS "P_0", 0.043817 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.170125 AS "P_0", 0.170125 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.078187 AS "P_0", 0.078187 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.030471 AS "P_0", -0.030471 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.138154 AS "P_0", -0.138154 AS "P_1"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_7" < 6.000000) THEN CASE WHEN (t."X_20" < 7.000000) THEN CASE WHEN (t."X_10" < 7.000000) THEN CASE WHEN (t."X_21" < 7.000000) THEN 11 ELSE CASE WHEN (t."X_27" < 4.000000) THEN 17 ELSE 18 END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_22" < 7.000000) THEN CASE WHEN (t."X_21" < 5.000000) THEN CASE WHEN (t."X_24" < 6.000000) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_26" < 7.000000) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.069463 AS "P_0", -0.069463 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.177805 AS "P_0", -0.177805 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.008215 AS "P_0", 0.008215 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.170506 AS "P_0", 0.170506 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.180192 AS "P_0", 0.180192 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.062693 AS "P_0", 0.062693 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.038718 AS "P_0", -0.038718 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.186253 AS "P_0", -0.186253 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.159151 AS "P_0", 0.159151 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.034983 AS "P_0", 0.034983 AS "P_1"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.372583 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.627416 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 ),
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
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
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