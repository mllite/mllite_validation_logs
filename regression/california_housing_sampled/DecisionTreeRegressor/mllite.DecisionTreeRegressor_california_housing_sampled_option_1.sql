WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= 3.908200) THEN CASE WHEN (model_input."X_7" <= 2.908500) THEN 17 ELSE CASE WHEN (model_input."X_2" <= 42.500000) THEN 19 ELSE CASE WHEN (model_input."X_0" <= -122.400002) THEN CASE WHEN (model_input."X_4" <= 407.000000) THEN CASE WHEN (model_input."X_5" <= 571.500000) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_1" <= 37.785000) THEN 27 ELSE 28 END END ELSE CASE WHEN (model_input."X_1" <= 34.125000) THEN CASE WHEN (model_input."X_0" <= -118.354996) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_7" <= 3.689000) THEN 37 ELSE 38 END END END END END ELSE CASE WHEN (model_input."X_7" <= 6.154800) THEN CASE WHEN (model_input."X_1" <= 37.985001) THEN CASE WHEN (model_input."X_0" <= -118.115005) THEN CASE WHEN (model_input."X_1" <= 34.174999) THEN CASE WHEN (model_input."X_0" <= -118.365005) THEN 61 ELSE 62 END ELSE 60 END ELSE 58 END ELSE CASE WHEN (model_input."X_0" <= -122.324997) THEN CASE WHEN (model_input."X_7" <= 3.971800) THEN CASE WHEN (model_input."X_6" <= 248.500000) THEN 53 ELSE 54 END ELSE 52 END ELSE CASE WHEN (model_input."X_0" <= -120.285004) THEN 55 ELSE 56 END END END ELSE CASE WHEN (model_input."X_7" <= 7.949050) THEN CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_0" <= -117.244995) THEN CASE WHEN (model_input."X_1" <= 33.619999) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_5" <= 546.500000) THEN 35 ELSE 36 END END ELSE CASE WHEN (model_input."X_2" <= 50.500000) THEN CASE WHEN (model_input."X_1" <= 33.875000) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_1" <= 37.654999) THEN 43 ELSE 44 END END END ELSE CASE WHEN (model_input."X_5" <= 56.500000) THEN CASE WHEN (model_input."X_4" <= 21.500000) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 18.500000) THEN CASE WHEN (model_input."X_7" <= 11.343700) THEN 15 ELSE 16 END ELSE 14 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 207367.203125 AS "E"
    UNION ALL
    SELECT 1 AS nid, 157517.093750 AS "E"
    UNION ALL
    SELECT 2 AS nid, 279541.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 246756.015625 AS "E"
    UNION ALL
    SELECT 4 AS nid, 387225.406250 AS "E"
    UNION ALL
    SELECT 5 AS nid, 354798.218750 AS "E"
    UNION ALL
    SELECT 6 AS nid, 452079.562500 AS "E"
    UNION ALL
    SELECT 7 AS nid, 196750.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 458462.812500 AS "E"
    UNION ALL
    SELECT 9 AS nid, 281000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 112500.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 331826.093750 AS "E"
    UNION ALL
    SELECT 12 AS nid, 423715.031250 AS "E"
    UNION ALL
    SELECT 13 AS nid, 411071.156250 AS "E"
    UNION ALL
    SELECT 14 AS nid, 478773.781250 AS "E"
    UNION ALL
    SELECT 15 AS nid, 387668.593750 AS "E"
    UNION ALL
    SELECT 16 AS nid, 500001.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 133574.375000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 191385.296875 AS "E"
    UNION ALL
    SELECT 19 AS nid, 179502.671875 AS "E"
    UNION ALL
    SELECT 20 AS nid, 260253.812500 AS "E"
    UNION ALL
    SELECT 21 AS nid, 356318.625000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 220954.562500 AS "E"
    UNION ALL
    SELECT 23 AS nid, 299466.656250 AS "E"
    UNION ALL
    SELECT 24 AS nid, 401800.187500 AS "E"
    UNION ALL
    SELECT 25 AS nid, 420400.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 275280.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 377250.000000 AS "E"
    UNION ALL
    SELECT 28 AS nid, 500001.000000 AS "E"
    UNION ALL
    SELECT 29 AS nid, 258808.859375 AS "E"
    UNION ALL
    SELECT 30 AS nid, 180734.375000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 385100.156250 AS "E"
    UNION ALL
    SELECT 32 AS nid, 226066.671875 AS "E"
    UNION ALL
    SELECT 33 AS nid, 343561.031250 AS "E"
    UNION ALL
    SELECT 34 AS nid, 263372.218750 AS "E"
    UNION ALL
    SELECT 35 AS nid, 159100.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 276406.250000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 168607.406250 AS "E"
    UNION ALL
    SELECT 38 AS nid, 246220.000000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 429420.593750 AS "E"
    UNION ALL
    SELECT 40 AS nid, 334523.250000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 410373.031250 AS "E"
    UNION ALL
    SELECT 42 AS nid, 478750.625000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 498667.500000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 419000.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 479280.812500 AS "E"
    UNION ALL
    SELECT 46 AS nid, 398068.062500 AS "E"
    UNION ALL
    SELECT 47 AS nid, 256633.390625 AS "E"
    UNION ALL
    SELECT 48 AS nid, 187233.046875 AS "E"
    UNION ALL
    SELECT 49 AS nid, 265308.000000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 165545.562500 AS "E"
    UNION ALL
    SELECT 51 AS nid, 140950.000000 AS "E"
    UNION ALL
    SELECT 52 AS nid, 276121.750000 AS "E"
    UNION ALL
    SELECT 53 AS nid, 98900.000000 AS "E"
    UNION ALL
    SELECT 54 AS nid, 183000.000000 AS "E"
    UNION ALL
    SELECT 55 AS nid, 162489.890625 AS "E"
    UNION ALL
    SELECT 56 AS nid, 437500.000000 AS "E"
    UNION ALL
    SELECT 57 AS nid, 277507.500000 AS "E"
    UNION ALL
    SELECT 58 AS nid, 223328.843750 AS "E"
    UNION ALL
    SELECT 59 AS nid, 321947.937500 AS "E"
    UNION ALL
    SELECT 60 AS nid, 260281.453125 AS "E"
    UNION ALL
    SELECT 61 AS nid, 386896.437500 AS "E"
    UNION ALL
    SELECT 62 AS nid, 269792.468750 AS "E"
  ) AS "Values"
 ),
"DT_output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   "DT_Output"."E" AS "Estimator"
FROM "DT_Output"