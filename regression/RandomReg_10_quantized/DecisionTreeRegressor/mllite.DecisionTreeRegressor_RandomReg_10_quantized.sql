WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 6.500000) THEN CASE WHEN (model_input."X_6" <= 5.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_6" <= 1.500000) THEN CASE WHEN (model_input."X_5" <= 8.500000) THEN 37 ELSE 38 END ELSE 36 END ELSE CASE WHEN (model_input."X_2" <= 8.500000) THEN 117 ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_8" <= 6.500000) THEN 121 ELSE 122 END ELSE CASE WHEN (model_input."X_6" <= 4.500000) THEN CASE WHEN (model_input."X_8" <= 4.500000) THEN 125 ELSE 126 END ELSE 124 END END END END ELSE CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_6" <= 1.500000) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_6" <= 1.500000) THEN CASE WHEN (model_input."X_9" <= 3.000000) THEN 115 ELSE 116 END ELSE CASE WHEN (model_input."X_7" <= 7.500000) THEN 111 ELSE CASE WHEN (model_input."X_0" <= 4.000000) THEN 113 ELSE 114 END END END ELSE 108 END END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_1" <= 6.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN 63 ELSE CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_1" <= 4.000000) THEN 67 ELSE 68 END ELSE 66 END END ELSE CASE WHEN (model_input."X_7" <= 7.500000) THEN 45 ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN 81 ELSE CASE WHEN (model_input."X_3" <= 6.500000) THEN 83 ELSE 84 END END END END ELSE CASE WHEN (model_input."X_2" <= 8.500000) THEN CASE WHEN (model_input."X_0" <= 2.500000) THEN CASE WHEN (model_input."X_6" <= 7.500000) THEN CASE WHEN (model_input."X_9" <= 6.500000) THEN 95 ELSE CASE WHEN (model_input."X_1" <= 9.000000) THEN 97 ELSE 98 END END ELSE 90 END ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_4" <= 8.500000) THEN 93 ELSE CASE WHEN (model_input."X_1" <= 0.500000) THEN 103 ELSE 104 END END ELSE 92 END END ELSE CASE WHEN (model_input."X_1" <= 3.000000) THEN CASE WHEN (model_input."X_9" <= 1.500000) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_8" <= 8.500000) THEN CASE WHEN (model_input."X_4" <= 4.500000) THEN 29 ELSE 30 END ELSE 26 END END END END END ELSE CASE WHEN (model_input."X_6" <= 3.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_7" <= 6.500000) THEN CASE WHEN (model_input."X_4" <= 8.500000) THEN 101 ELSE 102 END ELSE CASE WHEN (model_input."X_6" <= 0.500000) THEN 17 ELSE 18 END END ELSE 12 END ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_5" <= 2.500000) THEN 59 ELSE CASE WHEN (model_input."X_5" <= 6.000000) THEN CASE WHEN (model_input."X_6" <= 4.500000) THEN 85 ELSE 86 END ELSE 62 END END ELSE 58 END ELSE CASE WHEN (model_input."X_8" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_1" <= 6.500000) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN CASE WHEN (model_input."X_6" <= 4.500000) THEN CASE WHEN (model_input."X_5" <= 8.500000) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_4" <= 4.500000) THEN 99 ELSE 100 END END ELSE CASE WHEN (model_input."X_8" <= 0.500000) THEN 105 ELSE 106 END END END ELSE CASE WHEN (model_input."X_7" <= 6.500000) THEN CASE WHEN (model_input."X_8" <= 8.500000) THEN 79 ELSE 80 END ELSE CASE WHEN (model_input."X_2" <= 5.500000) THEN CASE WHEN (model_input."X_9" <= 2.000000) THEN 73 ELSE 74 END ELSE CASE WHEN (model_input."X_7" <= 8.500000) THEN 75 ELSE CASE WHEN (model_input."X_2" <= 7.000000) THEN 77 ELSE 78 END END END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 4.245648 AS "E"
    UNION ALL
    SELECT 1 AS nid, -43.027275 AS "E"
    UNION ALL
    SELECT 2 AS nid, 113.125893 AS "E"
    UNION ALL
    SELECT 3 AS nid, -99.919235 AS "E"
    UNION ALL
    SELECT 4 AS nid, 36.392414 AS "E"
    UNION ALL
    SELECT 5 AS nid, -21.184757 AS "E"
    UNION ALL
    SELECT 6 AS nid, 99.646217 AS "E"
    UNION ALL
    SELECT 7 AS nid, 44.917664 AS "E"
    UNION ALL
    SELECT 8 AS nid, 165.057190 AS "E"
    UNION ALL
    SELECT 9 AS nid, -32.414776 AS "E"
    UNION ALL
    SELECT 10 AS nid, 92.435196 AS "E"
    UNION ALL
    SELECT 11 AS nid, -133.991119 AS "E"
    UNION ALL
    SELECT 12 AS nid, 18.373396 AS "E"
    UNION ALL
    SELECT 13 AS nid, -178.566513 AS "E"
    UNION ALL
    SELECT 14 AS nid, -52.269562 AS "E"
    UNION ALL
    SELECT 15 AS nid, 79.095116 AS "E"
    UNION ALL
    SELECT 16 AS nid, 203.105972 AS "E"
    UNION ALL
    SELECT 17 AS nid, -124.335419 AS "E"
    UNION ALL
    SELECT 18 AS nid, -16.236637 AS "E"
    UNION ALL
    SELECT 19 AS nid, -57.671345 AS "E"
    UNION ALL
    SELECT 20 AS nid, 47.734344 AS "E"
    UNION ALL
    SELECT 21 AS nid, 78.821114 AS "E"
    UNION ALL
    SELECT 22 AS nid, 219.638412 AS "E"
    UNION ALL
    SELECT 23 AS nid, 113.485748 AS "E"
    UNION ALL
    SELECT 24 AS nid, 299.252930 AS "E"
    UNION ALL
    SELECT 25 AS nid, 267.067078 AS "E"
    UNION ALL
    SELECT 26 AS nid, 460.182129 AS "E"
    UNION ALL
    SELECT 27 AS nid, 291.887360 AS "E"
    UNION ALL
    SELECT 28 AS nid, 91.185547 AS "E"
    UNION ALL
    SELECT 29 AS nid, 215.274261 AS "E"
    UNION ALL
    SELECT 30 AS nid, 318.859894 AS "E"
    UNION ALL
    SELECT 31 AS nid, -173.703140 AS "E"
    UNION ALL
    SELECT 32 AS nid, -67.126472 AS "E"
    UNION ALL
    SELECT 33 AS nid, -226.610840 AS "E"
    UNION ALL
    SELECT 34 AS nid, -82.521652 AS "E"
    UNION ALL
    SELECT 35 AS nid, -318.731079 AS "E"
    UNION ALL
    SELECT 36 AS nid, -190.080521 AS "E"
    UNION ALL
    SELECT 37 AS nid, -331.573761 AS "E"
    UNION ALL
    SELECT 38 AS nid, -36.191864 AS "E"
    UNION ALL
    SELECT 39 AS nid, 154.107956 AS "E"
    UNION ALL
    SELECT 40 AS nid, 252.103928 AS "E"
    UNION ALL
    SELECT 41 AS nid, -126.789612 AS "E"
    UNION ALL
    SELECT 42 AS nid, -27.466002 AS "E"
    UNION ALL
    SELECT 43 AS nid, -197.018143 AS "E"
    UNION ALL
    SELECT 44 AS nid, -90.751282 AS "E"
    UNION ALL
    SELECT 45 AS nid, 18.190113 AS "E"
    UNION ALL
    SELECT 46 AS nid, 124.549339 AS "E"
    UNION ALL
    SELECT 47 AS nid, 114.550377 AS "E"
    UNION ALL
    SELECT 48 AS nid, 211.070816 AS "E"
    UNION ALL
    SELECT 49 AS nid, 169.998413 AS "E"
    UNION ALL
    SELECT 50 AS nid, 284.088440 AS "E"
    UNION ALL
    SELECT 51 AS nid, 95.955986 AS "E"
    UNION ALL
    SELECT 52 AS nid, 203.654068 AS "E"
    UNION ALL
    SELECT 53 AS nid, 66.077118 AS "E"
    UNION ALL
    SELECT 54 AS nid, 215.471497 AS "E"
    UNION ALL
    SELECT 55 AS nid, 77.364822 AS "E"
    UNION ALL
    SELECT 56 AS nid, 180.340225 AS "E"
    UNION ALL
    SELECT 57 AS nid, -9.622414 AS "E"
    UNION ALL
    SELECT 58 AS nid, 104.443001 AS "E"
    UNION ALL
    SELECT 59 AS nid, -97.672241 AS "E"
    UNION ALL
    SELECT 60 AS nid, 34.402500 AS "E"
    UNION ALL
    SELECT 61 AS nid, 3.021620 AS "E"
    UNION ALL
    SELECT 62 AS nid, 128.545135 AS "E"
    UNION ALL
    SELECT 63 AS nid, -96.770699 AS "E"
    UNION ALL
    SELECT 64 AS nid, -1.815134 AS "E"
    UNION ALL
    SELECT 65 AS nid, -118.183037 AS "E"
    UNION ALL
    SELECT 66 AS nid, 21.458445 AS "E"
    UNION ALL
    SELECT 67 AS nid, -148.833572 AS "E"
    UNION ALL
    SELECT 68 AS nid, -41.556690 AS "E"
    UNION ALL
    SELECT 69 AS nid, 222.377884 AS "E"
    UNION ALL
    SELECT 70 AS nid, 323.116241 AS "E"
    UNION ALL
    SELECT 71 AS nid, 260.681763 AS "E"
    UNION ALL
    SELECT 72 AS nid, 385.550690 AS "E"
    UNION ALL
    SELECT 73 AS nid, 131.188751 AS "E"
    UNION ALL
    SELECT 74 AS nid, 297.679779 AS "E"
    UNION ALL
    SELECT 75 AS nid, 430.752197 AS "E"
    UNION ALL
    SELECT 76 AS nid, 295.147705 AS "E"
    UNION ALL
    SELECT 77 AS nid, 398.081665 AS "E"
    UNION ALL
    SELECT 78 AS nid, 243.680740 AS "E"
    UNION ALL
    SELECT 79 AS nid, 188.158447 AS "E"
    UNION ALL
    SELECT 80 AS nid, 301.345673 AS "E"
    UNION ALL
    SELECT 81 AS nid, 33.002361 AS "E"
    UNION ALL
    SELECT 82 AS nid, 147.436096 AS "E"
    UNION ALL
    SELECT 83 AS nid, 168.369720 AS "E"
    UNION ALL
    SELECT 84 AS nid, 42.767986 AS "E"
    UNION ALL
    SELECT 85 AS nid, -99.126183 AS "E"
    UNION ALL
    SELECT 86 AS nid, 23.451181 AS "E"
    UNION ALL
    SELECT 87 AS nid, 19.456554 AS "E"
    UNION ALL
    SELECT 88 AS nid, 113.971176 AS "E"
    UNION ALL
    SELECT 89 AS nid, -26.874846 AS "E"
    UNION ALL
    SELECT 90 AS nid, 72.406723 AS "E"
    UNION ALL
    SELECT 91 AS nid, 29.500771 AS "E"
    UNION ALL
    SELECT 92 AS nid, 140.186127 AS "E"
    UNION ALL
    SELECT 93 AS nid, 46.058395 AS "E"
    UNION ALL
    SELECT 94 AS nid, -102.960205 AS "E"
    UNION ALL
    SELECT 95 AS nid, -62.346378 AS "E"
    UNION ALL
    SELECT 96 AS nid, 32.244377 AS "E"
    UNION ALL
    SELECT 97 AS nid, 13.447676 AS "E"
    UNION ALL
    SELECT 98 AS nid, 182.618011 AS "E"
    UNION ALL
    SELECT 99 AS nid, 107.216782 AS "E"
    UNION ALL
    SELECT 100 AS nid, 225.084595 AS "E"
    UNION ALL
    SELECT 101 AS nid, -164.223907 AS "E"
    UNION ALL
    SELECT 102 AS nid, -321.992767 AS "E"
    UNION ALL
    SELECT 103 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 104 AS nid, -57.802708 AS "E"
    UNION ALL
    SELECT 105 AS nid, 410.605011 AS "E"
    UNION ALL
    SELECT 106 AS nid, 268.273895 AS "E"
    UNION ALL
    SELECT 107 AS nid, -92.973679 AS "E"
    UNION ALL
    SELECT 108 AS nid, 3.067247 AS "E"
    UNION ALL
    SELECT 109 AS nid, -162.958664 AS "E"
    UNION ALL
    SELECT 110 AS nid, -58.926937 AS "E"
    UNION ALL
    SELECT 111 AS nid, -80.956161 AS "E"
    UNION ALL
    SELECT 112 AS nid, 54.890797 AS "E"
    UNION ALL
    SELECT 113 AS nid, 7.013390 AS "E"
    UNION ALL
    SELECT 114 AS nid, 102.768211 AS "E"
    UNION ALL
    SELECT 115 AS nid, -213.124863 AS "E"
    UNION ALL
    SELECT 116 AS nid, -122.825729 AS "E"
    UNION ALL
    SELECT 117 AS nid, -112.508934 AS "E"
    UNION ALL
    SELECT 118 AS nid, -18.548788 AS "E"
    UNION ALL
    SELECT 119 AS nid, -139.182861 AS "E"
    UNION ALL
    SELECT 120 AS nid, 11.609729 AS "E"
    UNION ALL
    SELECT 121 AS nid, -214.856171 AS "E"
    UNION ALL
    SELECT 122 AS nid, -101.346207 AS "E"
    UNION ALL
    SELECT 123 AS nid, -17.102179 AS "E"
    UNION ALL
    SELECT 124 AS nid, 97.745453 AS "E"
    UNION ALL
    SELECT 125 AS nid, -86.327614 AS "E"
    UNION ALL
    SELECT 126 AS nid, 17.510538 AS "E"
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