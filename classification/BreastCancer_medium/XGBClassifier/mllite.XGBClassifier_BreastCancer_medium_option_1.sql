WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_28" < 0.361300) THEN CASE WHEN (t."X_1" < 20.980000) THEN 7 ELSE CASE WHEN (t."X_27" < 0.084110) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_1" < 18.610001) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_27" < 0.125200) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.171216 AS "P_0", -0.171216 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.264900 AS "P_0", 0.264900 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.276659 AS "P_0", -0.276659 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.202644 AS "P_0", -0.202644 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.333451 AS "P_0", -0.333451 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.240762 AS "P_0", 0.240762 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.029325 AS "P_0", -0.029325 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.237514 AS "P_0", 0.237514 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.048045 AS "P_0", -0.048045 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_20" < 17.709999) THEN CASE WHEN (t."X_21" < 33.330002) THEN CASE WHEN (t."X_12" < 3.061000) THEN 13 ELSE CASE WHEN (t."X_21" < 23.219999) THEN 17 ELSE 18 END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_21" < 21.750000) THEN CASE WHEN (t."X_20" < 17.709999) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_23" < 694.400024) THEN 11 ELSE CASE WHEN (t."X_28" < 0.244400) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.096072 AS "P_0", -0.096072 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.055715 AS "P_0", 0.055715 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.203583 AS "P_0", 0.203583 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.207069 AS "P_0", -0.207069 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.013967 AS "P_0", 0.013967 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.218245 AS "P_0", 0.218245 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.151756 AS "P_0", -0.151756 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.249476 AS "P_0", -0.249476 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.185286 AS "P_0", 0.185286 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.060657 AS "P_0", 0.060657 AS "P_1"
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
    CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_28" < 0.361300) THEN CASE WHEN (t."X_24" < 0.162200) THEN CASE WHEN (t."X_9" < 0.055250) THEN 11 ELSE 12 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_21" < 19.900000) THEN 5 ELSE CASE WHEN (t."X_24" < 0.120600) THEN CASE WHEN (t."X_9" < 0.055250) THEN 13 ELSE 14 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.110345 AS "P_0", -0.110345 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.053652 AS "P_0", 0.053652 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.043927 AS "P_0", 0.043927 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.204549 AS "P_0", -0.204549 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.107664 AS "P_0", 0.107664 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.188728 AS "P_0", 0.188728 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.167741 AS "P_0", -0.167741 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.057706 AS "P_0", 0.057706 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_13" < 39.930000) THEN CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_21" < 33.330002) THEN 11 ELSE 12 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_21" < 25.200001) THEN 9 ELSE CASE WHEN (t."X_21" < 28.180000) THEN 13 ELSE 14 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.052800 AS "P_0", -0.052800 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.189886 AS "P_0", -0.189886 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.047849 AS "P_0", 0.047849 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.139241 AS "P_0", 0.139241 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.179095 AS "P_0", 0.179095 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.073851 AS "P_0", 0.073851 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.107208 AS "P_0", -0.107208 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.198912 AS "P_0", -0.198912 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_18" < 0.012980) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_20" < 14.990000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_22" < 98.000000) THEN 5 ELSE CASE WHEN (t."X_21" < 21.750000) THEN 11 ELSE CASE WHEN (t."X_4" < 0.087850) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.056276 AS "P_0", 0.056276 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.089075 AS "P_0", 0.089075 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.166048 AS "P_0", 0.166048 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.146911 AS "P_0", 0.146911 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.135325 AS "P_0", -0.135325 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.020937 AS "P_0", -0.020937 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.099362 AS "P_0", -0.099362 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.177853 AS "P_0", -0.177853 AS "P_1"
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
)
,soft_max_orig_cte AS 
( SELECT
   t."index" AS "index",
   0.386719 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.613281 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte