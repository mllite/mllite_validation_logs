WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" > 2.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" <= 1.500000) AND (t."X_16" <= 8.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" <= 1.500000) AND (t."X_16" <= 10.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" <= 1.500000) AND (t."X_16" > 10.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" <= 2.500000) AND (t."X_44" <= 1.500000) AND (t."X_45" <= 1.500000) AND (t."X_36" <= 0.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" <= 2.500000) AND (t."X_44" <= 1.500000) AND (t."X_45" <= 1.500000) AND (t."X_36" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" <= 1.500000) AND (t."X_16" > 8.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 1.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" <= 1.500000) AND (t."X_16" > 8.500000) AND (t."X_0" > 1.500000) AND (t."X_45" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 1.500000) AND (t."X_16" <= 6.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 1.500000) AND (t."X_16" > 6.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" <= 2.500000) AND (t."X_44" <= 1.500000) AND (t."X_45" > 1.500000) AND (t."X_0" <= 0.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" <= 2.500000) AND (t."X_44" <= 1.500000) AND (t."X_45" > 1.500000) AND (t."X_0" > 0.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" <= 1.500000) AND (t."X_16" > 8.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" <= 1.500000) AND (t."X_16" > 8.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" <= 2.500000) AND (t."X_44" > 1.500000) AND (t."X_44" > 2.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" <= 2.500000) AND (t."X_44" > 1.500000) AND (t."X_44" <= 2.500000) AND (t."X_45" <= 0.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_43" <= 2.500000) AND (t."X_44" > 1.500000) AND (t."X_44" <= 2.500000) AND (t."X_45" > 0.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" <= 13.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" > 2.500000) AND (t."X_26" > 0.500000) AND (t."X_0" <= 2.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" > 2.500000) AND (t."X_26" > 0.500000) AND (t."X_0" > 2.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" > 2.500000) AND (t."X_26" <= 0.500000) AND (t."X_16" <= 14.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" > 2.500000) AND (t."X_26" <= 0.500000) AND (t."X_16" > 14.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" <= 2.500000) AND (t."X_44" > 3.500000) AND (t."X_0" <= 1.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" <= 2.500000) AND (t."X_44" > 3.500000) AND (t."X_0" > 1.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" <= 2.500000) AND (t."X_44" <= 3.500000) AND (t."X_43" <= 1.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000) AND (t."X_16" > 13.500000) AND (t."X_45" <= 2.500000) AND (t."X_44" <= 3.500000) AND (t."X_43" > 1.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" > 2.500000) AND (t."X_16" <= 1.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" > 2.500000) AND (t."X_16" > 1.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" > 2.500000) AND (t."X_45" > 1.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" > 2.500000) AND (t."X_45" <= 1.500000) AND (t."X_0" > 0.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" > 2.500000) AND (t."X_45" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_8" <= 336494.000000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" > 2.500000) AND (t."X_45" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_8" > 336494.000000)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 0 AS nid,  0.760718 AS "P_0", 0.239282 AS "P_1", 0 AS "D", 0.760718 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.935646 AS "P_0", 0.064354 AS "P_1", 0 AS "D", 0.935646 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.553867 AS "P_0", 0.446133 AS "P_1", 0 AS "D", 0.553867 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.669148 AS "P_0", 0.330852 AS "P_1", 0 AS "D", 0.669148 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.281897 AS "P_0", 0.718103 AS "P_1", 1 AS "D", 0.718103 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.951084 AS "P_0", 0.048916 AS "P_1", 0 AS "D", 0.951084 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.020501 AS "P_0", 0.979499 AS "P_1", 1 AS "D", 0.979499 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.700984 AS "P_0", 0.299016 AS "P_1", 0 AS "D", 0.700984 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.237257 AS "P_0", 0.762743 AS "P_1", 1 AS "D", 0.762743 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.376147 AS "P_0", 0.623853 AS "P_1", 1 AS "D", 0.623853 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.023529 AS "P_0", 0.976471 AS "P_1", 1 AS "D", 0.976471 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.320246 AS "P_0", 0.679754 AS "P_1", 1 AS "D", 0.679754 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.002488 AS "P_0", 0.997512 AS "P_1", 1 AS "D", 0.997512 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.896580 AS "P_0", 0.103421 AS "P_1", 0 AS "D", 0.896580 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.660989 AS "P_0", 0.339011 AS "P_1", 0 AS "D", 0.660989 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.644068 AS "P_0", 0.355932 AS "P_1", 0 AS "D", 0.644068 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.349580 AS "P_0", 0.650420 AS "P_1", 1 AS "D", 0.650420 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.698113 AS "P_0", 0.301887 AS "P_1", 0 AS "D", 0.698113 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.348629 AS "P_0", 0.651371 AS "P_1", 1 AS "D", 0.651371 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.074257 AS "P_0", 0.925743 AS "P_1", 1 AS "D", 0.925743 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.774725 AS "P_0", 0.225275 AS "P_1", 0 AS "D", 0.774725 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.605105 AS "P_0", 0.394895 AS "P_1", 0 AS "D", 0.605105 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.555385 AS "P_0", 0.444615 AS "P_1", 0 AS "D", 0.555385 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.319426 AS "P_0", 0.680574 AS "P_1", 1 AS "D", 0.680574 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.620833 AS "P_0", 0.379167 AS "P_1", 0 AS "D", 0.620833 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.370588 AS "P_0", 0.629412 AS "P_1", 1 AS "D", 0.629412 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.795956 AS "P_0", 0.204044 AS "P_1", 0 AS "D", 0.795956 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.575697 AS "P_0", 0.424303 AS "P_1", 0 AS "D", 0.575697 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.604651 AS "P_0", 0.395349 AS "P_1", 0 AS "D", 0.604651 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.329710 AS "P_0", 0.670290 AS "P_1", 1 AS "D", 0.670290 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.771739 AS "P_0", 0.228261 AS "P_1", 0 AS "D", 0.771739 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.310200 AS "P_0", 0.689800 AS "P_1", 1 AS "D", 0.689800 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.910819 AS "P_0", 0.089181 AS "P_1", 0 AS "D", 0.910819 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.746687 AS "P_0", 0.253313 AS "P_1", 0 AS "D", 0.746687 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.174825 AS "P_0", 0.825175 AS "P_1", 1 AS "D", 0.825175 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.043197 AS "P_0", 0.956803 AS "P_1", 1 AS "D", 0.956803 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.159420 AS "P_0", 0.840580 AS "P_1", 1 AS "D", 0.840580 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.963174 AS "P_0", 0.036826 AS "P_1", 0 AS "D", 0.963174 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.741913 AS "P_0", 0.258087 AS "P_1", 0 AS "D", 0.741913 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.802846 AS "P_0", 0.197154 AS "P_1", 0 AS "D", 0.802846 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.605023 AS "P_0", 0.394977 AS "P_1", 0 AS "D", 0.605023 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.663717 AS "P_0", 0.336283 AS "P_1", 0 AS "D", 0.663717 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.404040 AS "P_0", 0.595960 AS "P_1", 1 AS "D", 0.595960 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.205128 AS "P_0", 0.794872 AS "P_1", 1 AS "D", 0.794872 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.511111 AS "P_0", 0.488889 AS "P_1", 0 AS "D", 0.511111 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.814123 AS "P_0", 0.185877 AS "P_1", 0 AS "D", 0.814123 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.826695 AS "P_0", 0.173305 AS "P_1", 0 AS "D", 0.826695 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.021226 AS "P_0", 0.978774 AS "P_1", 1 AS "D", 0.978774 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.155556 AS "P_0", 0.844444 AS "P_1", 1 AS "D", 0.844444 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.005076 AS "P_0", 0.994924 AS "P_1", 1 AS "D", 0.994924 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.054054 AS "P_0", 0.945946 AS "P_1", 1 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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