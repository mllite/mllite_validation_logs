WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_11", t1."Leaf_13", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_67", t1."Leaf_69", t1."Leaf_71", t1."Leaf_72", t1."Leaf_76", t1."Leaf_79", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_84", t1."Leaf_85", t1."Leaf_87", t1."Leaf_88", t1."Leaf_89", t1."Leaf_91", t1."Leaf_92", t1."Leaf_96", t1."Leaf_97", t1."Leaf_99", t1."Leaf_100", t1."Leaf_102", t1."Leaf_104", t1."Leaf_106", t1."Leaf_107", t1."Leaf_111", t1."Leaf_113", t1."Leaf_116", t1."Leaf_117", t1."Leaf_120", t1."Leaf_121", t1."Leaf_122", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" > 2.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 2.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" > 1.500000) AND (t."X_11" <= 3.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" > 1.500000) AND (t."X_11" > 3.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 175682.500000) AND (t."X_10" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 175682.500000) AND (t."X_10" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 2.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 42872.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" > 157510.000000) AND (t."X_2" <= 165467.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" > 157510.000000) AND (t."X_2" > 165467.500000) AND (t."X_2" <= 168816.000000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" > 157510.000000) AND (t."X_2" > 165467.500000) AND (t."X_2" > 168816.000000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 121973.500000) AND (t."X_0" <= 3.500000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 121973.500000) AND (t."X_0" > 3.500000)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 121973.500000) AND (t."X_2" <= 299460.000000)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 121973.500000) AND (t."X_2" > 299460.000000)) THEN 40 ELSE NULL END AS Leaf_40,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" > 1.500000)) THEN 42 ELSE NULL END AS Leaf_42,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" <= 0.500000)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 68880.000000)) THEN 45 ELSE NULL END AS Leaf_45,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" > 224486.000000) AND (t."X_4" > 13.500000) AND (t."X_2" <= 273137.500000)) THEN 51 ELSE NULL END AS Leaf_51,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" > 224486.000000) AND (t."X_4" > 13.500000) AND (t."X_2" > 273137.500000) AND (t."X_2" <= 358144.000000)) THEN 53 ELSE NULL END AS Leaf_53,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" > 224486.000000) AND (t."X_4" > 13.500000) AND (t."X_2" > 273137.500000) AND (t."X_2" > 358144.000000)) THEN 54 ELSE NULL END AS Leaf_54,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" > 208888.500000)) THEN 56 ELSE NULL END AS Leaf_56,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" > 3.500000) AND (t."X_2" <= 86122.000000)) THEN 59 ELSE NULL END AS Leaf_59,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 86122.000000) AND (t."X_2" <= 184211.500000)) THEN 61 ELSE NULL END AS Leaf_61,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 86122.000000) AND (t."X_2" > 184211.500000)) THEN 62 ELSE NULL END AS Leaf_62,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 173673.000000) AND (t."X_2" <= 184357.500000)) THEN 65 ELSE NULL END AS Leaf_65,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 173673.000000) AND (t."X_2" > 184357.500000) AND (t."X_2" <= 188939.000000)) THEN 67 ELSE NULL END AS Leaf_67,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 173673.000000) AND (t."X_2" > 184357.500000) AND (t."X_2" > 188939.000000) AND (t."X_2" <= 196126.500000)) THEN 69 ELSE NULL END AS Leaf_69,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 173673.000000) AND (t."X_2" > 184357.500000) AND (t."X_2" > 188939.000000) AND (t."X_2" > 196126.500000) AND (t."X_2" <= 202241.000000)) THEN 71 ELSE NULL END AS Leaf_71,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 173673.000000) AND (t."X_2" > 184357.500000) AND (t."X_2" > 188939.000000) AND (t."X_2" > 196126.500000) AND (t."X_2" > 202241.000000)) THEN 72 ELSE NULL END AS Leaf_72,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" > 13.500000) AND (t."X_0" > 2.500000)) THEN 76 ELSE NULL END AS Leaf_76,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 98242.500000) AND (t."X_2" <= 91004.500000)) THEN 79 ELSE NULL END AS Leaf_79,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 98242.500000) AND (t."X_2" > 91004.500000)) THEN 80 ELSE NULL END AS Leaf_80,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" > 13.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 129006.000000)) THEN 81 ELSE NULL END AS Leaf_81,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" > 13.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 129006.000000) AND (t."X_2" <= 151407.000000)) THEN 83 ELSE NULL END AS Leaf_83,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" > 13.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 129006.000000) AND (t."X_2" > 151407.000000)) THEN 84 ELSE NULL END AS Leaf_84,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 98242.500000) AND (t."X_2" <= 153773.500000)) THEN 85 ELSE NULL END AS Leaf_85,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 98242.500000) AND (t."X_2" > 153773.500000) AND (t."X_2" <= 161534.500000)) THEN 87 ELSE NULL END AS Leaf_87,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" <= 224486.000000) AND (t."X_2" <= 208888.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 173673.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 98242.500000) AND (t."X_2" > 153773.500000) AND (t."X_2" > 161534.500000)) THEN 88 ELSE NULL END AS Leaf_88,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" > 224486.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 368266.000000)) THEN 89 ELSE NULL END AS Leaf_89,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" > 224486.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 368266.000000) AND (t."X_2" <= 382704.500000)) THEN 91 ELSE NULL END AS Leaf_91,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 68880.000000) AND (t."X_2" > 224486.000000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 368266.000000) AND (t."X_2" > 382704.500000)) THEN 92 ELSE NULL END AS Leaf_92,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" > 138741.500000) AND (t."X_4" > 13.500000)) THEN 96 ELSE NULL END AS Leaf_96,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" > 138741.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 147582.000000)) THEN 97 ELSE NULL END AS Leaf_97,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" > 138741.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 147582.000000) AND (t."X_2" <= 155222.500000)) THEN 99 ELSE NULL END AS Leaf_99,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" > 138741.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 147582.000000) AND (t."X_2" > 155222.500000)) THEN 100 ELSE NULL END AS Leaf_100,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" > 125270.000000)) THEN 102 ELSE NULL END AS Leaf_102,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" > 14.500000)) THEN 104 ELSE NULL END AS Leaf_104,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" > 3.500000)) THEN 106 ELSE NULL END AS Leaf_106,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" <= 46185.500000)) THEN 107 ELSE NULL END AS Leaf_107,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" > 100370.500000) AND (t."X_2" <= 107010.000000)) THEN 111 ELSE NULL END AS Leaf_111,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" > 100370.500000) AND (t."X_2" > 107010.000000) AND (t."X_2" <= 112158.000000)) THEN 113 ELSE NULL END AS Leaf_113,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" > 100370.500000) AND (t."X_2" > 107010.000000) AND (t."X_2" > 112158.000000) AND (t."X_10" > 0.500000)) THEN 116 ELSE NULL END AS Leaf_116,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" > 100370.500000) AND (t."X_2" > 107010.000000) AND (t."X_2" > 112158.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 120128.500000)) THEN 117 ELSE NULL END AS Leaf_117,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" > 100370.500000) AND (t."X_2" > 107010.000000) AND (t."X_2" > 112158.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 120128.500000) AND (t."X_4" > 13.500000)) THEN 120 ELSE NULL END AS Leaf_120,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" > 100370.500000) AND (t."X_2" > 107010.000000) AND (t."X_2" > 112158.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 120128.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 121602.500000)) THEN 121 ELSE NULL END AS Leaf_121,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" > 100370.500000) AND (t."X_2" > 107010.000000) AND (t."X_2" > 112158.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 120128.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 121602.500000)) THEN 122 ELSE NULL END AS Leaf_122,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" <= 100370.500000) AND (t."X_2" > 49919.000000)) THEN 124 ELSE NULL END AS Leaf_124,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" <= 100370.500000) AND (t."X_2" <= 49919.000000) AND (t."X_4" <= 13.500000)) THEN 125 ELSE NULL END AS Leaf_125,
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 175682.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 42872.500000) AND (t."X_2" <= 157510.000000) AND (t."X_2" <= 138741.500000) AND (t."X_2" <= 125270.000000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 3.500000) AND (t."X_2" > 46185.500000) AND (t."X_2" <= 100370.500000) AND (t."X_2" <= 49919.000000) AND (t."X_4" > 13.500000)) THEN 126 ELSE NULL END AS Leaf_126
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
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
    SELECT 17 AS nid,  0.673469 AS "P_0", 0.326531 AS "P_1", 0 AS "D", 0.673469 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.303571 AS "P_0", 0.696429 AS "P_1", 1 AS "D", 0.696429 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.499331 AS "P_0", 0.500669 AS "P_1", 1 AS "D", 0.500669 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.627907 AS "P_0", 0.372093 AS "P_1", 0 AS "D", 0.627907 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.233333 AS "P_0", 0.766667 AS "P_1", 1 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.453249 AS "P_0", 0.546751 AS "P_1", 1 AS "D", 0.546751 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.646154 AS "P_0", 0.353846 AS "P_1", 0 AS "D", 0.646154 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.596491 AS "P_0", 0.403509 AS "P_1", 0 AS "D", 0.596491 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.486486 AS "P_0", 0.513514 AS "P_1", 1 AS "D", 0.513514 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.529412 AS "P_0", 0.470588 AS "P_1", 0 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.440000 AS "P_0", 0.560000 AS "P_1", 1 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.629630 AS "P_0", 0.370370 AS "P_1", 0 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output" AS 
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