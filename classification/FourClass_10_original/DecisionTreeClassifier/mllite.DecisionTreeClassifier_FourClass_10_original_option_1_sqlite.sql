WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_original" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" > 1.529362) AND (t."X_8" > -0.391623)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" > 1.529362) AND (t."X_8" <= -0.391623) AND (t."X_0" <= -1.365016)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" > 0.031136) AND (t."X_3" <= 1.383315)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" > 0.031136) AND (t."X_3" > 1.383315) AND (t."X_1" <= -0.681976)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" > 0.031136) AND (t."X_3" > 1.383315) AND (t."X_1" > -0.681976) AND (t."X_1" > 0.249662)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" > 0.031136) AND (t."X_3" > 1.383315) AND (t."X_1" > -0.681976) AND (t."X_1" <= 0.249662) AND (t."X_4" <= -0.995733)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" > 0.031136) AND (t."X_3" > 1.383315) AND (t."X_1" > -0.681976) AND (t."X_1" <= 0.249662) AND (t."X_4" > -0.995733)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" > -1.204945) AND (t."X_7" > 0.978789) AND (t."X_3" <= -0.570130)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" > -1.204945) AND (t."X_7" > 0.978789) AND (t."X_3" > -0.570130)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" > -1.204945) AND (t."X_7" <= 0.978789) AND (t."X_0" <= 1.132019)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" > -1.204945) AND (t."X_7" <= 0.978789) AND (t."X_0" > 1.132019)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" > 1.529362) AND (t."X_8" <= -0.391623) AND (t."X_0" > -1.365016) AND (t."X_6" <= 2.287767)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" > 1.529362) AND (t."X_8" <= -0.391623) AND (t."X_0" > -1.365016) AND (t."X_6" > 2.287767)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" <= -1.204945) AND (t."X_0" > -0.113381) AND (t."X_5" <= -0.159548)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" <= -1.204945) AND (t."X_0" > -0.113381) AND (t."X_5" > -0.159548)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" <= -1.204945) AND (t."X_0" <= -0.113381) AND (t."X_9" <= -1.782647)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" > -0.042639) AND (t."X_8" <= 0.031136) AND (t."X_3" <= 1.529362) AND (t."X_8" <= -1.204945) AND (t."X_0" <= -0.113381) AND (t."X_9" > -1.782647)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" > 1.974344) AND (t."X_8" > -0.654113)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" > 1.974344) AND (t."X_8" <= -0.654113) AND (t."X_6" <= 4.478524)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" > 1.974344) AND (t."X_8" <= -0.654113) AND (t."X_6" > 4.478524)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" > 0.268450) AND (t."X_8" <= 0.295161) AND (t."X_8" > -2.305774)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" > 0.268450) AND (t."X_8" <= 0.295161) AND (t."X_8" <= -2.305774) AND (t."X_0" <= 1.107990)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" > 0.268450) AND (t."X_8" <= 0.295161) AND (t."X_8" <= -2.305774) AND (t."X_0" > 1.107990)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" > 0.268450) AND (t."X_8" > 0.295161) AND (t."X_0" <= -0.144948) AND (t."X_4" <= 0.019304)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" > 0.268450) AND (t."X_8" > 0.295161) AND (t."X_0" <= -0.144948) AND (t."X_4" > 0.019304)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" > 0.268450) AND (t."X_8" > 0.295161) AND (t."X_0" > -0.144948) AND (t."X_0" <= 1.664160)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" > 0.268450) AND (t."X_8" > 0.295161) AND (t."X_0" > -0.144948) AND (t."X_0" > 1.664160)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" <= 0.268450) AND (t."X_8" > -0.113655)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" <= 0.268450) AND (t."X_8" <= -0.113655) AND (t."X_0" > -0.094302) AND (t."X_7" <= -2.170018)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" <= 0.268450) AND (t."X_8" <= -0.113655) AND (t."X_0" > -0.094302) AND (t."X_7" > -2.170018)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" <= 0.268450) AND (t."X_8" <= -0.113655) AND (t."X_0" <= -0.094302) AND (t."X_3" <= -1.861098)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" <= -0.042639) AND (t."X_3" <= 1.974344) AND (t."X_3" <= 0.268450) AND (t."X_8" <= -0.113655) AND (t."X_0" <= -0.094302) AND (t."X_3" > -1.861098)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.249023 AS "P_1", 0.251953 AS "P_2", 0.249023 AS "P_3", 2 AS "D", 0.251953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.336052 AS "P_0", 0.075041 AS "P_1", 0.230016 AS "P_2", 0.358891 AS "P_3", 3 AS "D", 0.358891 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.121655 AS "P_0", 0.508516 AS "P_1", 0.284672 AS "P_2", 0.085158 AS "P_3", 1 AS "D", 0.508516 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.158824 AS "P_0", 0.123529 AS "P_1", 0.582353 AS "P_2", 0.135294 AS "P_3", 2 AS "D", 0.582353 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.095436 AS "P_0", 0.780083 AS "P_1", 0.074689 AS "P_2", 0.049793 AS "P_3", 1 AS "D", 0.780083 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.162162 AS "P_0", 0.141892 AS "P_1", 0.655405 AS "P_2", 0.040541 AS "P_3", 2 AS "D", 0.655405 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.136364 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.772727 AS "P_3", 3 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.105263 AS "P_2", 0.894737 AS "P_3", 3 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.055556 AS "P_2", 0.944444 AS "P_3", 3 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.045045 AS "P_0", 0.828829 AS "P_1", 0.076577 AS "P_2", 0.049550 AS "P_3", 1 AS "D", 0.828829 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.684211 AS "P_0", 0.210526 AS "P_1", 0.052632 AS "P_2", 0.052632 AS "P_3", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.086207 AS "P_0", 0.000000 AS "P_1", 0.896552 AS "P_2", 0.017241 AS "P_3", 2 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.211111 AS "P_0", 0.233333 AS "P_1", 0.500000 AS "P_2", 0.055556 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.372093 AS "P_0", 0.162791 AS "P_1", 0.348837 AS "P_2", 0.116279 AS "P_3", 0 AS "D", 0.372093 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.063830 AS "P_0", 0.297872 AS "P_1", 0.638298 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.638298 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.100000 AS "P_0", 0.433333 AS "P_1", 0.466667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.941176 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.242424 AS "P_0", 0.212121 AS "P_1", 0.393939 AS "P_2", 0.151515 AS "P_3", 2 AS "D", 0.393939 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.039216 AS "P_0", 0.000000 AS "P_1", 0.941176 AS "P_2", 0.019608 AS "P_3", 2 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.020833 AS "P_0", 0.000000 AS "P_1", 0.979167 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.300699 AS "P_0", 0.080420 AS "P_1", 0.244755 AS "P_2", 0.374126 AS "P_3", 3 AS "D", 0.374126 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.829268 AS "P_0", 0.000000 AS "P_1", 0.024390 AS "P_2", 0.146341 AS "P_3", 0 AS "D", 0.829268 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.285714 AS "P_0", 0.085213 AS "P_1", 0.315789 AS "P_2", 0.313283 AS "P_3", 2 AS "D", 0.315789 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.335260 AS "P_0", 0.069364 AS "P_1", 0.080925 AS "P_2", 0.514451 AS "P_3", 3 AS "D", 0.514451 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.190083 AS "P_0", 0.008264 AS "P_1", 0.074380 AS "P_2", 0.727273 AS "P_3", 3 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.673077 AS "P_0", 0.211538 AS "P_1", 0.096154 AS "P_2", 0.019231 AS "P_3", 0 AS "D", 0.673077 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.619048 AS "P_0", 0.000000 AS "P_1", 0.190476 AS "P_2", 0.190476 AS "P_3", 0 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.100000 AS "P_0", 0.010000 AS "P_1", 0.050000 AS "P_2", 0.840000 AS "P_3", 3 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.764706 AS "P_0", 0.000000 AS "P_1", 0.058824 AS "P_2", 0.176471 AS "P_3", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.571429 AS "P_1", 0.285714 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.777778 AS "P_0", 0.155556 AS "P_1", 0.066667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.853659 AS "P_0", 0.121951 AS "P_1", 0.024390 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.336788 AS "P_0", 0.005181 AS "P_1", 0.512953 AS "P_2", 0.145078 AS "P_3", 2 AS "D", 0.512953 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.237864 AS "P_0", 0.160194 AS "P_1", 0.131068 AS "P_2", 0.470874 AS "P_3", 3 AS "D", 0.470874 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.574074 AS "P_0", 0.009259 AS "P_1", 0.296296 AS "P_2", 0.120370 AS "P_3", 0 AS "D", 0.574074 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.035294 AS "P_0", 0.000000 AS "P_1", 0.788235 AS "P_2", 0.176471 AS "P_3", 2 AS "D", 0.788235 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.046875 AS "P_0", 0.000000 AS "P_1", 0.937500 AS "P_2", 0.015625 AS "P_3", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.777778 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.691358 AS "P_0", 0.012346 AS "P_1", 0.135802 AS "P_2", 0.160494 AS "P_3", 0 AS "D", 0.691358 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
   CAST(NULL AS FLOAT)  AS "Score_2",
   "DT_Output"."P_2" AS "Proba_2",
   CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN LN( "DT_Output"."P_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
   CAST(NULL AS FLOAT)  AS "Score_3",
   "DT_Output"."P_3" AS "Proba_3",
   CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN LN( "DT_Output"."P_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"