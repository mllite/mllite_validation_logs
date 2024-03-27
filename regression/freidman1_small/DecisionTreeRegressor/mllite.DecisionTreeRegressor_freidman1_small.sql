WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 0.201269) THEN CASE WHEN (model_input."X_3" <= 0.500914) THEN CASE WHEN (model_input."X_0" <= 0.376610) THEN CASE WHEN (model_input."X_6" <= 0.014072) THEN 39 ELSE CASE WHEN (model_input."X_4" <= 0.489548) THEN 89 ELSE 90 END END ELSE CASE WHEN (model_input."X_2" <= 0.577848) THEN CASE WHEN (model_input."X_7" <= 0.749487) THEN CASE WHEN (model_input."X_8" <= 0.723209) THEN CASE WHEN (model_input."X_9" <= 0.123476) THEN 97 ELSE 98 END ELSE 88 END ELSE 66 END ELSE CASE WHEN (model_input."X_9" <= 0.250667) THEN 55 ELSE 56 END END END ELSE CASE WHEN (model_input."X_8" <= 0.329551) THEN CASE WHEN (model_input."X_9" <= 0.111259) THEN 31 ELSE CASE WHEN (model_input."X_4" <= 0.327754) THEN 59 ELSE CASE WHEN (model_input."X_4" <= 0.573851) THEN 83 ELSE 84 END END END ELSE CASE WHEN (model_input."X_9" <= 0.286289) THEN CASE WHEN (model_input."X_9" <= 0.142399) THEN 103 ELSE 104 END ELSE CASE WHEN (model_input."X_4" <= 0.305034) THEN 113 ELSE 114 END END END END ELSE CASE WHEN (model_input."X_3" <= 0.296503) THEN CASE WHEN (model_input."X_6" <= 0.082866) THEN 23 ELSE CASE WHEN (model_input."X_2" <= 0.917985) THEN CASE WHEN (model_input."X_4" <= 0.752191) THEN CASE WHEN (model_input."X_1" <= 0.404686) THEN CASE WHEN (model_input."X_0" <= 0.911254) THEN 119 ELSE 120 END ELSE CASE WHEN (model_input."X_9" <= 0.397686) THEN CASE WHEN (model_input."X_6" <= 0.748854) THEN CASE WHEN (model_input."X_7" <= 0.456716) THEN CASE WHEN (model_input."X_0" <= 0.783304) THEN 123 ELSE 124 END ELSE 118 END ELSE CASE WHEN (model_input."X_2" <= 0.612436) THEN 121 ELSE 122 END END ELSE 92 END END ELSE CASE WHEN (model_input."X_9" <= 0.728583) THEN CASE WHEN (model_input."X_4" <= 0.890777) THEN 57 ELSE 58 END ELSE 44 END END ELSE CASE WHEN (model_input."X_9" <= 0.366237) THEN 67 ELSE 68 END END END ELSE CASE WHEN (model_input."X_0" <= 0.435083) THEN CASE WHEN (model_input."X_5" <= 0.369347) THEN CASE WHEN (model_input."X_1" <= 0.588670) THEN CASE WHEN (model_input."X_0" <= 0.208358) THEN 69 ELSE 70 END ELSE CASE WHEN (model_input."X_4" <= 0.831278) THEN CASE WHEN (model_input."X_4" <= 0.764564) THEN 107 ELSE 108 END ELSE 48 END END ELSE CASE WHEN (model_input."X_9" <= 0.858962) THEN CASE WHEN (model_input."X_2" <= 0.951131) THEN CASE WHEN (model_input."X_7" <= 0.864328) THEN CASE WHEN (model_input."X_5" <= 0.778080) THEN CASE WHEN (model_input."X_0" <= 0.194521) THEN 99 ELSE 100 END ELSE CASE WHEN (model_input."X_1" <= 0.579779) THEN 105 ELSE CASE WHEN (model_input."X_4" <= 0.444615) THEN 115 ELSE 116 END END END ELSE CASE WHEN (model_input."X_9" <= 0.188405) THEN 79 ELSE 80 END END ELSE 36 END ELSE 26 END END ELSE CASE WHEN (model_input."X_4" <= 0.666114) THEN CASE WHEN (model_input."X_5" <= 0.921639) THEN CASE WHEN (model_input."X_3" <= 0.893587) THEN CASE WHEN (model_input."X_2" <= 0.736386) THEN CASE WHEN (model_input."X_0" <= 0.798927) THEN 77 ELSE CASE WHEN (model_input."X_0" <= 0.893014) THEN 95 ELSE 96 END END ELSE CASE WHEN (model_input."X_7" <= 0.787455) THEN CASE WHEN (model_input."X_0" <= 0.800057) THEN 109 ELSE 110 END ELSE 86 END END ELSE 18 END ELSE 16 END ELSE CASE WHEN (model_input."X_3" <= 0.512628) THEN CASE WHEN (model_input."X_2" <= 0.759820) THEN CASE WHEN (model_input."X_9" <= 0.196505) THEN 111 ELSE 112 END ELSE CASE WHEN (model_input."X_4" <= 0.780390) THEN 71 ELSE 72 END END ELSE CASE WHEN (model_input."X_9" <= 0.237857) THEN CASE WHEN (model_input."X_6" <= 0.553066) THEN 63 ELSE 64 END ELSE CASE WHEN (model_input."X_1" <= 0.440667) THEN 53 ELSE CASE WHEN (model_input."X_2" <= 0.694123) THEN CASE WHEN (model_input."X_4" <= 0.805293) THEN 101 ELSE 102 END ELSE 76 END END END END END END END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.969233 AS "E"
    UNION ALL
    SELECT 1 AS nid, 9.872283 AS "E"
    UNION ALL
    SELECT 2 AS nid, 16.812807 AS "E"
    UNION ALL
    SELECT 3 AS nid, 13.127563 AS "E"
    UNION ALL
    SELECT 4 AS nid, 18.376244 AS "E"
    UNION ALL
    SELECT 5 AS nid, 7.897315 AS "E"
    UNION ALL
    SELECT 6 AS nid, 12.094118 AS "E"
    UNION ALL
    SELECT 7 AS nid, 5.496036 AS "E"
    UNION ALL
    SELECT 8 AS nid, 9.097954 AS "E"
    UNION ALL
    SELECT 9 AS nid, 16.733435 AS "E"
    UNION ALL
    SELECT 10 AS nid, 19.745253 AS "E"
    UNION ALL
    SELECT 11 AS nid, 19.104143 AS "E"
    UNION ALL
    SELECT 12 AS nid, 15.152961 AS "E"
    UNION ALL
    SELECT 13 AS nid, 17.753401 AS "E"
    UNION ALL
    SELECT 14 AS nid, 21.338728 AS "E"
    UNION ALL
    SELECT 15 AS nid, 18.459290 AS "E"
    UNION ALL
    SELECT 16 AS nid, 12.812179 AS "E"
    UNION ALL
    SELECT 17 AS nid, 17.886223 AS "E"
    UNION ALL
    SELECT 18 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 19 AS nid, 19.633699 AS "E"
    UNION ALL
    SELECT 20 AS nid, 22.475418 AS "E"
    UNION ALL
    SELECT 21 AS nid, 13.458076 AS "E"
    UNION ALL
    SELECT 22 AS nid, 10.730161 AS "E"
    UNION ALL
    SELECT 23 AS nid, 8.264444 AS "E"
    UNION ALL
    SELECT 24 AS nid, 13.501650 AS "E"
    UNION ALL
    SELECT 25 AS nid, 15.573596 AS "E"
    UNION ALL
    SELECT 26 AS nid, 11.787881 AS "E"
    UNION ALL
    SELECT 27 AS nid, 18.472139 AS "E"
    UNION ALL
    SELECT 28 AS nid, 20.795259 AS "E"
    UNION ALL
    SELECT 29 AS nid, 17.629025 AS "E"
    UNION ALL
    SELECT 30 AS nid, 19.841705 AS "E"
    UNION ALL
    SELECT 31 AS nid, 11.670927 AS "E"
    UNION ALL
    SELECT 32 AS nid, 14.053792 AS "E"
    UNION ALL
    SELECT 33 AS nid, 9.807705 AS "E"
    UNION ALL
    SELECT 34 AS nid, 7.678453 AS "E"
    UNION ALL
    SELECT 35 AS nid, 15.242171 AS "E"
    UNION ALL
    SELECT 36 AS nid, 17.893564 AS "E"
    UNION ALL
    SELECT 37 AS nid, 13.154695 AS "E"
    UNION ALL
    SELECT 38 AS nid, 15.409903 AS "E"
    UNION ALL
    SELECT 39 AS nid, 4.389987 AS "E"
    UNION ALL
    SELECT 40 AS nid, 6.049060 AS "E"
    UNION ALL
    SELECT 41 AS nid, 12.687908 AS "E"
    UNION ALL
    SELECT 42 AS nid, 14.399457 AS "E"
    UNION ALL
    SELECT 43 AS nid, 15.401301 AS "E"
    UNION ALL
    SELECT 44 AS nid, 12.395770 AS "E"
    UNION ALL
    SELECT 45 AS nid, 17.139429 AS "E"
    UNION ALL
    SELECT 46 AS nid, 18.633017 AS "E"
    UNION ALL
    SELECT 47 AS nid, 19.458168 AS "E"
    UNION ALL
    SELECT 48 AS nid, 20.992317 AS "E"
    UNION ALL
    SELECT 49 AS nid, 15.640305 AS "E"
    UNION ALL
    SELECT 50 AS nid, 14.246838 AS "E"
    UNION ALL
    SELECT 51 AS nid, 23.309944 AS "E"
    UNION ALL
    SELECT 52 AS nid, 22.058151 AS "E"
    UNION ALL
    SELECT 53 AS nid, 23.271549 AS "E"
    UNION ALL
    SELECT 54 AS nid, 21.653687 AS "E"
    UNION ALL
    SELECT 55 AS nid, 7.145204 AS "E"
    UNION ALL
    SELECT 56 AS nid, 8.211702 AS "E"
    UNION ALL
    SELECT 57 AS nid, 14.885318 AS "E"
    UNION ALL
    SELECT 58 AS nid, 15.917285 AS "E"
    UNION ALL
    SELECT 59 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 60 AS nid, 13.697471 AS "E"
    UNION ALL
    SELECT 61 AS nid, 11.826265 AS "E"
    UNION ALL
    SELECT 62 AS nid, 12.975124 AS "E"
    UNION ALL
    SELECT 63 AS nid, 23.777397 AS "E"
    UNION ALL
    SELECT 64 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 65 AS nid, 9.540819 AS "E"
    UNION ALL
    SELECT 66 AS nid, 10.608364 AS "E"
    UNION ALL
    SELECT 67 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 68 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 69 AS nid, 17.262075 AS "E"
    UNION ALL
    SELECT 70 AS nid, 17.995974 AS "E"
    UNION ALL
    SELECT 71 AS nid, 20.439077 AS "E"
    UNION ALL
    SELECT 72 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 73 AS nid, 16.076435 AS "E"
    UNION ALL
    SELECT 74 AS nid, 15.349551 AS "E"
    UNION ALL
    SELECT 75 AS nid, 21.419565 AS "E"
    UNION ALL
    SELECT 76 AS nid, 22.121931 AS "E"
    UNION ALL
    SELECT 77 AS nid, 17.575134 AS "E"
    UNION ALL
    SELECT 78 AS nid, 16.921577 AS "E"
    UNION ALL
    SELECT 79 AS nid, 13.960304 AS "E"
    UNION ALL
    SELECT 80 AS nid, 14.533371 AS "E"
    UNION ALL
    SELECT 81 AS nid, 10.446651 AS "E"
    UNION ALL
    SELECT 82 AS nid, 11.013669 AS "E"
    UNION ALL
    SELECT 83 AS nid, 13.972727 AS "E"
    UNION ALL
    SELECT 84 AS nid, 13.422215 AS "E"
    UNION ALL
    SELECT 85 AS nid, 18.442421 AS "E"
    UNION ALL
    SELECT 86 AS nid, 19.014208 AS "E"
    UNION ALL
    SELECT 87 AS nid, 9.355165 AS "E"
    UNION ALL
    SELECT 88 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 89 AS nid, 5.843349 AS "E"
    UNION ALL
    SELECT 90 AS nid, 6.254771 AS "E"
    UNION ALL
    SELECT 91 AS nid, 12.903272 AS "E"
    UNION ALL
    SELECT 92 AS nid, 13.334383 AS "E"
    UNION ALL
    SELECT 93 AS nid, 13.037643 AS "E"
    UNION ALL
    SELECT 94 AS nid, 12.701714 AS "E"
    UNION ALL
    SELECT 95 AS nid, 17.081898 AS "E"
    UNION ALL
    SELECT 96 AS nid, 16.761255 AS "E"
    UNION ALL
    SELECT 97 AS nid, 9.196939 AS "E"
    UNION ALL
    SELECT 98 AS nid, 9.513391 AS "E"
    UNION ALL
    SELECT 99 AS nid, 15.928509 AS "E"
    UNION ALL
    SELECT 100 AS nid, 16.224360 AS "E"
    UNION ALL
    SELECT 101 AS nid, 21.275133 AS "E"
    UNION ALL
    SELECT 102 AS nid, 21.563997 AS "E"
    UNION ALL
    SELECT 103 AS nid, 10.588345 AS "E"
    UNION ALL
    SELECT 104 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 105 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 106 AS nid, 15.447624 AS "E"
    UNION ALL
    SELECT 107 AS nid, 19.271183 AS "E"
    UNION ALL
    SELECT 108 AS nid, 19.551659 AS "E"
    UNION ALL
    SELECT 109 AS nid, 18.330223 AS "E"
    UNION ALL
    SELECT 110 AS nid, 18.554621 AS "E"
    UNION ALL
    SELECT 111 AS nid, 18.579578 AS "E"
    UNION ALL
    SELECT 112 AS nid, 18.364700 AS "E"
    UNION ALL
    SELECT 113 AS nid, 10.907791 AS "E"
    UNION ALL
    SELECT 114 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 115 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 116 AS nid, 15.524062 AS "E"
    UNION ALL
    SELECT 117 AS nid, 13.061203 AS "E"
    UNION ALL
    SELECT 118 AS nid, 12.990523 AS "E"
    UNION ALL
    SELECT 119 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 120 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 121 AS nid, 12.680899 AS "E"
    UNION ALL
    SELECT 122 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 123 AS nid, 13.065350 AS "E"
    UNION ALL
    SELECT 124 AS nid, 13.057057 AS "E"
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