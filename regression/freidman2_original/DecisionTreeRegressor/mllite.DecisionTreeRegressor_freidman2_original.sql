WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 869.952148) THEN CASE WHEN (model_input."X_2" <= 0.413834) THEN CASE WHEN (model_input."X_1" <= 584.688721) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN CASE WHEN (model_input."X_3" <= 2.230777) THEN 113 ELSE 114 END ELSE CASE WHEN (model_input."X_2" <= 0.207454) THEN CASE WHEN (model_input."X_2" <= 0.095144) THEN 125 ELSE 126 END ELSE CASE WHEN (model_input."X_1" <= 301.728577) THEN 97 ELSE 98 END END END ELSE CASE WHEN (model_input."X_2" <= 0.177985) THEN CASE WHEN (model_input."X_0" <= 60.067894) THEN 83 ELSE 84 END ELSE CASE WHEN (model_input."X_1" <= 758.387939) THEN CASE WHEN (model_input."X_0" <= 41.324566) THEN 123 ELSE 124 END ELSE 70 END END END ELSE CASE WHEN (model_input."X_1" <= 478.218262) THEN CASE WHEN (model_input."X_1" <= 284.630463) THEN CASE WHEN (model_input."X_2" <= 0.938979) THEN CASE WHEN (model_input."X_1" <= 218.740936) THEN 105 ELSE CASE WHEN (model_input."X_1" <= 243.302063) THEN 107 ELSE 108 END END ELSE CASE WHEN (model_input."X_2" <= 0.962456) THEN 61 ELSE 62 END END ELSE CASE WHEN (model_input."X_2" <= 0.840921) THEN CASE WHEN (model_input."X_3" <= 6.313072) THEN 101 ELSE 102 END ELSE 58 END END ELSE CASE WHEN (model_input."X_2" <= 0.797837) THEN CASE WHEN (model_input."X_2" <= 0.695574) THEN CASE WHEN (model_input."X_3" <= 2.125478) THEN 51 ELSE CASE WHEN (model_input."X_0" <= 26.369644) THEN 103 ELSE CASE WHEN (model_input."X_1" <= 581.340820) THEN 121 ELSE 122 END END END ELSE CASE WHEN (model_input."X_1" <= 572.171448) THEN 49 ELSE CASE WHEN (model_input."X_1" <= 618.737915) THEN 89 ELSE 90 END END END ELSE CASE WHEN (model_input."X_1" <= 672.952271) THEN CASE WHEN (model_input."X_3" <= 6.130020) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_1" <= 750.312256) THEN CASE WHEN (model_input."X_2" <= 0.883592) THEN 109 ELSE 110 END ELSE 30 END END END END END ELSE CASE WHEN (model_input."X_2" <= 0.539068) THEN CASE WHEN (model_input."X_2" <= 0.229331) THEN CASE WHEN (model_input."X_2" <= 0.130403) THEN CASE WHEN (model_input."X_1" <= 1648.666504) THEN 91 ELSE 92 END ELSE CASE WHEN (model_input."X_1" <= 1194.621826) THEN 71 ELSE 72 END END ELSE CASE WHEN (model_input."X_0" <= 14.616403) THEN CASE WHEN (model_input."X_1" <= 1591.566284) THEN 99 ELSE 100 END ELSE CASE WHEN (model_input."X_1" <= 1742.796265) THEN CASE WHEN (model_input."X_3" <= 8.048729) THEN CASE WHEN (model_input."X_2" <= 0.466509) THEN CASE WHEN (model_input."X_0" <= 67.681305) THEN 77 ELSE CASE WHEN (model_input."X_3" <= 4.520494) THEN 79 ELSE 80 END END ELSE 46 END ELSE CASE WHEN (model_input."X_0" <= 67.535500) THEN CASE WHEN (model_input."X_2" <= 0.413250) THEN CASE WHEN (model_input."X_0" <= 43.729786) THEN CASE WHEN (model_input."X_0" <= 23.803986) THEN 111 ELSE 112 END ELSE 74 END ELSE 68 END ELSE 48 END END ELSE 34 END END END ELSE CASE WHEN (model_input."X_1" <= 1437.606201) THEN CASE WHEN (model_input."X_3" <= 7.384670) THEN CASE WHEN (model_input."X_1" <= 939.367920) THEN 31 ELSE CASE WHEN (model_input."X_3" <= 4.601840) THEN CASE WHEN (model_input."X_0" <= 75.558945) THEN CASE WHEN (model_input."X_3" <= 2.644978) THEN 119 ELSE 120 END ELSE 86 END ELSE CASE WHEN (model_input."X_1" <= 1287.507202) THEN CASE WHEN (model_input."X_0" <= 14.861344) THEN 117 ELSE 118 END ELSE 116 END END END ELSE CASE WHEN (model_input."X_2" <= 0.736474) THEN 35 ELSE 36 END END ELSE CASE WHEN (model_input."X_2" <= 0.869045) THEN CASE WHEN (model_input."X_2" <= 0.676750) THEN CASE WHEN (model_input."X_3" <= 5.945986) THEN 75 ELSE 76 END ELSE CASE WHEN (model_input."X_1" <= 1561.471680) THEN 55 ELSE CASE WHEN (model_input."X_0" <= 53.117043) THEN 81 ELSE 82 END END END ELSE CASE WHEN (model_input."X_3" <= 3.527852) THEN 17 ELSE CASE WHEN (model_input."X_3" <= 5.926065) THEN 87 ELSE 88 END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 441.435455 AS "E"
    UNION ALL
    SELECT 1 AS nid, 245.793198 AS "E"
    UNION ALL
    SELECT 2 AS nid, 645.062805 AS "E"
    UNION ALL
    SELECT 3 AS nid, 382.075348 AS "E"
    UNION ALL
    SELECT 4 AS nid, 942.353149 AS "E"
    UNION ALL
    SELECT 5 AS nid, 746.879395 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1246.423340 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1106.807739 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1525.654663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 141.573990 AS "E"
    UNION ALL
    SELECT 10 AS nid, 470.681061 AS "E"
    UNION ALL
    SELECT 11 AS nid, 112.606125 AS "E"
    UNION ALL
    SELECT 12 AS nid, 331.720276 AS "E"
    UNION ALL
    SELECT 13 AS nid, 210.282852 AS "E"
    UNION ALL
    SELECT 14 AS nid, 445.567841 AS "E"
    UNION ALL
    SELECT 15 AS nid, 368.851929 AS "E"
    UNION ALL
    SELECT 16 AS nid, 614.342896 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1374.632690 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1601.165527 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1005.162048 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1208.453491 AS "E"
    UNION ALL
    SELECT 21 AS nid, 528.860107 AS "E"
    UNION ALL
    SELECT 22 AS nid, 671.331360 AS "E"
    UNION ALL
    SELECT 23 AS nid, 788.383118 AS "E"
    UNION ALL
    SELECT 24 AS nid, 643.120239 AS "E"
    UNION ALL
    SELECT 25 AS nid, 661.600220 AS "E"
    UNION ALL
    SELECT 26 AS nid, 448.220062 AS "E"
    UNION ALL
    SELECT 27 AS nid, 104.493973 AS "E"
    UNION ALL
    SELECT 28 AS nid, 234.274078 AS "E"
    UNION ALL
    SELECT 29 AS nid, 631.159180 AS "E"
    UNION ALL
    SELECT 30 AS nid, 751.675842 AS "E"
    UNION ALL
    SELECT 31 AS nid, 892.314575 AS "E"
    UNION ALL
    SELECT 32 AS nid, 762.400269 AS "E"
    UNION ALL
    SELECT 33 AS nid, 435.808838 AS "E"
    UNION ALL
    SELECT 34 AS nid, 646.799377 AS "E"
    UNION ALL
    SELECT 35 AS nid, 615.836182 AS "E"
    UNION ALL
    SELECT 36 AS nid, 724.972351 AS "E"
    UNION ALL
    SELECT 37 AS nid, 484.548340 AS "E"
    UNION ALL
    SELECT 38 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 39 AS nid, 175.537704 AS "E"
    UNION ALL
    SELECT 40 AS nid, 262.400574 AS "E"
    UNION ALL
    SELECT 41 AS nid, 337.115509 AS "E"
    UNION ALL
    SELECT 42 AS nid, 424.390686 AS "E"
    UNION ALL
    SELECT 43 AS nid, 471.056702 AS "E"
    UNION ALL
    SELECT 44 AS nid, 390.490082 AS "E"
    UNION ALL
    SELECT 45 AS nid, 456.157806 AS "E"
    UNION ALL
    SELECT 46 AS nid, 590.247803 AS "E"
    UNION ALL
    SELECT 47 AS nid, 373.607178 AS "E"
    UNION ALL
    SELECT 48 AS nid, 491.787506 AS "E"
    UNION ALL
    SELECT 49 AS nid, 384.913605 AS "E"
    UNION ALL
    SELECT 50 AS nid, 463.867767 AS "E"
    UNION ALL
    SELECT 51 AS nid, 246.139648 AS "E"
    UNION ALL
    SELECT 52 AS nid, 352.278168 AS "E"
    UNION ALL
    SELECT 53 AS nid, 734.447754 AS "E"
    UNION ALL
    SELECT 54 AS nid, 808.987793 AS "E"
    UNION ALL
    SELECT 55 AS nid, 1158.447266 AS "E"
    UNION ALL
    SELECT 56 AS nid, 1233.456543 AS "E"
    UNION ALL
    SELECT 57 AS nid, 246.866333 AS "E"
    UNION ALL
    SELECT 58 AS nid, 340.071777 AS "E"
    UNION ALL
    SELECT 59 AS nid, 157.257889 AS "E"
    UNION ALL
    SELECT 60 AS nid, 239.517151 AS "E"
    UNION ALL
    SELECT 61 AS nid, 211.326752 AS "E"
    UNION ALL
    SELECT 62 AS nid, 267.707550 AS "E"
    UNION ALL
    SELECT 63 AS nid, 93.618538 AS "E"
    UNION ALL
    SELECT 64 AS nid, 147.868729 AS "E"
    UNION ALL
    SELECT 65 AS nid, 112.227142 AS "E"
    UNION ALL
    SELECT 66 AS nid, 174.599915 AS "E"
    UNION ALL
    SELECT 67 AS nid, 362.036285 AS "E"
    UNION ALL
    SELECT 68 AS nid, 431.461823 AS "E"
    UNION ALL
    SELECT 69 AS nid, 160.862961 AS "E"
    UNION ALL
    SELECT 70 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 71 AS nid, 211.673523 AS "E"
    UNION ALL
    SELECT 72 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 73 AS nid, 350.989197 AS "E"
    UNION ALL
    SELECT 74 AS nid, 406.224579 AS "E"
    UNION ALL
    SELECT 75 AS nid, 1020.282043 AS "E"
    UNION ALL
    SELECT 76 AS nid, 974.922058 AS "E"
    UNION ALL
    SELECT 77 AS nid, 470.982330 AS "E"
    UNION ALL
    SELECT 78 AS nid, 431.450287 AS "E"
    UNION ALL
    SELECT 79 AS nid, 376.313873 AS "E"
    UNION ALL
    SELECT 80 AS nid, 459.018494 AS "E"
    UNION ALL
    SELECT 81 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 82 AS nid, 1252.424316 AS "E"
    UNION ALL
    SELECT 83 AS nid, 125.626236 AS "E"
    UNION ALL
    SELECT 84 AS nid, 85.428947 AS "E"
    UNION ALL
    SELECT 85 AS nid, 725.213257 AS "E"
    UNION ALL
    SELECT 86 AS nid, 771.385681 AS "E"
    UNION ALL
    SELECT 87 AS nid, 1619.565796 AS "E"
    UNION ALL
    SELECT 88 AS nid, 1582.765259 AS "E"
    UNION ALL
    SELECT 89 AS nid, 481.196167 AS "E"
    UNION ALL
    SELECT 90 AS nid, 446.539368 AS "E"
    UNION ALL
    SELECT 91 AS nid, 96.194206 AS "E"
    UNION ALL
    SELECT 92 AS nid, 137.692978 AS "E"
    UNION ALL
    SELECT 93 AS nid, 78.563095 AS "E"
    UNION ALL
    SELECT 94 AS nid, 111.183258 AS "E"
    UNION ALL
    SELECT 95 AS nid, 92.543999 AS "E"
    UNION ALL
    SELECT 96 AS nid, 129.822510 AS "E"
    UNION ALL
    SELECT 97 AS nid, 108.535683 AS "E"
    UNION ALL
    SELECT 98 AS nid, 140.465912 AS "E"
    UNION ALL
    SELECT 99 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 100 AS nid, 647.941467 AS "E"
    UNION ALL
    SELECT 101 AS nid, 235.725906 AS "E"
    UNION ALL
    SELECT 102 AS nid, 263.576904 AS "E"
    UNION ALL
    SELECT 103 AS nid, 333.702576 AS "E"
    UNION ALL
    SELECT 104 AS nid, 361.565979 AS "E"
    UNION ALL
    SELECT 105 AS nid, 145.947845 AS "E"
    UNION ALL
    SELECT 106 AS nid, 172.337906 AS "E"
    UNION ALL
    SELECT 107 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 108 AS nid, 163.000275 AS "E"
    UNION ALL
    SELECT 109 AS nid, 618.319824 AS "E"
    UNION ALL
    SELECT 110 AS nid, 643.998474 AS "E"
    UNION ALL
    SELECT 111 AS nid, 338.734314 AS "E"
    UNION ALL
    SELECT 112 AS nid, 363.244080 AS "E"
    UNION ALL
    SELECT 113 AS nid, 108.357803 AS "E"
    UNION ALL
    SELECT 114 AS nid, 73.597313 AS "E"
    UNION ALL
    SELECT 115 AS nid, 800.537842 AS "E"
    UNION ALL
    SELECT 116 AS nid, 825.887634 AS "E"
    UNION ALL
    SELECT 117 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 118 AS nid, 786.044189 AS "E"
    UNION ALL
    SELECT 119 AS nid, 713.369080 AS "E"
    UNION ALL
    SELECT 120 AS nid, 737.057373 AS "E"
    UNION ALL
    SELECT 121 AS nid, 341.166046 AS "E"
    UNION ALL
    SELECT 122 AS nid, 368.365967 AS "E"
    UNION ALL
    SELECT 123 AS nid, 176.877380 AS "E"
    UNION ALL
    SELECT 124 AS nid, 152.855743 AS "E"
    UNION ALL
    SELECT 125 AS nid, 77.228577 AS "E"
    UNION ALL
    SELECT 126 AS nid, 100.201706 AS "E"
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