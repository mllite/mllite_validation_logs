WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_11", t1."Leaf_15", t1."Leaf_16", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" > 2.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 175682.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 121973.500000) AND (t."X_0" <= 3.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 121973.500000) AND (t."X_0" > 3.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 121973.500000) AND (t."X_2" <= 299460.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 121973.500000) AND (t."X_2" > 299460.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" <= 0.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 37026.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 37026.000000) AND (t."X_2" <= 52678.000000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 37026.000000) AND (t."X_2" > 52678.000000) AND (t."X_12" <= 2.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 37026.000000) AND (t."X_2" > 52678.000000) AND (t."X_12" > 2.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 3.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" > 3.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_4" <= 10.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 10.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" <= 1.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 1.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_4" <= 9.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_11" <= 2.000000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_11" > 2.000000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 2.500000) AND (t."X_2" > 66215.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 2.500000) AND (t."X_2" <= 66215.500000) AND (t."X_2" <= 45711.000000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 2.500000) AND (t."X_2" <= 66215.500000) AND (t."X_2" > 45711.000000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 8.500000) AND (t."X_11" <= 1.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 8.500000) AND (t."X_11" > 1.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 8.500000) AND (t."X_2" <= 25541.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 8.500000) AND (t."X_2" > 25541.500000)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.760033 AS "P_0", 0.239967 AS "P_1", 0 AS "D", 0.760033 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.799686 AS "P_0", 0.200314 AS "P_1", 0 AS "D", 0.799686 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.152406 AS "P_0", 0.847594 AS "P_1", 1 AS "D", 0.847594 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.335294 AS "P_0", 0.664706 AS "P_1", 1 AS "D", 0.664706 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.564103 AS "P_0", 0.435897 AS "P_1", 0 AS "D", 0.564103 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.267176 AS "P_0", 0.732824 AS "P_1", 1 AS "D", 0.732824 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.867851 AS "P_0", 0.132149 AS "P_1", 0 AS "D", 0.867851 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.576751 AS "P_0", 0.423249 AS "P_1", 0 AS "D", 0.576751 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.745794 AS "P_0", 0.254206 AS "P_1", 0 AS "D", 0.745794 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.464684 AS "P_0", 0.535316 AS "P_1", 1 AS "D", 0.535316 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.970588 AS "P_0", 0.029412 AS "P_1", 0 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.669173 AS "P_0", 0.330827 AS "P_1", 0 AS "D", 0.669173 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.748252 AS "P_0", 0.251748 AS "P_1", 0 AS "D", 0.748252 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.469027 AS "P_0", 0.530973 AS "P_1", 1 AS "D", 0.530973 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.618182 AS "P_0", 0.381818 AS "P_1", 0 AS "D", 0.618182 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.327586 AS "P_0", 0.672414 AS "P_1", 1 AS "D", 0.672414 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.499331 AS "P_0", 0.500669 AS "P_1", 1 AS "D", 0.500669 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.233333 AS "P_0", 0.766667 AS "P_1", 1 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.453249 AS "P_0", 0.546751 AS "P_1", 1 AS "D", 0.546751 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.646154 AS "P_0", 0.353846 AS "P_1", 0 AS "D", 0.646154 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.540541 AS "P_0", 0.459459 AS "P_1", 0 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.640000 AS "P_0", 0.360000 AS "P_1", 0 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.152542 AS "P_0", 0.847458 AS "P_1", 1 AS "D", 0.847458 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.311475 AS "P_0", 0.688525 AS "P_1", 1 AS "D", 0.688525 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.940443 AS "P_0", 0.059557 AS "P_1", 0 AS "D", 0.940443 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.797121 AS "P_0", 0.202879 AS "P_1", 0 AS "D", 0.797121 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.716102 AS "P_0", 0.283898 AS "P_1", 0 AS "D", 0.716102 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.919622 AS "P_0", 0.080378 AS "P_1", 0 AS "D", 0.919622 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.768333 AS "P_0", 0.231667 AS "P_1", 0 AS "D", 0.768333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.900990 AS "P_0", 0.099010 AS "P_1", 0 AS "D", 0.900990 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.741483 AS "P_0", 0.258517 AS "P_1", 0 AS "D", 0.741483 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.958763 AS "P_0", 0.041237 AS "P_1", 0 AS "D", 0.958763 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.017857 AS "P_0", 0.982143 AS "P_1", 1 AS "D", 0.982143 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.751911 AS "P_0", 0.248089 AS "P_1", 0 AS "D", 0.751911 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.482759 AS "P_0", 0.517241 AS "P_1", 1 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.903974 AS "P_0", 0.096026 AS "P_1", 0 AS "D", 0.903974 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   CAST(NULL AS FLOAT)  AS "Score_0",
   "DT_Output"."P_0" AS "Proba_0",
   CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN LN( "DT_Output"."P_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
   CAST(NULL AS FLOAT)  AS "Score_1",
   "DT_Output"."P_1" AS "Proba_1",
   CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN LN( "DT_Output"."P_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"