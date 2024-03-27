WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t.X_0 AS OUT_0,
    t.X_1 AS OUT_1,
    t.X_2 AS OUT_2,
    t.X_3 AS OUT_3,
    t.X_4 AS OUT_4,
    t.X_5 AS OUT_5,
    t.X_6 AS OUT_6,
    t.X_7 AS OUT_7,
    t.X_8 AS OUT_8,
    t.X_9 AS OUT_9
 FROM model_input AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    0.195587 + 0.011970 * t.OUT_0  + 0.128313 * t.OUT_1  + -0.062193 * t.OUT_2  + 0.143250 * t.OUT_3  + -0.086328 * t.OUT_4  + 0.118628 * t.OUT_5  + 0.174137 * t.OUT_6  + -0.143746 * t.OUT_7  + 0.184075 * t.OUT_8  + 0.160098 * t.OUT_9 AS OUT_0,
    0.114465 + 0.096102 * t.OUT_0  + -0.188236 * t.OUT_1  + -0.027581 * t.OUT_2  + -0.229173 * t.OUT_3  + 0.007470 * t.OUT_4  + 0.169492 * t.OUT_5  + -0.101330 * t.OUT_6  + -0.093577 * t.OUT_7  + -0.125559 * t.OUT_8  + 0.086903 * t.OUT_9 AS OUT_1,
    0.194378 + -0.095324 * t.OUT_0  + -0.076759 * t.OUT_1  + -0.191204 * t.OUT_2  + -0.161817 * t.OUT_3  + 0.118825 * t.OUT_4  + -0.152833 * t.OUT_5  + -0.185415 * t.OUT_6  + -0.169759 * t.OUT_7  + -0.100858 * t.OUT_8  + -0.139033 * t.OUT_9 AS OUT_2,
    0.079317 + 0.015564 * t.OUT_0  + 0.167078 * t.OUT_1  + 0.177099 * t.OUT_2  + -0.036012 * t.OUT_3  + 0.244014 * t.OUT_4  + 0.168022 * t.OUT_5  + 0.067483 * t.OUT_6  + 0.006568 * t.OUT_7  + -0.076229 * t.OUT_8  + -0.012758 * t.OUT_9 AS OUT_3,
    0.141334 + 0.013679 * t.OUT_0  + 0.124249 * t.OUT_1  + 0.190723 * t.OUT_2  + -0.191856 * t.OUT_3  + -0.138949 * t.OUT_4  + -0.210038 * t.OUT_5  + 0.077578 * t.OUT_6  + -0.096951 * t.OUT_7  + 0.190740 * t.OUT_8  + -0.195707 * t.OUT_9 AS OUT_4,
    0.062792 + -0.191358 * t.OUT_0  + 0.171124 * t.OUT_1  + 0.011762 * t.OUT_2  + 0.065766 * t.OUT_3  + -0.022264 * t.OUT_4  + 0.197043 * t.OUT_5  + -0.194354 * t.OUT_6  + -0.252115 * t.OUT_7  + -0.169607 * t.OUT_8  + -0.193195 * t.OUT_9 AS OUT_5,
    -0.152784 + 0.042390 * t.OUT_0  + 0.142928 * t.OUT_1  + -0.015985 * t.OUT_2  + -0.041319 * t.OUT_3  + 0.206222 * t.OUT_4  + -0.167235 * t.OUT_5  + -0.226256 * t.OUT_6  + -0.027147 * t.OUT_7  + -0.168268 * t.OUT_8  + 0.148316 * t.OUT_9 AS OUT_6,
    0.192366 + 0.039566 * t.OUT_0  + 0.164736 * t.OUT_1  + 0.123468 * t.OUT_2  + -0.037499 * t.OUT_3  + 0.222890 * t.OUT_4  + -0.136388 * t.OUT_5  + 0.061454 * t.OUT_6  + -0.109711 * t.OUT_7  + -0.007005 * t.OUT_8  + 0.174189 * t.OUT_9 AS OUT_7,
    -0.098364 + 0.174367 * t.OUT_0  + -0.121221 * t.OUT_1  + 0.000445 * t.OUT_2  + -0.078165 * t.OUT_3  + 0.153549 * t.OUT_4  + -0.160587 * t.OUT_5  + 0.005828 * t.OUT_6  + 0.057200 * t.OUT_7  + -0.075982 * t.OUT_8  + -0.111356 * t.OUT_9 AS OUT_8,
    0.127288 + 0.081842 * t.OUT_0  + 0.054325 * t.OUT_1  + 0.144965 * t.OUT_2  + 0.178530 * t.OUT_3  + -0.019634 * t.OUT_4  + -0.012360 * t.OUT_5  + -0.041662 * t.OUT_6  + 0.186533 * t.OUT_7  + 0.136872 * t.OUT_8  + 0.162007 * t.OUT_9 AS OUT_9,
    -0.155023 + 0.165959 * t.OUT_0  + 0.037572 * t.OUT_1  + -0.010160 * t.OUT_2  + 0.098502 * t.OUT_3  + -0.137988 * t.OUT_4  + 0.056909 * t.OUT_5  + 0.041623 * t.OUT_6  + 0.094521 * t.OUT_7  + -0.230525 * t.OUT_8  + 0.058140 * t.OUT_9 AS OUT_10,
    0.261739 + -0.004555 * t.OUT_0  + 0.190388 * t.OUT_1  + 0.171679 * t.OUT_2  + -0.065298 * t.OUT_3  + -0.069501 * t.OUT_4  + 0.181776 * t.OUT_5  + 0.182359 * t.OUT_6  + 0.100487 * t.OUT_7  + -0.089368 * t.OUT_8  + -0.032954 * t.OUT_9 AS OUT_11,
    -0.054798 + 0.201371 * t.OUT_0  + 0.084192 * t.OUT_1  + 0.075287 * t.OUT_2  + 0.092721 * t.OUT_3  + 0.014170 * t.OUT_4  + -0.084831 * t.OUT_5  + -0.032362 * t.OUT_6  + -0.051629 * t.OUT_7  + -0.167035 * t.OUT_8  + 0.039756 * t.OUT_9 AS OUT_12,
    -0.171234 + -0.206518 * t.OUT_0  + -0.000572 * t.OUT_1  + -0.098198 * t.OUT_2  + -0.199022 * t.OUT_3  + -0.198782 * t.OUT_4  + 0.197494 * t.OUT_5  + 0.103546 * t.OUT_6  + -0.225788 * t.OUT_7  + -0.096989 * t.OUT_8  + -0.161775 * t.OUT_9 AS OUT_13,
    -0.166133 + -0.062203 * t.OUT_0  + 0.169887 * t.OUT_1  + -0.031005 * t.OUT_2  + 0.229252 * t.OUT_3  + -0.054600 * t.OUT_4  + -0.052160 * t.OUT_5  + 0.095232 * t.OUT_6  + -0.185205 * t.OUT_7  + 0.222398 * t.OUT_8  + 0.032205 * t.OUT_9 AS OUT_14,
    0.227243 + 0.120855 * t.OUT_0  + 0.196219 * t.OUT_1  + -0.166114 * t.OUT_2  + -0.018442 * t.OUT_3  + -0.183350 * t.OUT_4  + -0.170939 * t.OUT_5  + 0.044007 * t.OUT_6  + 0.230964 * t.OUT_7  + 0.001258 * t.OUT_8  + 0.215313 * t.OUT_9 AS OUT_15,
    0.022608 + 0.157278 * t.OUT_0  + 0.073864 * t.OUT_1  + -0.090558 * t.OUT_2  + 0.092471 * t.OUT_3  + -0.015681 * t.OUT_4  + -0.070797 * t.OUT_5  + -0.011930 * t.OUT_6  + -0.037275 * t.OUT_7  + 0.166145 * t.OUT_8  + -0.079380 * t.OUT_9 AS OUT_16,
    -0.212649 + -0.111888 * t.OUT_0  + -0.080293 * t.OUT_1  + -0.139694 * t.OUT_2  + -0.143274 * t.OUT_3  + -0.073095 * t.OUT_4  + -0.017101 * t.OUT_5  + 0.207751 * t.OUT_6  + 0.030043 * t.OUT_7  + -0.105657 * t.OUT_8  + 0.191617 * t.OUT_9 AS OUT_17,
    -0.184909 + -0.118856 * t.OUT_0  + -0.063850 * t.OUT_1  + 0.064590 * t.OUT_2  + -0.137233 * t.OUT_3  + -0.013491 * t.OUT_4  + 0.049873 * t.OUT_5  + -0.147090 * t.OUT_6  + -0.127053 * t.OUT_7  + -0.067582 * t.OUT_8  + 0.133874 * t.OUT_9 AS OUT_18,
    -0.111856 + -0.191179 * t.OUT_0  + -0.125662 * t.OUT_1  + -0.043724 * t.OUT_2  + 0.041049 * t.OUT_3  + -0.049060 * t.OUT_4  + -0.188488 * t.OUT_5  + -0.162484 * t.OUT_6  + 0.220054 * t.OUT_7  + -0.097000 * t.OUT_8  + 0.113247 * t.OUT_9 AS OUT_19,
    0.142187 + 0.090261 * t.OUT_0  + 0.112188 * t.OUT_1  + -0.110071 * t.OUT_2  + -0.083982 * t.OUT_3  + 0.219081 * t.OUT_4  + 0.112867 * t.OUT_5  + -0.134442 * t.OUT_6  + -0.045080 * t.OUT_7  + 0.140737 * t.OUT_8  + -0.210139 * t.OUT_9 AS OUT_20,
    0.049557 + -0.260242 * t.OUT_0  + 0.099529 * t.OUT_1  + -0.225998 * t.OUT_2  + 0.177174 * t.OUT_3  + 0.122327 * t.OUT_4  + 0.092505 * t.OUT_5  + -0.237896 * t.OUT_6  + 0.012545 * t.OUT_7  + 0.108774 * t.OUT_8  + -0.017293 * t.OUT_9 AS OUT_21,
    0.148084 + -0.002993 * t.OUT_0  + -0.127673 * t.OUT_1  + 0.240511 * t.OUT_2  + -0.175370 * t.OUT_3  + -0.089164 * t.OUT_4  + -0.021396 * t.OUT_5  + -0.143130 * t.OUT_6  + -0.098953 * t.OUT_7  + -0.176595 * t.OUT_8  + 0.121145 * t.OUT_9 AS OUT_22,
    0.049411 + 0.046378 * t.OUT_0  + 0.110649 * t.OUT_1  + -0.055179 * t.OUT_2  + -0.082875 * t.OUT_3  + 0.036028 * t.OUT_4  + -0.071950 * t.OUT_5  + 0.135887 * t.OUT_6  + 0.024607 * t.OUT_7  + -0.015789 * t.OUT_8  + -0.189716 * t.OUT_9 AS OUT_23,
    0.188217 + -0.076468 * t.OUT_0  + -0.178822 * t.OUT_1  + -0.085663 * t.OUT_2  + 0.072394 * t.OUT_3  + 0.101671 * t.OUT_4  + 0.120748 * t.OUT_5  + -0.023470 * t.OUT_6  + -0.038698 * t.OUT_7  + -0.243420 * t.OUT_8  + 0.173978 * t.OUT_9 AS OUT_24,
    0.079074 + -0.177358 * t.OUT_0  + 0.033169 * t.OUT_1  + 0.115980 * t.OUT_2  + 0.051262 * t.OUT_3  + -0.176410 * t.OUT_4  + -0.142337 * t.OUT_5  + -0.039816 * t.OUT_6  + -0.134621 * t.OUT_7  + 0.221117 * t.OUT_8  + -0.107283 * t.OUT_9 AS OUT_25,
    -0.092142 + -0.145337 * t.OUT_0  + 0.017514 * t.OUT_1  + 0.081676 * t.OUT_2  + 0.132661 * t.OUT_3  + -0.150571 * t.OUT_4  + 0.165795 * t.OUT_5  + 0.035722 * t.OUT_6  + -0.205039 * t.OUT_7  + -0.000312 * t.OUT_8  + 0.073544 * t.OUT_9 AS OUT_26,
    -0.060082 + 0.161421 * t.OUT_0  + -0.123164 * t.OUT_1  + 0.072115 * t.OUT_2  + 0.116945 * t.OUT_3  + -0.014451 * t.OUT_4  + 0.119029 * t.OUT_5  + 0.069361 * t.OUT_6  + -0.103246 * t.OUT_7  + -0.039763 * t.OUT_8  + -0.255151 * t.OUT_9 AS OUT_27,
    -0.084508 + 0.018300 * t.OUT_0  + 0.142004 * t.OUT_1  + -0.173001 * t.OUT_2  + -0.105014 * t.OUT_3  + -0.080235 * t.OUT_4  + 0.060310 * t.OUT_5  + 0.090717 * t.OUT_6  + 0.200432 * t.OUT_7  + 0.179674 * t.OUT_8  + 0.115188 * t.OUT_9 AS OUT_28,
    -0.229500 + 0.001926 * t.OUT_0  + -0.220723 * t.OUT_1  + 0.174535 * t.OUT_2  + -0.159201 * t.OUT_3  + 0.002348 * t.OUT_4  + -0.188752 * t.OUT_5  + -0.068637 * t.OUT_6  + -0.189175 * t.OUT_7  + 0.119070 * t.OUT_8  + 0.165255 * t.OUT_9 AS OUT_29,
    0.170768 + -0.228681 * t.OUT_0  + -0.231002 * t.OUT_1  + 0.185960 * t.OUT_2  + -0.214084 * t.OUT_3  + -0.233797 * t.OUT_4  + -0.226557 * t.OUT_5  + -0.199547 * t.OUT_6  + -0.042056 * t.OUT_7  + 0.016749 * t.OUT_8  + 0.061547 * t.OUT_9 AS OUT_30,
    0.195623 + 0.045603 * t.OUT_0  + 0.206430 * t.OUT_1  + 0.207073 * t.OUT_2  + 0.087839 * t.OUT_3  + -0.012943 * t.OUT_4  + -0.102647 * t.OUT_5  + 0.048559 * t.OUT_6  + 0.125859 * t.OUT_7  + 0.187309 * t.OUT_8  + -0.013621 * t.OUT_9 AS OUT_31,
    0.123859 + -0.101194 * t.OUT_0  + 0.181359 * t.OUT_1  + -0.017103 * t.OUT_2  + 0.033261 * t.OUT_3  + -0.098408 * t.OUT_4  + 0.011241 * t.OUT_5  + 0.006015 * t.OUT_6  + -0.262103 * t.OUT_7  + 0.149788 * t.OUT_8  + 0.070274 * t.OUT_9 AS OUT_32,
    -0.102155 + 0.057209 * t.OUT_0  + -0.183025 * t.OUT_1  + 0.203572 * t.OUT_2  + 0.071321 * t.OUT_3  + 0.071495 * t.OUT_4  + -0.251168 * t.OUT_5  + 0.082157 * t.OUT_6  + 0.198607 * t.OUT_7  + -0.205025 * t.OUT_8  + 0.052844 * t.OUT_9 AS OUT_33,
    0.122677 + -0.058812 * t.OUT_0  + -0.099030 * t.OUT_1  + 0.134477 * t.OUT_2  + -0.079275 * t.OUT_3  + -0.056652 * t.OUT_4  + -0.075917 * t.OUT_5  + -0.202887 * t.OUT_6  + -0.214685 * t.OUT_7  + -0.060244 * t.OUT_8  + -0.094239 * t.OUT_9 AS OUT_34,
    -0.040333 + 0.074515 * t.OUT_0  + -0.200442 * t.OUT_1  + 0.038585 * t.OUT_2  + -0.009649 * t.OUT_3  + 0.131799 * t.OUT_4  + -0.102938 * t.OUT_5  + -0.184553 * t.OUT_6  + -0.199915 * t.OUT_7  + 0.023371 * t.OUT_8  + 0.091956 * t.OUT_9 AS OUT_35,
    0.171478 + -0.119888 * t.OUT_0  + -0.143013 * t.OUT_1  + -0.044038 * t.OUT_2  + 0.255584 * t.OUT_3  + 0.017573 * t.OUT_4  + 0.182632 * t.OUT_5  + 0.048232 * t.OUT_6  + 0.040177 * t.OUT_7  + 0.018710 * t.OUT_8  + 0.060100 * t.OUT_9 AS OUT_36,
    0.001733 + 0.240548 * t.OUT_0  + -0.143256 * t.OUT_1  + 0.242834 * t.OUT_2  + -0.135622 * t.OUT_3  + -0.181766 * t.OUT_4  + 0.153279 * t.OUT_5  + -0.022585 * t.OUT_6  + 0.009590 * t.OUT_7  + 0.211380 * t.OUT_8  + -0.184306 * t.OUT_9 AS OUT_37,
    0.114457 + -0.188360 * t.OUT_0  + -0.094912 * t.OUT_1  + -0.249252 * t.OUT_2  + -0.082152 * t.OUT_3  + 0.167217 * t.OUT_4  + -0.193140 * t.OUT_5  + -0.152225 * t.OUT_6  + -0.053939 * t.OUT_7  + -0.154537 * t.OUT_8  + 0.064448 * t.OUT_9 AS OUT_38,
    -0.084935 + 0.100419 * t.OUT_0  + -0.076380 * t.OUT_1  + -0.242618 * t.OUT_2  + -0.094869 * t.OUT_3  + -0.239517 * t.OUT_4  + 0.061172 * t.OUT_5  + 0.207164 * t.OUT_6  + 0.148544 * t.OUT_7  + -0.155523 * t.OUT_8  + -0.079775 * t.OUT_9 AS OUT_39,
    0.050929 + -0.191092 * t.OUT_0  + -0.177598 * t.OUT_1  + -0.049472 * t.OUT_2  + -0.020890 * t.OUT_3  + -0.035050 * t.OUT_4  + 0.102285 * t.OUT_5  + -0.152919 * t.OUT_6  + -0.137899 * t.OUT_7  + 0.100954 * t.OUT_8  + 0.121400 * t.OUT_9 AS OUT_40,
    0.035365 + 0.106195 * t.OUT_0  + -0.189692 * t.OUT_1  + -0.033110 * t.OUT_2  + -0.100947 * t.OUT_3  + -0.029865 * t.OUT_4  + 0.022678 * t.OUT_5  + -0.168038 * t.OUT_6  + 0.083666 * t.OUT_7  + -0.202575 * t.OUT_8  + -0.217952 * t.OUT_9 AS OUT_41,
    -0.075264 + 0.026554 * t.OUT_0  + -0.234553 * t.OUT_1  + 0.060905 * t.OUT_2  + -0.102259 * t.OUT_3  + 0.057905 * t.OUT_4  + 0.169786 * t.OUT_5  + 0.176771 * t.OUT_6  + -0.028743 * t.OUT_7  + 0.095113 * t.OUT_8  + -0.133581 * t.OUT_9 AS OUT_42,
    0.234055 + 0.244499 * t.OUT_0  + 0.077464 * t.OUT_1  + 0.224117 * t.OUT_2  + -0.047463 * t.OUT_3  + -0.200734 * t.OUT_4  + -0.032100 * t.OUT_5  + 0.232197 * t.OUT_6  + -0.110537 * t.OUT_7  + 0.203819 * t.OUT_8  + -0.165189 * t.OUT_9 AS OUT_43,
    -0.165324 + -0.152446 * t.OUT_0  + -0.159149 * t.OUT_1  + 0.036929 * t.OUT_2  + -0.054702 * t.OUT_3  + -0.087916 * t.OUT_4  + -0.169520 * t.OUT_5  + 0.102125 * t.OUT_6  + -0.117863 * t.OUT_7  + 0.209332 * t.OUT_8  + 0.053584 * t.OUT_9 AS OUT_44,
    -0.065992 + -0.198003 * t.OUT_0  + -0.204373 * t.OUT_1  + -0.057819 * t.OUT_2  + 0.098600 * t.OUT_3  + 0.170779 * t.OUT_4  + -0.018819 * t.OUT_5  + -0.150420 * t.OUT_6  + -0.112934 * t.OUT_7  + 0.000711 * t.OUT_8  + 0.078673 * t.OUT_9 AS OUT_45,
    0.171301 + 0.048035 * t.OUT_0  + 0.016119 * t.OUT_1  + -0.181259 * t.OUT_2  + 0.001096 * t.OUT_3  + 0.110593 * t.OUT_4  + 0.108314 * t.OUT_5  + 0.127371 * t.OUT_6  + -0.151208 * t.OUT_7  + -0.122105 * t.OUT_8  + -0.228948 * t.OUT_9 AS OUT_46,
    -0.097263 + 0.057028 * t.OUT_0  + 0.054364 * t.OUT_1  + -0.163772 * t.OUT_2  + -0.134654 * t.OUT_3  + -0.137839 * t.OUT_4  + -0.194281 * t.OUT_5  + 0.156946 * t.OUT_6  + 0.023033 * t.OUT_7  + 0.193973 * t.OUT_8  + 0.183600 * t.OUT_9 AS OUT_47,
    0.194408 + 0.189284 * t.OUT_0  + -0.004421 * t.OUT_1  + 0.093108 * t.OUT_2  + -0.039156 * t.OUT_3  + 0.205810 * t.OUT_4  + -0.045171 * t.OUT_5  + 0.164163 * t.OUT_6  + -0.127773 * t.OUT_7  + -0.064587 * t.OUT_8  + -0.082953 * t.OUT_9 AS OUT_48,
    0.025547 + 0.232421 * t.OUT_0  + 0.094775 * t.OUT_1  + 0.118868 * t.OUT_2  + 0.045278 * t.OUT_3  + 0.083759 * t.OUT_4  + 0.187284 * t.OUT_5  + -0.030422 * t.OUT_6  + 0.216434 * t.OUT_7  + -0.000501 * t.OUT_8  + 0.200501 * t.OUT_9 AS OUT_49,
    0.198200 + 0.148635 * t.OUT_0  + -0.001518 * t.OUT_1  + -0.235175 * t.OUT_2  + 0.172420 * t.OUT_3  + 0.175064 * t.OUT_4  + -0.185154 * t.OUT_5  + -0.097721 * t.OUT_6  + 0.013390 * t.OUT_7  + -0.056532 * t.OUT_8  + -0.017960 * t.OUT_9 AS OUT_50,
    -0.152323 + -0.163747 * t.OUT_0  + -0.171549 * t.OUT_1  + -0.043197 * t.OUT_2  + 0.007889 * t.OUT_3  + 0.185285 * t.OUT_4  + -0.038733 * t.OUT_5  + 0.112047 * t.OUT_6  + -0.074526 * t.OUT_7  + -0.170548 * t.OUT_8  + 0.106004 * t.OUT_9 AS OUT_51,
    -0.135746 + 0.175229 * t.OUT_0  + -0.002740 * t.OUT_1  + 0.182660 * t.OUT_2  + -0.147585 * t.OUT_3  + -0.061281 * t.OUT_4  + -0.003385 * t.OUT_5  + -0.112613 * t.OUT_6  + -0.161657 * t.OUT_7  + 0.123809 * t.OUT_8  + 0.240172 * t.OUT_9 AS OUT_52,
    -0.061824 + 0.161762 * t.OUT_0  + 0.164659 * t.OUT_1  + -0.118718 * t.OUT_2  + -0.140640 * t.OUT_3  + 0.137613 * t.OUT_4  + 0.077046 * t.OUT_5  + -0.146675 * t.OUT_6  + -0.251603 * t.OUT_7  + 0.128086 * t.OUT_8  + -0.128455 * t.OUT_9 AS OUT_53,
    0.000866 + -0.105516 * t.OUT_0  + 0.267648 * t.OUT_1  + 0.030107 * t.OUT_2  + -0.158399 * t.OUT_3  + 0.222023 * t.OUT_4  + -0.101095 * t.OUT_5  + 0.195638 * t.OUT_6  + -0.039091 * t.OUT_7  + -0.130176 * t.OUT_8  + 0.031344 * t.OUT_9 AS OUT_54,
    -0.038359 + 0.083133 * t.OUT_0  + -0.058403 * t.OUT_1  + -0.060536 * t.OUT_2  + 0.101040 * t.OUT_3  + 0.172222 * t.OUT_4  + 0.201318 * t.OUT_5  + 0.101553 * t.OUT_6  + 0.188974 * t.OUT_7  + 0.161399 * t.OUT_8  + 0.144703 * t.OUT_9 AS OUT_55,
    0.242310 + 0.077942 * t.OUT_0  + -0.189894 * t.OUT_1  + 0.091337 * t.OUT_2  + -0.102909 * t.OUT_3  + 0.161983 * t.OUT_4  + 0.019533 * t.OUT_5  + -0.138382 * t.OUT_6  + 0.215929 * t.OUT_7  + 0.023712 * t.OUT_8  + -0.054221 * t.OUT_9 AS OUT_56,
    -0.083058 + -0.006509 * t.OUT_0  + -0.136615 * t.OUT_1  + -0.141370 * t.OUT_2  + -0.067985 * t.OUT_3  + 0.010003 * t.OUT_4  + -0.230708 * t.OUT_5  + 0.138691 * t.OUT_6  + 0.041020 * t.OUT_7  + 0.085819 * t.OUT_8  + 0.142896 * t.OUT_9 AS OUT_57,
    0.117357 + 0.065467 * t.OUT_0  + 0.133135 * t.OUT_1  + 0.034671 * t.OUT_2  + -0.137907 * t.OUT_3  + 0.067973 * t.OUT_4  + -0.133378 * t.OUT_5  + -0.081604 * t.OUT_6  + -0.171125 * t.OUT_7  + 0.152253 * t.OUT_8  + -0.138004 * t.OUT_9 AS OUT_58,
    0.126831 + 0.106426 * t.OUT_0  + -0.219386 * t.OUT_1  + 0.131436 * t.OUT_2  + 0.006226 * t.OUT_3  + -0.062703 * t.OUT_4  + 0.125023 * t.OUT_5  + -0.182164 * t.OUT_6  + -0.100209 * t.OUT_7  + -0.226386 * t.OUT_8  + -0.064765 * t.OUT_9 AS OUT_59,
    0.087667 + -0.223304 * t.OUT_0  + 0.057974 * t.OUT_1  + 0.050704 * t.OUT_2  + -0.192227 * t.OUT_3  + -0.049793 * t.OUT_4  + 0.040227 * t.OUT_5  + 0.079753 * t.OUT_6  + -0.151987 * t.OUT_7  + -0.214640 * t.OUT_8  + -0.217270 * t.OUT_9 AS OUT_60,
    0.122132 + 0.063579 * t.OUT_0  + -0.089563 * t.OUT_1  + 0.184508 * t.OUT_2  + -0.043455 * t.OUT_3  + 0.044170 * t.OUT_4  + -0.058630 * t.OUT_5  + -0.082681 * t.OUT_6  + 0.009466 * t.OUT_7  + 0.243185 * t.OUT_8  + 0.110271 * t.OUT_9 AS OUT_61,
    -0.028543 + 0.065458 * t.OUT_0  + 0.184833 * t.OUT_1  + 0.134364 * t.OUT_2  + 0.155750 * t.OUT_3  + -0.003896 * t.OUT_4  + -0.036293 * t.OUT_5  + 0.187271 * t.OUT_6  + 0.032794 * t.OUT_7  + -0.108308 * t.OUT_8  + 0.054627 * t.OUT_9 AS OUT_62,
    0.172030 + 0.166962 * t.OUT_0  + 0.257086 * t.OUT_1  + 0.194378 * t.OUT_2  + -0.107234 * t.OUT_3  + -0.036575 * t.OUT_4  + -0.023851 * t.OUT_5  + 0.140654 * t.OUT_6  + -0.013596 * t.OUT_7  + -0.080205 * t.OUT_8  + 0.002852 * t.OUT_9 AS OUT_63,
    -0.180769 + -0.223068 * t.OUT_0  + -0.129693 * t.OUT_1  + 0.054222 * t.OUT_2  + 0.207905 * t.OUT_3  + -0.167228 * t.OUT_4  + 0.196631 * t.OUT_5  + -0.053739 * t.OUT_6  + 0.060822 * t.OUT_7  + -0.138892 * t.OUT_8  + -0.251905 * t.OUT_9 AS OUT_64,
    0.105404 + 0.132338 * t.OUT_0  + 0.091672 * t.OUT_1  + -0.190077 * t.OUT_2  + -0.161908 * t.OUT_3  + 0.004541 * t.OUT_4  + 0.174155 * t.OUT_5  + 0.144927 * t.OUT_6  + 0.156129 * t.OUT_7  + -0.249003 * t.OUT_8  + -0.201623 * t.OUT_9 AS OUT_65,
    0.259860 + -0.095424 * t.OUT_0  + -0.077773 * t.OUT_1  + 0.015057 * t.OUT_2  + 0.125546 * t.OUT_3  + 0.260141 * t.OUT_4  + 0.007333 * t.OUT_5  + 0.183408 * t.OUT_6  + -0.015177 * t.OUT_7  + 0.248070 * t.OUT_8  + 0.192932 * t.OUT_9 AS OUT_66,
    0.135323 + -0.182047 * t.OUT_0  + 0.205052 * t.OUT_1  + -0.127347 * t.OUT_2  + -0.114315 * t.OUT_3  + -0.032538 * t.OUT_4  + -0.035008 * t.OUT_5  + 0.127232 * t.OUT_6  + 0.224872 * t.OUT_7  + 0.259350 * t.OUT_8  + -0.096044 * t.OUT_9 AS OUT_67,
    -0.015511 + 0.199910 * t.OUT_0  + -0.228209 * t.OUT_1  + 0.055191 * t.OUT_2  + 0.089371 * t.OUT_3  + -0.138073 * t.OUT_4  + 0.116233 * t.OUT_5  + 0.174626 * t.OUT_6  + 0.013215 * t.OUT_7  + -0.023575 * t.OUT_8  + 0.112829 * t.OUT_9 AS OUT_68,
    -0.032405 + 0.193368 * t.OUT_0  + 0.110200 * t.OUT_1  + 0.024104 * t.OUT_2  + -0.135601 * t.OUT_3  + -0.187182 * t.OUT_4  + -0.058987 * t.OUT_5  + -0.042369 * t.OUT_6  + 0.177043 * t.OUT_7  + 0.179363 * t.OUT_8  + -0.193342 * t.OUT_9 AS OUT_69,
    0.097193 + -0.060028 * t.OUT_0  + 0.019313 * t.OUT_1  + 0.198401 * t.OUT_2  + -0.172015 * t.OUT_3  + -0.126027 * t.OUT_4  + 0.059546 * t.OUT_5  + -0.162077 * t.OUT_6  + 0.146492 * t.OUT_7  + -0.169249 * t.OUT_8  + 0.087763 * t.OUT_9 AS OUT_70,
    -0.138994 + -0.189931 * t.OUT_0  + -0.130371 * t.OUT_1  + 0.119854 * t.OUT_2  + -0.119938 * t.OUT_3  + -0.113373 * t.OUT_4  + 0.034388 * t.OUT_5  + -0.011847 * t.OUT_6  + -0.153758 * t.OUT_7  + 0.087434 * t.OUT_8  + -0.048069 * t.OUT_9 AS OUT_71,
    -0.177732 + 0.027022 * t.OUT_0  + 0.144290 * t.OUT_1  + 0.250270 * t.OUT_2  + -0.181280 * t.OUT_3  + -0.009718 * t.OUT_4  + -0.107052 * t.OUT_5  + 0.009271 * t.OUT_6  + 0.148609 * t.OUT_7  + 0.204209 * t.OUT_8  + 0.026722 * t.OUT_9 AS OUT_72,
    -0.112270 + 0.195430 * t.OUT_0  + 0.080790 * t.OUT_1  + -0.151510 * t.OUT_2  + 0.035207 * t.OUT_3  + -0.091273 * t.OUT_4  + 0.037141 * t.OUT_5  + 0.102004 * t.OUT_6  + 0.010211 * t.OUT_7  + -0.038558 * t.OUT_8  + -0.124293 * t.OUT_9 AS OUT_73,
    0.065097 + -0.132501 * t.OUT_0  + 0.042608 * t.OUT_1  + 0.087185 * t.OUT_2  + -0.181920 * t.OUT_3  + 0.221843 * t.OUT_4  + 0.137006 * t.OUT_5  + -0.040652 * t.OUT_6  + -0.047040 * t.OUT_7  + -0.120119 * t.OUT_8  + -0.094424 * t.OUT_9 AS OUT_74,
    0.174751 + 0.060847 * t.OUT_0  + -0.132691 * t.OUT_1  + 0.106033 * t.OUT_2  + 0.168918 * t.OUT_3  + -0.034061 * t.OUT_4  + -0.031311 * t.OUT_5  + 0.065327 * t.OUT_6  + 0.003720 * t.OUT_7  + 0.197893 * t.OUT_8  + -0.038204 * t.OUT_9 AS OUT_75,
    0.071138 + 0.137352 * t.OUT_0  + 0.227608 * t.OUT_1  + 0.117473 * t.OUT_2  + -0.194765 * t.OUT_3  + 0.084409 * t.OUT_4  + 0.124638 * t.OUT_5  + -0.098490 * t.OUT_6  + 0.148706 * t.OUT_7  + 0.075147 * t.OUT_8  + 0.258506 * t.OUT_9 AS OUT_76,
    0.083390 + 0.108548 * t.OUT_0  + 0.169287 * t.OUT_1  + 0.184853 * t.OUT_2  + -0.037117 * t.OUT_3  + -0.010306 * t.OUT_4  + -0.034168 * t.OUT_5  + 0.143467 * t.OUT_6  + -0.155603 * t.OUT_7  + -0.242326 * t.OUT_8  + -0.247400 * t.OUT_9 AS OUT_77,
    0.142462 + 0.175211 * t.OUT_0  + -0.125051 * t.OUT_1  + -0.150251 * t.OUT_2  + 0.159684 * t.OUT_3  + -0.010204 * t.OUT_4  + -0.164675 * t.OUT_5  + -0.169134 * t.OUT_6  + 0.201568 * t.OUT_7  + 0.202670 * t.OUT_8  + 0.183168 * t.OUT_9 AS OUT_78,
    -0.025910 + -0.082001 * t.OUT_0  + 0.062460 * t.OUT_1  + 0.189625 * t.OUT_2  + 0.035691 * t.OUT_3  + 0.045308 * t.OUT_4  + 0.195651 * t.OUT_5  + 0.170256 * t.OUT_6  + -0.101179 * t.OUT_7  + -0.147023 * t.OUT_8  + -0.163003 * t.OUT_9 AS OUT_79,
    0.183728 + 0.130590 * t.OUT_0  + 0.159390 * t.OUT_1  + 0.141902 * t.OUT_2  + -0.012690 * t.OUT_3  + -0.053801 * t.OUT_4  + -0.091714 * t.OUT_5  + 0.254365 * t.OUT_6  + -0.029914 * t.OUT_7  + -0.167801 * t.OUT_8  + 0.053448 * t.OUT_9 AS OUT_80,
    -0.050089 + 0.134770 * t.OUT_0  + -0.002261 * t.OUT_1  + 0.202860 * t.OUT_2  + -0.111669 * t.OUT_3  + 0.167495 * t.OUT_4  + 0.013709 * t.OUT_5  + -0.030972 * t.OUT_6  + -0.193570 * t.OUT_7  + 0.104711 * t.OUT_8  + 0.180286 * t.OUT_9 AS OUT_81,
    0.035387 + 0.204384 * t.OUT_0  + 0.028586 * t.OUT_1  + 0.025240 * t.OUT_2  + 0.213042 * t.OUT_3  + 0.265478 * t.OUT_4  + -0.087338 * t.OUT_5  + -0.198441 * t.OUT_6  + -0.154865 * t.OUT_7  + 0.022676 * t.OUT_8  + 0.040891 * t.OUT_9 AS OUT_82,
    0.228130 + 0.011298 * t.OUT_0  + 0.245864 * t.OUT_1  + 0.120068 * t.OUT_2  + -0.085209 * t.OUT_3  + 0.115952 * t.OUT_4  + -0.070454 * t.OUT_5  + 0.171217 * t.OUT_6  + -0.182580 * t.OUT_7  + -0.057800 * t.OUT_8  + 0.083934 * t.OUT_9 AS OUT_83,
    -0.182266 + -0.171899 * t.OUT_0  + 0.117877 * t.OUT_1  + 0.170451 * t.OUT_2  + -0.116525 * t.OUT_3  + 0.075317 * t.OUT_4  + 0.109716 * t.OUT_5  + -0.027345 * t.OUT_6  + 0.044675 * t.OUT_7  + 0.167996 * t.OUT_8  + 0.263642 * t.OUT_9 AS OUT_84,
    -0.233888 + 0.091541 * t.OUT_0  + 0.070578 * t.OUT_1  + 0.093836 * t.OUT_2  + -0.119696 * t.OUT_3  + 0.029340 * t.OUT_4  + 0.176256 * t.OUT_5  + -0.201400 * t.OUT_6  + 0.014880 * t.OUT_7  + 0.136922 * t.OUT_8  + -0.251597 * t.OUT_9 AS OUT_85,
    -0.068137 + 0.024000 * t.OUT_0  + -0.143426 * t.OUT_1  + 0.164737 * t.OUT_2  + 0.029816 * t.OUT_3  + -0.004274 * t.OUT_4  + -0.187150 * t.OUT_5  + -0.009268 * t.OUT_6  + -0.095289 * t.OUT_7  + 0.217196 * t.OUT_8  + -0.093291 * t.OUT_9 AS OUT_86,
    -0.168300 + -0.044251 * t.OUT_0  + -0.031721 * t.OUT_1  + -0.228076 * t.OUT_2  + 0.165732 * t.OUT_3  + 0.149809 * t.OUT_4  + -0.115523 * t.OUT_5  + -0.163597 * t.OUT_6  + -0.039807 * t.OUT_7  + -0.067107 * t.OUT_8  + -0.106257 * t.OUT_9 AS OUT_87,
    -0.254144 + -0.191522 * t.OUT_0  + 0.166977 * t.OUT_1  + 0.061945 * t.OUT_2  + -0.046758 * t.OUT_3  + 0.049862 * t.OUT_4  + 0.009537 * t.OUT_5  + 0.185311 * t.OUT_6  + -0.185504 * t.OUT_7  + -0.027674 * t.OUT_8  + -0.189647 * t.OUT_9 AS OUT_88,
    0.049840 + -0.224210 * t.OUT_0  + 0.126218 * t.OUT_1  + 0.202584 * t.OUT_2  + 0.071015 * t.OUT_3  + -0.037844 * t.OUT_4  + -0.102729 * t.OUT_5  + -0.037593 * t.OUT_6  + -0.050094 * t.OUT_7  + -0.211223 * t.OUT_8  + 0.231007 * t.OUT_9 AS OUT_89,
    -0.215062 + -0.085424 * t.OUT_0  + -0.067709 * t.OUT_1  + 0.048038 * t.OUT_2  + 0.147427 * t.OUT_3  + -0.053358 * t.OUT_4  + -0.135900 * t.OUT_5  + -0.079834 * t.OUT_6  + 0.118014 * t.OUT_7  + -0.119601 * t.OUT_8  + -0.078309 * t.OUT_9 AS OUT_90,
    0.201134 + 0.243333 * t.OUT_0  + -0.028909 * t.OUT_1  + 0.219111 * t.OUT_2  + 0.157184 * t.OUT_3  + -0.177829 * t.OUT_4  + 0.164609 * t.OUT_5  + -0.001054 * t.OUT_6  + -0.061488 * t.OUT_7  + -0.147523 * t.OUT_8  + 0.248229 * t.OUT_9 AS OUT_91,
    0.209630 + 0.042207 * t.OUT_0  + 0.196519 * t.OUT_1  + -0.045197 * t.OUT_2  + -0.117931 * t.OUT_3  + 0.261620 * t.OUT_4  + -0.134118 * t.OUT_5  + 0.197090 * t.OUT_6  + -0.197102 * t.OUT_7  + -0.112017 * t.OUT_8  + 0.204602 * t.OUT_9 AS OUT_92,
    -0.217911 + -0.047620 * t.OUT_0  + -0.121128 * t.OUT_1  + 0.077510 * t.OUT_2  + 0.095838 * t.OUT_3  + -0.194857 * t.OUT_4  + -0.054815 * t.OUT_5  + -0.084746 * t.OUT_6  + -0.200696 * t.OUT_7  + -0.146511 * t.OUT_8  + -0.033468 * t.OUT_9 AS OUT_93,
    -0.186320 + -0.054086 * t.OUT_0  + 0.030465 * t.OUT_1  + -0.164539 * t.OUT_2  + -0.148391 * t.OUT_3  + -0.118841 * t.OUT_4  + 0.180901 * t.OUT_5  + 0.042930 * t.OUT_6  + -0.221727 * t.OUT_7  + -0.082605 * t.OUT_8  + -0.214357 * t.OUT_9 AS OUT_94,
    -0.116291 + -0.187757 * t.OUT_0  + 0.212069 * t.OUT_1  + 0.083142 * t.OUT_2  + 0.150350 * t.OUT_3  + 0.234987 * t.OUT_4  + 0.254393 * t.OUT_5  + 0.014585 * t.OUT_6  + 0.251612 * t.OUT_7  + -0.050286 * t.OUT_8  + -0.099317 * t.OUT_9 AS OUT_95,
    0.150134 + 0.111962 * t.OUT_0  + -0.180327 * t.OUT_1  + -0.188887 * t.OUT_2  + -0.135836 * t.OUT_3  + -0.117541 * t.OUT_4  + 0.001381 * t.OUT_5  + -0.128095 * t.OUT_6  + 0.232868 * t.OUT_7  + 0.173170 * t.OUT_8  + 0.220290 * t.OUT_9 AS OUT_96,
    0.029826 + -0.096567 * t.OUT_0  + -0.153469 * t.OUT_1  + 0.105330 * t.OUT_2  + -0.082988 * t.OUT_3  + 0.183895 * t.OUT_4  + 0.109104 * t.OUT_5  + 0.113313 * t.OUT_6  + 0.196617 * t.OUT_7  + 0.045797 * t.OUT_8  + 0.197015 * t.OUT_9 AS OUT_97,
    0.185804 + -0.118990 * t.OUT_0  + -0.159358 * t.OUT_1  + -0.023980 * t.OUT_2  + 0.165008 * t.OUT_3  + -0.159407 * t.OUT_4  + -0.113624 * t.OUT_5  + -0.158314 * t.OUT_6  + 0.186410 * t.OUT_7  + 0.169797 * t.OUT_8  + -0.085969 * t.OUT_9 AS OUT_98,
    0.134677 + -0.015145 * t.OUT_0  + -0.089358 * t.OUT_1  + 0.039146 * t.OUT_2  + -0.106399 * t.OUT_3  + 0.245357 * t.OUT_4  + -0.024338 * t.OUT_5  + 0.212070 * t.OUT_6  + 0.133221 * t.OUT_7  + 0.085580 * t.OUT_8  + -0.022060 * t.OUT_9 AS OUT_99
   FROM Input_Layer_BA AS t
 ),
"Hidden_Layer_1_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5,
    CASE WHEN (OUT_6 > 0) THEN OUT_6 ELSE 0 END AS OUT_6,
    CASE WHEN (OUT_7 > 0) THEN OUT_7 ELSE 0 END AS OUT_7,
    CASE WHEN (OUT_8 > 0) THEN OUT_8 ELSE 0 END AS OUT_8,
    CASE WHEN (OUT_9 > 0) THEN OUT_9 ELSE 0 END AS OUT_9,
    CASE WHEN (OUT_10 > 0) THEN OUT_10 ELSE 0 END AS OUT_10,
    CASE WHEN (OUT_11 > 0) THEN OUT_11 ELSE 0 END AS OUT_11,
    CASE WHEN (OUT_12 > 0) THEN OUT_12 ELSE 0 END AS OUT_12,
    CASE WHEN (OUT_13 > 0) THEN OUT_13 ELSE 0 END AS OUT_13,
    CASE WHEN (OUT_14 > 0) THEN OUT_14 ELSE 0 END AS OUT_14,
    CASE WHEN (OUT_15 > 0) THEN OUT_15 ELSE 0 END AS OUT_15,
    CASE WHEN (OUT_16 > 0) THEN OUT_16 ELSE 0 END AS OUT_16,
    CASE WHEN (OUT_17 > 0) THEN OUT_17 ELSE 0 END AS OUT_17,
    CASE WHEN (OUT_18 > 0) THEN OUT_18 ELSE 0 END AS OUT_18,
    CASE WHEN (OUT_19 > 0) THEN OUT_19 ELSE 0 END AS OUT_19,
    CASE WHEN (OUT_20 > 0) THEN OUT_20 ELSE 0 END AS OUT_20,
    CASE WHEN (OUT_21 > 0) THEN OUT_21 ELSE 0 END AS OUT_21,
    CASE WHEN (OUT_22 > 0) THEN OUT_22 ELSE 0 END AS OUT_22,
    CASE WHEN (OUT_23 > 0) THEN OUT_23 ELSE 0 END AS OUT_23,
    CASE WHEN (OUT_24 > 0) THEN OUT_24 ELSE 0 END AS OUT_24,
    CASE WHEN (OUT_25 > 0) THEN OUT_25 ELSE 0 END AS OUT_25,
    CASE WHEN (OUT_26 > 0) THEN OUT_26 ELSE 0 END AS OUT_26,
    CASE WHEN (OUT_27 > 0) THEN OUT_27 ELSE 0 END AS OUT_27,
    CASE WHEN (OUT_28 > 0) THEN OUT_28 ELSE 0 END AS OUT_28,
    CASE WHEN (OUT_29 > 0) THEN OUT_29 ELSE 0 END AS OUT_29,
    CASE WHEN (OUT_30 > 0) THEN OUT_30 ELSE 0 END AS OUT_30,
    CASE WHEN (OUT_31 > 0) THEN OUT_31 ELSE 0 END AS OUT_31,
    CASE WHEN (OUT_32 > 0) THEN OUT_32 ELSE 0 END AS OUT_32,
    CASE WHEN (OUT_33 > 0) THEN OUT_33 ELSE 0 END AS OUT_33,
    CASE WHEN (OUT_34 > 0) THEN OUT_34 ELSE 0 END AS OUT_34,
    CASE WHEN (OUT_35 > 0) THEN OUT_35 ELSE 0 END AS OUT_35,
    CASE WHEN (OUT_36 > 0) THEN OUT_36 ELSE 0 END AS OUT_36,
    CASE WHEN (OUT_37 > 0) THEN OUT_37 ELSE 0 END AS OUT_37,
    CASE WHEN (OUT_38 > 0) THEN OUT_38 ELSE 0 END AS OUT_38,
    CASE WHEN (OUT_39 > 0) THEN OUT_39 ELSE 0 END AS OUT_39,
    CASE WHEN (OUT_40 > 0) THEN OUT_40 ELSE 0 END AS OUT_40,
    CASE WHEN (OUT_41 > 0) THEN OUT_41 ELSE 0 END AS OUT_41,
    CASE WHEN (OUT_42 > 0) THEN OUT_42 ELSE 0 END AS OUT_42,
    CASE WHEN (OUT_43 > 0) THEN OUT_43 ELSE 0 END AS OUT_43,
    CASE WHEN (OUT_44 > 0) THEN OUT_44 ELSE 0 END AS OUT_44,
    CASE WHEN (OUT_45 > 0) THEN OUT_45 ELSE 0 END AS OUT_45,
    CASE WHEN (OUT_46 > 0) THEN OUT_46 ELSE 0 END AS OUT_46,
    CASE WHEN (OUT_47 > 0) THEN OUT_47 ELSE 0 END AS OUT_47,
    CASE WHEN (OUT_48 > 0) THEN OUT_48 ELSE 0 END AS OUT_48,
    CASE WHEN (OUT_49 > 0) THEN OUT_49 ELSE 0 END AS OUT_49,
    CASE WHEN (OUT_50 > 0) THEN OUT_50 ELSE 0 END AS OUT_50,
    CASE WHEN (OUT_51 > 0) THEN OUT_51 ELSE 0 END AS OUT_51,
    CASE WHEN (OUT_52 > 0) THEN OUT_52 ELSE 0 END AS OUT_52,
    CASE WHEN (OUT_53 > 0) THEN OUT_53 ELSE 0 END AS OUT_53,
    CASE WHEN (OUT_54 > 0) THEN OUT_54 ELSE 0 END AS OUT_54,
    CASE WHEN (OUT_55 > 0) THEN OUT_55 ELSE 0 END AS OUT_55,
    CASE WHEN (OUT_56 > 0) THEN OUT_56 ELSE 0 END AS OUT_56,
    CASE WHEN (OUT_57 > 0) THEN OUT_57 ELSE 0 END AS OUT_57,
    CASE WHEN (OUT_58 > 0) THEN OUT_58 ELSE 0 END AS OUT_58,
    CASE WHEN (OUT_59 > 0) THEN OUT_59 ELSE 0 END AS OUT_59,
    CASE WHEN (OUT_60 > 0) THEN OUT_60 ELSE 0 END AS OUT_60,
    CASE WHEN (OUT_61 > 0) THEN OUT_61 ELSE 0 END AS OUT_61,
    CASE WHEN (OUT_62 > 0) THEN OUT_62 ELSE 0 END AS OUT_62,
    CASE WHEN (OUT_63 > 0) THEN OUT_63 ELSE 0 END AS OUT_63,
    CASE WHEN (OUT_64 > 0) THEN OUT_64 ELSE 0 END AS OUT_64,
    CASE WHEN (OUT_65 > 0) THEN OUT_65 ELSE 0 END AS OUT_65,
    CASE WHEN (OUT_66 > 0) THEN OUT_66 ELSE 0 END AS OUT_66,
    CASE WHEN (OUT_67 > 0) THEN OUT_67 ELSE 0 END AS OUT_67,
    CASE WHEN (OUT_68 > 0) THEN OUT_68 ELSE 0 END AS OUT_68,
    CASE WHEN (OUT_69 > 0) THEN OUT_69 ELSE 0 END AS OUT_69,
    CASE WHEN (OUT_70 > 0) THEN OUT_70 ELSE 0 END AS OUT_70,
    CASE WHEN (OUT_71 > 0) THEN OUT_71 ELSE 0 END AS OUT_71,
    CASE WHEN (OUT_72 > 0) THEN OUT_72 ELSE 0 END AS OUT_72,
    CASE WHEN (OUT_73 > 0) THEN OUT_73 ELSE 0 END AS OUT_73,
    CASE WHEN (OUT_74 > 0) THEN OUT_74 ELSE 0 END AS OUT_74,
    CASE WHEN (OUT_75 > 0) THEN OUT_75 ELSE 0 END AS OUT_75,
    CASE WHEN (OUT_76 > 0) THEN OUT_76 ELSE 0 END AS OUT_76,
    CASE WHEN (OUT_77 > 0) THEN OUT_77 ELSE 0 END AS OUT_77,
    CASE WHEN (OUT_78 > 0) THEN OUT_78 ELSE 0 END AS OUT_78,
    CASE WHEN (OUT_79 > 0) THEN OUT_79 ELSE 0 END AS OUT_79,
    CASE WHEN (OUT_80 > 0) THEN OUT_80 ELSE 0 END AS OUT_80,
    CASE WHEN (OUT_81 > 0) THEN OUT_81 ELSE 0 END AS OUT_81,
    CASE WHEN (OUT_82 > 0) THEN OUT_82 ELSE 0 END AS OUT_82,
    CASE WHEN (OUT_83 > 0) THEN OUT_83 ELSE 0 END AS OUT_83,
    CASE WHEN (OUT_84 > 0) THEN OUT_84 ELSE 0 END AS OUT_84,
    CASE WHEN (OUT_85 > 0) THEN OUT_85 ELSE 0 END AS OUT_85,
    CASE WHEN (OUT_86 > 0) THEN OUT_86 ELSE 0 END AS OUT_86,
    CASE WHEN (OUT_87 > 0) THEN OUT_87 ELSE 0 END AS OUT_87,
    CASE WHEN (OUT_88 > 0) THEN OUT_88 ELSE 0 END AS OUT_88,
    CASE WHEN (OUT_89 > 0) THEN OUT_89 ELSE 0 END AS OUT_89,
    CASE WHEN (OUT_90 > 0) THEN OUT_90 ELSE 0 END AS OUT_90,
    CASE WHEN (OUT_91 > 0) THEN OUT_91 ELSE 0 END AS OUT_91,
    CASE WHEN (OUT_92 > 0) THEN OUT_92 ELSE 0 END AS OUT_92,
    CASE WHEN (OUT_93 > 0) THEN OUT_93 ELSE 0 END AS OUT_93,
    CASE WHEN (OUT_94 > 0) THEN OUT_94 ELSE 0 END AS OUT_94,
    CASE WHEN (OUT_95 > 0) THEN OUT_95 ELSE 0 END AS OUT_95,
    CASE WHEN (OUT_96 > 0) THEN OUT_96 ELSE 0 END AS OUT_96,
    CASE WHEN (OUT_97 > 0) THEN OUT_97 ELSE 0 END AS OUT_97,
    CASE WHEN (OUT_98 > 0) THEN OUT_98 ELSE 0 END AS OUT_98,
    CASE WHEN (OUT_99 > 0) THEN OUT_99 ELSE 0 END AS OUT_99
   FROM Hidden_Layer_1_BA AS t
 ),
"Output_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    0.015186 + 0.236324 * t.OUT_0  + -0.015191 * t.OUT_1  + -0.226077 * t.OUT_2  + 0.106789 * t.OUT_3  + -0.062879 * t.OUT_4  + -0.152534 * t.OUT_5  + -0.080777 * t.OUT_6  + 0.238391 * t.OUT_7  + -0.088516 * t.OUT_8  + 0.170066 * t.OUT_9  + -0.194290 * t.OUT_10  + 0.271740 * t.OUT_11  + -0.136091 * t.OUT_12  + -0.019808 * t.OUT_13  + 0.212516 * t.OUT_14  + 0.068049 * t.OUT_15  + 0.197387 * t.OUT_16  + -0.217113 * t.OUT_17  + -0.019708 * t.OUT_18  + -0.072845 * t.OUT_19  + 0.015882 * t.OUT_20  + -0.172192 * t.OUT_21  + 0.255103 * t.OUT_22  + 0.133245 * t.OUT_23  + -0.092343 * t.OUT_24  + 0.039550 * t.OUT_25  + -0.031878 * t.OUT_26  + -0.164702 * t.OUT_27  + 0.166493 * t.OUT_28  + -0.240939 * t.OUT_29  + -0.195795 * t.OUT_30  + 0.170769 * t.OUT_31  + -0.057818 * t.OUT_32  + -0.144208 * t.OUT_33  + -0.082176 * t.OUT_34  + -0.040855 * t.OUT_35  + 0.037783 * t.OUT_36  + 0.042241 * t.OUT_37  + -0.173565 * t.OUT_38  + -0.123345 * t.OUT_39  + -0.129945 * t.OUT_40  + -0.201895 * t.OUT_41  + -0.037032 * t.OUT_42  + 0.172248 * t.OUT_43  + -0.080778 * t.OUT_44  + -0.025333 * t.OUT_45  + -0.083621 * t.OUT_46  + -0.075932 * t.OUT_47  + 0.265028 * t.OUT_48  + 0.249702 * t.OUT_49  + -0.021061 * t.OUT_50  + 0.000149 * t.OUT_51  + 0.263930 * t.OUT_52  + -0.137059 * t.OUT_53  + 0.126046 * t.OUT_54  + 0.009450 * t.OUT_55  + 0.024346 * t.OUT_56  + -0.063411 * t.OUT_57  + 0.205538 * t.OUT_58  + -0.089522 * t.OUT_59  + -0.046771 * t.OUT_60  + 0.058527 * t.OUT_61  + -0.045284 * t.OUT_62  + 0.129431 * t.OUT_63  + -0.040905 * t.OUT_64  + -0.054720 * t.OUT_65  + 0.046143 * t.OUT_66  + 0.219806 * t.OUT_67  + -0.069581 * t.OUT_68  + -0.086003 * t.OUT_69  + -0.132591 * t.OUT_70  + 0.149806 * t.OUT_71  + 0.244583 * t.OUT_72  + -0.093188 * t.OUT_73  + 0.078630 * t.OUT_74  + -0.180302 * t.OUT_75  + 0.201872 * t.OUT_76  + -0.052222 * t.OUT_77  + -0.066233 * t.OUT_78  + 0.042856 * t.OUT_79  + 0.252473 * t.OUT_80  + -0.029864 * t.OUT_81  + 0.154578 * t.OUT_82  + 0.228870 * t.OUT_83  + 0.180660 * t.OUT_84  + -0.169669 * t.OUT_85  + 0.031190 * t.OUT_86  + -0.073941 * t.OUT_87  + -0.172933 * t.OUT_88  + 0.019155 * t.OUT_89  + 0.006499 * t.OUT_90  + 0.103455 * t.OUT_91  + 0.248497 * t.OUT_92  + -0.039389 * t.OUT_93  + -0.130068 * t.OUT_94  + 0.029621 * t.OUT_95  + 0.120404 * t.OUT_96  + 0.002007 * t.OUT_97  + -0.041576 * t.OUT_98  + 0.237395 * t.OUT_99 AS OUT_0
   FROM Hidden_Layer_1_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
