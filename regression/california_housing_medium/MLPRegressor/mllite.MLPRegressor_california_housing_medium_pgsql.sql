WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    0.229330 + -0.120976 * t."OUT_0"  + 0.197357 * t."OUT_1"  + 0.004577 * t."OUT_2"  + 0.210904 * t."OUT_3"  + -0.019710 * t."OUT_4"  + 0.187437 * t."OUT_5"  + 0.241987 * t."OUT_6"  + -0.078385 * t."OUT_7"  + 0.152674 * t."OUT_8" AS "OUT_0",
    0.244817 + -0.010615 * t."OUT_0"  + -0.033472 * t."OUT_1"  + 0.127393 * t."OUT_2"  + -0.075473 * t."OUT_3"  + 0.160996 * t."OUT_4"  + 0.318871 * t."OUT_5"  + 0.050881 * t."OUT_6"  + 0.066756 * t."OUT_7"  + -0.102284 * t."OUT_8" AS "OUT_1",
    -0.139669 + -0.095760 * t."OUT_0"  + -0.077110 * t."OUT_1"  + -0.192079 * t."OUT_2"  + -0.162557 * t."OUT_3"  + 0.119369 * t."OUT_4"  + -0.153532 * t."OUT_5"  + -0.186263 * t."OUT_6"  + -0.170536 * t."OUT_7"  + -0.101319 * t."OUT_8" AS "OUT_2",
    0.065458 + -0.128450 * t."OUT_0"  + 0.246098 * t."OUT_1"  + 0.254588 * t."OUT_2"  + 0.040482 * t."OUT_3"  + 0.321846 * t."OUT_4"  + 0.246859 * t."OUT_5"  + 0.144508 * t."OUT_6"  + 0.082101 * t."OUT_7"  + -0.109470 * t."OUT_8" AS "OUT_3",
    -0.108754 + -0.016051 * t."OUT_0"  + 0.213697 * t."OUT_1"  + 0.280613 * t."OUT_2"  + -0.104015 * t."OUT_3"  + -0.050739 * t."OUT_4"  + -0.122392 * t."OUT_5"  + 0.167036 * t."OUT_6"  + -0.008685 * t."OUT_7"  + 0.221038 * t."OUT_8" AS "OUT_4",
    -0.061617 + -0.269315 * t."OUT_0"  + 0.304416 * t."OUT_1"  + 0.143108 * t."OUT_2"  + 0.197098 * t."OUT_3"  + 0.108412 * t."OUT_4"  + 0.331130 * t."OUT_5"  + -0.065880 * t."OUT_6"  + -0.123435 * t."OUT_7"  + -0.143800 * t."OUT_8" AS "OUT_5",
    0.175293 + 0.068005 * t."OUT_0"  + 0.170480 * t."OUT_1"  + 0.009740 * t."OUT_2"  + -0.015277 * t."OUT_3"  + 0.233129 * t."OUT_4"  + -0.143122 * t."OUT_5"  + -0.202416 * t."OUT_6"  + -0.002562 * t."OUT_7"  + -0.144582 * t."OUT_8" AS "OUT_6",
    0.251530 + -0.101325 * t."OUT_0"  + 0.242002 * t."OUT_1"  + 0.200120 * t."OUT_2"  + 0.034730 * t."OUT_3"  + 0.295886 * t."OUT_4"  + -0.063560 * t."OUT_5"  + 0.133858 * t."OUT_6"  + -0.034986 * t."OUT_7"  + -0.039334 * t."OUT_8" AS "OUT_7",
    -0.088899 + 0.200038 * t."OUT_0"  + -0.099695 * t."OUT_1"  + 0.024018 * t."OUT_2"  + -0.055045 * t."OUT_3"  + 0.178361 * t."OUT_4"  + -0.139729 * t."OUT_5"  + 0.031727 * t."OUT_6"  + 0.082003 * t."OUT_7"  + -0.052763 * t."OUT_8" AS "OUT_8",
    0.234990 + -0.054891 * t."OUT_0"  + 0.126772 * t."OUT_1"  + 0.216356 * t."OUT_2"  + 0.250000 * t."OUT_3"  + 0.050965 * t."OUT_4"  + 0.059651 * t."OUT_5"  + 0.028874 * t."OUT_6"  + 0.256992 * t."OUT_7"  + 0.105073 * t."OUT_8" AS "OUT_9",
    0.008480 + 0.272898 * t."OUT_0"  + -0.012269 * t."OUT_1"  + -0.059800 * t."OUT_2"  + 0.048136 * t."OUT_3"  + -0.189429 * t."OUT_4"  + 0.006124 * t."OUT_5"  + -0.008074 * t."OUT_6"  + 0.045832 * t."OUT_7"  + -0.205291 * t."OUT_8" AS "OUT_10",
    0.043764 + -0.145828 * t."OUT_0"  + 0.268090 * t."OUT_1"  + 0.248153 * t."OUT_2"  + 0.011564 * t."OUT_3"  + 0.005803 * t."OUT_4"  + 0.258960 * t."OUT_5"  + 0.258879 * t."OUT_6"  + 0.178431 * t."OUT_7"  + -0.121961 * t."OUT_8" AS "OUT_11",
    0.115397 + 0.188261 * t."OUT_0"  + 0.160313 * t."OUT_1"  + 0.150673 * t."OUT_2"  + 0.167977 * t."OUT_3"  + 0.089069 * t."OUT_4"  + -0.009920 * t."OUT_5"  + 0.042298 * t."OUT_6"  + 0.022250 * t."OUT_7"  + -0.137544 * t."OUT_8" AS "OUT_12",
    -0.225768 + -0.144211 * t."OUT_0"  + -0.063809 * t."OUT_1"  + -0.160680 * t."OUT_2"  + -0.245241 * t."OUT_3"  + -0.246082 * t."OUT_4"  + 0.148465 * t."OUT_5"  + 0.056672 * t."OUT_6"  + -0.290569 * t."OUT_7"  + -0.097433 * t."OUT_8" AS "OUT_13",
    -0.085107 + -0.016588 * t."OUT_0"  + 0.053240 * t."OUT_1"  + -0.147889 * t."OUT_2"  + 0.113105 * t."OUT_3"  + -0.170577 * t."OUT_4"  + -0.168768 * t."OUT_5"  + -0.019802 * t."OUT_6"  + -0.304511 * t."OUT_7"  + 0.187916 * t."OUT_8" AS "OUT_14",
    0.182158 + 0.087287 * t."OUT_0"  + 0.162886 * t."OUT_1"  + -0.201494 * t."OUT_2"  + -0.052967 * t."OUT_3"  + -0.218673 * t."OUT_4"  + -0.206246 * t."OUT_5"  + 0.009995 * t."OUT_6"  + 0.197827 * t."OUT_7"  + -0.033020 * t."OUT_8" AS "OUT_15",
    -0.124836 + 0.131978 * t."OUT_0"  + 0.029316 * t."OUT_1"  + -0.136145 * t."OUT_2"  + 0.048010 * t."OUT_3"  + -0.060822 * t."OUT_4"  + -0.116453 * t."OUT_5"  + -0.056791 * t."OUT_6"  + -0.082461 * t."OUT_7"  + 0.131572 * t."OUT_8" AS "OUT_16",
    0.171207 + -0.091112 * t."OUT_0"  + -0.101948 * t."OUT_1"  + -0.161621 * t."OUT_2"  + -0.165217 * t."OUT_3"  + -0.094717 * t."OUT_4"  + -0.038467 * t."OUT_5"  + 0.187414 * t."OUT_6"  + 0.008893 * t."OUT_7"  + -0.106141 * t."OUT_8" AS "OUT_17",
    0.101620 + -0.086532 * t."OUT_0"  + -0.097011 * t."OUT_1"  + 0.033584 * t."OUT_2"  + -0.161162 * t."OUT_3"  + -0.034883 * t."OUT_4"  + 0.026955 * t."OUT_5"  + -0.171087 * t."OUT_6"  + -0.151865 * t."OUT_7"  + -0.067892 * t."OUT_8" AS "OUT_18",
    0.100151 + -0.158446 * t."OUT_0"  + -0.139868 * t."OUT_1"  + -0.059282 * t."OUT_2"  + 0.033668 * t."OUT_3"  + -0.057422 * t."OUT_4"  + -0.197099 * t."OUT_5"  + -0.170875 * t."OUT_6"  + 0.214343 * t."OUT_7"  + -0.087457 * t."OUT_8" AS "OUT_19",
    -0.091932 + -0.006379 * t."OUT_0"  + 0.231443 * t."OUT_1"  + 0.006974 * t."OUT_2"  + 0.033383 * t."OUT_3"  + 0.336214 * t."OUT_4"  + 0.230928 * t."OUT_5"  + -0.018724 * t."OUT_6"  + 0.073639 * t."OUT_7"  + 0.152146 * t."OUT_8" AS "OUT_20",
    0.118538 + -0.337074 * t."OUT_0"  + 0.235971 * t."OUT_1"  + -0.093019 * t."OUT_2"  + 0.312347 * t."OUT_3"  + 0.257355 * t."OUT_4"  + 0.228715 * t."OUT_5"  + -0.105365 * t."OUT_6"  + 0.145573 * t."OUT_7"  + 0.139541 * t."OUT_8" AS "OUT_21",
    0.147453 + -0.098328 * t."OUT_0"  + -0.101376 * t."OUT_1"  + 0.267084 * t."OUT_2"  + -0.150566 * t."OUT_3"  + -0.064102 * t."OUT_4"  + 0.004156 * t."OUT_5"  + -0.118347 * t."OUT_6"  + -0.073863 * t."OUT_7"  + -0.212900 * t."OUT_8" AS "OUT_22",
    -0.225521 + 0.010941 * t."OUT_0"  + 0.076047 * t."OUT_1"  + -0.090306 * t."OUT_2"  + -0.118430 * t."OUT_3"  + 0.000411 * t."OUT_4"  + -0.106686 * t."OUT_5"  + 0.100913 * t."OUT_6"  + -0.010994 * t."OUT_7"  + -0.051610 * t."OUT_8" AS "OUT_23",
    0.304509 + -0.145729 * t."OUT_0"  + -0.050411 * t."OUT_1"  + 0.041814 * t."OUT_2"  + 0.200922 * t."OUT_3"  + 0.230402 * t."OUT_4"  + 0.250862 * t."OUT_5"  + 0.104262 * t."OUT_6"  + 0.088233 * t."OUT_7"  + -0.214568 * t."OUT_8" AS "OUT_24",
    -0.018305 + -0.337685 * t."OUT_0"  + 0.123896 * t."OUT_1"  + 0.204309 * t."OUT_2"  + 0.138937 * t."OUT_3"  + -0.087468 * t."OUT_4"  + -0.051869 * t."OUT_5"  + 0.048828 * t."OUT_6"  + -0.051848 * t."OUT_7"  + 0.186953 * t."OUT_8" AS "OUT_25",
    0.045745 + -0.064610 * t."OUT_0"  + -0.011447 * t."OUT_1"  + 0.054003 * t."OUT_2"  + 0.105481 * t."OUT_3"  + -0.179456 * t."OUT_4"  + 0.138648 * t."OUT_5"  + 0.008147 * t."OUT_6"  + -0.234871 * t."OUT_7"  + 0.026526 * t."OUT_8" AS "OUT_26",
    -0.201010 + 0.164775 * t."OUT_0"  + -0.067265 * t."OUT_1"  + 0.128819 * t."OUT_2"  + 0.173574 * t."OUT_3"  + 0.041821 * t."OUT_4"  + 0.176467 * t."OUT_5"  + 0.126325 * t."OUT_6"  + -0.048254 * t."OUT_7"  + -0.010745 * t."OUT_8" AS "OUT_27",
    0.080457 + -0.017244 * t."OUT_0"  + 0.107197 * t."OUT_1"  + -0.209777 * t."OUT_2"  + -0.141239 * t."OUT_3"  + -0.116276 * t."OUT_4"  + 0.025057 * t."OUT_5"  + 0.055631 * t."OUT_6"  + 0.166155 * t."OUT_7"  + 0.145133 * t."OUT_8" AS "OUT_28",
    0.166012 + 0.001935 * t."OUT_0"  + -0.221734 * t."OUT_1"  + 0.175334 * t."OUT_2"  + -0.159930 * t."OUT_3"  + 0.002358 * t."OUT_4"  + -0.189615 * t."OUT_5"  + -0.068952 * t."OUT_6"  + -0.190041 * t."OUT_7"  + 0.119615 * t."OUT_8" AS "OUT_29",
    0.141134 + -0.268796 * t."OUT_0"  + -0.152215 * t."OUT_1"  + 0.266609 * t."OUT_2"  + -0.135224 * t."OUT_3"  + -0.155347 * t."OUT_4"  + -0.149488 * t."OUT_5"  + -0.118255 * t."OUT_6"  + 0.037249 * t."OUT_7"  + 0.039715 * t."OUT_8" AS "OUT_30",
    0.060561 + -0.093290 * t."OUT_0"  + 0.281570 * t."OUT_1"  + 0.280329 * t."OUT_2"  + 0.160231 * t."OUT_3"  + 0.060499 * t."OUT_4"  + -0.027152 * t."OUT_5"  + 0.122290 * t."OUT_6"  + 0.195315 * t."OUT_7"  + 0.155744 * t."OUT_8" AS "OUT_31",
    0.202359 + -0.173069 * t."OUT_0"  + 0.314003 * t."OUT_1"  + 0.113015 * t."OUT_2"  + 0.163684 * t."OUT_3"  + 0.031257 * t."OUT_4"  + 0.142621 * t."OUT_5"  + 0.136035 * t."OUT_6"  + -0.134733 * t."OUT_7"  + 0.180826 * t."OUT_8" AS "OUT_32",
    0.045775 + 0.123081 * t."OUT_0"  + -0.191760 * t."OUT_1"  + 0.198055 * t."OUT_2"  + 0.062987 * t."OUT_3"  + 0.064339 * t."OUT_4"  + -0.260889 * t."OUT_5"  + 0.074767 * t."OUT_6"  + 0.190992 * t."OUT_7"  + -0.177772 * t."OUT_8" AS "OUT_33",
    0.010033 + -0.141934 * t."OUT_0"  + 0.006591 * t."OUT_1"  + 0.241347 * t."OUT_2"  + 0.025086 * t."OUT_3"  + 0.048647 * t."OUT_4"  + 0.028670 * t."OUT_5"  + -0.097750 * t."OUT_6"  + -0.110608 * t."OUT_7"  + -0.048462 * t."OUT_8" AS "OUT_34",
    0.117732 + 0.099338 * t."OUT_0"  + -0.177353 * t."OUT_1"  + 0.063574 * t."OUT_2"  + 0.014774 * t."OUT_3"  + 0.156569 * t."OUT_4"  + -0.081593 * t."OUT_5"  + -0.162964 * t."OUT_6"  + -0.178548 * t."OUT_7"  + 0.046755 * t."OUT_8" AS "OUT_35",
    0.126304 + -0.257758 * t."OUT_0"  + -0.077776 * t."OUT_1"  + 0.020213 * t."OUT_2"  + 0.321209 * t."OUT_3"  + 0.082096 * t."OUT_4"  + 0.249191 * t."OUT_5"  + 0.112929 * t."OUT_6"  + 0.103767 * t."OUT_7"  + -0.016901 * t."OUT_8" AS "OUT_36",
    -0.248418 + 0.232495 * t."OUT_0"  + -0.207151 * t."OUT_1"  + 0.180820 * t."OUT_2"  + -0.193585 * t."OUT_3"  + -0.239777 * t."OUT_4"  + 0.095876 * t."OUT_5"  + -0.080385 * t."OUT_6"  + -0.048344 * t."OUT_7"  + 0.176163 * t."OUT_8" AS "OUT_37",
    0.186133 + -0.275724 * t."OUT_0"  + 0.026033 * t."OUT_1"  + -0.132523 * t."OUT_2"  + 0.036349 * t."OUT_3"  + 0.286113 * t."OUT_4"  + -0.074649 * t."OUT_5"  + -0.034738 * t."OUT_6"  + 0.067025 * t."OUT_7"  + -0.137800 * t."OUT_8" AS "OUT_38",
    -0.088857 + 0.158217 * t."OUT_0"  + -0.085843 * t."OUT_1"  + -0.249798 * t."OUT_2"  + -0.100554 * t."OUT_3"  + -0.244286 * t."OUT_4"  + 0.054175 * t."OUT_5"  + 0.204734 * t."OUT_6"  + 0.142135 * t."OUT_7"  + -0.132099 * t."OUT_8" AS "OUT_39",
    0.254800 + -0.275524 * t."OUT_0"  + -0.046581 * t."OUT_1"  + 0.080861 * t."OUT_2"  + 0.110024 * t."OUT_3"  + 0.095703 * t."OUT_4"  + 0.235593 * t."OUT_5"  + -0.023085 * t."OUT_6"  + -0.009502 * t."OUT_7"  + 0.127836 * t."OUT_8" AS "OUT_40",
    -0.196249 + 0.129085 * t."OUT_0"  + -0.169163 * t."OUT_1"  + -0.012807 * t."OUT_2"  + -0.076162 * t."OUT_3"  + -0.008154 * t."OUT_4"  + 0.044593 * t."OUT_5"  + -0.148870 * t."OUT_6"  + 0.107655 * t."OUT_7"  + -0.181261 * t."OUT_8" AS "OUT_41",
    -0.148298 + 0.097118 * t."OUT_0"  + -0.249545 * t."OUT_1"  + 0.048525 * t."OUT_2"  + -0.115451 * t."OUT_3"  + 0.043652 * t."OUT_4"  + 0.155876 * t."OUT_5"  + 0.163464 * t."OUT_6"  + -0.036848 * t."OUT_7"  + 0.124119 * t."OUT_8" AS "OUT_42",
    -0.198485 + 0.213123 * t."OUT_0"  + 0.045284 * t."OUT_1"  + 0.192703 * t."OUT_2"  + -0.080242 * t."OUT_3"  + -0.234243 * t."OUT_4"  + -0.064851 * t."OUT_5"  + 0.200783 * t."OUT_6"  + -0.143600 * t."OUT_7"  + 0.172281 * t."OUT_8" AS "OUT_43",
    0.010866 + -0.098468 * t."OUT_0"  + -0.202887 * t."OUT_1"  + -0.005866 * t."OUT_2"  + -0.097918 * t."OUT_3"  + -0.131290 * t."OUT_4"  + -0.213288 * t."OUT_5"  + 0.059629 * t."OUT_6"  + -0.161372 * t."OUT_7"  + 0.216151 * t."OUT_8" AS "OUT_44",
    0.069392 + -0.150492 * t."OUT_0"  + -0.216138 * t."OUT_1"  + -0.067709 * t."OUT_2"  + 0.089340 * t."OUT_3"  + 0.161806 * t."OUT_4"  + -0.029209 * t."OUT_5"  + -0.160760 * t."OUT_6"  + -0.122803 * t."OUT_7"  + 0.020639 * t."OUT_8" AS "OUT_45",
    -0.100810 + -0.021154 * t."OUT_0"  + 0.146210 * t."OUT_1"  + -0.054085 * t."OUT_2"  + 0.129421 * t."OUT_3"  + 0.239525 * t."OUT_4"  + 0.238484 * t."OUT_5"  + 0.256535 * t."OUT_6"  + -0.024866 * t."OUT_7"  + -0.092630 * t."OUT_8" AS "OUT_46",
    0.212335 + 0.084608 * t."OUT_0"  + 0.081449 * t."OUT_1"  + -0.137197 * t."OUT_2"  + -0.108884 * t."OUT_3"  + -0.112523 * t."OUT_4"  + -0.169669 * t."OUT_5"  + 0.185291 * t."OUT_6"  + 0.049871 * t."OUT_7"  + 0.222483 * t."OUT_8" AS "OUT_47",
    0.002233 + 0.039643 * t."OUT_0"  + 0.081254 * t."OUT_1"  + 0.177510 * t."OUT_2"  + 0.044921 * t."OUT_3"  + 0.289900 * t."OUT_4"  + 0.039802 * t."OUT_5"  + 0.248191 * t."OUT_6"  + -0.043700 * t."OUT_7"  + -0.097395 * t."OUT_8" AS "OUT_48",
    0.274137 + 0.096318 * t."OUT_0"  + 0.167882 * t."OUT_1"  + 0.190474 * t."OUT_2"  + 0.116627 * t."OUT_3"  + 0.155397 * t."OUT_4"  + 0.260630 * t."OUT_5"  + 0.040721 * t."OUT_6"  + 0.287317 * t."OUT_7"  + -0.032721 * t."OUT_8" AS "OUT_49",
    0.110808 + 0.078883 * t."OUT_0"  + 0.127387 * t."OUT_1"  + -0.108810 * t."OUT_2"  + 0.300296 * t."OUT_3"  + 0.303104 * t."OUT_4"  + -0.057048 * t."OUT_5"  + 0.028943 * t."OUT_6"  + 0.139395 * t."OUT_7"  + -0.027625 * t."OUT_8" AS "OUT_50",
    0.068200 + -0.097411 * t."OUT_0"  + -0.210227 * t."OUT_1"  + -0.081444 * t."OUT_2"  + -0.031473 * t."OUT_3"  + 0.145094 * t."OUT_4"  + -0.078318 * t."OUT_5"  + 0.071209 * t."OUT_6"  + -0.109691 * t."OUT_7"  + -0.154293 * t."OUT_8" AS "OUT_51",
    0.205428 + 0.140276 * t."OUT_0"  + -0.038660 * t."OUT_1"  + 0.147636 * t."OUT_2"  + -0.184246 * t."OUT_3"  + -0.097542 * t."OUT_4"  + -0.039435 * t."OUT_5"  + -0.148649 * t."OUT_6"  + -0.198311 * t."OUT_7"  + 0.088632 * t."OUT_8" AS "OUT_52",
    -0.130742 + 0.221070 * t."OUT_0"  + 0.164589 * t."OUT_1"  + -0.121108 * t."OUT_2"  + -0.138017 * t."OUT_3"  + 0.140618 * t."OUT_4"  + 0.077949 * t."OUT_5"  + -0.145930 * t."OUT_6"  + -0.255866 * t."OUT_7"  + 0.157539 * t."OUT_8" AS "OUT_53",
    -0.022023 + -0.123636 * t."OUT_0"  + 0.215766 * t."OUT_1"  + -0.028222 * t."OUT_2"  + -0.206424 * t."OUT_3"  + 0.176306 * t."OUT_4"  + -0.149566 * t."OUT_5"  + 0.148541 * t."OUT_6"  + -0.090037 * t."OUT_7"  + -0.166389 * t."OUT_8" AS "OUT_54",
    0.239493 + 0.031953 * t."OUT_0"  + 0.035449 * t."OUT_1"  + 0.032161 * t."OUT_2"  + 0.194537 * t."OUT_3"  + 0.266098 * t."OUT_4"  + 0.296180 * t."OUT_5"  + 0.195100 * t."OUT_6"  + 0.282007 * t."OUT_7"  + 0.183417 * t."OUT_8" AS "OUT_55",
    -0.063272 + 0.069478 * t."OUT_0"  + -0.199566 * t."OUT_1"  + 0.082901 * t."OUT_2"  + -0.112171 * t."OUT_3"  + 0.153895 * t."OUT_4"  + 0.010841 * t."OUT_5"  + -0.147792 * t."OUT_6"  + 0.208027 * t."OUT_7"  + 0.015035 * t."OUT_8" AS "OUT_56",
    0.167927 + 0.017594 * t."OUT_0"  + -0.114001 * t."OUT_1"  + -0.119549 * t."OUT_2"  + -0.045652 * t."OUT_3"  + 0.034422 * t."OUT_4"  + -0.210555 * t."OUT_5"  + 0.164915 * t."OUT_6"  + 0.064742 * t."OUT_7"  + 0.109984 * t."OUT_8" AS "OUT_57",
    -0.174511 + 0.029777 * t."OUT_0"  + 0.097804 * t."OUT_1"  + -0.001093 * t."OUT_2"  + -0.174298 * t."OUT_3"  + 0.032282 * t."OUT_4"  + -0.169989 * t."OUT_5"  + -0.117805 * t."OUT_6"  + -0.207915 * t."OUT_7"  + 0.116995 * t."OUT_8" AS "OUT_58",
    0.063596 + 0.032339 * t."OUT_0"  + -0.092612 * t."OUT_1"  + 0.259435 * t."OUT_2"  + 0.132960 * t."OUT_3"  + 0.064229 * t."OUT_4"  + 0.253917 * t."OUT_5"  + -0.056969 * t."OUT_6"  + 0.025321 * t."OUT_7"  + -0.202616 * t."OUT_8" AS "OUT_59",
    -0.058717 + -0.336066 * t."OUT_0"  + 0.215796 * t."OUT_1"  + 0.204523 * t."OUT_2"  + -0.041262 * t."OUT_3"  + 0.098665 * t."OUT_4"  + 0.188418 * t."OUT_5"  + 0.232271 * t."OUT_6"  + 0.007795 * t."OUT_7"  + -0.197025 * t."OUT_8" AS "OUT_60",
    0.076561 + 0.029608 * t."OUT_0"  + -0.124370 * t."OUT_1"  + 0.151126 * t."OUT_2"  + -0.077953 * t."OUT_3"  + 0.010065 * t."OUT_4"  + -0.093249 * t."OUT_5"  + -0.117365 * t."OUT_6"  + -0.024788 * t."OUT_7"  + 0.210142 * t."OUT_8" AS "OUT_61",
    0.210240 + -0.028913 * t."OUT_0"  + 0.341043 * t."OUT_1"  + 0.288427 * t."OUT_2"  + 0.310068 * t."OUT_3"  + 0.149773 * t."OUT_4"  + 0.118648 * t."OUT_5"  + 0.341784 * t."OUT_6"  + 0.185032 * t."OUT_7"  + -0.078472 * t."OUT_8" AS "OUT_62",
    -0.029939 + 0.134972 * t."OUT_0"  + 0.225499 * t."OUT_1"  + 0.162577 * t."OUT_2"  + -0.140574 * t."OUT_3"  + -0.069541 * t."OUT_4"  + -0.056805 * t."OUT_5"  + 0.108598 * t."OUT_6"  + -0.046391 * t."OUT_7"  + -0.113408 * t."OUT_8" AS "OUT_63",
    -0.316768 + -0.117128 * t."OUT_0"  + -0.190554 * t."OUT_1"  + -0.006312 * t."OUT_2"  + 0.149670 * t."OUT_3"  + -0.230090 * t."OUT_4"  + 0.137499 * t."OUT_5"  + -0.112169 * t."OUT_6"  + 0.001302 * t."OUT_7"  + -0.116290 * t."OUT_8" AS "OUT_64",
    -0.059693 + 0.048652 * t."OUT_0"  + 0.235679 * t."OUT_1"  + -0.049202 * t."OUT_2"  + -0.020345 * t."OUT_3"  + 0.144328 * t."OUT_4"  + 0.316308 * t."OUT_5"  + 0.285586 * t."OUT_6"  + 0.302210 * t."OUT_7"  + -0.221300 * t."OUT_8" AS "OUT_65",
    0.258096 + -0.229641 * t."OUT_0"  + -0.013881 * t."OUT_1"  + 0.077993 * t."OUT_2"  + 0.188939 * t."OUT_3"  + 0.324153 * t."OUT_4"  + 0.071418 * t."OUT_5"  + 0.247098 * t."OUT_6"  + 0.046603 * t."OUT_7"  + 0.214459 * t."OUT_8" AS "OUT_66",
    -0.026602 + -0.320683 * t."OUT_0"  + 0.276040 * t."OUT_1"  + -0.057233 * t."OUT_2"  + -0.044527 * t."OUT_3"  + 0.036217 * t."OUT_4"  + 0.038158 * t."OUT_5"  + 0.198029 * t."OUT_6"  + 0.296404 * t."OUT_7"  + 0.227177 * t."OUT_8" AS "OUT_67",
    0.262849 + 0.112544 * t."OUT_0"  + -0.080005 * t."OUT_1"  + 0.203074 * t."OUT_2"  + 0.237575 * t."OUT_3"  + 0.008996 * t."OUT_4"  + 0.266092 * t."OUT_5"  + 0.323355 * t."OUT_6"  + 0.159637 * t."OUT_7"  + 0.006840 * t."OUT_8" AS "OUT_68",
    -0.165584 + 0.223919 * t."OUT_0"  + 0.140356 * t."OUT_1"  + 0.053666 * t."OUT_2"  + -0.107300 * t."OUT_3"  + -0.159097 * t."OUT_4"  + -0.030048 * t."OUT_5"  + -0.012900 * t."OUT_6"  + 0.207608 * t."OUT_7"  + 0.209874 * t."OUT_8" AS "OUT_69",
    0.250246 + -0.163313 * t."OUT_0"  + 0.181130 * t."OUT_1"  + 0.359341 * t."OUT_2"  + -0.021589 * t."OUT_3"  + 0.022816 * t."OUT_4"  + 0.207094 * t."OUT_5"  + -0.013441 * t."OUT_6"  + 0.314717 * t."OUT_7"  + -0.141199 * t."OUT_8" AS "OUT_70",
    -0.082766 + -0.156326 * t."OUT_0"  + -0.165443 * t."OUT_1"  + 0.085251 * t."OUT_2"  + -0.149114 * t."OUT_3"  + -0.140338 * t."OUT_4"  + 0.004542 * t."OUT_5"  + -0.040684 * t."OUT_6"  + -0.185563 * t."OUT_7"  + 0.087834 * t."OUT_8" AS "OUT_71",
    -0.052609 + 0.035321 * t."OUT_0"  + 0.065444 * t."OUT_1"  + 0.172070 * t."OUT_2"  + -0.261914 * t."OUT_3"  + -0.089462 * t."OUT_4"  + -0.187257 * t."OUT_5"  + -0.070252 * t."OUT_6"  + 0.069859 * t."OUT_7"  + 0.169586 * t."OUT_8" AS "OUT_72",
    -0.152429 + 0.278199 * t."OUT_0"  + 0.055012 * t."OUT_1"  + -0.178568 * t."OUT_2"  + 0.006670 * t."OUT_3"  + -0.120308 * t."OUT_4"  + 0.008622 * t."OUT_5"  + 0.075229 * t."OUT_6"  + -0.015636 * t."OUT_7"  + -0.011639 * t."OUT_8" AS "OUT_73",
    0.007195 + -0.307267 * t."OUT_0"  + 0.144551 * t."OUT_1"  + 0.187709 * t."OUT_2"  + -0.086070 * t."OUT_3"  + 0.317297 * t."OUT_4"  + 0.229554 * t."OUT_5"  + 0.053729 * t."OUT_6"  + 0.059753 * t."OUT_7"  + -0.156383 * t."OUT_8" AS "OUT_74",
    0.092366 + -0.006884 * t."OUT_0"  + -0.002546 * t."OUT_1"  + 0.235840 * t."OUT_2"  + 0.299014 * t."OUT_3"  + 0.095079 * t."OUT_4"  + 0.099056 * t."OUT_5"  + 0.194903 * t."OUT_6"  + 0.132018 * t."OUT_7"  + 0.230155 * t."OUT_8" AS "OUT_75",
    0.356390 + -0.023386 * t."OUT_0"  + 0.325292 * t."OUT_1"  + 0.211762 * t."OUT_2"  + -0.116916 * t."OUT_3"  + 0.161909 * t."OUT_4"  + 0.200425 * t."OUT_5"  + -0.021198 * t."OUT_6"  + 0.248680 * t."OUT_7"  + 0.043166 * t."OUT_8" AS "OUT_76",
    -0.115882 + 0.034521 * t."OUT_0"  + 0.303856 * t."OUT_1"  + 0.318012 * t."OUT_2"  + 0.094446 * t."OUT_3"  + 0.121772 * t."OUT_4"  + 0.098672 * t."OUT_5"  + 0.276303 * t."OUT_6"  + -0.025771 * t."OUT_7"  + -0.214459 * t."OUT_8" AS "OUT_77",
    0.316335 + 0.105107 * t."OUT_0"  + 0.006675 * t."OUT_1"  + -0.020029 * t."OUT_2"  + 0.290675 * t."OUT_3"  + 0.120219 * t."OUT_4"  + -0.032847 * t."OUT_5"  + -0.039448 * t."OUT_6"  + 0.331587 * t."OUT_7"  + 0.234303 * t."OUT_8" AS "OUT_78",
    -0.260253 + -0.057995 * t."OUT_0"  + -0.033788 * t."OUT_1"  + 0.094724 * t."OUT_2"  + -0.058959 * t."OUT_3"  + -0.050173 * t."OUT_4"  + 0.100094 * t."OUT_5"  + 0.075370 * t."OUT_6"  + -0.195250 * t."OUT_7"  + -0.183642 * t."OUT_8" AS "OUT_79",
    0.020993 + 0.098732 * t."OUT_0"  + 0.127548 * t."OUT_1"  + 0.110027 * t."OUT_2"  + -0.045537 * t."OUT_3"  + -0.086723 * t."OUT_4"  + -0.125030 * t."OUT_5"  + 0.223083 * t."OUT_6"  + -0.062781 * t."OUT_7"  + -0.201438 * t."OUT_8" AS "OUT_80",
    0.191795 + 0.184204 * t."OUT_0"  + 0.008354 * t."OUT_1"  + 0.213826 * t."OUT_2"  + -0.099132 * t."OUT_3"  + 0.180826 * t."OUT_4"  + 0.024281 * t."OUT_5"  + -0.018841 * t."OUT_6"  + -0.182809 * t."OUT_7"  + 0.134939 * t."OUT_8" AS "OUT_81",
    0.133205 + 0.046151 * t."OUT_0"  + 0.120891 * t."OUT_1"  + 0.115421 * t."OUT_2"  + 0.304439 * t."OUT_3"  + 0.357332 * t."OUT_4"  + 0.004233 * t."OUT_5"  + -0.109421 * t."OUT_6"  + -0.067259 * t."OUT_7"  + -0.010963 * t."OUT_8" AS "OUT_82",
    0.165847 + -0.134877 * t."OUT_0"  + 0.328514 * t."OUT_1"  + 0.202424 * t."OUT_2"  + -0.007782 * t."OUT_3"  + 0.192904 * t."OUT_4"  + 0.007475 * t."OUT_5"  + 0.248745 * t."OUT_6"  + -0.102944 * t."OUT_7"  + -0.090457 * t."OUT_8" AS "OUT_83",
    0.178568 + -0.156734 * t."OUT_0"  + 0.031569 * t."OUT_1"  + 0.087930 * t."OUT_2"  + -0.185270 * t."OUT_3"  + 0.009569 * t."OUT_4"  + 0.041661 * t."OUT_5"  + -0.094597 * t."OUT_6"  + -0.052410 * t."OUT_7"  + 0.133658 * t."OUT_8" AS "OUT_84",
    -0.281067 + 0.169379 * t."OUT_0"  + 0.044132 * t."OUT_1"  + 0.066658 * t."OUT_2"  + -0.136974 * t."OUT_3"  + 0.009743 * t."OUT_4"  + 0.148195 * t."OUT_5"  + -0.225262 * t."OUT_6"  + -0.006106 * t."OUT_7"  + 0.162310 * t."OUT_8" AS "OUT_85",
    -0.114895 + 0.002602 * t."OUT_0"  + -0.165205 * t."OUT_1"  + 0.144015 * t."OUT_2"  + 0.008303 * t."OUT_3"  + -0.025527 * t."OUT_4"  + -0.208634 * t."OUT_5"  + -0.030729 * t."OUT_6"  + -0.117256 * t."OUT_7"  + 0.196698 * t."OUT_8" AS "OUT_86",
    -0.176443 + 0.025242 * t."OUT_0"  + -0.101559 * t."OUT_1"  + -0.298028 * t."OUT_2"  + 0.094841 * t."OUT_3"  + 0.082132 * t."OUT_4"  + -0.185267 * t."OUT_5"  + -0.232854 * t."OUT_6"  + -0.113779 * t."OUT_7"  + -0.067415 * t."OUT_8" AS "OUT_87",
    -0.216980 + -0.122392 * t."OUT_0"  + 0.141209 * t."OUT_1"  + 0.036271 * t."OUT_2"  + -0.069968 * t."OUT_3"  + 0.025896 * t."OUT_4"  + -0.017187 * t."OUT_5"  + 0.162490 * t."OUT_6"  + -0.205021 * t."OUT_7"  + -0.010862 * t."OUT_8" AS "OUT_88",
    0.345461 + -0.332933 * t."OUT_0"  + 0.240673 * t."OUT_1"  + 0.315487 * t."OUT_2"  + 0.183164 * t."OUT_3"  + 0.073757 * t."OUT_4"  + 0.011368 * t."OUT_5"  + 0.075022 * t."OUT_6"  + 0.060287 * t."OUT_7"  + -0.208541 * t."OUT_8" AS "OUT_89",
    -0.134725 + -0.029761 * t."OUT_0"  + -0.124072 * t."OUT_1"  + -0.007037 * t."OUT_2"  + 0.091069 * t."OUT_3"  + -0.105908 * t."OUT_4"  + -0.190651 * t."OUT_5"  + -0.132818 * t."OUT_6"  + 0.056041 * t."OUT_7"  + -0.120148 * t."OUT_8" AS "OUT_90",
    0.317164 + 0.110847 * t."OUT_0"  + 0.038716 * t."OUT_1"  + 0.286445 * t."OUT_2"  + 0.224176 * t."OUT_3"  + -0.112356 * t."OUT_4"  + 0.232901 * t."OUT_5"  + 0.065266 * t."OUT_6"  + 0.003528 * t."OUT_7"  + -0.181092 * t."OUT_8" AS "OUT_91",
    0.172971 + 0.009767 * t."OUT_0"  + 0.164821 * t."OUT_1"  + -0.078233 * t."OUT_2"  + -0.151274 * t."OUT_3"  + 0.230246 * t."OUT_4"  + -0.167601 * t."OUT_5"  + 0.165323 * t."OUT_6"  + -0.231128 * t."OUT_7"  + -0.145347 * t."OUT_8" AS "OUT_92",
    -0.064448 + -0.017014 * t."OUT_0"  + -0.152504 * t."OUT_1"  + 0.047714 * t."OUT_2"  + 0.064840 * t."OUT_3"  + -0.225447 * t."OUT_4"  + -0.085796 * t."OUT_5"  + -0.115148 * t."OUT_6"  + -0.234663 * t."OUT_7"  + -0.147181 * t."OUT_8" AS "OUT_93",
    -0.272152 + 0.002478 * t."OUT_0"  + -0.026198 * t."OUT_1"  + -0.221926 * t."OUT_2"  + -0.194750 * t."OUT_3"  + -0.166469 * t."OUT_4"  + 0.131479 * t."OUT_5"  + -0.004735 * t."OUT_6"  + -0.280367 * t."OUT_7"  + -0.082983 * t."OUT_8" AS "OUT_94",
    -0.202455 + -0.129045 * t."OUT_0"  + 0.110403 * t."OUT_1"  + -0.018028 * t."OUT_2"  + 0.049517 * t."OUT_3"  + 0.134570 * t."OUT_4"  + 0.153064 * t."OUT_5"  + -0.086781 * t."OUT_6"  + 0.151980 * t."OUT_7"  + -0.072099 * t."OUT_8" AS "OUT_95",
    0.186765 + 0.078172 * t."OUT_0"  + -0.216255 * t."OUT_1"  + -0.224904 * t."OUT_2"  + -0.171145 * t."OUT_3"  + -0.153097 * t."OUT_4"  + -0.033505 * t."OUT_5"  + -0.163653 * t."OUT_6"  + 0.199352 * t."OUT_7"  + 0.139426 * t."OUT_8" AS "OUT_96",
    0.332873 + -0.180676 * t."OUT_0"  + -0.019221 * t."OUT_1"  + 0.239167 * t."OUT_2"  + 0.050025 * t."OUT_3"  + 0.318139 * t."OUT_4"  + 0.244321 * t."OUT_5"  + 0.247218 * t."OUT_6"  + 0.329715 * t."OUT_7"  + 0.071640 * t."OUT_8" AS "OUT_97",
    0.042260 + -0.190951 * t."OUT_0"  + -0.032118 * t."OUT_1"  + 0.102890 * t."OUT_2"  + 0.292793 * t."OUT_3"  + -0.033510 * t."OUT_4"  + 0.014194 * t."OUT_5"  + -0.032531 * t."OUT_6"  + 0.313608 * t."OUT_7"  + 0.199668 * t."OUT_8" AS "OUT_98",
    0.066587 + -0.168992 * t."OUT_0"  + -0.000898 * t."OUT_1"  + 0.127584 * t."OUT_2"  + -0.018864 * t."OUT_3"  + 0.332689 * t."OUT_4"  + 0.063762 * t."OUT_5"  + 0.299464 * t."OUT_6"  + 0.223576 * t."OUT_7"  + 0.053650 * t."OUT_8" AS "OUT_99"
   FROM "Input_Layer_BA" AS t
 ),
"Hidden_Layer_1_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7",
    CASE WHEN (t."OUT_8" > 0) THEN t."OUT_8" ELSE 0 END AS "OUT_8",
    CASE WHEN (t."OUT_9" > 0) THEN t."OUT_9" ELSE 0 END AS "OUT_9",
    CASE WHEN (t."OUT_10" > 0) THEN t."OUT_10" ELSE 0 END AS "OUT_10",
    CASE WHEN (t."OUT_11" > 0) THEN t."OUT_11" ELSE 0 END AS "OUT_11",
    CASE WHEN (t."OUT_12" > 0) THEN t."OUT_12" ELSE 0 END AS "OUT_12",
    CASE WHEN (t."OUT_13" > 0) THEN t."OUT_13" ELSE 0 END AS "OUT_13",
    CASE WHEN (t."OUT_14" > 0) THEN t."OUT_14" ELSE 0 END AS "OUT_14",
    CASE WHEN (t."OUT_15" > 0) THEN t."OUT_15" ELSE 0 END AS "OUT_15",
    CASE WHEN (t."OUT_16" > 0) THEN t."OUT_16" ELSE 0 END AS "OUT_16",
    CASE WHEN (t."OUT_17" > 0) THEN t."OUT_17" ELSE 0 END AS "OUT_17",
    CASE WHEN (t."OUT_18" > 0) THEN t."OUT_18" ELSE 0 END AS "OUT_18",
    CASE WHEN (t."OUT_19" > 0) THEN t."OUT_19" ELSE 0 END AS "OUT_19",
    CASE WHEN (t."OUT_20" > 0) THEN t."OUT_20" ELSE 0 END AS "OUT_20",
    CASE WHEN (t."OUT_21" > 0) THEN t."OUT_21" ELSE 0 END AS "OUT_21",
    CASE WHEN (t."OUT_22" > 0) THEN t."OUT_22" ELSE 0 END AS "OUT_22",
    CASE WHEN (t."OUT_23" > 0) THEN t."OUT_23" ELSE 0 END AS "OUT_23",
    CASE WHEN (t."OUT_24" > 0) THEN t."OUT_24" ELSE 0 END AS "OUT_24",
    CASE WHEN (t."OUT_25" > 0) THEN t."OUT_25" ELSE 0 END AS "OUT_25",
    CASE WHEN (t."OUT_26" > 0) THEN t."OUT_26" ELSE 0 END AS "OUT_26",
    CASE WHEN (t."OUT_27" > 0) THEN t."OUT_27" ELSE 0 END AS "OUT_27",
    CASE WHEN (t."OUT_28" > 0) THEN t."OUT_28" ELSE 0 END AS "OUT_28",
    CASE WHEN (t."OUT_29" > 0) THEN t."OUT_29" ELSE 0 END AS "OUT_29",
    CASE WHEN (t."OUT_30" > 0) THEN t."OUT_30" ELSE 0 END AS "OUT_30",
    CASE WHEN (t."OUT_31" > 0) THEN t."OUT_31" ELSE 0 END AS "OUT_31",
    CASE WHEN (t."OUT_32" > 0) THEN t."OUT_32" ELSE 0 END AS "OUT_32",
    CASE WHEN (t."OUT_33" > 0) THEN t."OUT_33" ELSE 0 END AS "OUT_33",
    CASE WHEN (t."OUT_34" > 0) THEN t."OUT_34" ELSE 0 END AS "OUT_34",
    CASE WHEN (t."OUT_35" > 0) THEN t."OUT_35" ELSE 0 END AS "OUT_35",
    CASE WHEN (t."OUT_36" > 0) THEN t."OUT_36" ELSE 0 END AS "OUT_36",
    CASE WHEN (t."OUT_37" > 0) THEN t."OUT_37" ELSE 0 END AS "OUT_37",
    CASE WHEN (t."OUT_38" > 0) THEN t."OUT_38" ELSE 0 END AS "OUT_38",
    CASE WHEN (t."OUT_39" > 0) THEN t."OUT_39" ELSE 0 END AS "OUT_39",
    CASE WHEN (t."OUT_40" > 0) THEN t."OUT_40" ELSE 0 END AS "OUT_40",
    CASE WHEN (t."OUT_41" > 0) THEN t."OUT_41" ELSE 0 END AS "OUT_41",
    CASE WHEN (t."OUT_42" > 0) THEN t."OUT_42" ELSE 0 END AS "OUT_42",
    CASE WHEN (t."OUT_43" > 0) THEN t."OUT_43" ELSE 0 END AS "OUT_43",
    CASE WHEN (t."OUT_44" > 0) THEN t."OUT_44" ELSE 0 END AS "OUT_44",
    CASE WHEN (t."OUT_45" > 0) THEN t."OUT_45" ELSE 0 END AS "OUT_45",
    CASE WHEN (t."OUT_46" > 0) THEN t."OUT_46" ELSE 0 END AS "OUT_46",
    CASE WHEN (t."OUT_47" > 0) THEN t."OUT_47" ELSE 0 END AS "OUT_47",
    CASE WHEN (t."OUT_48" > 0) THEN t."OUT_48" ELSE 0 END AS "OUT_48",
    CASE WHEN (t."OUT_49" > 0) THEN t."OUT_49" ELSE 0 END AS "OUT_49",
    CASE WHEN (t."OUT_50" > 0) THEN t."OUT_50" ELSE 0 END AS "OUT_50",
    CASE WHEN (t."OUT_51" > 0) THEN t."OUT_51" ELSE 0 END AS "OUT_51",
    CASE WHEN (t."OUT_52" > 0) THEN t."OUT_52" ELSE 0 END AS "OUT_52",
    CASE WHEN (t."OUT_53" > 0) THEN t."OUT_53" ELSE 0 END AS "OUT_53",
    CASE WHEN (t."OUT_54" > 0) THEN t."OUT_54" ELSE 0 END AS "OUT_54",
    CASE WHEN (t."OUT_55" > 0) THEN t."OUT_55" ELSE 0 END AS "OUT_55",
    CASE WHEN (t."OUT_56" > 0) THEN t."OUT_56" ELSE 0 END AS "OUT_56",
    CASE WHEN (t."OUT_57" > 0) THEN t."OUT_57" ELSE 0 END AS "OUT_57",
    CASE WHEN (t."OUT_58" > 0) THEN t."OUT_58" ELSE 0 END AS "OUT_58",
    CASE WHEN (t."OUT_59" > 0) THEN t."OUT_59" ELSE 0 END AS "OUT_59",
    CASE WHEN (t."OUT_60" > 0) THEN t."OUT_60" ELSE 0 END AS "OUT_60",
    CASE WHEN (t."OUT_61" > 0) THEN t."OUT_61" ELSE 0 END AS "OUT_61",
    CASE WHEN (t."OUT_62" > 0) THEN t."OUT_62" ELSE 0 END AS "OUT_62",
    CASE WHEN (t."OUT_63" > 0) THEN t."OUT_63" ELSE 0 END AS "OUT_63",
    CASE WHEN (t."OUT_64" > 0) THEN t."OUT_64" ELSE 0 END AS "OUT_64",
    CASE WHEN (t."OUT_65" > 0) THEN t."OUT_65" ELSE 0 END AS "OUT_65",
    CASE WHEN (t."OUT_66" > 0) THEN t."OUT_66" ELSE 0 END AS "OUT_66",
    CASE WHEN (t."OUT_67" > 0) THEN t."OUT_67" ELSE 0 END AS "OUT_67",
    CASE WHEN (t."OUT_68" > 0) THEN t."OUT_68" ELSE 0 END AS "OUT_68",
    CASE WHEN (t."OUT_69" > 0) THEN t."OUT_69" ELSE 0 END AS "OUT_69",
    CASE WHEN (t."OUT_70" > 0) THEN t."OUT_70" ELSE 0 END AS "OUT_70",
    CASE WHEN (t."OUT_71" > 0) THEN t."OUT_71" ELSE 0 END AS "OUT_71",
    CASE WHEN (t."OUT_72" > 0) THEN t."OUT_72" ELSE 0 END AS "OUT_72",
    CASE WHEN (t."OUT_73" > 0) THEN t."OUT_73" ELSE 0 END AS "OUT_73",
    CASE WHEN (t."OUT_74" > 0) THEN t."OUT_74" ELSE 0 END AS "OUT_74",
    CASE WHEN (t."OUT_75" > 0) THEN t."OUT_75" ELSE 0 END AS "OUT_75",
    CASE WHEN (t."OUT_76" > 0) THEN t."OUT_76" ELSE 0 END AS "OUT_76",
    CASE WHEN (t."OUT_77" > 0) THEN t."OUT_77" ELSE 0 END AS "OUT_77",
    CASE WHEN (t."OUT_78" > 0) THEN t."OUT_78" ELSE 0 END AS "OUT_78",
    CASE WHEN (t."OUT_79" > 0) THEN t."OUT_79" ELSE 0 END AS "OUT_79",
    CASE WHEN (t."OUT_80" > 0) THEN t."OUT_80" ELSE 0 END AS "OUT_80",
    CASE WHEN (t."OUT_81" > 0) THEN t."OUT_81" ELSE 0 END AS "OUT_81",
    CASE WHEN (t."OUT_82" > 0) THEN t."OUT_82" ELSE 0 END AS "OUT_82",
    CASE WHEN (t."OUT_83" > 0) THEN t."OUT_83" ELSE 0 END AS "OUT_83",
    CASE WHEN (t."OUT_84" > 0) THEN t."OUT_84" ELSE 0 END AS "OUT_84",
    CASE WHEN (t."OUT_85" > 0) THEN t."OUT_85" ELSE 0 END AS "OUT_85",
    CASE WHEN (t."OUT_86" > 0) THEN t."OUT_86" ELSE 0 END AS "OUT_86",
    CASE WHEN (t."OUT_87" > 0) THEN t."OUT_87" ELSE 0 END AS "OUT_87",
    CASE WHEN (t."OUT_88" > 0) THEN t."OUT_88" ELSE 0 END AS "OUT_88",
    CASE WHEN (t."OUT_89" > 0) THEN t."OUT_89" ELSE 0 END AS "OUT_89",
    CASE WHEN (t."OUT_90" > 0) THEN t."OUT_90" ELSE 0 END AS "OUT_90",
    CASE WHEN (t."OUT_91" > 0) THEN t."OUT_91" ELSE 0 END AS "OUT_91",
    CASE WHEN (t."OUT_92" > 0) THEN t."OUT_92" ELSE 0 END AS "OUT_92",
    CASE WHEN (t."OUT_93" > 0) THEN t."OUT_93" ELSE 0 END AS "OUT_93",
    CASE WHEN (t."OUT_94" > 0) THEN t."OUT_94" ELSE 0 END AS "OUT_94",
    CASE WHEN (t."OUT_95" > 0) THEN t."OUT_95" ELSE 0 END AS "OUT_95",
    CASE WHEN (t."OUT_96" > 0) THEN t."OUT_96" ELSE 0 END AS "OUT_96",
    CASE WHEN (t."OUT_97" > 0) THEN t."OUT_97" ELSE 0 END AS "OUT_97",
    CASE WHEN (t."OUT_98" > 0) THEN t."OUT_98" ELSE 0 END AS "OUT_98",
    CASE WHEN (t."OUT_99" > 0) THEN t."OUT_99" ELSE 0 END AS "OUT_99"
   FROM "Hidden_Layer_1_BA" AS t
 ),
"Output_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    0.296722 + 0.275210 * t."OUT_0"  + 0.263240 * t."OUT_1"  + 0.202854 * t."OUT_2"  + 0.163929 * t."OUT_3"  + 0.244776 * t."OUT_4"  + 0.198543 * t."OUT_5"  + -0.132378 * t."OUT_6"  + 0.274674 * t."OUT_7"  + -0.077602 * t."OUT_8"  + 0.207159 * t."OUT_9"  + -0.071818 * t."OUT_10"  + 0.367620 * t."OUT_11"  + 0.070060 * t."OUT_12"  + -0.129326 * t."OUT_13"  + -0.147803 * t."OUT_14"  + 0.201495 * t."OUT_15"  + -0.005702 * t."OUT_16"  + -0.206417 * t."OUT_17"  + -0.163976 * t."OUT_18"  + -0.077734 * t."OUT_19"  + 0.284786 * t."OUT_20"  + 0.184203 * t."OUT_21"  + 0.188146 * t."OUT_22"  + 0.014563 * t."OUT_23"  + 0.330584 * t."OUT_24"  + 0.170698 * t."OUT_25"  + 0.012995 * t."OUT_26"  + 0.059842 * t."OUT_27"  + -0.125121 * t."OUT_28"  + -0.239507 * t."OUT_29"  + 0.261750 * t."OUT_30"  + 0.293602 * t."OUT_31"  + 0.270354 * t."OUT_32"  + -0.047473 * t."OUT_33"  + 0.231986 * t."OUT_34"  + -0.016741 * t."OUT_35"  + 0.242106 * t."OUT_36"  + -0.018246 * t."OUT_37"  + 0.238269 * t."OUT_38"  + -0.034253 * t."OUT_39"  + 0.195863 * t."OUT_40"  + 0.060803 * t."OUT_41"  + 0.005920 * t."OUT_42"  + 0.210458 * t."OUT_43"  + -0.131789 * t."OUT_44"  + 0.026524 * t."OUT_45"  + 0.315095 * t."OUT_46"  + -0.073341 * t."OUT_47"  + 0.295824 * t."OUT_48"  + 0.108983 * t."OUT_49"  + 0.341351 * t."OUT_50"  + -0.102293 * t."OUT_51"  + -0.178990 * t."OUT_52"  + 0.000780 * t."OUT_53"  + 0.015839 * t."OUT_54"  + 0.080614 * t."OUT_55"  + 0.243709 * t."OUT_56"  + -0.061734 * t."OUT_57"  + 0.085067 * t."OUT_58"  + 0.273828 * t."OUT_59"  + 0.248987 * t."OUT_60"  + 0.091833 * t."OUT_61"  + 0.104707 * t."OUT_62"  + 0.145494 * t."OUT_63"  + -0.083538 * t."OUT_64"  + 0.266887 * t."OUT_65"  + 0.339072 * t."OUT_66"  + 0.206325 * t."OUT_67"  + 0.119838 * t."OUT_68"  + -0.003335 * t."OUT_69"  + 0.259221 * t."OUT_70"  + -0.111626 * t."OUT_71"  + -0.191880 * t."OUT_72"  + -0.046060 * t."OUT_73"  + 0.157944 * t."OUT_74"  + 0.316752 * t."OUT_75"  + 0.151598 * t."OUT_76"  + 0.235453 * t."OUT_77"  + 0.288405 * t."OUT_78"  + -0.008607 * t."OUT_79"  + 0.157859 * t."OUT_80"  + 0.004311 * t."OUT_81"  + 0.110319 * t."OUT_82"  + 0.314570 * t."OUT_83"  + -0.183675 * t."OUT_84"  + -0.167725 * t."OUT_85"  + -0.093408 * t."OUT_86"  + -0.124440 * t."OUT_87"  + -0.208594 * t."OUT_88"  + 0.171699 * t."OUT_89"  + -0.184722 * t."OUT_90"  + 0.282014 * t."OUT_91"  + 0.184784 * t."OUT_92"  + -0.203206 * t."OUT_93"  + -0.150859 * t."OUT_94"  + -0.062332 * t."OUT_95"  + 0.120651 * t."OUT_96"  + 0.168924 * t."OUT_97"  + 0.330745 * t."OUT_98"  + 0.231267 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t