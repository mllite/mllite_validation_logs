WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_small" AS "ADS" 
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
    0.161059 + -0.052709 * t."OUT_0"  + 0.129104 * t."OUT_1"  + -0.062246 * t."OUT_2"  + 0.144087 * t."OUT_3"  + -0.086523 * t."OUT_4"  + 0.119381 * t."OUT_5"  + 0.175162 * t."OUT_6"  + -0.144166 * t."OUT_7"  + 0.152674 * t."OUT_8" AS "OUT_0",
    0.147424 + 0.086782 * t."OUT_0"  + -0.130847 * t."OUT_1"  + 0.031671 * t."OUT_2"  + -0.170875 * t."OUT_3"  + 0.067219 * t."OUT_4"  + 0.229785 * t."OUT_5"  + -0.042663 * t."OUT_6"  + -0.034029 * t."OUT_7"  + -0.102284 * t."OUT_8" AS "OUT_1",
    -0.139669 + -0.095760 * t."OUT_0"  + -0.077110 * t."OUT_1"  + -0.192079 * t."OUT_2"  + -0.162557 * t."OUT_3"  + 0.119369 * t."OUT_4"  + -0.153532 * t."OUT_5"  + -0.186263 * t."OUT_6"  + -0.170536 * t."OUT_7"  + -0.101319 * t."OUT_8" AS "OUT_2",
    -0.012291 + -0.050707 * t."OUT_0"  + 0.168377 * t."OUT_1"  + 0.178443 * t."OUT_2"  + -0.035634 * t."OUT_3"  + 0.245692 * t."OUT_4"  + 0.169304 * t."OUT_5"  + 0.068290 * t."OUT_6"  + 0.007153 * t."OUT_7"  + -0.109470 * t."OUT_8" AS "OUT_3",
    -0.167960 + 0.043155 * t."OUT_0"  + 0.154491 * t."OUT_1"  + 0.221385 * t."OUT_2"  + -0.163769 * t."OUT_3"  + -0.110535 * t."OUT_4"  + -0.182162 * t."OUT_5"  + 0.107359 * t."OUT_6"  + -0.068427 * t."OUT_7"  + 0.221038 * t."OUT_8" AS "OUT_4",
    -0.133519 + -0.197418 * t."OUT_0"  + 0.232534 * t."OUT_1"  + 0.072726 * t."OUT_2"  + 0.126707 * t."OUT_3"  + 0.038014 * t."OUT_4"  + 0.259450 * t."OUT_5"  + -0.136289 * t."OUT_6"  + -0.192727 * t."OUT_7"  + -0.143800 * t."OUT_8" AS "OUT_5",
    0.158941 + 0.084357 * t."OUT_0"  + 0.154129 * t."OUT_1"  + -0.006611 * t."OUT_2"  + -0.031628 * t."OUT_3"  + 0.216778 * t."OUT_4"  + -0.159474 * t."OUT_5"  + -0.218767 * t."OUT_6"  + -0.018914 * t."OUT_7"  + -0.144582 * t."OUT_8" AS "OUT_6",
    0.142730 + 0.007472 * t."OUT_0"  + 0.133212 * t."OUT_1"  + 0.091765 * t."OUT_2"  + -0.070007 * t."OUT_3"  + 0.191643 * t."OUT_4"  + -0.169332 * t."OUT_5"  + 0.029478 * t."OUT_6"  + -0.142466 * t."OUT_7"  + -0.039334 * t."OUT_8" AS "OUT_7",
    -0.088899 + 0.200038 * t."OUT_0"  + -0.099695 * t."OUT_1"  + 0.024018 * t."OUT_2"  + -0.055045 * t."OUT_3"  + 0.178361 * t."OUT_4"  + -0.139729 * t."OUT_5"  + 0.031727 * t."OUT_6"  + 0.082003 * t."OUT_7"  + -0.052763 * t."OUT_8" AS "OUT_8",
    0.163122 + 0.016973 * t."OUT_0"  + 0.054923 * t."OUT_1"  + 0.145996 * t."OUT_2"  + 0.179654 * t."OUT_3"  + -0.019392 * t."OUT_4"  + -0.012069 * t."OUT_5"  + -0.041492 * t."OUT_6"  + 0.187753 * t."OUT_7"  + 0.105073 * t."OUT_8" AS "OUT_9",
    0.055056 + 0.226325 * t."OUT_0"  + 0.034294 * t."OUT_1"  + -0.014132 * t."OUT_2"  + 0.095486 * t."OUT_3"  + -0.142940 * t."OUT_4"  + 0.053676 * t."OUT_5"  + 0.038474 * t."OUT_6"  + 0.092108 * t."OUT_7"  + -0.205291 * t."OUT_8" AS "OUT_10",
    -0.030277 + -0.071792 * t."OUT_0"  + 0.194066 * t."OUT_1"  + 0.175121 * t."OUT_2"  + -0.062670 * t."OUT_3"  + -0.067020 * t."OUT_4"  + 0.185249 * t."OUT_5"  + 0.185976 * t."OUT_6"  + 0.104114 * t."OUT_7"  + -0.121961 * t."OUT_8" AS "OUT_11",
    0.045880 + 0.257777 * t."OUT_0"  + 0.090804 * t."OUT_1"  + 0.081830 * t."OUT_2"  + 0.099239 * t."OUT_3"  + 0.020295 * t."OUT_4"  + -0.079371 * t."OUT_5"  + -0.026486 * t."OUT_6"  + -0.045944 * t."OUT_7"  + -0.137544 * t."OUT_8" AS "OUT_12",
    -0.193160 + -0.176817 * t."OUT_0"  + -0.031221 * t."OUT_1"  + -0.129151 * t."OUT_2"  + -0.229739 * t."OUT_3"  + -0.229644 * t."OUT_4"  + 0.168525 * t."OUT_5"  + 0.074077 * t."OUT_6"  + -0.257287 * t."OUT_7"  + -0.097433 * t."OUT_8" AS "OUT_13",
    -0.034838 + -0.066851 * t."OUT_0"  + 0.103493 * t."OUT_1"  + -0.098540 * t."OUT_2"  + 0.163222 * t."OUT_3"  + -0.122055 * t."OUT_4"  + -0.119582 * t."OUT_5"  + 0.028833 * t."OUT_6"  + -0.253721 * t."OUT_7"  + 0.187916 * t."OUT_8" AS "OUT_14",
    0.182158 + 0.087287 * t."OUT_0"  + 0.162886 * t."OUT_1"  + -0.201494 * t."OUT_2"  + -0.052967 * t."OUT_3"  + -0.218673 * t."OUT_4"  + -0.206246 * t."OUT_5"  + 0.009995 * t."OUT_6"  + 0.197827 * t."OUT_7"  + -0.033020 * t."OUT_8" AS "OUT_15",
    -0.123947 + 0.131083 * t."OUT_0"  + 0.030195 * t."OUT_1"  + -0.135715 * t."OUT_2"  + 0.049015 * t."OUT_3"  + -0.060002 * t."OUT_4"  + -0.115198 * t."OUT_5"  + -0.055677 * t."OUT_6"  + -0.081625 * t."OUT_7"  + 0.131572 * t."OUT_8" AS "OUT_16",
    0.192494 + -0.112400 * t."OUT_0"  + -0.080660 * t."OUT_1"  + -0.140333 * t."OUT_2"  + -0.143929 * t."OUT_3"  + -0.073429 * t."OUT_4"  + -0.017179 * t."OUT_5"  + 0.208702 * t."OUT_6"  + 0.030181 * t."OUT_7"  + -0.106141 * t."OUT_8" AS "OUT_17",
    0.134487 + -0.119400 * t."OUT_0"  + -0.064142 * t."OUT_1"  + 0.064886 * t."OUT_2"  + -0.137861 * t."OUT_3"  + -0.013553 * t."OUT_4"  + 0.050101 * t."OUT_5"  + -0.147763 * t."OUT_6"  + -0.127634 * t."OUT_7"  + -0.067892 * t."OUT_8" AS "OUT_18",
    0.094524 + -0.152823 * t."OUT_0"  + -0.145499 * t."OUT_1"  + -0.063170 * t."OUT_2"  + 0.021995 * t."OUT_3"  + -0.068528 * t."OUT_4"  + -0.208596 * t."OUT_5"  + -0.182473 * t."OUT_6"  + 0.201820 * t."OUT_7"  + -0.087457 * t."OUT_8" AS "OUT_19",
    -0.165888 + 0.067570 * t."OUT_0"  + 0.157512 * t."OUT_1"  + -0.065547 * t."OUT_2"  + -0.039674 * t."OUT_3"  + 0.264475 * t."OUT_4"  + 0.157635 * t."OUT_5"  + -0.090621 * t."OUT_6"  + 0.000058 * t."OUT_7"  + 0.152146 * t."OUT_8" AS "OUT_20",
    0.045973 + -0.264513 * t."OUT_0"  + 0.163426 * t."OUT_1"  + -0.164049 * t."OUT_2"  + 0.241304 * t."OUT_3"  + 0.186302 * t."OUT_4"  + 0.156373 * t."OUT_5"  + -0.176429 * t."OUT_6"  + 0.075643 * t."OUT_7"  + 0.139541 * t."OUT_8" AS "OUT_21",
    0.086533 + -0.037408 * t."OUT_0"  + -0.162296 * t."OUT_1"  + 0.206117 * t."OUT_2"  + -0.211564 * t."OUT_3"  + -0.125105 * t."OUT_4"  + -0.056792 * t."OUT_5"  + -0.179434 * t."OUT_6"  + -0.134921 * t."OUT_7"  + -0.212900 * t."OUT_8" AS "OUT_22",
    -0.225521 + 0.010941 * t."OUT_0"  + 0.076047 * t."OUT_1"  + -0.090306 * t."OUT_2"  + -0.118430 * t."OUT_3"  + 0.000411 * t."OUT_4"  + -0.106686 * t."OUT_5"  + 0.100913 * t."OUT_6"  + -0.010994 * t."OUT_7"  + -0.051610 * t."OUT_8" AS "OUT_23",
    0.237750 + -0.078974 * t."OUT_0"  + -0.117152 * t."OUT_1"  + -0.023525 * t."OUT_2"  + 0.135594 * t."OUT_3"  + 0.165082 * t."OUT_4"  + 0.184315 * t."OUT_5"  + 0.038930 * t."OUT_6"  + 0.023915 * t."OUT_7"  + -0.214568 * t."OUT_8" AS "OUT_24",
    -0.142850 + -0.213148 * t."OUT_0"  + -0.000620 * t."OUT_1"  + 0.081433 * t."OUT_2"  + 0.016119 * t."OUT_3"  + -0.211798 * t."OUT_4"  + -0.177234 * t."OUT_5"  + -0.075098 * t."OUT_6"  + -0.170590 * t."OUT_7"  + 0.186953 * t."OUT_8" AS "OUT_25",
    0.070947 + -0.089809 * t."OUT_0"  + 0.013745 * t."OUT_1"  + 0.078485 * t."OUT_2"  + 0.129922 * t."OUT_3"  + -0.155059 * t."OUT_4"  + 0.163773 * t."OUT_5"  + 0.032556 * t."OUT_6"  + -0.210939 * t."OUT_7"  + 0.026526 * t."OUT_8" AS "OUT_26",
    -0.255048 + 0.218812 * t."OUT_0"  + -0.121298 * t."OUT_1"  + 0.075220 * t."OUT_2"  + 0.120002 * t."OUT_3"  + -0.011757 * t."OUT_4"  + 0.122567 * t."OUT_5"  + 0.072745 * t."OUT_6"  + -0.101570 * t."OUT_7"  + -0.010745 * t."OUT_8" AS "OUT_27",
    0.080457 + -0.017244 * t."OUT_0"  + 0.107197 * t."OUT_1"  + -0.209777 * t."OUT_2"  + -0.141239 * t."OUT_3"  + -0.116276 * t."OUT_4"  + 0.025057 * t."OUT_5"  + 0.055631 * t."OUT_6"  + 0.166155 * t."OUT_7"  + 0.145133 * t."OUT_8" AS "OUT_28",
    0.166012 + 0.001935 * t."OUT_0"  + -0.221734 * t."OUT_1"  + 0.175334 * t."OUT_2"  + -0.159930 * t."OUT_3"  + 0.002358 * t."OUT_4"  + -0.189615 * t."OUT_5"  + -0.068952 * t."OUT_6"  + -0.190041 * t."OUT_7"  + 0.119615 * t."OUT_8" AS "OUT_29",
    0.082419 + -0.210082 * t."OUT_0"  + -0.210930 * t."OUT_1"  + 0.207871 * t."OUT_2"  + -0.194524 * t."OUT_3"  + -0.214682 * t."OUT_4"  + -0.208788 * t."OUT_5"  + -0.177453 * t."OUT_6"  + -0.022040 * t."OUT_7"  + 0.039715 * t."OUT_8" AS "OUT_30",
    -0.011541 + -0.021189 * t."OUT_0"  + 0.209482 * t."OUT_1"  + 0.210073 * t."OUT_2"  + 0.090604 * t."OUT_3"  + -0.010532 * t."OUT_4"  + -0.100519 * t."OUT_5"  + 0.051312 * t."OUT_6"  + 0.128302 * t."OUT_7"  + 0.155744 * t."OUT_8" AS "OUT_31",
    0.133467 + -0.104182 * t."OUT_0"  + 0.245130 * t."OUT_1"  + 0.045583 * t."OUT_2"  + 0.096257 * t."OUT_3"  + -0.036168 * t."OUT_4"  + 0.073946 * t."OUT_5"  + 0.068599 * t."OUT_6"  + -0.201115 * t."OUT_7"  + 0.180826 * t."OUT_8" AS "OUT_32",
    0.054968 + 0.113901 * t."OUT_0"  + -0.182607 * t."OUT_1"  + 0.206610 * t."OUT_2"  + 0.074243 * t."OUT_3"  + 0.074359 * t."OUT_4"  + -0.249983 * t."OUT_5"  + 0.085049 * t."OUT_6"  + 0.201451 * t."OUT_7"  + -0.177772 * t."OUT_8" AS "OUT_33",
    -0.084694 + -0.047208 * t."OUT_0"  + -0.088132 * t."OUT_1"  + 0.146677 * t."OUT_2"  + -0.068211 * t."OUT_3"  + -0.045247 * t."OUT_4"  + -0.065201 * t."OUT_5"  + -0.191652 * t."OUT_6"  + -0.203785 * t."OUT_7"  + -0.048462 * t."OUT_8" AS "OUT_34",
    0.100058 + 0.117013 * t."OUT_0"  + -0.195027 * t."OUT_1"  + 0.045900 * t."OUT_2"  + -0.002901 * t."OUT_3"  + 0.138895 * t."OUT_4"  + -0.099268 * t."OUT_5"  + -0.180639 * t."OUT_6"  + -0.196223 * t."OUT_7"  + 0.046755 * t."OUT_8" AS "OUT_35",
    0.057244 + -0.188703 * t."OUT_0"  + -0.146817 * t."OUT_1"  + -0.047383 * t."OUT_2"  + 0.253616 * t."OUT_3"  + 0.014504 * t."OUT_4"  + 0.180348 * t."OUT_5"  + 0.045326 * t."OUT_6"  + 0.037224 * t."OUT_7"  + -0.016901 * t."OUT_8" AS "OUT_36",
    -0.221403 + 0.205479 * t."OUT_0"  + -0.180139 * t."OUT_1"  + 0.207822 * t."OUT_2"  + -0.172455 * t."OUT_3"  + -0.218759 * t."OUT_4"  + 0.117802 * t."OUT_5"  + -0.058851 * t."OUT_6"  + -0.026512 * t."OUT_7"  + 0.176163 * t."OUT_8" AS "OUT_37",
    0.082188 + -0.171782 * t."OUT_0"  + -0.077902 * t."OUT_1"  + -0.232953 * t."OUT_2"  + -0.065084 * t."OUT_3"  + 0.185427 * t."OUT_4"  + -0.176580 * t."OUT_5"  + -0.135478 * t."OUT_6"  + -0.036742 * t."OUT_7"  + -0.137800 * t."OUT_8" AS "OUT_38",
    -0.079881 + 0.149256 * t."OUT_0"  + -0.076882 * t."OUT_1"  + -0.241503 * t."OUT_2"  + -0.096620 * t."OUT_3"  + -0.240325 * t."OUT_4"  + 0.062485 * t."OUT_5"  + 0.209030 * t."OUT_6"  + 0.151321 * t."OUT_7"  + -0.132099 * t."OUT_8" AS "OUT_39",
    0.180755 + -0.201483 * t."OUT_0"  + -0.120605 * t."OUT_1"  + 0.008377 * t."OUT_2"  + 0.037524 * t."OUT_3"  + 0.023188 * t."OUT_4"  + 0.161773 * t."OUT_5"  + -0.095610 * t."OUT_6"  + -0.080867 * t."OUT_7"  + 0.127836 * t."OUT_8" AS "OUT_40",
    -0.196249 + 0.129085 * t."OUT_0"  + -0.169163 * t."OUT_1"  + -0.012807 * t."OUT_2"  + -0.076162 * t."OUT_3"  + -0.008154 * t."OUT_4"  + 0.044593 * t."OUT_5"  + -0.148870 * t."OUT_6"  + 0.107655 * t."OUT_7"  + -0.181261 * t."OUT_8" AS "OUT_41",
    -0.135233 + 0.084052 * t."OUT_0"  + -0.236483 * t."OUT_1"  + 0.060896 * t."OUT_2"  + -0.103563 * t."OUT_3"  + 0.057553 * t."OUT_4"  + 0.170225 * t."OUT_5"  + 0.177228 * t."OUT_6"  + -0.028818 * t."OUT_7"  + 0.124119 * t."OUT_8" AS "OUT_42",
    -0.198485 + 0.213123 * t."OUT_0"  + 0.045284 * t."OUT_1"  + 0.192703 * t."OUT_2"  + -0.080242 * t."OUT_3"  + -0.234243 * t."OUT_4"  + -0.064851 * t."OUT_5"  + 0.200783 * t."OUT_6"  + -0.143600 * t."OUT_7"  + 0.172281 * t."OUT_8" AS "OUT_43",
    0.059689 + -0.147291 * t."OUT_0"  + -0.154063 * t."OUT_1"  + 0.042957 * t."OUT_2"  + -0.049095 * t."OUT_3"  + -0.082467 * t."OUT_4"  + -0.164465 * t."OUT_5"  + 0.108452 * t."OUT_6"  + -0.112548 * t."OUT_7"  + 0.216151 * t."OUT_8" AS "OUT_44",
    0.070407 + -0.151506 * t."OUT_0"  + -0.215128 * t."OUT_1"  + -0.067056 * t."OUT_2"  + 0.089928 * t."OUT_3"  + 0.162399 * t."OUT_4"  + -0.028108 * t."OUT_5"  + -0.160156 * t."OUT_6"  + -0.122530 * t."OUT_7"  + 0.020639 * t."OUT_8" AS "OUT_45",
    -0.168060 + 0.046091 * t."OUT_0"  + 0.078979 * t."OUT_1"  + -0.119904 * t."OUT_2"  + 0.063621 * t."OUT_3"  + 0.173732 * t."OUT_4"  + 0.171459 * t."OUT_5"  + 0.190730 * t."OUT_6"  + -0.089650 * t."OUT_7"  + -0.092630 * t."OUT_8" AS "OUT_46",
    0.212335 + 0.084608 * t."OUT_0"  + 0.081449 * t."OUT_1"  + -0.137197 * t."OUT_2"  + -0.108884 * t."OUT_3"  + -0.112523 * t."OUT_4"  + -0.169669 * t."OUT_5"  + 0.185291 * t."OUT_6"  + 0.049871 * t."OUT_7"  + 0.222483 * t."OUT_8" AS "OUT_47",
    -0.115928 + 0.157800 * t."OUT_0"  + -0.036891 * t."OUT_1"  + 0.061049 * t."OUT_2"  + -0.071968 * t."OUT_3"  + 0.174316 * t."OUT_4"  + -0.077956 * t."OUT_5"  + 0.132535 * t."OUT_6"  + -0.161014 * t."OUT_7"  + -0.097395 * t."OUT_8" AS "OUT_48",
    0.179416 + 0.191034 * t."OUT_0"  + 0.073182 * t."OUT_1"  + 0.097412 * t."OUT_2"  + 0.023440 * t."OUT_3"  + 0.062115 * t."OUT_4"  + 0.166124 * t."OUT_5"  + -0.052560 * t."OUT_6"  + 0.195432 * t."OUT_7"  + -0.032721 * t."OUT_8" AS "OUT_49",
    0.043529 + 0.146158 * t."OUT_0"  + 0.060125 * t."OUT_1"  + -0.174749 * t."OUT_2"  + 0.234875 * t."OUT_3"  + 0.237547 * t."OUT_4"  + -0.124446 * t."OUT_5"  + -0.036652 * t."OUT_6"  + 0.075049 * t."OUT_7"  + -0.027625 * t."OUT_8" AS "OUT_50",
    0.091867 + -0.121077 * t."OUT_0"  + -0.186568 * t."OUT_1"  + -0.058965 * t."OUT_2"  + -0.007659 * t."OUT_3"  + 0.171250 * t."OUT_4"  + -0.053777 * t."OUT_5"  + 0.097206 * t."OUT_6"  + -0.089335 * t."OUT_7"  + -0.154293 * t."OUT_8" AS "OUT_51",
    0.205428 + 0.140276 * t."OUT_0"  + -0.038660 * t."OUT_1"  + 0.147636 * t."OUT_2"  + -0.184246 * t."OUT_3"  + -0.097542 * t."OUT_4"  + -0.039435 * t."OUT_5"  + -0.148649 * t."OUT_6"  + -0.198311 * t."OUT_7"  + 0.088632 * t."OUT_8" AS "OUT_52",
    -0.126049 + 0.216387 * t."OUT_0"  + 0.169267 * t."OUT_1"  + -0.116710 * t."OUT_2"  + -0.137385 * t."OUT_3"  + 0.141922 * t."OUT_4"  + 0.081224 * t."OUT_5"  + -0.144389 * t."OUT_6"  + -0.250329 * t."OUT_7"  + 0.157539 * t."OUT_8" AS "OUT_53",
    -0.003987 + -0.141673 * t."OUT_0"  + 0.233803 * t."OUT_1"  + -0.004830 * t."OUT_2"  + -0.194475 * t."OUT_3"  + 0.188049 * t."OUT_4"  + -0.137306 * t."OUT_5"  + 0.161161 * t."OUT_6"  + -0.074635 * t."OUT_7"  + -0.166389 * t."OUT_8" AS "OUT_54",
    0.149890 + 0.121552 * t."OUT_0"  + -0.054138 * t."OUT_1"  + -0.056286 * t."OUT_2"  + 0.106031 * t."OUT_3"  + 0.177534 * t."OUT_4"  + 0.206759 * t."OUT_5"  + 0.106535 * t."OUT_6"  + 0.194362 * t."OUT_7"  + 0.183417 * t."OUT_8" AS "OUT_55",
    -0.063272 + 0.069478 * t."OUT_0"  + -0.199566 * t."OUT_1"  + 0.082901 * t."OUT_2"  + -0.112171 * t."OUT_3"  + 0.153895 * t."OUT_4"  + 0.010841 * t."OUT_5"  + -0.147792 * t."OUT_6"  + 0.208027 * t."OUT_7"  + 0.015035 * t."OUT_8" AS "OUT_56",
    0.167927 + 0.017594 * t."OUT_0"  + -0.114001 * t."OUT_1"  + -0.119549 * t."OUT_2"  + -0.045652 * t."OUT_3"  + 0.034422 * t."OUT_4"  + -0.210555 * t."OUT_5"  + 0.164915 * t."OUT_6"  + 0.064742 * t."OUT_7"  + 0.109984 * t."OUT_8" AS "OUT_57",
    -0.174511 + 0.029777 * t."OUT_0"  + 0.097804 * t."OUT_1"  + -0.001093 * t."OUT_2"  + -0.174298 * t."OUT_3"  + 0.032282 * t."OUT_4"  + -0.169989 * t."OUT_5"  + -0.117805 * t."OUT_6"  + -0.207915 * t."OUT_7"  + 0.116995 * t."OUT_8" AS "OUT_58",
    -0.005565 + 0.101496 * t."OUT_0"  + -0.161754 * t."OUT_1"  + 0.191776 * t."OUT_2"  + 0.065333 * t."OUT_3"  + -0.003397 * t."OUT_4"  + 0.185038 * t."OUT_5"  + -0.124608 * t."OUT_6"  + -0.041304 * t."OUT_7"  + -0.202616 * t."OUT_8" AS "OUT_59",
    -0.158530 + -0.236257 * t."OUT_0"  + 0.115994 * t."OUT_1"  + 0.106515 * t."OUT_2"  + -0.138115 * t."OUT_3"  + 0.004991 * t."OUT_4"  + 0.097120 * t."OUT_5"  + 0.138495 * t."OUT_6"  + -0.095689 * t."OUT_7"  + -0.197025 * t."OUT_8" AS "OUT_60",
    0.076561 + 0.029608 * t."OUT_0"  + -0.124370 * t."OUT_1"  + 0.151126 * t."OUT_2"  + -0.077953 * t."OUT_3"  + 0.010065 * t."OUT_4"  + -0.093249 * t."OUT_5"  + -0.117365 * t."OUT_6"  + -0.024788 * t."OUT_7"  + 0.210142 * t."OUT_8" AS "OUT_61",
    0.120732 + 0.060589 * t."OUT_0"  + 0.251560 * t."OUT_1"  + 0.200833 * t."OUT_2"  + 0.222352 * t."OUT_3"  + 0.061955 * t."OUT_4"  + 0.029396 * t."OUT_5"  + 0.253966 * t."OUT_6"  + 0.098791 * t."OUT_7"  + -0.078472 * t."OUT_8" AS "OUT_62",
    -0.029939 + 0.134972 * t."OUT_0"  + 0.225499 * t."OUT_1"  + 0.162577 * t."OUT_2"  + -0.140574 * t."OUT_3"  + -0.069541 * t."OUT_4"  + -0.056805 * t."OUT_5"  + 0.108598 * t."OUT_6"  + -0.046391 * t."OUT_7"  + -0.113408 * t."OUT_8" AS "OUT_63",
    -0.265033 + -0.168859 * t."OUT_0"  + -0.138834 * t."OUT_1"  + 0.044279 * t."OUT_2"  + 0.200210 * t."OUT_3"  + -0.179591 * t."OUT_4"  + 0.189058 * t."OUT_5"  + -0.061654 * t."OUT_6"  + 0.051059 * t."OUT_7"  + -0.116290 * t."OUT_8" AS "OUT_64",
    -0.138855 + 0.127806 * t."OUT_0"  + 0.156541 * t."OUT_1"  + -0.127163 * t."OUT_2"  + -0.098965 * t."OUT_3"  + 0.068084 * t."OUT_4"  + 0.238547 * t."OUT_5"  + 0.209171 * t."OUT_6"  + 0.221745 * t."OUT_7"  + -0.221300 * t."OUT_8" AS "OUT_65",
    0.191420 + -0.162970 * t."OUT_0"  + -0.080538 * t."OUT_1"  + 0.012735 * t."OUT_2"  + 0.123693 * t."OUT_3"  + 0.258915 * t."OUT_4"  + 0.004955 * t."OUT_5"  + 0.181848 * t."OUT_6"  + -0.017634 * t."OUT_7"  + 0.214459 * t."OUT_8" AS "OUT_66",
    -0.130325 + -0.216963 * t."OUT_0"  + 0.172322 * t."OUT_1"  + -0.161762 * t."OUT_2"  + -0.148714 * t."OUT_3"  + -0.066690 * t."OUT_4"  + -0.069097 * t."OUT_5"  + 0.094402 * t."OUT_6"  + 0.192504 * t."OUT_7"  + 0.227177 * t."OUT_8" AS "OUT_67",
    0.178527 + 0.196860 * t."OUT_0"  + -0.164304 * t."OUT_1"  + 0.120550 * t."OUT_2"  + 0.154967 * t."OUT_3"  + -0.073676 * t."OUT_4"  + 0.182011 * t."OUT_5"  + 0.240678 * t."OUT_6"  + 0.078382 * t."OUT_7"  + 0.006840 * t."OUT_8" AS "OUT_68",
    -0.165584 + 0.223919 * t."OUT_0"  + 0.140356 * t."OUT_1"  + 0.053666 * t."OUT_2"  + -0.107300 * t."OUT_3"  + -0.159097 * t."OUT_4"  + -0.030048 * t."OUT_5"  + -0.012900 * t."OUT_6"  + 0.207608 * t."OUT_7"  + 0.209874 * t."OUT_8" AS "OUT_69",
    0.117853 + -0.030925 * t."OUT_0"  + 0.048758 * t."OUT_1"  + 0.229419 * t."OUT_2"  + -0.143594 * t."OUT_3"  + -0.097191 * t."OUT_4"  + 0.089588 * t."OUT_5"  + -0.133717 * t."OUT_6"  + 0.177043 * t."OUT_7"  + -0.141199 * t."OUT_8" AS "OUT_70",
    -0.048289 + -0.190800 * t."OUT_0"  + -0.130968 * t."OUT_1"  + 0.120403 * t."OUT_2"  + -0.120487 * t."OUT_3"  + -0.113892 * t."OUT_4"  + 0.034546 * t."OUT_5"  + -0.011902 * t."OUT_6"  + -0.154462 * t."OUT_7"  + 0.087834 * t."OUT_8" AS "OUT_71",
    -0.008832 + -0.008456 * t."OUT_0"  + 0.109220 * t."OUT_1"  + 0.215847 * t."OUT_2"  + -0.218137 * t."OUT_3"  + -0.045685 * t."OUT_4"  + -0.143480 * t."OUT_5"  + -0.026476 * t."OUT_6"  + 0.113635 * t."OUT_7"  + 0.169586 * t."OUT_8" AS "OUT_72",
    -0.129391 + 0.255164 * t."OUT_0"  + 0.078041 * t."OUT_1"  + -0.156347 * t."OUT_2"  + 0.031830 * t."OUT_3"  + -0.095482 * t."OUT_4"  + 0.034109 * t."OUT_5"  + 0.100123 * t."OUT_6"  + 0.007006 * t."OUT_7"  + -0.011639 * t."OUT_8" AS "OUT_73",
    -0.095857 + -0.204218 * t."OUT_0"  + 0.041511 * t."OUT_1"  + 0.086347 * t."OUT_2"  + -0.185283 * t."OUT_3"  + 0.220630 * t."OUT_4"  + 0.135369 * t."OUT_5"  + -0.042886 * t."OUT_6"  + -0.048525 * t."OUT_7"  + -0.156383 * t."OUT_8" AS "OUT_74",
    0.025371 + 0.060107 * t."OUT_0"  + -0.069523 * t."OUT_1"  + 0.170271 * t."OUT_2"  + 0.233465 * t."OUT_3"  + 0.029537 * t."OUT_4"  + 0.032285 * t."OUT_5"  + 0.129349 * t."OUT_6"  + 0.067481 * t."OUT_7"  + 0.230155 * t."OUT_8" AS "OUT_75",
    0.227357 + 0.105646 * t."OUT_0"  + 0.196294 * t."OUT_1"  + 0.085679 * t."OUT_2"  + -0.228022 * t."OUT_3"  + 0.052448 * t."OUT_4"  + 0.092873 * t."OUT_5"  + -0.131260 * t."OUT_6"  + 0.117062 * t."OUT_7"  + 0.043166 * t."OUT_8" AS "OUT_76",
    -0.187241 + 0.105875 * t."OUT_0"  + 0.232519 * t."OUT_1"  + 0.248153 * t."OUT_2"  + 0.024612 * t."OUT_3"  + 0.051929 * t."OUT_4"  + 0.027526 * t."OUT_5"  + 0.206423 * t."OUT_6"  + -0.094538 * t."OUT_7"  + -0.214459 * t."OUT_8" AS "OUT_77",
    0.247227 + 0.174211 * t."OUT_0"  + -0.062416 * t."OUT_1"  + -0.087732 * t."OUT_2"  + 0.223656 * t."OUT_3"  + 0.052996 * t."OUT_4"  + -0.102111 * t."OUT_5"  + -0.106712 * t."OUT_6"  + 0.265677 * t."OUT_7"  + 0.234303 * t."OUT_8" AS "OUT_78",
    -0.229926 + -0.088319 * t."OUT_0"  + -0.003466 * t."OUT_1"  + 0.124201 * t."OUT_2"  + -0.030327 * t."OUT_3"  + -0.020739 * t."OUT_4"  + 0.130344 * t."OUT_5"  + 0.104717 * t."OUT_6"  + -0.168015 * t."OUT_7"  + -0.183642 * t."OUT_8" AS "OUT_79",
    0.020993 + 0.098732 * t."OUT_0"  + 0.127548 * t."OUT_1"  + 0.110027 * t."OUT_2"  + -0.045537 * t."OUT_3"  + -0.086723 * t."OUT_4"  + -0.125030 * t."OUT_5"  + 0.223083 * t."OUT_6"  + -0.062781 * t."OUT_7"  + -0.201438 * t."OUT_8" AS "OUT_80",
    0.191501 + 0.184515 * t."OUT_0"  + 0.008036 * t."OUT_1"  + 0.215169 * t."OUT_2"  + -0.100855 * t."OUT_3"  + 0.179082 * t."OUT_4"  + 0.023748 * t."OUT_5"  + -0.020454 * t."OUT_6"  + -0.184146 * t."OUT_7"  + 0.134939 * t."OUT_8" AS "OUT_81",
    0.043029 + 0.136321 * t."OUT_0"  + 0.030740 * t."OUT_1"  + 0.027137 * t."OUT_2"  + 0.216221 * t."OUT_3"  + 0.268939 * t."OUT_4"  + -0.085945 * t."OUT_5"  + -0.197826 * t."OUT_6"  + -0.153923 * t."OUT_7"  + -0.010963 * t."OUT_8" AS "OUT_82",
    0.051992 + -0.021025 * t."OUT_0"  + 0.214667 * t."OUT_1"  + 0.088268 * t."OUT_2"  + -0.118041 * t."OUT_3"  + 0.084145 * t."OUT_4"  + -0.103195 * t."OUT_5"  + 0.139677 * t."OUT_6"  + -0.215859 * t."OUT_7"  + -0.090457 * t."OUT_8" AS "OUT_83",
    0.209807 + -0.187970 * t."OUT_0"  + 0.062789 * t."OUT_1"  + 0.115676 * t."OUT_2"  + -0.172802 * t."OUT_3"  + 0.020121 * t."OUT_4"  + 0.054812 * t."OUT_5"  + -0.083141 * t."OUT_6"  + -0.010621 * t."OUT_7"  + 0.133658 * t."OUT_8" AS "OUT_84",
    -0.255855 + 0.144109 * t."OUT_0"  + 0.069550 * t."OUT_1"  + 0.094255 * t."OUT_2"  + -0.121127 * t."OUT_3"  + 0.028371 * t."OUT_4"  + 0.174722 * t."OUT_5"  + -0.205714 * t."OUT_6"  + 0.014833 * t."OUT_7"  + 0.162310 * t."OUT_8" AS "OUT_85",
    -0.114895 + 0.002602 * t."OUT_0"  + -0.165205 * t."OUT_1"  + 0.144015 * t."OUT_2"  + 0.008303 * t."OUT_3"  + -0.025527 * t."OUT_4"  + -0.208634 * t."OUT_5"  + -0.030729 * t."OUT_6"  + -0.117256 * t."OUT_7"  + 0.196698 * t."OUT_8" AS "OUT_86",
    -0.138101 + -0.013094 * t."OUT_0"  + -0.063229 * t."OUT_1"  + -0.260469 * t."OUT_2"  + 0.135117 * t."OUT_3"  + 0.119151 * t."OUT_4"  + -0.147350 * t."OUT_5"  + -0.195684 * t."OUT_6"  + -0.071406 * t."OUT_7"  + -0.067415 * t."OUT_8" AS "OUT_87",
    -0.197705 + -0.141666 * t."OUT_0"  + 0.160475 * t."OUT_1"  + 0.054010 * t."OUT_2"  + -0.056433 * t."OUT_3"  + 0.042181 * t."OUT_4"  + 0.000037 * t."OUT_5"  + 0.178718 * t."OUT_6"  + -0.192152 * t."OUT_7"  + -0.010862 * t."OUT_8" AS "OUT_88",
    0.267967 + -0.255442 * t."OUT_0"  + 0.163193 * t."OUT_1"  + 0.239548 * t."OUT_2"  + 0.107493 * t."OUT_3"  + -0.002090 * t."OUT_4"  + -0.066475 * t."OUT_5"  + -0.000853 * t."OUT_6"  + -0.014086 * t."OUT_7"  + -0.208541 * t."OUT_8" AS "OUT_89",
    -0.109423 + -0.055060 * t."OUT_0"  + -0.098772 * t."OUT_1"  + 0.017636 * t."OUT_2"  + 0.117230 * t."OUT_3"  + -0.084331 * t."OUT_4"  + -0.167105 * t."OUT_5"  + -0.110885 * t."OUT_6"  + 0.087548 * t."OUT_7"  + -0.120148 * t."OUT_8" AS "OUT_90",
    0.248931 + 0.179075 * t."OUT_0"  + -0.029497 * t."OUT_1"  + 0.219684 * t."OUT_2"  + 0.157426 * t."OUT_3"  + -0.179103 * t."OUT_4"  + 0.164911 * t."OUT_5"  + -0.001493 * t."OUT_6"  + -0.062194 * t."OUT_7"  + -0.181092 * t."OUT_8" AS "OUT_91",
    0.172971 + 0.009767 * t."OUT_0"  + 0.164821 * t."OUT_1"  + -0.078233 * t."OUT_2"  + -0.151274 * t."OUT_3"  + 0.230246 * t."OUT_4"  + -0.167601 * t."OUT_5"  + 0.165323 * t."OUT_6"  + -0.231128 * t."OUT_7"  + -0.145347 * t."OUT_8" AS "OUT_92",
    -0.058306 + -0.023138 * t."OUT_0"  + -0.146431 * t."OUT_1"  + 0.053600 * t."OUT_2"  + 0.072076 * t."OUT_3"  + -0.219143 * t."OUT_4"  + -0.078256 * t."OUT_5"  + -0.108088 * t."OUT_6"  + -0.227442 * t."OUT_7"  + -0.147181 * t."OUT_8" AS "OUT_93",
    -0.243824 + -0.025821 * t."OUT_0"  + 0.002068 * t."OUT_1"  + -0.192582 * t."OUT_2"  + -0.177319 * t."OUT_3"  + -0.148447 * t."OUT_4"  + 0.152324 * t."OUT_5"  + 0.014101 * t."OUT_6"  + -0.251302 * t."OUT_7"  + -0.082983 * t."OUT_8" AS "OUT_94",
    -0.152643 + -0.178854 * t."OUT_0"  + 0.160201 * t."OUT_1"  + 0.030674 * t."OUT_2"  + 0.098166 * t."OUT_3"  + 0.183177 * t."OUT_4"  + 0.202707 * t."OUT_5"  + -0.038160 * t."OUT_6"  + 0.199871 * t."OUT_7"  + -0.072099 * t."OUT_8" AS "OUT_95",
    0.186765 + 0.078172 * t."OUT_0"  + -0.216255 * t."OUT_1"  + -0.224904 * t."OUT_2"  + -0.171145 * t."OUT_3"  + -0.153097 * t."OUT_4"  + -0.033505 * t."OUT_5"  + -0.163653 * t."OUT_6"  + 0.199352 * t."OUT_7"  + 0.139426 * t."OUT_8" AS "OUT_96",
    0.256815 + -0.104623 * t."OUT_0"  + -0.095254 * t."OUT_1"  + 0.164682 * t."OUT_2"  + -0.024431 * t."OUT_3"  + 0.243653 * t."OUT_4"  + 0.168457 * t."OUT_5"  + 0.172672 * t."OUT_6"  + 0.256400 * t."OUT_7"  + 0.071640 * t."OUT_8" AS "OUT_97",
    -0.025185 + -0.123510 * t."OUT_0"  + -0.099547 * t."OUT_1"  + 0.036770 * t."OUT_2"  + 0.227072 * t."OUT_3"  + -0.099308 * t."OUT_4"  + -0.053317 * t."OUT_5"  + -0.098362 * t."OUT_6"  + 0.248921 * t."OUT_7"  + 0.199668 * t."OUT_8" AS "OUT_98",
    -0.054736 + -0.047673 * t."OUT_0"  + -0.122210 * t."OUT_1"  + 0.006987 * t."OUT_2"  + -0.139389 * t."OUT_3"  + 0.214103 * t."OUT_4"  + -0.056846 * t."OUT_5"  + 0.180751 * t."OUT_6"  + 0.101468 * t."OUT_7"  + 0.053650 * t."OUT_8" AS "OUT_99"
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
    0.235326 + 0.203502 * t."OUT_0"  + 0.180067 * t."OUT_1"  + 0.202854 * t."OUT_2"  + 0.082640 * t."OUT_3"  + 0.177882 * t."OUT_4"  + 0.127214 * t."OUT_5"  + -0.119131 * t."OUT_6"  + 0.167214 * t."OUT_7"  + -0.077602 * t."OUT_8"  + 0.132430 * t."OUT_9"  + -0.102211 * t."OUT_10"  + 0.275598 * t."OUT_11"  + 0.004391 * t."OUT_12"  + -0.153453 * t."OUT_13"  + -0.179972 * t."OUT_14"  + 0.201495 * t."OUT_15"  + 0.015911 * t."OUT_16"  + -0.221921 * t."OUT_17"  + -0.192972 * t."OUT_18"  + -0.082287 * t."OUT_19"  + 0.195249 * t."OUT_20"  + 0.115731 * t."OUT_21"  + 0.117585 * t."OUT_22"  + 0.014563 * t."OUT_23"  + 0.260647 * t."OUT_24"  + 0.046054 * t."OUT_25"  + -0.037316 * t."OUT_26"  + -0.000891 * t."OUT_27"  + -0.125121 * t."OUT_28"  + -0.239507 * t."OUT_29"  + 0.200675 * t."OUT_30"  + 0.206408 * t."OUT_31"  + 0.194017 * t."OUT_32"  + -0.051763 * t."OUT_33"  + 0.140074 * t."OUT_34"  + 0.007528 * t."OUT_35"  + 0.174383 * t."OUT_36"  + -0.035797 * t."OUT_37"  + 0.137570 * t."OUT_38"  + -0.042557 * t."OUT_39"  + 0.113799 * t."OUT_40"  + 0.060803 * t."OUT_41"  + -0.020477 * t."OUT_42"  + 0.210458 * t."OUT_43"  + -0.166447 * t."OUT_44"  + -0.017363 * t."OUT_45"  + 0.243005 * t."OUT_46"  + -0.073341 * t."OUT_47"  + 0.169140 * t."OUT_48"  + 0.025190 * t."OUT_49"  + 0.270189 * t."OUT_50"  + -0.113784 * t."OUT_51"  + -0.178990 * t."OUT_52"  + -0.013340 * t."OUT_53"  + -0.035801 * t."OUT_54"  + 0.013561 * t."OUT_55"  + 0.243709 * t."OUT_56"  + -0.061734 * t."OUT_57"  + 0.085067 * t."OUT_58"  + 0.194282 * t."OUT_59"  + 0.150018 * t."OUT_60"  + 0.091833 * t."OUT_61"  + 0.034423 * t."OUT_62"  + 0.145494 * t."OUT_63"  + -0.133773 * t."OUT_64"  + 0.175789 * t."OUT_65"  + 0.268010 * t."OUT_66"  + 0.106129 * t."OUT_67"  + 0.048274 * t."OUT_68"  + -0.003335 * t."OUT_69"  + 0.132089 * t."OUT_70"  + -0.145054 * t."OUT_71"  + -0.222662 * t."OUT_72"  + -0.059142 * t."OUT_73"  + 0.066250 * t."OUT_74"  + 0.247645 * t."OUT_75"  + 0.040650 * t."OUT_76"  + 0.152429 * t."OUT_77"  + 0.213900 * t."OUT_78"  + -0.034579 * t."OUT_79"  + 0.157859 * t."OUT_80"  + -0.002726 * t."OUT_81"  + 0.035251 * t."OUT_82"  + 0.204434 * t."OUT_83"  + -0.210428 * t."OUT_84"  + -0.190356 * t."OUT_85"  + -0.093408 * t."OUT_86"  + -0.145788 * t."OUT_87"  + -0.216657 * t."OUT_88"  + 0.089641 * t."OUT_89"  + -0.196802 * t."OUT_90"  + 0.208736 * t."OUT_91"  + 0.184784 * t."OUT_92"  + -0.206292 * t."OUT_93"  + -0.167125 * t."OUT_94"  + -0.112428 * t."OUT_95"  + 0.120651 * t."OUT_96"  + 0.091303 * t."OUT_97"  + 0.256907 * t."OUT_98"  + 0.106873 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
