WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    X_0 AS OUT_0,
    X_1 AS OUT_1,
    X_2 AS OUT_2,
    X_3 AS OUT_3,
    X_4 AS OUT_4,
    X_5 AS OUT_5,
    X_6 AS OUT_6,
    X_7 AS OUT_7,
    X_8 AS OUT_8,
    X_9 AS OUT_9
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.498061 + -0.034769 * t.OUT_0  + 0.148818 * t.OUT_1  + 0.528887 * t.OUT_2  + 0.674840 * t.OUT_3  + 0.315087 * t.OUT_4  + 0.253872 * t.OUT_5  + -0.159496 * t.OUT_6  + -0.077724 * t.OUT_7  + -0.228809 * t.OUT_8  + -0.404952 * t.OUT_9 AS OUT_0,
    0.363866 + 0.309389 * t.OUT_0  + -0.436272 * t.OUT_1  + 0.106884 * t.OUT_2  + -0.611984 * t.OUT_3  + -0.319848 * t.OUT_4  + -0.677459 * t.OUT_5  + -0.627185 * t.OUT_6  + 0.009232 * t.OUT_7  + 0.214886 * t.OUT_8  + 0.605833 * t.OUT_9 AS OUT_1,
    0.126535 + -0.235953 * t.OUT_0  + 0.157477 * t.OUT_1  + 0.513168 * t.OUT_2  + -0.242869 * t.OUT_3  + -0.310504 * t.OUT_4  + -0.135007 * t.OUT_5  + -0.366159 * t.OUT_6  + -0.556377 * t.OUT_7  + -0.140920 * t.OUT_8  + -0.510667 * t.OUT_9 AS OUT_2,
    0.564194 + -0.019116 * t.OUT_0  + -0.007374 * t.OUT_1  + -0.133321 * t.OUT_2  + 0.265854 * t.OUT_3  + -0.477278 * t.OUT_4  + -0.000940 * t.OUT_5  + 0.504042 * t.OUT_6  + 0.064059 * t.OUT_7  + 0.244477 * t.OUT_8  + 0.385776 * t.OUT_9 AS OUT_3
 FROM Input_Layer_BA AS t
)
,
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3
 FROM Hidden_Layer_1_BA AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    0.344324 + -0.413645 * t.OUT_0  + 0.449178 * t.OUT_1  + -0.576361 * t.OUT_2  + 0.723767 * t.OUT_3 AS OUT_0,
    0.386212 + -0.572073 * t.OUT_0  + 0.607933 * t.OUT_1  + 0.061211 * t.OUT_2  + 0.643497 * t.OUT_3 AS OUT_1,
    0.648548 + 0.208149 * t.OUT_0  + -0.400520 * t.OUT_1  + 0.261769 * t.OUT_2  + -0.067013 * t.OUT_3 AS OUT_2,
    -0.324391 + 0.225715 * t.OUT_0  + 0.348463 * t.OUT_1  + 0.439322 * t.OUT_2  + -0.542984 * t.OUT_3 AS OUT_3,
    0.325255 + 0.506842 * t.OUT_0  + 0.241244 * t.OUT_1  + -0.580374 * t.OUT_2  + 0.000380 * t.OUT_3 AS OUT_4,
    0.467868 + 0.576235 * t.OUT_0  + 0.085223 * t.OUT_1  + 0.460264 * t.OUT_2  + 0.646812 * t.OUT_3 AS OUT_5,
    0.488724 + 0.509723 * t.OUT_0  + 0.058212 * t.OUT_1  + -0.423557 * t.OUT_2  + -0.537074 * t.OUT_3 AS OUT_6,
    -0.060765 + -0.431621 * t.OUT_0  + 0.437376 * t.OUT_1  + -0.621289 * t.OUT_2  + 0.275692 * t.OUT_3 AS OUT_7
 FROM Hidden_Layer_1_Activation AS t
)
,
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5,
    CASE WHEN (OUT_6 > 0) THEN OUT_6 ELSE 0 END AS OUT_6,
    CASE WHEN (OUT_7 > 0) THEN OUT_7 ELSE 0 END AS OUT_7
 FROM Hidden_Layer_2_BA AS t
),
"Hidden_Layer_3_BA" AS
 ( SELECT t."index" as "index",
    0.563688 + -0.608492 * t.OUT_0  + -0.267695 * t.OUT_1  + 0.187762 * t.OUT_2  + -0.241921 * t.OUT_3  + -0.308605 * t.OUT_4  + 0.347085 * t.OUT_5  + 0.313559 * t.OUT_6  + 0.128315 * t.OUT_7 AS OUT_0,
    -0.464393 + 0.295654 * t.OUT_0  + 0.559778 * t.OUT_1  + -0.230280 * t.OUT_2  + 0.410062 * t.OUT_3  + 0.030413 * t.OUT_4  + 0.423954 * t.OUT_5  + 0.333367 * t.OUT_6  + -0.233041 * t.OUT_7 AS OUT_1,
    -0.249017 + 0.005272 * t.OUT_0  + 0.032623 * t.OUT_1  + -0.277464 * t.OUT_2  + 0.464478 * t.OUT_3  + 0.197061 * t.OUT_4  + 0.100958 * t.OUT_5  + -0.425588 * t.OUT_6  + 0.312596 * t.OUT_7 AS OUT_2,
    -0.494865 + -0.124039 * t.OUT_0  + -0.133482 * t.OUT_1  + -0.133022 * t.OUT_2  + 0.526231 * t.OUT_3  + 0.412954 * t.OUT_4  + -0.195384 * t.OUT_5  + 0.182649 * t.OUT_6  + -0.587535 * t.OUT_7 AS OUT_3,
    -0.500519 + -0.449854 * t.OUT_0  + -0.151607 * t.OUT_1  + 0.239555 * t.OUT_2  + 0.444787 * t.OUT_3  + 0.291422 * t.OUT_4  + -0.154200 * t.OUT_5  + -0.386450 * t.OUT_6  + -0.557435 * t.OUT_7 AS OUT_4,
    -0.502640 + -0.588194 * t.OUT_0  + -0.555284 * t.OUT_1  + -0.431684 * t.OUT_2  + 0.341110 * t.OUT_3  + -0.001604 * t.OUT_4  + -0.294011 * t.OUT_5  + -0.001729 * t.OUT_6  + 0.457149 * t.OUT_7 AS OUT_5
 FROM Hidden_Layer_2_Activation AS t
)
,
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5
 FROM Hidden_Layer_3_BA AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    -0.576308 + -0.277193 * t.OUT_0  + -0.181648 * t.OUT_1  + -0.639792 * t.OUT_2  + -0.636297 * t.OUT_3  + -0.788203 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
 FROM Hidden_Layer_3_Activation AS t
)

, soft_max_orig_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0"
  FROM "Output_Layer_BA" AS t )
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