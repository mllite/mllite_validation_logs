WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_38", t1."Leaf_40", t1."Leaf_42", t1."Leaf_44", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68", t1."Leaf_71", t1."Leaf_72", t1."Leaf_74", t1."Leaf_75", t1."Leaf_76", t1."Leaf_79", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86", t1."Leaf_89", t1."Leaf_90", t1."Leaf_92", t1."Leaf_93", t1."Leaf_97", t1."Leaf_98", t1."Leaf_102", t1."Leaf_104", t1."Leaf_107", t1."Leaf_108", t1."Leaf_109", t1."Leaf_111", t1."Leaf_112", t1."Leaf_115", t1."Leaf_116", t1."Leaf_118", t1."Leaf_122", t1."Leaf_123", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" > 2.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 261211.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 261211.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_42" <= 0.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_42" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_3" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_42" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_3" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_42" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_30" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_42" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_30" > 0.500000) AND (t."X_52" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_42" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_30" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" <= 152146.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_42" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_30" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" > 152146.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 0.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" <= 2.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_43" > 2.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_6" > 0.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_27" > 0.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" > 2.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" > 2.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" > 240609.000000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" <= 55404.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" <= 1.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_16" > 14.000000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_39" > 0.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_16" <= 14.000000) AND (t."X_24" <= 0.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_16" <= 14.000000) AND (t."X_24" > 0.500000) AND (t."X_2" <= 0.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_16" <= 14.000000) AND (t."X_24" > 0.500000) AND (t."X_2" > 0.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_39" <= 0.500000) AND (t."X_29" <= 0.500000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_39" <= 0.500000) AND (t."X_29" > 0.500000) AND (t."X_8" <= 153773.500000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_39" <= 0.500000) AND (t."X_29" > 0.500000) AND (t."X_8" > 153773.500000) AND (t."X_8" <= 184461.500000)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" > 0.500000) AND (t."X_8" <= 240609.000000) AND (t."X_8" > 55404.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_39" <= 0.500000) AND (t."X_29" > 0.500000) AND (t."X_8" > 153773.500000) AND (t."X_8" > 184461.500000)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_39" > 0.500000) AND (t."X_8" <= 173973.500000)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_39" > 0.500000) AND (t."X_8" > 173973.500000)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_8" > 36879.500000)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_8" <= 36879.500000) AND (t."X_16" <= 13.500000)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_8" <= 36879.500000) AND (t."X_16" > 13.500000)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" <= 0.500000) AND (t."X_8" > 325185.000000) AND (t."X_24" <= 0.500000)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" <= 0.500000) AND (t."X_8" > 325185.000000) AND (t."X_24" > 0.500000)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" <= 0.500000) AND (t."X_8" <= 325185.000000) AND (t."X_16" <= 15.500000)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" <= 0.500000) AND (t."X_8" <= 325185.000000) AND (t."X_16" > 15.500000) AND (t."X_8" <= 130977.000000)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 2.500000) AND (t."X_45" <= 0.500000) AND (t."X_8" <= 325185.000000) AND (t."X_16" > 15.500000) AND (t."X_8" > 130977.000000)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_45" > 0.500000) AND (t."X_45" <= 3.500000)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_43" > 1.500000) AND (t."X_43" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_45" > 0.500000) AND (t."X_45" > 3.500000)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" > 1.500000) AND (t."X_0" <= 0.500000)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" > 1.500000) AND (t."X_0" > 0.500000)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" > 0.500000)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" <= 0.500000)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" <= 0.500000) AND (t."X_8" <= 75101.000000)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" <= 0.500000) AND (t."X_8" > 75101.000000)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_1" > 0.500000)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_8" <= 77670.000000) AND (t."X_45" <= 3.500000)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_8" <= 77670.000000) AND (t."X_45" > 3.500000)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_8" > 77670.000000) AND (t."X_8" <= 162240.500000)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_8" > 77670.000000) AND (t."X_8" > 162240.500000) AND (t."X_11" <= 0.500000)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_8" > 77670.000000) AND (t."X_8" > 162240.500000) AND (t."X_11" > 0.500000)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" > 314228.500000) AND (t."X_8" <= 427697.500000)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" > 314228.500000) AND (t."X_8" > 427697.500000)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 314228.500000) AND (t."X_37" > 0.500000)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 314228.500000) AND (t."X_37" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_8" > 181972.000000)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 314228.500000) AND (t."X_37" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_8" <= 181972.000000) AND (t."X_8" <= 167600.500000)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 314228.500000) AND (t."X_37" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_8" <= 181972.000000) AND (t."X_8" > 167600.500000)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 314228.500000) AND (t."X_37" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_13" <= 0.500000)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_45" > 1.500000) AND (t."X_43" <= 1.500000) AND (t."X_44" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 314228.500000) AND (t."X_37" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_13" > 0.500000)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 1 AS nid,  0.938211 AS "P_0", 0.061789 AS "P_1", 0 AS "D", 0.938211 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.556802 AS "P_0", 0.443198 AS "P_1", 0 AS "D", 0.556802 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.675944 AS "P_0", 0.324056 AS "P_1", 0 AS "D", 0.675944 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.271429 AS "P_0", 0.728571 AS "P_1", 1 AS "D", 0.728571 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.716129 AS "P_0", 0.283871 AS "P_1", 0 AS "D", 0.716129 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.184211 AS "P_0", 0.815789 AS "P_1", 1 AS "D", 0.815789 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.219178 AS "P_0", 0.780822 AS "P_1", 1 AS "D", 0.780822 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.450000 AS "P_0", 0.550000 AS "P_1", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.197183 AS "P_0", 0.802817 AS "P_1", 1 AS "D", 0.802817 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.954048 AS "P_0", 0.045952 AS "P_1", 0 AS "D", 0.954048 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.234818 AS "P_0", 0.765182 AS "P_1", 1 AS "D", 0.765182 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.260870 AS "P_0", 0.739130 AS "P_1", 1 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.631579 AS "P_0", 0.368421 AS "P_1", 0 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.676056 AS "P_0", 0.323944 AS "P_1", 0 AS "D", 0.676056 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.870968 AS "P_0", 0.129032 AS "P_1", 0 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.517241 AS "P_0", 0.482759 AS "P_1", 0 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.440000 AS "P_0", 0.560000 AS "P_1", 1 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.185714 AS "P_0", 0.814286 AS "P_1", 1 AS "D", 0.814286 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.275244 AS "P_0", 0.724756 AS "P_1", 1 AS "D", 0.724756 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.039370 AS "P_0", 0.960630 AS "P_1", 1 AS "D", 0.960630 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.031746 AS "P_0", 0.968254 AS "P_1", 1 AS "D", 0.968254 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.308851 AS "P_0", 0.691149 AS "P_1", 1 AS "D", 0.691149 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.060241 AS "P_0", 0.939759 AS "P_1", 1 AS "D", 0.939759 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.280992 AS "P_0", 0.719008 AS "P_1", 1 AS "D", 0.719008 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.595745 AS "P_0", 0.404255 AS "P_1", 0 AS "D", 0.595745 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.440000 AS "P_0", 0.560000 AS "P_1", 1 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.380952 AS "P_0", 0.619048 AS "P_1", 1 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
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