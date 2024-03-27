WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.046038) THEN CASE WHEN (model_input."X_2" <= 0.037129) THEN CASE WHEN (model_input."X_2" <= 0.018615) THEN 9 ELSE 10 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 187.384659) THEN CASE WHEN (model_input."X_0" <= 71.489639) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.260938) THEN CASE WHEN (model_input."X_0" <= 16.442682) THEN CASE WHEN (model_input."X_0" <= 14.603495) THEN CASE WHEN (model_input."X_0" <= 12.927776) THEN CASE WHEN (model_input."X_1" <= 557.734497) THEN 67 ELSE 68 END ELSE 40 END ELSE 24 END ELSE CASE WHEN (model_input."X_0" <= 51.530243) THEN CASE WHEN (model_input."X_3" <= 10.289057) THEN CASE WHEN (model_input."X_3" <= 2.604177) THEN 31 ELSE CASE WHEN (model_input."X_0" <= 47.675323) THEN CASE WHEN (model_input."X_3" <= 6.590220) THEN 91 ELSE 92 END ELSE 38 END END ELSE 22 END ELSE CASE WHEN (model_input."X_0" <= 79.828445) THEN CASE WHEN (model_input."X_3" <= 8.980533) THEN CASE WHEN (model_input."X_3" <= 5.968805) THEN 123 ELSE 124 END ELSE 86 END ELSE 20 END END END ELSE CASE WHEN (model_input."X_1" <= 340.413940) THEN CASE WHEN (model_input."X_0" <= 44.843964) THEN 29 ELSE CASE WHEN (model_input."X_2" <= 0.658563) THEN 33 ELSE CASE WHEN (model_input."X_3" <= 8.072943) THEN CASE WHEN (model_input."X_0" <= 67.927597) THEN 75 ELSE CASE WHEN (model_input."X_1" <= 251.072159) THEN 97 ELSE 98 END END ELSE 50 END END END ELSE CASE WHEN (model_input."X_0" <= 36.854443) THEN CASE WHEN (model_input."X_0" <= 23.623474) THEN CASE WHEN (model_input."X_2" <= 0.726488) THEN CASE WHEN (model_input."X_1" <= 1133.715088) THEN CASE WHEN (model_input."X_0" <= 17.270214) THEN CASE WHEN (model_input."X_3" <= 7.645812) THEN CASE WHEN (model_input."X_1" <= 874.186523) THEN 119 ELSE 120 END ELSE 108 END ELSE CASE WHEN (model_input."X_3" <= 6.691791) THEN 109 ELSE 110 END END ELSE CASE WHEN (model_input."X_3" <= 4.552237) THEN 101 ELSE 102 END END ELSE CASE WHEN (model_input."X_0" <= 4.696143) THEN 99 ELSE CASE WHEN (model_input."X_2" <= 0.731943) THEN 103 ELSE CASE WHEN (model_input."X_3" <= 5.740665) THEN CASE WHEN (model_input."X_0" <= 7.529807) THEN 117 ELSE 118 END ELSE CASE WHEN (model_input."X_3" <= 7.043568) THEN 125 ELSE 126 END END END END END ELSE CASE WHEN (model_input."X_1" <= 859.254883) THEN 51 ELSE CASE WHEN (model_input."X_0" <= 30.029671) THEN 89 ELSE 90 END END END ELSE CASE WHEN (model_input."X_1" <= 730.325134) THEN CASE WHEN (model_input."X_0" <= 95.839081) THEN CASE WHEN (model_input."X_2" <= 0.650670) THEN CASE WHEN (model_input."X_1" <= 538.918274) THEN CASE WHEN (model_input."X_1" <= 498.501892) THEN 71 ELSE 72 END ELSE CASE WHEN (model_input."X_2" <= 0.433656) THEN 59 ELSE 60 END END ELSE CASE WHEN (model_input."X_1" <= 618.737915) THEN CASE WHEN (model_input."X_2" <= 0.720881) THEN 95 ELSE CASE WHEN (model_input."X_1" <= 482.551331) THEN 105 ELSE 106 END END ELSE CASE WHEN (model_input."X_3" <= 5.637886) THEN 83 ELSE 84 END END END ELSE 42 END ELSE CASE WHEN (model_input."X_2" <= 0.326872) THEN CASE WHEN (model_input."X_2" <= 0.279294) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_0" <= 60.287048) THEN CASE WHEN (model_input."X_2" <= 0.859345) THEN CASE WHEN (model_input."X_1" <= 1208.266602) THEN CASE WHEN (model_input."X_1" <= 1081.708740) THEN 113 ELSE 114 END ELSE 88 END ELSE 70 END ELSE CASE WHEN (model_input."X_2" <= 0.993889) THEN CASE WHEN (model_input."X_0" <= 76.416107) THEN CASE WHEN (model_input."X_0" <= 75.659210) THEN CASE WHEN (model_input."X_3" <= 2.708874) THEN 79 ELSE CASE WHEN (model_input."X_3" <= 7.078108) THEN CASE WHEN (model_input."X_0" <= 70.016403) THEN 115 ELSE 116 END ELSE 82 END END ELSE 74 END ELSE CASE WHEN (model_input."X_1" <= 933.029358) THEN 121 ELSE 122 END END ELSE 54 END END END END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.321436 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.224450 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.375386 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.111990 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.680325 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.398947 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.245007 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.442452 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.436332 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.159974 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.237995 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.473121 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.229870 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.072603 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.014036 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.269293 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.473608 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.324506 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.535861 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.431295 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.372742 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.473118 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.216963 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.193958 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.294405 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.159392 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.231356 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.405309 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.484420 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.275480 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.458304 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.504214 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.379633 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.310721 AS "E"
    UNION ALL
    SELECT 43 AS nid, 1.425416 AS "E"
    UNION ALL
    SELECT 44 AS nid, 1.385201 AS "E"
    UNION ALL
    SELECT 45 AS nid, 1.544874 AS "E"
    UNION ALL
    SELECT 46 AS nid, 1.496801 AS "E"
    UNION ALL
    SELECT 47 AS nid, 1.508022 AS "E"
    UNION ALL
    SELECT 48 AS nid, 1.472618 AS "E"
    UNION ALL
    SELECT 49 AS nid, 1.221762 AS "E"
    UNION ALL
    SELECT 50 AS nid, 1.260137 AS "E"
    UNION ALL
    SELECT 51 AS nid, 1.473486 AS "E"
    UNION ALL
    SELECT 52 AS nid, 1.508458 AS "E"
    UNION ALL
    SELECT 53 AS nid, 1.466768 AS "E"
    UNION ALL
    SELECT 54 AS nid, 1.513570 AS "E"
    UNION ALL
    SELECT 55 AS nid, 1.363846 AS "E"
    UNION ALL
    SELECT 56 AS nid, 1.392263 AS "E"
    UNION ALL
    SELECT 57 AS nid, 1.396463 AS "E"
    UNION ALL
    SELECT 58 AS nid, 1.331229 AS "E"
    UNION ALL
    SELECT 59 AS nid, 1.352583 AS "E"
    UNION ALL
    SELECT 60 AS nid, 1.309875 AS "E"
    UNION ALL
    SELECT 61 AS nid, 1.378437 AS "E"
    UNION ALL
    SELECT 62 AS nid, 1.413003 AS "E"
    UNION ALL
    SELECT 63 AS nid, 1.532143 AS "E"
    UNION ALL
    SELECT 64 AS nid, 1.559727 AS "E"
    UNION ALL
    SELECT 65 AS nid, 1.474907 AS "E"
    UNION ALL
    SELECT 66 AS nid, 1.446421 AS "E"
    UNION ALL
    SELECT 67 AS nid, 1.446981 AS "E"
    UNION ALL
    SELECT 68 AS nid, 1.469628 AS "E"
    UNION ALL
    SELECT 69 AS nid, 1.501731 AS "E"
    UNION ALL
    SELECT 70 AS nid, 1.526895 AS "E"
    UNION ALL
    SELECT 71 AS nid, 1.385638 AS "E"
    UNION ALL
    SELECT 72 AS nid, 1.407287 AS "E"
    UNION ALL
    SELECT 73 AS nid, 1.469832 AS "E"
    UNION ALL
    SELECT 74 AS nid, 1.495207 AS "E"
    UNION ALL
    SELECT 75 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 76 AS nid, 1.215330 AS "E"
    UNION ALL
    SELECT 77 AS nid, 1.526540 AS "E"
    UNION ALL
    SELECT 78 AS nid, 1.546150 AS "E"
    UNION ALL
    SELECT 79 AS nid, 1.454661 AS "E"
    UNION ALL
    SELECT 80 AS nid, 1.474889 AS "E"
    UNION ALL
    SELECT 81 AS nid, 1.481990 AS "E"
    UNION ALL
    SELECT 82 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 83 AS nid, 1.420956 AS "E"
    UNION ALL
    SELECT 84 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 85 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 86 AS nid, 1.024383 AS "E"
    UNION ALL
    SELECT 87 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 88 AS nid, 1.510584 AS "E"
    UNION ALL
    SELECT 89 AS nid, 1.502286 AS "E"
    UNION ALL
    SELECT 90 AS nid, 1.514631 AS "E"
    UNION ALL
    SELECT 91 AS nid, 1.280815 AS "E"
    UNION ALL
    SELECT 92 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 93 AS nid, 1.530532 AS "E"
    UNION ALL
    SELECT 94 AS nid, 1.520553 AS "E"
    UNION ALL
    SELECT 95 AS nid, 1.371796 AS "E"
    UNION ALL
    SELECT 96 AS nid, 1.381757 AS "E"
    UNION ALL
    SELECT 97 AS nid, 1.218874 AS "E"
    UNION ALL
    SELECT 98 AS nid, 1.211786 AS "E"
    UNION ALL
    SELECT 99 AS nid, 1.567866 AS "E"
    UNION ALL
    SELECT 100 AS nid, 1.558099 AS "E"
    UNION ALL
    SELECT 101 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 102 AS nid, 1.542656 AS "E"
    UNION ALL
    SELECT 103 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 104 AS nid, 1.559578 AS "E"
    UNION ALL
    SELECT 105 AS nid, 1.384737 AS "E"
    UNION ALL
    SELECT 106 AS nid, 1.378776 AS "E"
    UNION ALL
    SELECT 107 AS nid, 1.532568 AS "E"
    UNION ALL
    SELECT 108 AS nid, 1.526459 AS "E"
    UNION ALL
    SELECT 109 AS nid, 1.518426 AS "E"
    UNION ALL
    SELECT 110 AS nid, 1.522681 AS "E"
    UNION ALL
    SELECT 111 AS nid, 1.557233 AS "E"
    UNION ALL
    SELECT 112 AS nid, 1.561923 AS "E"
    UNION ALL
    SELECT 113 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 114 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 115 AS nid, 1.483606 AS "E"
    UNION ALL
    SELECT 116 AS nid, 1.480374 AS "E"
    UNION ALL
    SELECT 117 AS nid, 1.555685 AS "E"
    UNION ALL
    SELECT 118 AS nid, 1.558781 AS "E"
    UNION ALL
    SELECT 119 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 120 AS nid, 1.533932 AS "E"
    UNION ALL
    SELECT 121 AS nid, 1.446820 AS "E"
    UNION ALL
    SELECT 122 AS nid, 1.446022 AS "E"
    UNION ALL
    SELECT 123 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 124 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 125 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 126 AS nid, 1.562383 AS "E"
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