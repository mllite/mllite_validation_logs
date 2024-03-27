WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 1584.059570) THEN CASE WHEN (model_input."X_2" <= 0.279714) THEN CASE WHEN (model_input."X_2" <= 0.169188) THEN CASE WHEN (model_input."X_3" <= 2.776288) THEN 41 ELSE CASE WHEN (model_input."X_3" <= 9.478261) THEN CASE WHEN (model_input."X_2" <= 0.097150) THEN 49 ELSE 50 END ELSE 48 END END ELSE CASE WHEN (model_input."X_1" <= 1306.214355) THEN CASE WHEN (model_input."X_1" <= 758.387939) THEN CASE WHEN (model_input."X_2" <= 0.246079) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_0" <= 66.202507) THEN 37 ELSE 38 END END ELSE 26 END END ELSE CASE WHEN (model_input."X_1" <= 735.877625) THEN CASE WHEN (model_input."X_1" <= 478.218262) THEN CASE WHEN (model_input."X_3" <= 4.366154) THEN CASE WHEN (model_input."X_1" <= 340.445404) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_0" <= 76.440849) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_2" <= 0.746835) THEN CASE WHEN (model_input."X_3" <= 2.125478) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_3" <= 6.408159) THEN 23 ELSE 24 END END END ELSE CASE WHEN (model_input."X_2" <= 0.358067) THEN 11 ELSE CASE WHEN (model_input."X_3" <= 6.781778) THEN CASE WHEN (model_input."X_2" <= 0.991356) THEN 33 ELSE 34 END ELSE 30 END END END END ELSE CASE WHEN (model_input."X_1" <= 1677.736328) THEN CASE WHEN (model_input."X_0" <= 17.961014) THEN 5 ELSE CASE WHEN (model_input."X_3" <= 6.218287) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_0" <= 71.099617) THEN 15 ELSE 16 END END END AS node_id
  FROM model_input
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 467.910217 AS "E"
    UNION ALL
    SELECT 1 AS nid, 360.008087 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1127.312622 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1290.683716 AS "E"
    UNION ALL
    SELECT 4 AS nid, 555.513916 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1582.765259 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1173.851074 AS "E"
    UNION ALL
    SELECT 7 AS nid, 161.802124 AS "E"
    UNION ALL
    SELECT 8 AS nid, 482.429352 AS "E"
    UNION ALL
    SELECT 9 AS nid, 284.266022 AS "E"
    UNION ALL
    SELECT 10 AS nid, 705.362976 AS "E"
    UNION ALL
    SELECT 11 AS nid, 449.374115 AS "E"
    UNION ALL
    SELECT 12 AS nid, 764.437378 AS "E"
    UNION ALL
    SELECT 13 AS nid, 166.296051 AS "E"
    UNION ALL
    SELECT 14 AS nid, 378.642029 AS "E"
    UNION ALL
    SELECT 15 AS nid, 464.228424 AS "E"
    UNION ALL
    SELECT 16 AS nid, 646.799377 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1011.300659 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 19 AS nid, 341.506500 AS "E"
    UNION ALL
    SELECT 20 AS nid, 527.184021 AS "E"
    UNION ALL
    SELECT 21 AS nid, 74.977524 AS "E"
    UNION ALL
    SELECT 22 AS nid, 215.232605 AS "E"
    UNION ALL
    SELECT 23 AS nid, 481.196167 AS "E"
    UNION ALL
    SELECT 24 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 25 AS nid, 203.171738 AS "E"
    UNION ALL
    SELECT 26 AS nid, 359.963287 AS "E"
    UNION ALL
    SELECT 27 AS nid, 218.159058 AS "E"
    UNION ALL
    SELECT 28 AS nid, 135.178253 AS "E"
    UNION ALL
    SELECT 29 AS nid, 775.563782 AS "E"
    UNION ALL
    SELECT 30 AS nid, 630.920105 AS "E"
    UNION ALL
    SELECT 31 AS nid, 246.139648 AS "E"
    UNION ALL
    SELECT 32 AS nid, 355.130371 AS "E"
    UNION ALL
    SELECT 33 AS nid, 765.249939 AS "E"
    UNION ALL
    SELECT 34 AS nid, 889.016663 AS "E"
    UNION ALL
    SELECT 35 AS nid, 159.430328 AS "E"
    UNION ALL
    SELECT 36 AS nid, 225.042419 AS "E"
    UNION ALL
    SELECT 37 AS nid, 214.431686 AS "E"
    UNION ALL
    SELECT 38 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 39 AS nid, 141.838882 AS "E"
    UNION ALL
    SELECT 40 AS nid, 108.535683 AS "E"
    UNION ALL
    SELECT 41 AS nid, 62.030949 AS "E"
    UNION ALL
    SELECT 42 AS nid, 87.924103 AS "E"
    UNION ALL
    SELECT 43 AS nid, 153.614639 AS "E"
    UNION ALL
    SELECT 44 AS nid, 176.877380 AS "E"
    UNION ALL
    SELECT 45 AS nid, 211.326752 AS "E"
    UNION ALL
    SELECT 46 AS nid, 231.823715 AS "E"
    UNION ALL
    SELECT 47 AS nid, 96.200317 AS "E"
    UNION ALL
    SELECT 48 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 49 AS nid, 94.508049 AS "E"
    UNION ALL
    SELECT 50 AS nid, 97.892578 AS "E"
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
    CASE WHEN (model_input."X_1" <= 880.521179) THEN CASE WHEN (model_input."X_2" <= 0.403534) THEN CASE WHEN (model_input."X_2" <= 0.145217) THEN CASE WHEN (model_input."X_3" <= 2.011392) THEN CASE WHEN (model_input."X_1" <= 654.153992) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_2" <= 0.129406) THEN 57 ELSE 58 END END ELSE CASE WHEN (model_input."X_1" <= 673.074707) THEN CASE WHEN (model_input."X_0" <= 60.929955) THEN CASE WHEN (model_input."X_1" <= 298.444733) THEN 47 ELSE 48 END ELSE 44 END ELSE 42 END END ELSE CASE WHEN (model_input."X_1" <= 478.218262) THEN CASE WHEN (model_input."X_1" <= 271.657959) THEN CASE WHEN (model_input."X_1" <= 211.863419) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_1" <= 400.239960) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_2" <= 0.744219) THEN CASE WHEN (model_input."X_0" <= 53.363243) THEN CASE WHEN (model_input."X_2" <= 0.492032) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_0" <= 71.395615) THEN 35 ELSE 36 END END ELSE CASE WHEN (model_input."X_1" <= 647.318237) THEN CASE WHEN (model_input."X_1" <= 549.875610) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_2" <= 0.883592) THEN 45 ELSE 46 END END END END END ELSE CASE WHEN (model_input."X_2" <= 0.994564) THEN CASE WHEN (model_input."X_2" <= 0.318629) THEN CASE WHEN (model_input."X_1" <= 1414.752441) THEN CASE WHEN (model_input."X_1" <= 1091.947998) THEN 23 ELSE 24 END ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.505507) THEN CASE WHEN (model_input."X_3" <= 5.380441) THEN CASE WHEN (model_input."X_1" <= 1664.738281) THEN 49 ELSE 50 END ELSE 16 END ELSE CASE WHEN (model_input."X_1" <= 1536.538696) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN 25 ELSE 26 END ELSE 14 END END END ELSE 4 END END AS node_id
  FROM model_input
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 446.218292 AS "E"
    UNION ALL
    SELECT 1 AS nid, 246.207077 AS "E"
    UNION ALL
    SELECT 2 AS nid, 758.235474 AS "E"
    UNION ALL
    SELECT 3 AS nid, 683.337402 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1619.565796 AS "E"
    UNION ALL
    SELECT 5 AS nid, 256.803314 AS "E"
    UNION ALL
    SELECT 6 AS nid, 747.317383 AS "E"
    UNION ALL
    SELECT 7 AS nid, 153.090790 AS "E"
    UNION ALL
    SELECT 8 AS nid, 464.228424 AS "E"
    UNION ALL
    SELECT 9 AS nid, 93.001282 AS "E"
    UNION ALL
    SELECT 10 AS nid, 364.593384 AS "E"
    UNION ALL
    SELECT 11 AS nid, 616.291077 AS "E"
    UNION ALL
    SELECT 12 AS nid, 790.992859 AS "E"
    UNION ALL
    SELECT 13 AS nid, 760.743103 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 15 AS nid, 653.914307 AS "E"
    UNION ALL
    SELECT 16 AS nid, 465.798004 AS "E"
    UNION ALL
    SELECT 17 AS nid, 212.035553 AS "E"
    UNION ALL
    SELECT 18 AS nid, 398.495148 AS "E"
    UNION ALL
    SELECT 19 AS nid, 353.203583 AS "E"
    UNION ALL
    SELECT 20 AS nid, 557.015686 AS "E"
    UNION ALL
    SELECT 21 AS nid, 482.872253 AS "E"
    UNION ALL
    SELECT 22 AS nid, 631.159180 AS "E"
    UNION ALL
    SELECT 23 AS nid, 94.508049 AS "E"
    UNION ALL
    SELECT 24 AS nid, 211.673523 AS "E"
    UNION ALL
    SELECT 25 AS nid, 771.893555 AS "E"
    UNION ALL
    SELECT 26 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 27 AS nid, 174.856247 AS "E"
    UNION ALL
    SELECT 28 AS nid, 249.214874 AS "E"
    UNION ALL
    SELECT 29 AS nid, 211.326752 AS "E"
    UNION ALL
    SELECT 30 AS nid, 138.385742 AS "E"
    UNION ALL
    SELECT 31 AS nid, 318.805969 AS "E"
    UNION ALL
    SELECT 32 AS nid, 379.001709 AS "E"
    UNION ALL
    SELECT 33 AS nid, 246.139648 AS "E"
    UNION ALL
    SELECT 34 AS nid, 333.339233 AS "E"
    UNION ALL
    SELECT 35 AS nid, 446.539368 AS "E"
    UNION ALL
    SELECT 36 AS nid, 369.353455 AS "E"
    UNION ALL
    SELECT 37 AS nid, 74.439682 AS "E"
    UNION ALL
    SELECT 38 AS nid, 113.883072 AS "E"
    UNION ALL
    SELECT 39 AS nid, 266.606049 AS "E"
    UNION ALL
    SELECT 40 AS nid, 231.823715 AS "E"
    UNION ALL
    SELECT 41 AS nid, 107.990303 AS "E"
    UNION ALL
    SELECT 42 AS nid, 155.132416 AS "E"
    UNION ALL
    SELECT 43 AS nid, 98.884224 AS "E"
    UNION ALL
    SELECT 44 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 45 AS nid, 618.319824 AS "E"
    UNION ALL
    SELECT 46 AS nid, 643.998474 AS "E"
    UNION ALL
    SELECT 47 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 48 AS nid, 105.175964 AS "E"
    UNION ALL
    SELECT 49 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 50 AS nid, 646.799377 AS "E"
    UNION ALL
    SELECT 51 AS nid, 81.328766 AS "E"
    UNION ALL
    SELECT 52 AS nid, 60.661530 AS "E"
    UNION ALL
    SELECT 53 AS nid, 77.228577 AS "E"
    UNION ALL
    SELECT 54 AS nid, 85.428947 AS "E"
    UNION ALL
    SELECT 55 AS nid, 484.548340 AS "E"
    UNION ALL
    SELECT 56 AS nid, 481.196167 AS "E"
    UNION ALL
    SELECT 57 AS nid, 62.030949 AS "E"
    UNION ALL
    SELECT 58 AS nid, 59.976818 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.993442) THEN CASE WHEN (model_input."X_2" <= 0.551616) THEN CASE WHEN (model_input."X_1" <= 505.602478) THEN CASE WHEN (model_input."X_2" <= 0.424057) THEN CASE WHEN (model_input."X_1" <= 149.425217) THEN 43 ELSE CASE WHEN (model_input."X_3" <= 2.270860) THEN 45 ELSE 46 END END ELSE 26 END ELSE CASE WHEN (model_input."X_2" <= 0.229331) THEN CASE WHEN (model_input."X_2" <= 0.119523) THEN CASE WHEN (model_input."X_3" <= 6.808441) THEN 47 ELSE 48 END ELSE CASE WHEN (model_input."X_2" <= 0.190165) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_1" <= 1555.578979) THEN CASE WHEN (model_input."X_1" <= 996.974243) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_2" <= 0.318629) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (model_input."X_1" <= 704.013062) THEN CASE WHEN (model_input."X_1" <= 420.428528) THEN CASE WHEN (model_input."X_3" <= 9.910092) THEN CASE WHEN (model_input."X_3" <= 7.655873) THEN 39 ELSE 40 END ELSE 32 END ELSE CASE WHEN (model_input."X_1" <= 637.632446) THEN CASE WHEN (model_input."X_3" <= 8.276386) THEN 33 ELSE 34 END ELSE 28 END END ELSE CASE WHEN (model_input."X_1" <= 1516.252441) THEN CASE WHEN (model_input."X_3" <= 7.831765) THEN CASE WHEN (model_input."X_2" <= 0.864954) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_2" <= 0.737951) THEN 49 ELSE 50 END END ELSE CASE WHEN (model_input."X_2" <= 0.676750) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (model_input."X_2" <= 0.995332) THEN 41 ELSE 42 END END AS node_id
  FROM model_input
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 479.324066 AS "E"
    UNION ALL
    SELECT 1 AS nid, 423.849701 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1607.298950 AS "E"
    UNION ALL
    SELECT 3 AS nid, 269.356415 AS "E"
    UNION ALL
    SELECT 4 AS nid, 618.397156 AS "E"
    UNION ALL
    SELECT 5 AS nid, 408.335846 AS "E"
    UNION ALL
    SELECT 6 AS nid, 786.446106 AS "E"
    UNION ALL
    SELECT 7 AS nid, 216.076767 AS "E"
    UNION ALL
    SELECT 8 AS nid, 504.465393 AS "E"
    UNION ALL
    SELECT 9 AS nid, 736.223267 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1112.894653 AS "E"
    UNION ALL
    SELECT 11 AS nid, 112.727974 AS "E"
    UNION ALL
    SELECT 12 AS nid, 344.265656 AS "E"
    UNION ALL
    SELECT 13 AS nid, 197.475037 AS "E"
    UNION ALL
    SELECT 14 AS nid, 422.554108 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1011.300659 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 17 AS nid, 379.335358 AS "E"
    UNION ALL
    SELECT 18 AS nid, 595.428955 AS "E"
    UNION ALL
    SELECT 19 AS nid, 464.228424 AS "E"
    UNION ALL
    SELECT 20 AS nid, 661.029175 AS "E"
    UNION ALL
    SELECT 21 AS nid, 771.847534 AS "E"
    UNION ALL
    SELECT 22 AS nid, 617.475525 AS "E"
    UNION ALL
    SELECT 23 AS nid, 87.077972 AS "E"
    UNION ALL
    SELECT 24 AS nid, 234.274094 AS "E"
    UNION ALL
    SELECT 25 AS nid, 86.262245 AS "E"
    UNION ALL
    SELECT 26 AS nid, 231.823715 AS "E"
    UNION ALL
    SELECT 27 AS nid, 463.241516 AS "E"
    UNION ALL
    SELECT 28 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 29 AS nid, 335.041901 AS "E"
    UNION ALL
    SELECT 30 AS nid, 441.346283 AS "E"
    UNION ALL
    SELECT 31 AS nid, 171.605743 AS "E"
    UNION ALL
    SELECT 32 AS nid, 260.547760 AS "E"
    UNION ALL
    SELECT 33 AS nid, 482.872253 AS "E"
    UNION ALL
    SELECT 34 AS nid, 384.718445 AS "E"
    UNION ALL
    SELECT 35 AS nid, 758.828796 AS "E"
    UNION ALL
    SELECT 36 AS nid, 889.016663 AS "E"
    UNION ALL
    SELECT 37 AS nid, 211.673523 AS "E"
    UNION ALL
    SELECT 38 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 39 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 40 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1582.765259 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1619.565796 AS "E"
    UNION ALL
    SELECT 43 AS nid, 108.535683 AS "E"
    UNION ALL
    SELECT 44 AS nid, 79.898422 AS "E"
    UNION ALL
    SELECT 45 AS nid, 92.793190 AS "E"
    UNION ALL
    SELECT 46 AS nid, 74.740509 AS "E"
    UNION ALL
    SELECT 47 AS nid, 94.508049 AS "E"
    UNION ALL
    SELECT 48 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 49 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 50 AS nid, 618.319824 AS "E"
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
    CASE WHEN (model_input."X_1" <= 676.951111) THEN CASE WHEN (model_input."X_2" <= 0.424057) THEN CASE WHEN (model_input."X_1" <= 584.688721) THEN CASE WHEN (model_input."X_1" <= 458.826385) THEN CASE WHEN (model_input."X_2" <= 0.354972) THEN CASE WHEN (model_input."X_0" <= 42.655708) THEN 53 ELSE 54 END ELSE 52 END ELSE CASE WHEN (model_input."X_3" <= 5.968805) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_1" <= 653.192688) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_1" <= 478.218262) THEN CASE WHEN (model_input."X_1" <= 254.801056) THEN CASE WHEN (model_input."X_3" <= 4.366154) THEN 31 ELSE CASE WHEN (model_input."X_3" <= 7.012589) THEN 57 ELSE 58 END END ELSE CASE WHEN (model_input."X_3" <= 6.199855) THEN 41 ELSE CASE WHEN (model_input."X_3" <= 10.327162) THEN 61 ELSE 62 END END END ELSE CASE WHEN (model_input."X_0" <= 10.301342) THEN 19 ELSE CASE WHEN (model_input."X_3" <= 7.748808) THEN CASE WHEN (model_input."X_0" <= 52.691944) THEN 59 ELSE 60 END ELSE 34 END END END END ELSE CASE WHEN (model_input."X_2" <= 0.275987) THEN CASE WHEN (model_input."X_2" <= 0.123583) THEN CASE WHEN (model_input."X_0" <= 61.606926) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_3" <= 9.566511) THEN CASE WHEN (model_input."X_2" <= 0.225833) THEN 39 ELSE 40 END ELSE 24 END END ELSE CASE WHEN (model_input."X_2" <= 0.550660) THEN CASE WHEN (model_input."X_3" <= 4.290198) THEN CASE WHEN (model_input."X_3" <= 3.065935) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_3" <= 5.500756) THEN 25 ELSE CASE WHEN (model_input."X_2" <= 0.354459) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_1" <= 1437.733154) THEN CASE WHEN (model_input."X_3" <= 7.228873) THEN CASE WHEN (model_input."X_3" <= 1.893675) THEN 27 ELSE 28 END ELSE 22 END ELSE CASE WHEN (model_input."X_3" <= 6.218287) THEN 11 ELSE 12 END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 423.370239 AS "E"
    UNION ALL
    SELECT 1 AS nid, 219.833588 AS "E"
    UNION ALL
    SELECT 2 AS nid, 562.632019 AS "E"
    UNION ALL
    SELECT 3 AS nid, 200.025223 AS "E"
    UNION ALL
    SELECT 4 AS nid, 659.327271 AS "E"
    UNION ALL
    SELECT 5 AS nid, 506.053925 AS "E"
    UNION ALL
    SELECT 6 AS nid, 725.015808 AS "E"
    UNION ALL
    SELECT 7 AS nid, 684.186401 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1112.894653 AS "E"
    UNION ALL
    SELECT 9 AS nid, 656.285889 AS "E"
    UNION ALL
    SELECT 10 AS nid, 430.937866 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1011.300659 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 13 AS nid, 84.601280 AS "E"
    UNION ALL
    SELECT 14 AS nid, 269.279602 AS "E"
    UNION ALL
    SELECT 15 AS nid, 107.096535 AS "E"
    UNION ALL
    SELECT 16 AS nid, 290.294220 AS "E"
    UNION ALL
    SELECT 17 AS nid, 216.715088 AS "E"
    UNION ALL
    SELECT 18 AS nid, 384.896027 AS "E"
    UNION ALL
    SELECT 19 AS nid, 484.548340 AS "E"
    UNION ALL
    SELECT 20 AS nid, 345.035095 AS "E"
    UNION ALL
    SELECT 21 AS nid, 723.030762 AS "E"
    UNION ALL
    SELECT 22 AS nid, 617.596130 AS "E"
    UNION ALL
    SELECT 23 AS nid, 246.608658 AS "E"
    UNION ALL
    SELECT 24 AS nid, 359.963287 AS "E"
    UNION ALL
    SELECT 25 AS nid, 377.641510 AS "E"
    UNION ALL
    SELECT 26 AS nid, 457.586060 AS "E"
    UNION ALL
    SELECT 27 AS nid, 643.998474 AS "E"
    UNION ALL
    SELECT 28 AS nid, 738.837280 AS "E"
    UNION ALL
    SELECT 29 AS nid, 167.303604 AS "E"
    UNION ALL
    SELECT 30 AS nid, 241.420853 AS "E"
    UNION ALL
    SELECT 31 AS nid, 211.326752 AS "E"
    UNION ALL
    SELECT 32 AS nid, 145.292023 AS "E"
    UNION ALL
    SELECT 33 AS nid, 335.114258 AS "E"
    UNION ALL
    SELECT 34 AS nid, 384.718445 AS "E"
    UNION ALL
    SELECT 35 AS nid, 97.190880 AS "E"
    UNION ALL
    SELECT 36 AS nid, 146.719147 AS "E"
    UNION ALL
    SELECT 37 AS nid, 176.877380 AS "E"
    UNION ALL
    SELECT 38 AS nid, 116.560905 AS "E"
    UNION ALL
    SELECT 39 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 40 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 41 AS nid, 230.342804 AS "E"
    UNION ALL
    SELECT 42 AS nid, 263.576904 AS "E"
    UNION ALL
    SELECT 43 AS nid, 646.799377 AS "E"
    UNION ALL
    SELECT 44 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 45 AS nid, 91.479836 AS "E"
    UNION ALL
    SELECT 46 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 47 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 48 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 49 AS nid, 449.374084 AS "E"
    UNION ALL
    SELECT 50 AS nid, 465.798004 AS "E"
    UNION ALL
    SELECT 51 AS nid, 88.068672 AS "E"
    UNION ALL
    SELECT 52 AS nid, 108.535683 AS "E"
    UNION ALL
    SELECT 53 AS nid, 96.465843 AS "E"
    UNION ALL
    SELECT 54 AS nid, 75.472916 AS "E"
    UNION ALL
    SELECT 55 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 56 AS nid, 94.508049 AS "E"
    UNION ALL
    SELECT 57 AS nid, 138.385742 AS "E"
    UNION ALL
    SELECT 58 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 59 AS nid, 333.097015 AS "E"
    UNION ALL
    SELECT 60 AS nid, 341.166046 AS "E"
    UNION ALL
    SELECT 61 AS nid, 266.606049 AS "E"
    UNION ALL
    SELECT 62 AS nid, 260.547760 AS "E"
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
    CASE WHEN (model_input."X_2" <= 0.551616) THEN CASE WHEN (model_input."X_2" <= 0.260938) THEN CASE WHEN (model_input."X_2" <= 0.169188) THEN CASE WHEN (model_input."X_0" <= 27.925087) THEN CASE WHEN (model_input."X_2" <= 0.129406) THEN 59 ELSE 60 END ELSE CASE WHEN (model_input."X_2" <= 0.104052) THEN CASE WHEN (model_input."X_0" <= 80.386909) THEN 55 ELSE 56 END ELSE 52 END END ELSE CASE WHEN (model_input."X_1" <= 758.387939) THEN CASE WHEN (model_input."X_0" <= 27.768438) THEN 35 ELSE CASE WHEN (model_input."X_1" <= 574.166626) THEN 49 ELSE 50 END END ELSE CASE WHEN (model_input."X_2" <= 0.225833) THEN 43 ELSE 44 END END END ELSE CASE WHEN (model_input."X_1" <= 1555.578979) THEN CASE WHEN (model_input."X_1" <= 639.419067) THEN CASE WHEN (model_input."X_2" <= 0.376938) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_1" <= 1447.025879) THEN CASE WHEN (model_input."X_2" <= 0.392625) THEN 45 ELSE 46 END ELSE 32 END END ELSE 14 END END ELSE CASE WHEN (model_input."X_1" <= 672.952271) THEN CASE WHEN (model_input."X_1" <= 439.948120) THEN CASE WHEN (model_input."X_3" <= 8.072943) THEN CASE WHEN (model_input."X_3" <= 5.253784) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_1" <= 340.413940) THEN 57 ELSE 58 END END ELSE CASE WHEN (model_input."X_0" <= 85.349091) THEN CASE WHEN (model_input."X_1" <= 578.910889) THEN CASE WHEN (model_input."X_0" <= 47.317791) THEN 61 ELSE 62 END ELSE 42 END ELSE 16 END END ELSE CASE WHEN (model_input."X_1" <= 1502.599487) THEN CASE WHEN (model_input."X_3" <= 7.384670) THEN CASE WHEN (model_input."X_3" <= 3.044056) THEN CASE WHEN (model_input."X_2" <= 0.840603) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_2" <= 0.862396) THEN 25 ELSE 26 END END ELSE CASE WHEN (model_input."X_1" <= 839.158325) THEN 53 ELSE 54 END END ELSE CASE WHEN (model_input."X_1" <= 1626.897827) THEN 7 ELSE 8 END END END END AS node_id
  FROM model_input
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 405.740448 AS "E"
    UNION ALL
    SELECT 1 AS nid, 185.383804 AS "E"
    UNION ALL
    SELECT 2 AS nid, 655.477966 AS "E"
    UNION ALL
    SELECT 3 AS nid, 362.609100 AS "E"
    UNION ALL
    SELECT 4 AS nid, 825.033691 AS "E"
    UNION ALL
    SELECT 5 AS nid, 757.552063 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1398.626953 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1582.765259 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 9 AS nid, 112.821327 AS "E"
    UNION ALL
    SELECT 10 AS nid, 359.533783 AS "E"
    UNION ALL
    SELECT 11 AS nid, 214.138184 AS "E"
    UNION ALL
    SELECT 12 AS nid, 447.449615 AS "E"
    UNION ALL
    SELECT 13 AS nid, 324.453247 AS "E"
    UNION ALL
    SELECT 14 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 15 AS nid, 397.160675 AS "E"
    UNION ALL
    SELECT 16 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 17 AS nid, 204.350555 AS "E"
    UNION ALL
    SELECT 18 AS nid, 358.768250 AS "E"
    UNION ALL
    SELECT 19 AS nid, 786.487610 AS "E"
    UNION ALL
    SELECT 20 AS nid, 622.519958 AS "E"
    UNION ALL
    SELECT 21 AS nid, 706.956055 AS "E"
    UNION ALL
    SELECT 22 AS nid, 830.671753 AS "E"
    UNION ALL
    SELECT 23 AS nid, 164.699463 AS "E"
    UNION ALL
    SELECT 24 AS nid, 263.576904 AS "E"
    UNION ALL
    SELECT 25 AS nid, 801.499268 AS "E"
    UNION ALL
    SELECT 26 AS nid, 889.016663 AS "E"
    UNION ALL
    SELECT 27 AS nid, 79.967583 AS "E"
    UNION ALL
    SELECT 28 AS nid, 158.816574 AS "E"
    UNION ALL
    SELECT 29 AS nid, 122.657959 AS "E"
    UNION ALL
    SELECT 30 AS nid, 243.186661 AS "E"
    UNION ALL
    SELECT 31 AS nid, 343.667267 AS "E"
    UNION ALL
    SELECT 32 AS nid, 449.374084 AS "E"
    UNION ALL
    SELECT 33 AS nid, 722.695435 AS "E"
    UNION ALL
    SELECT 34 AS nid, 643.998474 AS "E"
    UNION ALL
    SELECT 35 AS nid, 90.519867 AS "E"
    UNION ALL
    SELECT 36 AS nid, 146.761505 AS "E"
    UNION ALL
    SELECT 37 AS nid, 176.877380 AS "E"
    UNION ALL
    SELECT 38 AS nid, 231.823715 AS "E"
    UNION ALL
    SELECT 39 AS nid, 138.385742 AS "E"
    UNION ALL
    SELECT 40 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 41 AS nid, 384.816010 AS "E"
    UNION ALL
    SELECT 42 AS nid, 446.539368 AS "E"
    UNION ALL
    SELECT 43 AS nid, 256.874634 AS "E"
    UNION ALL
    SELECT 44 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 45 AS nid, 359.963287 AS "E"
    UNION ALL
    SELECT 46 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 47 AS nid, 60.661530 AS "E"
    UNION ALL
    SELECT 48 AS nid, 85.232872 AS "E"
    UNION ALL
    SELECT 49 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 50 AS nid, 152.096848 AS "E"
    UNION ALL
    SELECT 51 AS nid, 82.419601 AS "E"
    UNION ALL
    SELECT 52 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 53 AS nid, 618.319824 AS "E"
    UNION ALL
    SELECT 54 AS nid, 630.920105 AS "E"
    UNION ALL
    SELECT 55 AS nid, 78.196304 AS "E"
    UNION ALL
    SELECT 56 AS nid, 87.698723 AS "E"
    UNION ALL
    SELECT 57 AS nid, 266.606049 AS "E"
    UNION ALL
    SELECT 58 AS nid, 260.547760 AS "E"
    UNION ALL
    SELECT 59 AS nid, 62.030949 AS "E"
    UNION ALL
    SELECT 60 AS nid, 59.976818 AS "E"
    UNION ALL
    SELECT 61 AS nid, 384.718414 AS "E"
    UNION ALL
    SELECT 62 AS nid, 385.108765 AS "E"
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