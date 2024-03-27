WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 3.500000) THEN CASE WHEN (model_input."X_3" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 5.000000) THEN CASE WHEN (model_input."X_4" <= 0.500000) THEN 41 ELSE CASE WHEN (model_input."X_0" <= 2.500000) THEN 55 ELSE CASE WHEN (model_input."X_7" <= 7.000000) THEN 57 ELSE 58 END END END ELSE CASE WHEN (model_input."X_7" <= 8.500000) THEN CASE WHEN (model_input."X_9" <= 7.000000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_9" <= 8.500000) THEN 59 ELSE 60 END END ELSE 12 END END ELSE CASE WHEN (model_input."X_4" <= 6.500000) THEN CASE WHEN (model_input."X_0" <= 6.500000) THEN CASE WHEN (model_input."X_2" <= 7.500000) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_5" <= 4.000000) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_2" <= 7.000000) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_3" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 3.000000) THEN CASE WHEN (model_input."X_1" <= 6.000000) THEN CASE WHEN (model_input."X_6" <= 4.500000) THEN 49 ELSE 50 END ELSE 22 END ELSE CASE WHEN (model_input."X_9" <= 6.500000) THEN CASE WHEN (model_input."X_9" <= 2.000000) THEN 61 ELSE 62 END ELSE 24 END END ELSE CASE WHEN (model_input."X_0" <= 3.500000) THEN CASE WHEN (model_input."X_7" <= 3.500000) THEN CASE WHEN (model_input."X_6" <= 6.500000) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_8" <= 1.500000) THEN 17 ELSE CASE WHEN (model_input."X_6" <= 8.000000) THEN 47 ELSE 48 END END END ELSE CASE WHEN (model_input."X_4" <= 3.500000) THEN CASE WHEN (model_input."X_4" <= 2.500000) THEN CASE WHEN (model_input."X_0" <= 8.500000) THEN 33 ELSE 34 END ELSE 32 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 7.000000) THEN 45 ELSE 46 END ELSE 40 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.653899 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.798788 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.118641 AS "E"
    UNION ALL
    SELECT 3 AS nid, 7.878839 AS "E"
    UNION ALL
    SELECT 4 AS nid, 13.572739 AS "E"
    UNION ALL
    SELECT 5 AS nid, 13.509835 AS "E"
    UNION ALL
    SELECT 6 AS nid, 18.295422 AS "E"
    UNION ALL
    SELECT 7 AS nid, 16.037436 AS "E"
    UNION ALL
    SELECT 8 AS nid, 20.032331 AS "E"
    UNION ALL
    SELECT 9 AS nid, 5.768819 AS "E"
    UNION ALL
    SELECT 10 AS nid, 9.413399 AS "E"
    UNION ALL
    SELECT 11 AS nid, 8.853518 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 13 AS nid, 17.866108 AS "E"
    UNION ALL
    SELECT 14 AS nid, 14.541251 AS "E"
    UNION ALL
    SELECT 15 AS nid, 19.139725 AS "E"
    UNION ALL
    SELECT 16 AS nid, 15.318877 AS "E"
    UNION ALL
    SELECT 17 AS nid, 19.544313 AS "E"
    UNION ALL
    SELECT 18 AS nid, 14.040944 AS "E"
    UNION ALL
    SELECT 19 AS nid, 10.913614 AS "E"
    UNION ALL
    SELECT 20 AS nid, 14.453916 AS "E"
    UNION ALL
    SELECT 21 AS nid, 9.288894 AS "E"
    UNION ALL
    SELECT 22 AS nid, 12.538334 AS "E"
    UNION ALL
    SELECT 23 AS nid, 13.731218 AS "E"
    UNION ALL
    SELECT 24 AS nid, 17.706060 AS "E"
    UNION ALL
    SELECT 25 AS nid, 12.825310 AS "E"
    UNION ALL
    SELECT 26 AS nid, 16.562454 AS "E"
    UNION ALL
    SELECT 27 AS nid, 11.536929 AS "E"
    UNION ALL
    SELECT 28 AS nid, 15.659747 AS "E"
    UNION ALL
    SELECT 29 AS nid, 17.869022 AS "E"
    UNION ALL
    SELECT 30 AS nid, 20.993803 AS "E"
    UNION ALL
    SELECT 31 AS nid, 18.591429 AS "E"
    UNION ALL
    SELECT 32 AS nid, 12.812179 AS "E"
    UNION ALL
    SELECT 33 AS nid, 19.166998 AS "E"
    UNION ALL
    SELECT 34 AS nid, 15.138000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 15.180140 AS "E"
    UNION ALL
    SELECT 36 AS nid, 17.944769 AS "E"
    UNION ALL
    SELECT 37 AS nid, 14.654117 AS "E"
    UNION ALL
    SELECT 38 AS nid, 17.168194 AS "E"
    UNION ALL
    SELECT 39 AS nid, 19.261576 AS "E"
    UNION ALL
    SELECT 40 AS nid, 21.859917 AS "E"
    UNION ALL
    SELECT 41 AS nid, 3.724934 AS "E"
    UNION ALL
    SELECT 42 AS nid, 6.450114 AS "E"
    UNION ALL
    SELECT 43 AS nid, 10.867763 AS "E"
    UNION ALL
    SELECT 44 AS nid, 13.321372 AS "E"
    UNION ALL
    SELECT 45 AS nid, 18.494732 AS "E"
    UNION ALL
    SELECT 46 AS nid, 20.795259 AS "E"
    UNION ALL
    SELECT 47 AS nid, 14.389947 AS "E"
    UNION ALL
    SELECT 48 AS nid, 10.899920 AS "E"
    UNION ALL
    SELECT 49 AS nid, 8.264444 AS "E"
    UNION ALL
    SELECT 50 AS nid, 10.313343 AS "E"
    UNION ALL
    SELECT 51 AS nid, 8.346430 AS "E"
    UNION ALL
    SELECT 52 AS nid, 10.881878 AS "E"
    UNION ALL
    SELECT 53 AS nid, 9.805065 AS "E"
    UNION ALL
    SELECT 54 AS nid, 7.471248 AS "E"
    UNION ALL
    SELECT 55 AS nid, 5.469125 AS "E"
    UNION ALL
    SELECT 56 AS nid, 7.431103 AS "E"
    UNION ALL
    SELECT 57 AS nid, 8.224979 AS "E"
    UNION ALL
    SELECT 58 AS nid, 5.843349 AS "E"
    UNION ALL
    SELECT 59 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 60 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 61 AS nid, 12.661460 AS "E"
    UNION ALL
    SELECT 62 AS nid, 14.587024 AS "E"
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