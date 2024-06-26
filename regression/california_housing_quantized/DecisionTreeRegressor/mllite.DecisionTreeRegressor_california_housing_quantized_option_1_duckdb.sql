WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_quantized" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= 7.500000) THEN CASE WHEN (model_input."X_7" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 4.500000) THEN CASE WHEN (model_input."X_0" <= 5.500000) THEN 41 ELSE CASE WHEN (model_input."X_0" <= 7.500000) THEN 61 ELSE 62 END END ELSE CASE WHEN (model_input."X_0" <= 2.500000) THEN CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_6" <= 4.500000) THEN 47 ELSE 48 END ELSE CASE WHEN (model_input."X_1" <= 8.500000) THEN 49 ELSE 50 END END ELSE 44 END END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN 21 ELSE CASE WHEN (model_input."X_4" <= 4.500000) THEN CASE WHEN (model_input."X_7" <= 5.500000) THEN CASE WHEN (model_input."X_2" <= 8.500000) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_2" <= 9.500000) THEN 59 ELSE 60 END END ELSE CASE WHEN (model_input."X_7" <= 5.500000) THEN CASE WHEN (model_input."X_4" <= 7.500000) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_2" <= 9.500000) THEN 29 ELSE 30 END END END END END ELSE CASE WHEN (model_input."X_7" <= 8.500000) THEN CASE WHEN (model_input."X_2" <= 4.500000) THEN 7 ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN CASE WHEN (model_input."X_0" <= 5.500000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_1" <= 3.500000) THEN 35 ELSE 36 END END ELSE 20 END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 2.500000) THEN 53 ELSE CASE WHEN (model_input."X_4" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN 57 ELSE 58 END ELSE 56 END END ELSE CASE WHEN (model_input."X_3" <= 0.500000) THEN CASE WHEN (model_input."X_2" <= 9.500000) THEN CASE WHEN (model_input."X_0" <= 7.500000) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_5" <= 2.500000) THEN 15 ELSE 16 END END ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 206854.968750 AS "E"
    UNION ALL
    SELECT 1 AS nid, 175773.156250 AS "E"
    UNION ALL
    SELECT 2 AS nid, 338188.187500 AS "E"
    UNION ALL
    SELECT 3 AS nid, 297410.062500 AS "E"
    UNION ALL
    SELECT 4 AS nid, 424737.687500 AS "E"
    UNION ALL
    SELECT 5 AS nid, 138054.140625 AS "E"
    UNION ALL
    SELECT 6 AS nid, 213313.140625 AS "E"
    UNION ALL
    SELECT 7 AS nid, 272883.375000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 338214.312500 AS "E"
    UNION ALL
    SELECT 9 AS nid, 398518.531250 AS "E"
    UNION ALL
    SELECT 10 AS nid, 461813.843750 AS "E"
    UNION ALL
    SELECT 11 AS nid, 374305.062500 AS "E"
    UNION ALL
    SELECT 12 AS nid, 469636.843750 AS "E"
    UNION ALL
    SELECT 13 AS nid, 405858.062500 AS "E"
    UNION ALL
    SELECT 14 AS nid, 270180.187500 AS "E"
    UNION ALL
    SELECT 15 AS nid, 244644.562500 AS "E"
    UNION ALL
    SELECT 16 AS nid, 500001.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 415025.500000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 112500.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 320746.125000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 376291.593750 AS "E"
    UNION ALL
    SELECT 21 AS nid, 201591.375000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 263455.906250 AS "E"
    UNION ALL
    SELECT 23 AS nid, 239787.468750 AS "E"
    UNION ALL
    SELECT 24 AS nid, 306067.093750 AS "E"
    UNION ALL
    SELECT 25 AS nid, 208720.031250 AS "E"
    UNION ALL
    SELECT 26 AS nid, 272417.718750 AS "E"
    UNION ALL
    SELECT 27 AS nid, 279240.468750 AS "E"
    UNION ALL
    SELECT 28 AS nid, 340219.656250 AS "E"
    UNION ALL
    SELECT 29 AS nid, 313404.062500 AS "E"
    UNION ALL
    SELECT 30 AS nid, 380175.125000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 263589.156250 AS "E"
    UNION ALL
    SELECT 32 AS nid, 347681.500000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 335959.500000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 290253.062500 AS "E"
    UNION ALL
    SELECT 35 AS nid, 273431.875000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 354033.406250 AS "E"
    UNION ALL
    SELECT 37 AS nid, 374590.375000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 324844.875000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 159036.734375 AS "E"
    UNION ALL
    SELECT 40 AS nid, 117593.945312 AS "E"
    UNION ALL
    SELECT 41 AS nid, 219185.046875 AS "E"
    UNION ALL
    SELECT 42 AS nid, 142483.625000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 141071.031250 AS "E"
    UNION ALL
    SELECT 44 AS nid, 92179.703125 AS "E"
    UNION ALL
    SELECT 45 AS nid, 195907.703125 AS "E"
    UNION ALL
    SELECT 46 AS nid, 104748.890625 AS "E"
    UNION ALL
    SELECT 47 AS nid, 172804.296875 AS "E"
    UNION ALL
    SELECT 48 AS nid, 219709.765625 AS "E"
    UNION ALL
    SELECT 49 AS nid, 126490.187500 AS "E"
    UNION ALL
    SELECT 50 AS nid, 84657.953125 AS "E"
    UNION ALL
    SELECT 51 AS nid, 187129.718750 AS "E"
    UNION ALL
    SELECT 52 AS nid, 228412.093750 AS "E"
    UNION ALL
    SELECT 53 AS nid, 384570.656250 AS "E"
    UNION ALL
    SELECT 54 AS nid, 423425.750000 AS "E"
    UNION ALL
    SELECT 55 AS nid, 390549.593750 AS "E"
    UNION ALL
    SELECT 56 AS nid, 437820.093750 AS "E"
    UNION ALL
    SELECT 57 AS nid, 442332.406250 AS "E"
    UNION ALL
    SELECT 58 AS nid, 371240.875000 AS "E"
    UNION ALL
    SELECT 59 AS nid, 260516.484375 AS "E"
    UNION ALL
    SELECT 60 AS nid, 300754.468750 AS "E"
    UNION ALL
    SELECT 61 AS nid, 159206.046875 AS "E"
    UNION ALL
    SELECT 62 AS nid, 122985.335938 AS "E"
  ) AS "Values"
 ),
"DT_Output" AS 
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