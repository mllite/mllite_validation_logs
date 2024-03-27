WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 0.278620) THEN CASE WHEN (model_input."X_3" <= 0.450978) THEN CASE WHEN (model_input."X_0" <= 0.420750) THEN CASE WHEN (model_input."X_7" <= 0.095739) THEN CASE WHEN (model_input."X_2" <= 0.541573) THEN 75 ELSE 76 END ELSE CASE WHEN (model_input."X_4" <= 0.323464) THEN 49 ELSE CASE WHEN (model_input."X_7" <= 0.483464) THEN 121 ELSE 122 END END END ELSE CASE WHEN (model_input."X_1" <= 0.134824) THEN CASE WHEN (model_input."X_1" <= 0.025834) THEN 39 ELSE CASE WHEN (model_input."X_3" <= 0.082387) THEN 83 ELSE 84 END END ELSE CASE WHEN (model_input."X_3" <= 0.214564) THEN CASE WHEN (model_input."X_2" <= 0.454444) THEN CASE WHEN (model_input."X_7" <= 0.749487) THEN 105 ELSE 106 END ELSE CASE WHEN (model_input."X_9" <= 0.274897) THEN 119 ELSE 120 END END ELSE 62 END END END ELSE CASE WHEN (model_input."X_1" <= 0.195970) THEN CASE WHEN (model_input."X_0" <= 0.750461) THEN CASE WHEN (model_input."X_2" <= 0.830754) THEN CASE WHEN (model_input."X_0" <= 0.418477) THEN CASE WHEN (model_input."X_3" <= 0.546907) THEN 87 ELSE CASE WHEN (model_input."X_0" <= 0.342384) THEN 117 ELSE 118 END END ELSE CASE WHEN (model_input."X_0" <= 0.603237) THEN 99 ELSE 100 END END ELSE 42 END ELSE CASE WHEN (model_input."X_7" <= 0.536246) THEN 93 ELSE 94 END END ELSE 8 END END ELSE CASE WHEN (model_input."X_3" <= 0.296503) THEN CASE WHEN (model_input."X_0" <= 0.281381) THEN CASE WHEN (model_input."X_2" <= 0.166683) THEN 29 ELSE CASE WHEN (model_input."X_4" <= 0.565688) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_9" <= 0.176301) THEN CASE WHEN (model_input."X_5" <= 0.713152) THEN 95 ELSE 96 END ELSE CASE WHEN (model_input."X_2" <= 0.634334) THEN CASE WHEN (model_input."X_0" <= 0.790048) THEN 63 ELSE 64 END ELSE CASE WHEN (model_input."X_1" <= 0.386900) THEN 103 ELSE 104 END END END END ELSE CASE WHEN (model_input."X_0" <= 0.457187) THEN CASE WHEN (model_input."X_3" <= 0.680971) THEN CASE WHEN (model_input."X_7" <= 0.306412) THEN CASE WHEN (model_input."X_6" <= 0.558194) THEN CASE WHEN (model_input."X_4" <= 0.628642) THEN 81 ELSE 82 END ELSE CASE WHEN (model_input."X_3" <= 0.545263) THEN 109 ELSE 110 END END ELSE CASE WHEN (model_input."X_6" <= 0.649614) THEN CASE WHEN (model_input."X_0" <= 0.294290) THEN 125 ELSE 126 END ELSE CASE WHEN (model_input."X_9" <= 0.649498) THEN 91 ELSE 92 END END END ELSE CASE WHEN (model_input."X_0" <= 0.083791) THEN CASE WHEN (model_input."X_9" <= 0.800335) THEN CASE WHEN (model_input."X_9" <= 0.409416) THEN 107 ELSE 108 END ELSE 74 END ELSE CASE WHEN (model_input."X_9" <= 0.126246) THEN 25 ELSE CASE WHEN (model_input."X_4" <= 0.843392) THEN CASE WHEN (model_input."X_1" <= 0.592610) THEN 113 ELSE 114 END ELSE 86 END END END END ELSE CASE WHEN (model_input."X_3" <= 0.566825) THEN CASE WHEN (model_input."X_6" <= 0.110623) THEN 15 ELSE CASE WHEN (model_input."X_0" <= 0.918827) THEN CASE WHEN (model_input."X_2" <= 0.968691) THEN CASE WHEN (model_input."X_9" <= 0.100501) THEN 77 ELSE CASE WHEN (model_input."X_4" <= 0.068099) THEN 89 ELSE CASE WHEN (model_input."X_1" <= 0.859309) THEN 123 ELSE 124 END END END ELSE 68 END ELSE CASE WHEN (model_input."X_9" <= 0.484525) THEN 65 ELSE 66 END END END ELSE CASE WHEN (model_input."X_5" <= 0.705327) THEN CASE WHEN (model_input."X_1" <= 0.375633) THEN CASE WHEN (model_input."X_7" <= 0.161023) THEN 101 ELSE CASE WHEN (model_input."X_9" <= 0.647650) THEN 115 ELSE 116 END END ELSE CASE WHEN (model_input."X_3" <= 0.801652) THEN 59 ELSE CASE WHEN (model_input."X_4" <= 0.810125) THEN 97 ELSE 98 END END END ELSE CASE WHEN (model_input."X_1" <= 0.674456) THEN CASE WHEN (model_input."X_5" <= 0.883758) THEN 111 ELSE 112 END ELSE CASE WHEN (model_input."X_5" <= 0.876323) THEN 79 ELSE 80 END END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.653899 AS "E"
    UNION ALL
    SELECT 1 AS nid, 10.389121 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.052834 AS "E"
    UNION ALL
    SELECT 3 AS nid, 7.482542 AS "E"
    UNION ALL
    SELECT 4 AS nid, 13.295700 AS "E"
    UNION ALL
    SELECT 5 AS nid, 13.017686 AS "E"
    UNION ALL
    SELECT 6 AS nid, 18.182671 AS "E"
    UNION ALL
    SELECT 7 AS nid, 12.390529 AS "E"
    UNION ALL
    SELECT 8 AS nid, 17.821558 AS "E"
    UNION ALL
    SELECT 9 AS nid, 16.191357 AS "E"
    UNION ALL
    SELECT 10 AS nid, 19.747280 AS "E"
    UNION ALL
    SELECT 11 AS nid, 17.942898 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.311077 AS "E"
    UNION ALL
    SELECT 13 AS nid, 5.416042 AS "E"
    UNION ALL
    SELECT 14 AS nid, 8.797585 AS "E"
    UNION ALL
    SELECT 15 AS nid, 12.812179 AS "E"
    UNION ALL
    SELECT 16 AS nid, 18.370457 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.536927 AS "E"
    UNION ALL
    SELECT 18 AS nid, 14.737926 AS "E"
    UNION ALL
    SELECT 19 AS nid, 14.781150 AS "E"
    UNION ALL
    SELECT 20 AS nid, 17.601562 AS "E"
    UNION ALL
    SELECT 21 AS nid, 14.886449 AS "E"
    UNION ALL
    SELECT 22 AS nid, 19.153055 AS "E"
    UNION ALL
    SELECT 23 AS nid, 16.578396 AS "E"
    UNION ALL
    SELECT 24 AS nid, 13.283444 AS "E"
    UNION ALL
    SELECT 25 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 26 AS nid, 19.783365 AS "E"
    UNION ALL
    SELECT 27 AS nid, 10.324519 AS "E"
    UNION ALL
    SELECT 28 AS nid, 13.752186 AS "E"
    UNION ALL
    SELECT 29 AS nid, 12.395770 AS "E"
    UNION ALL
    SELECT 30 AS nid, 9.288894 AS "E"
    UNION ALL
    SELECT 31 AS nid, 14.253218 AS "E"
    UNION ALL
    SELECT 32 AS nid, 11.343901 AS "E"
    UNION ALL
    SELECT 33 AS nid, 3.984271 AS "E"
    UNION ALL
    SELECT 34 AS nid, 6.489871 AS "E"
    UNION ALL
    SELECT 35 AS nid, 20.207180 AS "E"
    UNION ALL
    SELECT 36 AS nid, 22.572676 AS "E"
    UNION ALL
    SELECT 37 AS nid, 7.559840 AS "E"
    UNION ALL
    SELECT 38 AS nid, 9.829041 AS "E"
    UNION ALL
    SELECT 39 AS nid, 9.355165 AS "E"
    UNION ALL
    SELECT 40 AS nid, 6.362956 AS "E"
    UNION ALL
    SELECT 41 AS nid, 10.867764 AS "E"
    UNION ALL
    SELECT 42 AS nid, 13.321372 AS "E"
    UNION ALL
    SELECT 43 AS nid, 18.854620 AS "E"
    UNION ALL
    SELECT 44 AS nid, 15.949628 AS "E"
    UNION ALL
    SELECT 45 AS nid, 17.886314 AS "E"
    UNION ALL
    SELECT 46 AS nid, 15.706449 AS "E"
    UNION ALL
    SELECT 47 AS nid, 8.264444 AS "E"
    UNION ALL
    SELECT 48 AS nid, 10.313343 AS "E"
    UNION ALL
    SELECT 49 AS nid, 8.211702 AS "E"
    UNION ALL
    SELECT 50 AS nid, 5.915926 AS "E"
    UNION ALL
    SELECT 51 AS nid, 12.665348 AS "E"
    UNION ALL
    SELECT 52 AS nid, 14.657886 AS "E"
    UNION ALL
    SELECT 53 AS nid, 23.666010 AS "E"
    UNION ALL
    SELECT 54 AS nid, 21.752672 AS "E"
    UNION ALL
    SELECT 55 AS nid, 13.736741 AS "E"
    UNION ALL
    SELECT 56 AS nid, 15.579029 AS "E"
    UNION ALL
    SELECT 57 AS nid, 19.025787 AS "E"
    UNION ALL
    SELECT 58 AS nid, 20.916016 AS "E"
    UNION ALL
    SELECT 59 AS nid, 19.724970 AS "E"
    UNION ALL
    SELECT 60 AS nid, 21.710045 AS "E"
    UNION ALL
    SELECT 61 AS nid, 9.424524 AS "E"
    UNION ALL
    SELECT 62 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 63 AS nid, 13.162453 AS "E"
    UNION ALL
    SELECT 64 AS nid, 14.885318 AS "E"
    UNION ALL
    SELECT 65 AS nid, 15.138000 AS "E"
    UNION ALL
    SELECT 66 AS nid, 16.761255 AS "E"
    UNION ALL
    SELECT 67 AS nid, 18.599419 AS "E"
    UNION ALL
    SELECT 68 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 69 AS nid, 10.043462 AS "E"
    UNION ALL
    SELECT 70 AS nid, 8.496120 AS "E"
    UNION ALL
    SELECT 71 AS nid, 10.460315 AS "E"
    UNION ALL
    SELECT 72 AS nid, 12.090109 AS "E"
    UNION ALL
    SELECT 73 AS nid, 15.540956 AS "E"
    UNION ALL
    SELECT 74 AS nid, 14.231941 AS "E"
    UNION ALL
    SELECT 75 AS nid, 4.446466 AS "E"
    UNION ALL
    SELECT 76 AS nid, 3.059881 AS "E"
    UNION ALL
    SELECT 77 AS nid, 20.439077 AS "E"
    UNION ALL
    SELECT 78 AS nid, 18.369461 AS "E"
    UNION ALL
    SELECT 79 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 80 AS nid, 21.389399 AS "E"
    UNION ALL
    SELECT 81 AS nid, 18.510553 AS "E"
    UNION ALL
    SELECT 82 AS nid, 17.262075 AS "E"
    UNION ALL
    SELECT 83 AS nid, 7.145204 AS "E"
    UNION ALL
    SELECT 84 AS nid, 5.971832 AS "E"
    UNION ALL
    SELECT 85 AS nid, 19.541574 AS "E"
    UNION ALL
    SELECT 86 AS nid, 20.992317 AS "E"
    UNION ALL
    SELECT 87 AS nid, 9.274281 AS "E"
    UNION ALL
    SELECT 88 AS nid, 10.697521 AS "E"
    UNION ALL
    SELECT 89 AS nid, 17.081898 AS "E"
    UNION ALL
    SELECT 90 AS nid, 18.553400 AS "E"
    UNION ALL
    SELECT 91 AS nid, 10.899920 AS "E"
    UNION ALL
    SELECT 92 AS nid, 11.787881 AS "E"
    UNION ALL
    SELECT 93 AS nid, 14.992991 AS "E"
    UNION ALL
    SELECT 94 AS nid, 13.972727 AS "E"
    UNION ALL
    SELECT 95 AS nid, 12.881458 AS "E"
    UNION ALL
    SELECT 96 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 97 AS nid, 22.009811 AS "E"
    UNION ALL
    SELECT 98 AS nid, 21.110516 AS "E"
    UNION ALL
    SELECT 99 AS nid, 11.670927 AS "E"
    UNION ALL
    SELECT 100 AS nid, 12.509292 AS "E"
    UNION ALL
    SELECT 101 AS nid, 19.597376 AS "E"
    UNION ALL
    SELECT 102 AS nid, 18.739994 AS "E"
    UNION ALL
    SELECT 103 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 104 AS nid, 15.862450 AS "E"
    UNION ALL
    SELECT 105 AS nid, 9.761010 AS "E"
    UNION ALL
    SELECT 106 AS nid, 10.608364 AS "E"
    UNION ALL
    SELECT 107 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 108 AS nid, 15.928509 AS "E"
    UNION ALL
    SELECT 109 AS nid, 16.224360 AS "E"
    UNION ALL
    SELECT 110 AS nid, 15.447495 AS "E"
    UNION ALL
    SELECT 111 AS nid, 23.863243 AS "E"
    UNION ALL
    SELECT 112 AS nid, 23.271549 AS "E"
    UNION ALL
    SELECT 113 AS nid, 20.090172 AS "E"
    UNION ALL
    SELECT 114 AS nid, 19.404427 AS "E"
    UNION ALL
    SELECT 115 AS nid, 19.014208 AS "E"
    UNION ALL
    SELECT 116 AS nid, 18.465780 AS "E"
    UNION ALL
    SELECT 117 AS nid, 10.486755 AS "E"
    UNION ALL
    SELECT 118 AS nid, 11.013669 AS "E"
    UNION ALL
    SELECT 119 AS nid, 8.753983 AS "E"
    UNION ALL
    SELECT 120 AS nid, 8.238257 AS "E"
    UNION ALL
    SELECT 121 AS nid, 6.254771 AS "E"
    UNION ALL
    SELECT 122 AS nid, 5.746504 AS "E"
    UNION ALL
    SELECT 123 AS nid, 18.420319 AS "E"
    UNION ALL
    SELECT 124 AS nid, 18.886106 AS "E"
    UNION ALL
    SELECT 125 AS nid, 14.458939 AS "E"
    UNION ALL
    SELECT 126 AS nid, 14.047497 AS "E"
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