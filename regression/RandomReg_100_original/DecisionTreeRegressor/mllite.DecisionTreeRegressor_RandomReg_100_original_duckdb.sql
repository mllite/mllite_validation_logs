WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_original" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_46" <= -0.034381) THEN CASE WHEN (model_input."X_30" <= -0.535820) THEN CASE WHEN (model_input."X_77" <= -0.574005) THEN CASE WHEN (model_input."X_77" <= -1.947561) THEN CASE WHEN (model_input."X_60" <= 0.925211) THEN 83 ELSE 84 END ELSE 82 END ELSE CASE WHEN (model_input."X_46" <= -0.656614) THEN CASE WHEN (model_input."X_36" <= -0.193079) THEN CASE WHEN (model_input."X_55" <= 1.178184) THEN CASE WHEN (model_input."X_30" <= -2.175840) THEN 79 ELSE 80 END ELSE 22 END ELSE CASE WHEN (model_input."X_28" <= 1.363655) THEN CASE WHEN (model_input."X_86" <= -1.452778) THEN 89 ELSE 90 END ELSE CASE WHEN (model_input."X_43" <= -0.480466) THEN 65 ELSE 66 END END END ELSE CASE WHEN (model_input."X_77" <= 0.995126) THEN 101 ELSE 102 END END END ELSE CASE WHEN (model_input."X_77" <= -0.059238) THEN CASE WHEN (model_input."X_46" <= -1.353758) THEN CASE WHEN (model_input."X_90" <= -1.844951) THEN CASE WHEN (model_input."X_2" <= -0.463692) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_29" <= -0.414695) THEN 59 ELSE CASE WHEN (model_input."X_67" <= -0.294895) THEN 61 ELSE 62 END END END ELSE CASE WHEN (model_input."X_36" <= -0.335055) THEN 63 ELSE CASE WHEN (model_input."X_77" <= -0.756640) THEN CASE WHEN (model_input."X_11" <= 0.097917) THEN CASE WHEN (model_input."X_47" <= 1.163003) THEN 77 ELSE 78 END ELSE 76 END ELSE 74 END END END ELSE CASE WHEN (model_input."X_36" <= -0.113898) THEN CASE WHEN (model_input."X_22" <= -0.293001) THEN CASE WHEN (model_input."X_5" <= -0.971841) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_59" <= -0.690733) THEN CASE WHEN (model_input."X_44" <= 0.049071) THEN CASE WHEN (model_input."X_12" <= 0.181663) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_98" <= -0.484647) THEN 47 ELSE 48 END END ELSE 42 END END ELSE CASE WHEN (model_input."X_95" <= -0.098770) THEN CASE WHEN (model_input."X_32" <= 0.340663) THEN CASE WHEN (model_input."X_88" <= 0.322829) THEN 117 ELSE 118 END ELSE CASE WHEN (model_input."X_30" <= 0.343564) THEN 115 ELSE 116 END END ELSE CASE WHEN (model_input."X_59" <= 0.448923) THEN 69 ELSE CASE WHEN (model_input."X_71" <= 0.758678) THEN 71 ELSE 72 END END END END END END ELSE CASE WHEN (model_input."X_30" <= 0.349887) THEN CASE WHEN (model_input."X_77" <= 0.485478) THEN CASE WHEN (model_input."X_36" <= -0.117936) THEN CASE WHEN (model_input."X_30" <= -0.932377) THEN CASE WHEN (model_input."X_32" <= -0.245878) THEN CASE WHEN (model_input."X_2" <= 0.121353) THEN 109 ELSE CASE WHEN (model_input."X_6" <= 0.634438) THEN 111 ELSE 112 END END ELSE 108 END ELSE 106 END ELSE 104 END ELSE CASE WHEN (model_input."X_32" <= 0.795996) THEN 93 ELSE CASE WHEN (model_input."X_46" <= 1.479397) THEN CASE WHEN (model_input."X_23" <= 1.068092) THEN 99 ELSE 100 END ELSE CASE WHEN (model_input."X_36" <= 0.985664) THEN 97 ELSE 98 END END END END ELSE CASE WHEN (model_input."X_77" <= 0.467669) THEN CASE WHEN (model_input."X_36" <= 0.921257) THEN CASE WHEN (model_input."X_77" <= -0.761253) THEN CASE WHEN (model_input."X_76" <= 0.155472) THEN 121 ELSE CASE WHEN (model_input."X_66" <= -0.301210) THEN 123 ELSE 124 END END ELSE CASE WHEN (model_input."X_32" <= 0.111745) THEN 125 ELSE 126 END END ELSE CASE WHEN (model_input."X_12" <= -1.141692) THEN CASE WHEN (model_input."X_67" <= -0.109535) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_4" <= 0.055063) THEN 85 ELSE CASE WHEN (model_input."X_66" <= -0.034436) THEN 87 ELSE 88 END END END END ELSE CASE WHEN (model_input."X_32" <= -1.108272) THEN CASE WHEN (model_input."X_90" <= -1.307613) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_59" <= 0.259674) THEN CASE WHEN (model_input."X_21" <= 1.163643) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_36" <= -0.629305) THEN 27 ELSE CASE WHEN (model_input."X_68" <= 0.718319) THEN 67 ELSE 68 END END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 2.598278 AS "E"
    UNION ALL
    SELECT 1 AS nid, -69.103088 AS "E"
    UNION ALL
    SELECT 2 AS nid, 66.362183 AS "E"
    UNION ALL
    SELECT 3 AS nid, -165.320114 AS "E"
    UNION ALL
    SELECT 4 AS nid, -24.784891 AS "E"
    UNION ALL
    SELECT 5 AS nid, -87.792175 AS "E"
    UNION ALL
    SELECT 6 AS nid, 35.972137 AS "E"
    UNION ALL
    SELECT 7 AS nid, 23.813805 AS "E"
    UNION ALL
    SELECT 8 AS nid, 143.302078 AS "E"
    UNION ALL
    SELECT 9 AS nid, 97.904373 AS "E"
    UNION ALL
    SELECT 10 AS nid, 226.753662 AS "E"
    UNION ALL
    SELECT 11 AS nid, 48.267952 AS "E"
    UNION ALL
    SELECT 12 AS nid, 250.551773 AS "E"
    UNION ALL
    SELECT 13 AS nid, -53.145889 AS "E"
    UNION ALL
    SELECT 14 AS nid, 149.681793 AS "E"
    UNION ALL
    SELECT 15 AS nid, -239.642807 AS "E"
    UNION ALL
    SELECT 16 AS nid, -121.965263 AS "E"
    UNION ALL
    SELECT 17 AS nid, -175.024841 AS "E"
    UNION ALL
    SELECT 18 AS nid, -61.831093 AS "E"
    UNION ALL
    SELECT 19 AS nid, -239.089035 AS "E"
    UNION ALL
    SELECT 20 AS nid, -122.400742 AS "E"
    UNION ALL
    SELECT 21 AS nid, -259.093353 AS "E"
    UNION ALL
    SELECT 22 AS nid, -29.043705 AS "E"
    UNION ALL
    SELECT 23 AS nid, -96.631935 AS "E"
    UNION ALL
    SELECT 24 AS nid, -277.013550 AS "E"
    UNION ALL
    SELECT 25 AS nid, 203.794067 AS "E"
    UNION ALL
    SELECT 26 AS nid, 311.696350 AS "E"
    UNION ALL
    SELECT 27 AS nid, 205.894165 AS "E"
    UNION ALL
    SELECT 28 AS nid, 350.676117 AS "E"
    UNION ALL
    SELECT 29 AS nid, -204.316040 AS "E"
    UNION ALL
    SELECT 30 AS nid, -63.443920 AS "E"
    UNION ALL
    SELECT 31 AS nid, -427.052734 AS "E"
    UNION ALL
    SELECT 32 AS nid, -177.587662 AS "E"
    UNION ALL
    SELECT 33 AS nid, -467.998505 AS "E"
    UNION ALL
    SELECT 34 AS nid, -345.161194 AS "E"
    UNION ALL
    SELECT 35 AS nid, -18.271076 AS "E"
    UNION ALL
    SELECT 36 AS nid, 84.120613 AS "E"
    UNION ALL
    SELECT 37 AS nid, 20.953367 AS "E"
    UNION ALL
    SELECT 38 AS nid, 131.186386 AS "E"
    UNION ALL
    SELECT 39 AS nid, -78.573952 AS "E"
    UNION ALL
    SELECT 40 AS nid, 24.989672 AS "E"
    UNION ALL
    SELECT 41 AS nid, -87.746208 AS "E"
    UNION ALL
    SELECT 42 AS nid, 60.420956 AS "E"
    UNION ALL
    SELECT 43 AS nid, -1.871323 AS "E"
    UNION ALL
    SELECT 44 AS nid, -159.308609 AS "E"
    UNION ALL
    SELECT 45 AS nid, -68.232269 AS "E"
    UNION ALL
    SELECT 46 AS nid, 42.369305 AS "E"
    UNION ALL
    SELECT 47 AS nid, -108.170692 AS "E"
    UNION ALL
    SELECT 48 AS nid, -210.446518 AS "E"
    UNION ALL
    SELECT 49 AS nid, -239.102341 AS "E"
    UNION ALL
    SELECT 50 AS nid, -62.521103 AS "E"
    UNION ALL
    SELECT 51 AS nid, 70.022980 AS "E"
    UNION ALL
    SELECT 52 AS nid, 190.201355 AS "E"
    UNION ALL
    SELECT 53 AS nid, 321.788147 AS "E"
    UNION ALL
    SELECT 54 AS nid, 169.147476 AS "E"
    UNION ALL
    SELECT 55 AS nid, 259.141632 AS "E"
    UNION ALL
    SELECT 56 AS nid, 384.434662 AS "E"
    UNION ALL
    SELECT 57 AS nid, 229.518539 AS "E"
    UNION ALL
    SELECT 58 AS nid, 104.571266 AS "E"
    UNION ALL
    SELECT 59 AS nid, -250.955093 AS "E"
    UNION ALL
    SELECT 60 AS nid, -143.061798 AS "E"
    UNION ALL
    SELECT 61 AS nid, -190.703842 AS "E"
    UNION ALL
    SELECT 62 AS nid, -89.464500 AS "E"
    UNION ALL
    SELECT 63 AS nid, -125.065170 AS "E"
    UNION ALL
    SELECT 64 AS nid, -23.123837 AS "E"
    UNION ALL
    SELECT 65 AS nid, -190.779449 AS "E"
    UNION ALL
    SELECT 66 AS nid, -305.758209 AS "E"
    UNION ALL
    SELECT 67 AS nid, 325.083618 AS "E"
    UNION ALL
    SELECT 68 AS nid, 446.647949 AS "E"
    UNION ALL
    SELECT 69 AS nid, 80.922234 AS "E"
    UNION ALL
    SELECT 70 AS nid, 179.517319 AS "E"
    UNION ALL
    SELECT 71 AS nid, 203.950546 AS "E"
    UNION ALL
    SELECT 72 AS nid, 45.134506 AS "E"
    UNION ALL
    SELECT 73 AS nid, -83.811371 AS "E"
    UNION ALL
    SELECT 74 AS nid, 16.508835 AS "E"
    UNION ALL
    SELECT 75 AS nid, -4.243257 AS "E"
    UNION ALL
    SELECT 76 AS nid, -119.978691 AS "E"
    UNION ALL
    SELECT 77 AS nid, 20.701719 AS "E"
    UNION ALL
    SELECT 78 AS nid, -104.023155 AS "E"
    UNION ALL
    SELECT 79 AS nid, -378.806244 AS "E"
    UNION ALL
    SELECT 80 AS nid, -239.141174 AS "E"
    UNION ALL
    SELECT 81 AS nid, -414.115631 AS "E"
    UNION ALL
    SELECT 82 AS nid, -226.221786 AS "E"
    UNION ALL
    SELECT 83 AS nid, -341.839966 AS "E"
    UNION ALL
    SELECT 84 AS nid, -486.391235 AS "E"
    UNION ALL
    SELECT 85 AS nid, 208.641083 AS "E"
    UNION ALL
    SELECT 86 AS nid, 109.907127 AS "E"
    UNION ALL
    SELECT 87 AS nid, 150.887466 AS "E"
    UNION ALL
    SELECT 88 AS nid, 48.436588 AS "E"
    UNION ALL
    SELECT 89 AS nid, -224.012650 AS "E"
    UNION ALL
    SELECT 90 AS nid, -78.434677 AS "E"
    UNION ALL
    SELECT 91 AS nid, -10.582308 AS "E"
    UNION ALL
    SELECT 92 AS nid, 89.453049 AS "E"
    UNION ALL
    SELECT 93 AS nid, 55.093460 AS "E"
    UNION ALL
    SELECT 94 AS nid, 160.815292 AS "E"
    UNION ALL
    SELECT 95 AS nid, 127.010674 AS "E"
    UNION ALL
    SELECT 96 AS nid, 273.497253 AS "E"
    UNION ALL
    SELECT 97 AS nid, 220.567627 AS "E"
    UNION ALL
    SELECT 98 AS nid, 379.356567 AS "E"
    UNION ALL
    SELECT 99 AS nid, 148.429031 AS "E"
    UNION ALL
    SELECT 100 AS nid, 19.918934 AS "E"
    UNION ALL
    SELECT 101 AS nid, -88.797516 AS "E"
    UNION ALL
    SELECT 102 AS nid, 21.519701 AS "E"
    UNION ALL
    SELECT 103 AS nid, -66.601189 AS "E"
    UNION ALL
    SELECT 104 AS nid, 29.132576 AS "E"
    UNION ALL
    SELECT 105 AS nid, -131.018417 AS "E"
    UNION ALL
    SELECT 106 AS nid, -25.507458 AS "E"
    UNION ALL
    SELECT 107 AS nid, -213.382965 AS "E"
    UNION ALL
    SELECT 108 AS nid, -100.513008 AS "E"
    UNION ALL
    SELECT 109 AS nid, -173.881393 AS "E"
    UNION ALL
    SELECT 110 AS nid, -305.553192 AS "E"
    UNION ALL
    SELECT 111 AS nid, -266.577515 AS "E"
    UNION ALL
    SELECT 112 AS nid, -383.504578 AS "E"
    UNION ALL
    SELECT 113 AS nid, -21.307617 AS "E"
    UNION ALL
    SELECT 114 AS nid, 73.158134 AS "E"
    UNION ALL
    SELECT 115 AS nid, -0.709725 AS "E"
    UNION ALL
    SELECT 116 AS nid, 124.865616 AS "E"
    UNION ALL
    SELECT 117 AS nid, 27.342037 AS "E"
    UNION ALL
    SELECT 118 AS nid, -65.534576 AS "E"
    UNION ALL
    SELECT 119 AS nid, 3.530994 AS "E"
    UNION ALL
    SELECT 120 AS nid, 101.734566 AS "E"
    UNION ALL
    SELECT 121 AS nid, 42.611946 AS "E"
    UNION ALL
    SELECT 122 AS nid, -58.347172 AS "E"
    UNION ALL
    SELECT 123 AS nid, -128.012054 AS "E"
    UNION ALL
    SELECT 124 AS nid, -23.514734 AS "E"
    UNION ALL
    SELECT 125 AS nid, 53.703178 AS "E"
    UNION ALL
    SELECT 126 AS nid, 151.266907 AS "E"
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