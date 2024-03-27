WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.021580) THEN CASE WHEN (model_input."X_0" <= -0.021861) THEN CASE WHEN (model_input."X_2" <= -0.071414) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_9" <= 0.015491) THEN CASE WHEN (model_input."X_8" <= 0.005582) THEN CASE WHEN (model_input."X_8" <= -0.058664) THEN 45 ELSE 46 END ELSE 42 END ELSE 38 END END ELSE CASE WHEN (model_input."X_9" <= 0.032059) THEN CASE WHEN (model_input."X_4" <= -0.038720) THEN CASE WHEN (model_input."X_9" <= -0.054925) THEN 19 ELSE CASE WHEN (model_input."X_9" <= -0.021788) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_5" <= -0.005698) THEN CASE WHEN (model_input."X_6" <= -0.001062) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_5" <= 0.018414) THEN 33 ELSE 34 END END END ELSE CASE WHEN (model_input."X_5" <= -0.023861) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_2" <= 0.012117) THEN CASE WHEN (model_input."X_4" <= 0.100252) THEN CASE WHEN (model_input."X_5" <= 0.036421) THEN CASE WHEN (model_input."X_5" <= -0.005541) THEN 43 ELSE CASE WHEN (model_input."X_8" <= 0.036416) THEN 47 ELSE 48 END END ELSE 26 END ELSE 6 END ELSE CASE WHEN (model_input."X_2" <= 0.117742) THEN CASE WHEN (model_input."X_2" <= 0.049301) THEN CASE WHEN (model_input."X_5" <= 0.017632) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_9" <= 0.000993) THEN 35 ELSE CASE WHEN (model_input."X_9" <= 0.052770) THEN 39 ELSE 40 END END END ELSE 8 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 128.843750 AS "E"
    UNION ALL
    SELECT 1 AS nid, 98.425529 AS "E"
    UNION ALL
    SELECT 2 AS nid, 212.941177 AS "E"
    UNION ALL
    SELECT 3 AS nid, 151.250000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 267.777771 AS "E"
    UNION ALL
    SELECT 5 AS nid, 128.666672 AS "E"
    UNION ALL
    SELECT 6 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 258.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 346.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 70.857140 AS "E"
    UNION ALL
    SELECT 10 AS nid, 120.692307 AS "E"
    UNION ALL
    SELECT 11 AS nid, 113.875000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 202.500000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 281.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 110.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 58.625000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 171.333328 AS "E"
    UNION ALL
    SELECT 18 AS nid, 105.666664 AS "E"
    UNION ALL
    SELECT 19 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 200.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 221.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 270.333344 AS "E"
    UNION ALL
    SELECT 23 AS nid, 181.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 135.399994 AS "E"
    UNION ALL
    SELECT 26 AS nid, 95.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 89.444443 AS "E"
    UNION ALL
    SELECT 28 AS nid, 117.833336 AS "E"
    UNION ALL
    SELECT 29 AS nid, 47.000000 AS "E"
    UNION ALL
    SELECT 30 AS nid, 94.750000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 129.666672 AS "E"
    UNION ALL
    SELECT 34 AS nid, 106.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 281.666656 AS "E"
    UNION ALL
    SELECT 37 AS nid, 65.166664 AS "E"
    UNION ALL
    SELECT 38 AS nid, 39.000000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 275.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 61.200001 AS "E"
    UNION ALL
    SELECT 42 AS nid, 85.000000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 131.750000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 70.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 59.000000 AS "E"
    UNION ALL
    SELECT 47 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 49 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 222.000000 AS "E"
  ) AS "Values"
 ),
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_1" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.027037) THEN CASE WHEN (model_input."X_2" <= 0.116126) THEN CASE WHEN (model_input."X_8" <= 0.012396) THEN CASE WHEN (model_input."X_6" <= 0.035754) THEN CASE WHEN (model_input."X_5" <= -0.025113) THEN CASE WHEN (model_input."X_1" <= 0.003019) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_4" <= 0.017694) THEN 27 ELSE 28 END END ELSE CASE WHEN (model_input."X_1" <= 0.003019) THEN CASE WHEN (model_input."X_7" <= -0.072889) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_4" <= -0.008449) THEN 41 ELSE 42 END END END ELSE CASE WHEN (model_input."X_5" <= -0.015719) THEN 13 ELSE CASE WHEN (model_input."X_3" <= -0.041820) THEN 17 ELSE CASE WHEN (model_input."X_2" <= -0.001895) THEN 43 ELSE 44 END END END END ELSE 8 END ELSE CASE WHEN (model_input."X_0" <= 0.045341) THEN CASE WHEN (model_input."X_6" <= -0.013948) THEN CASE WHEN (model_input."X_4" <= -0.027024) THEN 19 ELSE CASE WHEN (model_input."X_9" <= 0.034130) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_3" <= 0.056301) THEN CASE WHEN (model_input."X_5" <= -0.057837) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_4" <= -0.010513) THEN 37 ELSE 38 END END END ELSE CASE WHEN (model_input."X_8" <= 0.039675) THEN CASE WHEN (model_input."X_2" <= -0.022373) THEN 35 ELSE 36 END ELSE 6 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 122.312500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 100.113205 AS "E"
    UNION ALL
    SELECT 2 AS nid, 229.272720 AS "E"
    UNION ALL
    SELECT 3 AS nid, 261.750000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 142.666672 AS "E"
    UNION ALL
    SELECT 5 AS nid, 116.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 95.384613 AS "E"
    UNION ALL
    SELECT 8 AS nid, 346.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 295.500000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 228.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 81.923080 AS "E"
    UNION ALL
    SELECT 12 AS nid, 135.769226 AS "E"
    UNION ALL
    SELECT 13 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 120.454544 AS "E"
    UNION ALL
    SELECT 15 AS nid, 205.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 251.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 95.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 130.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 287.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 93.166664 AS "E"
    UNION ALL
    SELECT 22 AS nid, 63.933334 AS "E"
    UNION ALL
    SELECT 23 AS nid, 114.875000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 82.312500 AS "E"
    UNION ALL
    SELECT 25 AS nid, 150.250000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 79.500000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 71.636360 AS "E"
    UNION ALL
    SELECT 28 AS nid, 105.800003 AS "E"
    UNION ALL
    SELECT 29 AS nid, 78.250000 AS "E"
    UNION ALL
    SELECT 30 AS nid, 47.571430 AS "E"
    UNION ALL
    SELECT 31 AS nid, 64.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 92.500000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 191.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 108.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 243.000000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 292.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 45.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 63.000000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 132.500000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 122.500000 AS "E"
  ) AS "Values"
 ),
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_2" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.000717) THEN CASE WHEN (model_input."X_3" <= 0.030480) THEN CASE WHEN (model_input."X_8" <= -0.057812) THEN CASE WHEN (model_input."X_3" <= -0.024606) THEN CASE WHEN (model_input."X_9" <= -0.044570) THEN CASE WHEN (model_input."X_5" <= -0.058150) THEN 45 ELSE 46 END ELSE 28 END ELSE CASE WHEN (model_input."X_7" <= -0.021043) THEN CASE WHEN (model_input."X_2" <= -0.013751) THEN 59 ELSE 60 END ELSE 50 END END ELSE CASE WHEN (model_input."X_5" <= -0.001157) THEN CASE WHEN (model_input."X_8" <= -0.026359) THEN CASE WHEN (model_input."X_0" <= 0.048974) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_2" <= -0.060635) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_3" <= -0.003949) THEN CASE WHEN (model_input."X_9" <= 0.011349) THEN 53 ELSE 54 END ELSE 36 END END END ELSE CASE WHEN (model_input."X_9" <= 0.017562) THEN CASE WHEN (model_input."X_8" <= -0.020976) THEN 19 ELSE 20 END ELSE 12 END END ELSE CASE WHEN (model_input."X_2" <= 0.057385) THEN CASE WHEN (model_input."X_2" <= -0.006745) THEN CASE WHEN (model_input."X_3" <= -0.022885) THEN CASE WHEN (model_input."X_6" <= -0.017629) THEN 31 ELSE CASE WHEN (model_input."X_8" <= 0.023577) THEN 55 ELSE 56 END END ELSE 8 END ELSE CASE WHEN (model_input."X_8" <= 0.046612) THEN CASE WHEN (model_input."X_9" <= 0.027917) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_5" <= 0.022172) THEN 33 ELSE CASE WHEN (model_input."X_9" <= 0.009278) THEN 57 ELSE 58 END END END END ELSE CASE WHEN (model_input."X_8" <= 0.030226) THEN CASE WHEN (model_input."X_6" <= -0.036038) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_2" <= 0.068702) THEN CASE WHEN (model_input."X_0" <= 0.009016) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_3" <= 0.033922) THEN 41 ELSE CASE WHEN (model_input."X_0" <= 0.028995) THEN 61 ELSE 62 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 145.359375 AS "E"
    UNION ALL
    SELECT 1 AS nid, 98.425003 AS "E"
    UNION ALL
    SELECT 2 AS nid, 223.583328 AS "E"
    UNION ALL
    SELECT 3 AS nid, 183.500000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 279.700012 AS "E"
    UNION ALL
    SELECT 5 AS nid, 130.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 204.899994 AS "E"
    UNION ALL
    SELECT 7 AS nid, 104.666664 AS "E"
    UNION ALL
    SELECT 8 AS nid, 206.000000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 89.194443 AS "E"
    UNION ALL
    SELECT 10 AS nid, 181.500000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 239.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 333.500000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 266.250000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 231.750000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 187.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 247.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 285.500000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 114.076920 AS "E"
    UNION ALL
    SELECT 24 AS nid, 75.130432 AS "E"
    UNION ALL
    SELECT 25 AS nid, 145.250000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 64.199997 AS "E"
    UNION ALL
    SELECT 27 AS nid, 133.333328 AS "E"
    UNION ALL
    SELECT 28 AS nid, 181.000000 AS "E"
    UNION ALL
    SELECT 29 AS nid, 62.187500 AS "E"
    UNION ALL
    SELECT 30 AS nid, 104.714287 AS "E"
    UNION ALL
    SELECT 31 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 91.500000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 194.399994 AS "E"
    UNION ALL
    SELECT 35 AS nid, 98.666664 AS "E"
    UNION ALL
    SELECT 36 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 57.428570 AS "E"
    UNION ALL
    SELECT 38 AS nid, 95.500000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 346.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 276.000000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 89.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 137.199997 AS "E"
    UNION ALL
    SELECT 47 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 87.000000 AS "E"
    UNION ALL
    SELECT 49 AS nid, 70.333336 AS "E"
    UNION ALL
    SELECT 50 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 51 AS nid, 243.000000 AS "E"
    UNION ALL
    SELECT 52 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 53 AS nid, 95.250000 AS "E"
    UNION ALL
    SELECT 54 AS nid, 105.500000 AS "E"
    UNION ALL
    SELECT 55 AS nid, 88.000000 AS "E"
    UNION ALL
    SELECT 56 AS nid, 95.000000 AS "E"
    UNION ALL
    SELECT 57 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 58 AS nid, 192.000000 AS "E"
    UNION ALL
    SELECT 59 AS nid, 71.500000 AS "E"
    UNION ALL
    SELECT 60 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 61 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 62 AS nid, 275.000000 AS "E"
  ) AS "Values"
 ),
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_3" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= -0.002228) THEN CASE WHEN (model_input."X_7" <= 0.015858) THEN CASE WHEN (model_input."X_8" <= -0.032881) THEN CASE WHEN (model_input."X_0" <= -0.000066) THEN CASE WHEN (model_input."X_8" <= -0.058664) THEN CASE WHEN (model_input."X_9" <= -0.034215) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_9" <= 0.015491) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_9" <= -0.028001) THEN CASE WHEN (model_input."X_3" <= -0.024606) THEN 29 ELSE 30 END ELSE 28 END END ELSE CASE WHEN (model_input."X_4" <= -0.029088) THEN 47 ELSE CASE WHEN (model_input."X_5" <= 0.005106) THEN CASE WHEN (model_input."X_9" <= -0.052854) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_7" <= -0.032113) THEN 55 ELSE 56 END END END END ELSE CASE WHEN (model_input."X_4" <= 0.061037) THEN CASE WHEN (model_input."X_9" <= -0.011433) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_9" <= 0.021704) THEN 31 ELSE 32 END END END ELSE CASE WHEN (model_input."X_2" <= 0.012117) THEN CASE WHEN (model_input."X_8" <= 0.009115) THEN CASE WHEN (model_input."X_9" <= -0.017646) THEN 15 ELSE CASE WHEN (model_input."X_9" <= 0.027917) THEN 41 ELSE 42 END END ELSE CASE WHEN (model_input."X_2" <= -0.009439) THEN 13 ELSE CASE WHEN (model_input."X_3" <= 0.025315) THEN CASE WHEN (model_input."X_9" <= 0.021704) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_3" <= 0.047694) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (model_input."X_9" <= -0.061138) THEN 5 ELSE CASE WHEN (model_input."X_4" <= -0.034592) THEN 21 ELSE CASE WHEN (model_input."X_4" <= 0.031454) THEN CASE WHEN (model_input."X_2" <= 0.017506) THEN 35 ELSE 36 END ELSE 34 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 141.890625 AS "E"
    UNION ALL
    SELECT 1 AS nid, 94.055557 AS "E"
    UNION ALL
    SELECT 2 AS nid, 203.392853 AS "E"
    UNION ALL
    SELECT 3 AS nid, 145.500000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 246.812500 AS "E"
    UNION ALL
    SELECT 5 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 261.928558 AS "E"
    UNION ALL
    SELECT 7 AS nid, 76.966667 AS "E"
    UNION ALL
    SELECT 8 AS nid, 179.500000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 212.250000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 100.750000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 167.875000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 292.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 150.142853 AS "E"
    UNION ALL
    SELECT 15 AS nid, 47.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 118.666664 AS "E"
    UNION ALL
    SELECT 17 AS nid, 128.500000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 179.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 193.500000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 257.384613 AS "E"
    UNION ALL
    SELECT 23 AS nid, 66.944443 AS "E"
    UNION ALL
    SELECT 24 AS nid, 92.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 57.500000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 85.833336 AS "E"
    UNION ALL
    SELECT 27 AS nid, 75.800003 AS "E"
    UNION ALL
    SELECT 28 AS nid, 136.000000 AS "E"
    UNION ALL
    SELECT 29 AS nid, 86.333336 AS "E"
    UNION ALL
    SELECT 30 AS nid, 60.000000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 192.000000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 254.250000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 257.363647 AS "E"
    UNION ALL
    SELECT 37 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 70.500000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 51.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 108.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 123.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 52.714287 AS "E"
    UNION ALL
    SELECT 46 AS nid, 39.000000 AS "E"
    UNION ALL
    SELECT 47 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 90.909088 AS "E"
    UNION ALL
    SELECT 49 AS nid, 87.500000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 95.000000 AS "E"
    UNION ALL
    SELECT 51 AS nid, 92.000000 AS "E"
    UNION ALL
    SELECT 52 AS nid, 86.599998 AS "E"
    UNION ALL
    SELECT 53 AS nid, 71.333336 AS "E"
    UNION ALL
    SELECT 54 AS nid, 68.000000 AS "E"
    UNION ALL
    SELECT 55 AS nid, 97.000000 AS "E"
    UNION ALL
    SELECT 56 AS nid, 94.500000 AS "E"
  ) AS "Values"
 ),
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_4" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= 0.008513) THEN CASE WHEN (model_input."X_0" <= 0.043525) THEN CASE WHEN (model_input."X_2" <= -0.066025) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_8" <= -0.035278) THEN CASE WHEN (model_input."X_5" <= -0.081323) THEN 27 ELSE CASE WHEN (model_input."X_5" <= -0.037169) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_3" <= 0.000062) THEN CASE WHEN (model_input."X_6" <= 0.002620) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_2" <= -0.032612) THEN 35 ELSE 36 END END END END ELSE CASE WHEN (model_input."X_6" <= 0.032073) THEN CASE WHEN (model_input."X_2" <= 0.028284) THEN 31 ELSE 32 END ELSE 20 END END ELSE CASE WHEN (model_input."X_2" <= 0.012117) THEN CASE WHEN (model_input."X_6" <= -0.002903) THEN CASE WHEN (model_input."X_5" <= -0.011178) THEN 29 ELSE CASE WHEN (model_input."X_0" <= 0.018097) THEN CASE WHEN (model_input."X_2" <= -0.018601) THEN 49 ELSE 50 END ELSE 44 END END ELSE CASE WHEN (model_input."X_2" <= -0.000817) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= -0.002228) THEN CASE WHEN (model_input."X_9" <= 0.025846) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 0.032056) THEN CASE WHEN (model_input."X_8" <= 0.019356) THEN 13 ELSE CASE WHEN (model_input."X_9" <= 0.034130) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_6" <= -0.061809) THEN 41 ELSE CASE WHEN (model_input."X_8" <= 0.030185) THEN 45 ELSE 46 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 122.484375 AS "E"
    UNION ALL
    SELECT 1 AS nid, 83.325584 AS "E"
    UNION ALL
    SELECT 2 AS nid, 202.666672 AS "E"
    UNION ALL
    SELECT 3 AS nid, 157.666672 AS "E"
    UNION ALL
    SELECT 4 AS nid, 236.416672 AS "E"
    UNION ALL
    SELECT 5 AS nid, 131.666672 AS "E"
    UNION ALL
    SELECT 6 AS nid, 209.666672 AS "E"
    UNION ALL
    SELECT 7 AS nid, 157.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 252.300003 AS "E"
    UNION ALL
    SELECT 9 AS nid, 122.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 192.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 233.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 271.600006 AS "E"
    UNION ALL
    SELECT 13 AS nid, 281.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 221.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 191.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 79.153847 AS "E"
    UNION ALL
    SELECT 18 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 135.333328 AS "E"
    UNION ALL
    SELECT 20 AS nid, 90.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 75.416664 AS "E"
    UNION ALL
    SELECT 23 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 65.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 90.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 114.000000 AS "E"
    UNION ALL
    SELECT 28 AS nid, 56.833332 AS "E"
    UNION ALL
    SELECT 29 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 30 AS nid, 128.000000 AS "E"
    UNION ALL
    SELECT 31 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 32 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 33 AS nid, 93.750000 AS "E"
    UNION ALL
    SELECT 34 AS nid, 75.000000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 63.000000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 37 AS nid, 109.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 90.699997 AS "E"
    UNION ALL
    SELECT 39 AS nid, 67.599998 AS "E"
    UNION ALL
    SELECT 40 AS nid, 52.692307 AS "E"
    UNION ALL
    SELECT 41 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 274.750000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 123.500000 AS "E"
    UNION ALL
    SELECT 44 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 276.333344 AS "E"
    UNION ALL
    SELECT 47 AS nid, 222.000000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 49 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 123.000000 AS "E"
  ) AS "Values"
 ),
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
