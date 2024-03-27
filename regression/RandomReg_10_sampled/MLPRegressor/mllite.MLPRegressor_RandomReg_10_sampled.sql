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
    0.197198 + 0.012418 * t.OUT_0  + 0.128642 * t.OUT_1  + -0.061653 * t.OUT_2  + 0.142532 * t.OUT_3  + -0.152036 * t.OUT_4  + 0.118805 * t.OUT_5  + 0.174502 * t.OUT_6  + -0.142950 * t.OUT_7  + 0.183684 * t.OUT_8  + 0.160674 * t.OUT_9 AS OUT_0,
    0.171986 + 0.090759 * t.OUT_0  + -0.196162 * t.OUT_1  + -0.033078 * t.OUT_2  + -0.175112 * t.OUT_3  + 0.062393 * t.OUT_4  + 0.163171 * t.OUT_5  + -0.107504 * t.OUT_6  + -0.098979 * t.OUT_7  + -0.130566 * t.OUT_8  + 0.081446 * t.OUT_9 AS OUT_1,
    0.226836 + -0.127770 * t.OUT_0  + -0.108893 * t.OUT_1  + -0.223820 * t.OUT_2  + -0.157974 * t.OUT_3  + 0.123857 * t.OUT_4  + -0.183929 * t.OUT_5  + -0.217776 * t.OUT_6  + -0.201108 * t.OUT_7  + -0.133969 * t.OUT_8  + -0.118391 * t.OUT_9 AS OUT_2,
    0.080867 + 0.015590 * t.OUT_0  + 0.167027 * t.OUT_1  + 0.177540 * t.OUT_2  + -0.035141 * t.OUT_3  + 0.178249 * t.OUT_4  + 0.101288 * t.OUT_5  + 0.068363 * t.OUT_6  + 0.007190 * t.OUT_7  + -0.077539 * t.OUT_8  + -0.011634 * t.OUT_9 AS OUT_3,
    0.143418 + 0.012892 * t.OUT_0  + 0.123006 * t.OUT_1  + 0.190532 * t.OUT_2  + -0.191644 * t.OUT_3  + -0.080269 * t.OUT_4  + -0.211143 * t.OUT_5  + 0.076108 * t.OUT_6  + -0.099449 * t.OUT_7  + 0.188113 * t.OUT_8  + -0.197630 * t.OUT_9 AS OUT_4,
    0.123734 + -0.196354 * t.OUT_0  + 0.166259 * t.OUT_1  + 0.007818 * t.OUT_2  + 0.061257 * t.OUT_3  + 0.020902 * t.OUT_4  + 0.195648 * t.OUT_5  + -0.200756 * t.OUT_6  + -0.256849 * t.OUT_7  + -0.175893 * t.OUT_8  + -0.194662 * t.OUT_9 AS OUT_5,
    -0.093004 + 0.034923 * t.OUT_0  + 0.199136 * t.OUT_1  + -0.021683 * t.OUT_2  + -0.044002 * t.OUT_3  + 0.199600 * t.OUT_4  + -0.175868 * t.OUT_5  + -0.233840 * t.OUT_6  + 0.017555 * t.OUT_7  + -0.173551 * t.OUT_8  + 0.162552 * t.OUT_9 AS OUT_6,
    0.168548 + 0.039592 * t.OUT_0  + 0.164764 * t.OUT_1  + 0.123836 * t.OUT_2  + -0.037717 * t.OUT_3  + 0.219258 * t.OUT_4  + -0.136713 * t.OUT_5  + 0.061628 * t.OUT_6  + -0.109462 * t.OUT_7  + -0.006571 * t.OUT_8  + 0.174423 * t.OUT_9 AS OUT_7,
    -0.102444 + 0.168286 * t.OUT_0  + -0.116282 * t.OUT_1  + -0.001813 * t.OUT_2  + -0.069741 * t.OUT_3  + 0.156601 * t.OUT_4  + -0.171800 * t.OUT_5  + 0.002104 * t.OUT_6  + 0.048705 * t.OUT_7  + -0.083566 * t.OUT_8  + -0.120828 * t.OUT_9 AS OUT_8,
    0.128941 + 0.081552 * t.OUT_0  + 0.053993 * t.OUT_1  + 0.145525 * t.OUT_2  + 0.178485 * t.OUT_3  + -0.025897 * t.OUT_4  + -0.012741 * t.OUT_5  + -0.041544 * t.OUT_6  + 0.186736 * t.OUT_7  + 0.136613 * t.OUT_8  + 0.161405 * t.OUT_9 AS OUT_9,
    -0.158575 + 0.162559 * t.OUT_0  + 0.034413 * t.OUT_1  + -0.014339 * t.OUT_2  + 0.095097 * t.OUT_3  + -0.080787 * t.OUT_4  + 0.053087 * t.OUT_5  + 0.037852 * t.OUT_6  + 0.091261 * t.OUT_7  + -0.219371 * t.OUT_8  + 0.054251 * t.OUT_9 AS OUT_10,
    0.263152 + -0.004288 * t.OUT_0  + 0.189084 * t.OUT_1  + 0.172151 * t.OUT_2  + -0.064791 * t.OUT_3  + -0.132459 * t.OUT_4  + 0.181678 * t.OUT_5  + 0.182884 * t.OUT_6  + 0.100959 * t.OUT_7  + -0.088681 * t.OUT_8  + -0.032191 * t.OUT_9 AS OUT_11,
    -0.054097 + 0.200917 * t.OUT_0  + 0.081879 * t.OUT_1  + 0.074778 * t.OUT_2  + 0.091927 * t.OUT_3  + 0.036182 * t.OUT_4  + -0.084671 * t.OUT_5  + -0.033930 * t.OUT_6  + -0.053558 * t.OUT_7  + -0.169673 * t.OUT_8  + 0.039219 * t.OUT_9 AS OUT_12,
    -0.136653 + -0.240927 * t.OUT_0  + -0.034970 * t.OUT_1  + -0.133236 * t.OUT_2  + -0.192653 * t.OUT_3  + -0.164612 * t.OUT_4  + 0.187483 * t.OUT_5  + 0.069065 * t.OUT_6  + -0.260041 * t.OUT_7  + -0.130628 * t.OUT_8  + -0.195956 * t.OUT_9 AS OUT_13,
    -0.192495 + -0.066556 * t.OUT_0  + 0.166233 * t.OUT_1  + -0.034516 * t.OUT_2  + 0.227213 * t.OUT_3  + -0.102465 * t.OUT_4  + -0.087232 * t.OUT_5  + 0.092830 * t.OUT_6  + -0.189441 * t.OUT_7  + 0.194739 * t.OUT_8  + 0.000977 * t.OUT_9 AS OUT_14,
    0.227109 + 0.120650 * t.OUT_0  + 0.195907 * t.OUT_1  + -0.166745 * t.OUT_2  + -0.017922 * t.OUT_3  + -0.251520 * t.OUT_4  + -0.171570 * t.OUT_5  + 0.043653 * t.OUT_6  + 0.230613 * t.OUT_7  + 0.000762 * t.OUT_8  + 0.214362 * t.OUT_9 AS OUT_15,
    0.021525 + 0.154955 * t.OUT_0  + 0.069982 * t.OUT_1  + -0.093506 * t.OUT_2  + 0.089100 * t.OUT_3  + -0.040852 * t.OUT_4  + -0.074106 * t.OUT_5  + -0.015171 * t.OUT_6  + -0.040190 * t.OUT_7  + 0.163810 * t.OUT_8  + -0.146993 * t.OUT_9 AS OUT_16,
    -0.227889 + -0.145005 * t.OUT_0  + -0.114405 * t.OUT_1  + -0.171559 * t.OUT_2  + -0.162202 * t.OUT_3  + -0.039983 * t.OUT_4  + -0.051979 * t.OUT_5  + 0.175797 * t.OUT_6  + -0.001474 * t.OUT_7  + -0.136270 * t.OUT_8  + 0.161437 * t.OUT_9 AS OUT_17,
    -0.149986 + -0.153454 * t.OUT_0  + -0.098704 * t.OUT_1  + 0.029772 * t.OUT_2  + -0.171578 * t.OUT_3  + 0.020352 * t.OUT_4  + 0.016458 * t.OUT_5  + -0.181619 * t.OUT_6  + -0.161424 * t.OUT_7  + -0.102594 * t.OUT_8  + 0.100058 * t.OUT_9 AS OUT_18,
    -0.068906 + -0.214198 * t.OUT_0  + -0.148625 * t.OUT_1  + -0.066681 * t.OUT_2  + 0.018127 * t.OUT_3  + -0.071923 * t.OUT_4  + -0.211364 * t.OUT_5  + -0.185479 * t.OUT_6  + 0.196691 * t.OUT_7  + -0.120406 * t.OUT_8  + 0.091214 * t.OUT_9 AS OUT_19,
    0.188676 + 0.066166 * t.OUT_0  + 0.087853 * t.OUT_1  + -0.134561 * t.OUT_2  + -0.107974 * t.OUT_3  + 0.263359 * t.OUT_4  + 0.091007 * t.OUT_5  + -0.158201 * t.OUT_6  + -0.068667 * t.OUT_7  + 0.160048 * t.OUT_8  + -0.184806 * t.OUT_9 AS OUT_20,
    0.112833 + -0.262860 * t.OUT_0  + 0.097165 * t.OUT_1  + -0.228368 * t.OUT_2  + 0.175985 * t.OUT_3  + 0.183932 * t.OUT_4  + 0.089601 * t.OUT_5  + -0.240826 * t.OUT_6  + 0.009653 * t.OUT_7  + 0.107694 * t.OUT_8  + 0.045921 * t.OUT_9 AS OUT_21,
    0.081932 + -0.005493 * t.OUT_0  + -0.130032 * t.OUT_1  + 0.236647 * t.OUT_2  + -0.179070 * t.OUT_3  + -0.156600 * t.OUT_4  + -0.024333 * t.OUT_5  + -0.147272 * t.OUT_6  + -0.102173 * t.OUT_7  + -0.181330 * t.OUT_8  + 0.117096 * t.OUT_9 AS OUT_22,
    0.025643 + 0.042250 * t.OUT_0  + 0.107040 * t.OUT_1  + -0.059252 * t.OUT_2  + -0.084296 * t.OUT_3  + -0.030342 * t.OUT_4  + -0.082011 * t.OUT_5  + 0.133074 * t.OUT_6  + 0.021020 * t.OUT_7  + -0.018229 * t.OUT_8  + -0.243559 * t.OUT_9 AS OUT_23,
    0.252472 + -0.079197 * t.OUT_0  + -0.181646 * t.OUT_1  + -0.087865 * t.OUT_2  + 0.071698 * t.OUT_3  + 0.160958 * t.OUT_4  + 0.118859 * t.OUT_5  + -0.026307 * t.OUT_6  + -0.041251 * t.OUT_7  + -0.245010 * t.OUT_8  + 0.171131 * t.OUT_9 AS OUT_24,
    0.062465 + -0.230547 * t.OUT_0  + -0.019121 * t.OUT_1  + 0.062770 * t.OUT_2  + -0.001936 * t.OUT_3  + -0.192911 * t.OUT_4  + -0.194320 * t.OUT_5  + -0.093064 * t.OUT_6  + -0.188214 * t.OUT_7  + 0.168458 * t.OUT_8  + -0.159970 * t.OUT_9 AS OUT_25,
    -0.032517 + -0.149544 * t.OUT_0  + 0.012111 * t.OUT_1  + 0.078353 * t.OUT_2  + 0.129045 * t.OUT_3  + -0.092343 * t.OUT_4  + 0.213463 * t.OUT_5  + 0.032627 * t.OUT_6  + -0.211821 * t.OUT_7  + -0.002808 * t.OUT_8  + 0.072101 * t.OUT_9 AS OUT_26,
    -0.060474 + 0.159086 * t.OUT_0  + -0.124901 * t.OUT_1  + 0.069683 * t.OUT_2  + 0.115366 * t.OUT_3  + 0.042833 * t.OUT_4  + 0.124729 * t.OUT_5  + 0.067968 * t.OUT_6  + -0.105890 * t.OUT_7  + -0.040062 * t.OUT_8  + -0.259373 * t.OUT_9 AS OUT_27,
    -0.085420 + 0.016027 * t.OUT_0  + 0.135974 * t.OUT_1  + -0.175699 * t.OUT_2  + -0.172707 * t.OUT_3  + -0.147011 * t.OUT_4  + 0.056875 * t.OUT_5  + 0.088078 * t.OUT_6  + 0.199740 * t.OUT_7  + 0.176381 * t.OUT_8  + 0.111123 * t.OUT_9 AS OUT_28,
    -0.195474 + -0.030708 * t.OUT_0  + -0.253954 * t.OUT_1  + 0.141938 * t.OUT_2  + -0.191296 * t.OUT_3  + -0.030117 * t.OUT_4  + -0.221785 * t.OUT_5  + -0.101665 * t.OUT_6  + -0.221202 * t.OUT_7  + 0.116492 * t.OUT_8  + 0.132688 * t.OUT_9 AS OUT_29,
    0.224897 + -0.241442 * t.OUT_0  + -0.242307 * t.OUT_1  + 0.174833 * t.OUT_2  + -0.225688 * t.OUT_3  + -0.181511 * t.OUT_4  + -0.239697 * t.OUT_5  + -0.209028 * t.OUT_6  + -0.054290 * t.OUT_7  + 0.007005 * t.OUT_8  + 0.049815 * t.OUT_9 AS OUT_30,
    0.196705 + 0.045850 * t.OUT_0  + 0.205486 * t.OUT_1  + 0.207525 * t.OUT_2  + 0.087462 * t.OUT_3  + -0.014948 * t.OUT_4  + -0.102334 * t.OUT_5  + 0.048586 * t.OUT_6  + 0.125539 * t.OUT_7  + 0.187600 * t.OUT_8  + -0.013417 * t.OUT_9 AS OUT_31,
    0.188342 + -0.102801 * t.OUT_0  + 0.179799 * t.OUT_1  + -0.018342 * t.OUT_2  + 0.032862 * t.OUT_3  + -0.037676 * t.OUT_4  + 0.044011 * t.OUT_5  + 0.004483 * t.OUT_6  + -0.263573 * t.OUT_7  + 0.148624 * t.OUT_8  + 0.069150 * t.OUT_9 AS OUT_32,
    -0.103797 + 0.054646 * t.OUT_0  + -0.186164 * t.OUT_1  + 0.201692 * t.OUT_2  + 0.069713 * t.OUT_3  + 0.070684 * t.OUT_4  + -0.253934 * t.OUT_5  + 0.079234 * t.OUT_6  + 0.198043 * t.OUT_7  + -0.209049 * t.OUT_8  + 0.050643 * t.OUT_9 AS OUT_33,
    0.167423 + -0.079734 * t.OUT_0  + -0.120531 * t.OUT_1  + 0.113288 * t.OUT_2  + -0.100509 * t.OUT_3  + -0.038615 * t.OUT_4  + -0.097683 * t.OUT_5  + -0.223567 * t.OUT_6  + -0.235304 * t.OUT_7  + -0.078843 * t.OUT_8  + -0.116582 * t.OUT_9 AS OUT_34,
    0.018543 + 0.065462 * t.OUT_0  + -0.209313 * t.OUT_1  + 0.029438 * t.OUT_2  + -0.016168 * t.OUT_3  + 0.140723 * t.OUT_4  + -0.115146 * t.OUT_5  + -0.195777 * t.OUT_6  + -0.211561 * t.OUT_7  + 0.033902 * t.OUT_8  + 0.083882 * t.OUT_9 AS OUT_35,
    0.156130 + -0.175732 * t.OUT_0  + -0.198941 * t.OUT_1  + -0.099643 * t.OUT_2  + 0.199969 * t.OUT_3  + 0.003057 * t.OUT_4  + 0.126504 * t.OUT_5  + -0.007597 * t.OUT_6  + -0.015461 * t.OUT_7  + -0.036450 * t.OUT_8  + 0.004438 * t.OUT_9 AS OUT_36,
    0.001309 + 0.240000 * t.OUT_0  + -0.143646 * t.OUT_1  + 0.241543 * t.OUT_2  + -0.206756 * t.OUT_3  + -0.253342 * t.OUT_4  + 0.152562 * t.OUT_5  + -0.022849 * t.OUT_6  + 0.009292 * t.OUT_7  + 0.210676 * t.OUT_8  + -0.184756 * t.OUT_9 AS OUT_37,
    0.164747 + -0.203191 * t.OUT_0  + -0.110494 * t.OUT_1  + -0.263870 * t.OUT_2  + -0.089441 * t.OUT_3  + 0.178706 * t.OUT_4  + -0.206521 * t.OUT_5  + -0.167191 * t.OUT_6  + -0.068828 * t.OUT_7  + -0.169384 * t.OUT_8  + 0.058531 * t.OUT_9 AS OUT_38,
    -0.090847 + 0.094394 * t.OUT_0  + -0.084684 * t.OUT_1  + -0.247401 * t.OUT_2  + -0.041885 * t.OUT_3  + -0.184349 * t.OUT_4  + 0.055634 * t.OUT_5  + 0.201136 * t.OUT_6  + 0.143118 * t.OUT_7  + -0.161851 * t.OUT_8  + -0.025738 * t.OUT_9 AS OUT_39,
    0.109369 + -0.200359 * t.OUT_0  + -0.184614 * t.OUT_1  + -0.056876 * t.OUT_2  + -0.029234 * t.OUT_3  + 0.023178 * t.OUT_4  + 0.095716 * t.OUT_5  + -0.160587 * t.OUT_6  + -0.145839 * t.OUT_7  + 0.093516 * t.OUT_8  + 0.115298 * t.OUT_9 AS OUT_40,
    0.092606 + 0.095574 * t.OUT_0  + -0.201841 * t.OUT_1  + -0.045435 * t.OUT_2  + -0.109961 * t.OUT_3  + 0.023368 * t.OUT_4  + 0.010845 * t.OUT_5  + -0.181089 * t.OUT_6  + 0.073915 * t.OUT_7  + -0.212544 * t.OUT_8  + -0.225349 * t.OUT_9 AS OUT_41,
    -0.072140 + 0.025157 * t.OUT_0  + -0.234463 * t.OUT_1  + 0.063912 * t.OUT_2  + -0.086364 * t.OUT_3  + 0.119318 * t.OUT_4  + 0.221574 * t.OUT_5  + 0.178455 * t.OUT_6  + -0.030861 * t.OUT_7  + 0.094806 * t.OUT_8  + -0.131315 * t.OUT_9 AS OUT_42,
    0.234594 + 0.244679 * t.OUT_0  + 0.077546 * t.OUT_1  + 0.224228 * t.OUT_2  + -0.047959 * t.OUT_3  + -0.267250 * t.OUT_4  + -0.033275 * t.OUT_5  + 0.232161 * t.OUT_6  + -0.110355 * t.OUT_7  + 0.202459 * t.OUT_8  + -0.165171 * t.OUT_9 AS OUT_43,
    -0.126093 + -0.179755 * t.OUT_0  + -0.186300 * t.OUT_1  + 0.009629 * t.OUT_2  + -0.078655 * t.OUT_3  + -0.053624 * t.OUT_4  + -0.195914 * t.OUT_5  + 0.075007 * t.OUT_6  + -0.145126 * t.OUT_7  + 0.184604 * t.OUT_8  + 0.026303 * t.OUT_9 AS OUT_44,
    -0.011868 + -0.213447 * t.OUT_0  + -0.218823 * t.OUT_1  + -0.070560 * t.OUT_2  + 0.086769 * t.OUT_3  + 0.223955 * t.OUT_4  + -0.033753 * t.OUT_5  + -0.163199 * t.OUT_6  + -0.124810 * t.OUT_7  + -0.010915 * t.OUT_8  + 0.071288 * t.OUT_9 AS OUT_45,
    0.178141 + 0.047014 * t.OUT_0  + 0.016048 * t.OUT_1  + -0.183445 * t.OUT_2  + -0.002616 * t.OUT_3  + 0.169863 * t.OUT_4  + 0.105566 * t.OUT_5  + 0.127369 * t.OUT_6  + -0.150969 * t.OUT_7  + -0.124007 * t.OUT_8  + -0.216002 * t.OUT_9 AS OUT_46,
    -0.098777 + 0.052543 * t.OUT_0  + 0.051069 * t.OUT_1  + -0.167447 * t.OUT_2  + -0.076506 * t.OUT_3  + -0.088371 * t.OUT_4  + -0.202069 * t.OUT_5  + 0.153576 * t.OUT_6  + 0.018798 * t.OUT_7  + 0.188751 * t.OUT_8  + 0.180143 * t.OUT_9 AS OUT_47,
    0.196693 + 0.188434 * t.OUT_0  + -0.006497 * t.OUT_1  + 0.093318 * t.OUT_2  + -0.039546 * t.OUT_3  + 0.142695 * t.OUT_4  + -0.045845 * t.OUT_5  + 0.163068 * t.OUT_6  + -0.128656 * t.OUT_7  + -0.063395 * t.OUT_8  + -0.084758 * t.OUT_9 AS OUT_48,
    0.025975 + 0.232745 * t.OUT_0  + 0.095246 * t.OUT_1  + 0.119207 * t.OUT_2  + 0.045554 * t.OUT_3  + 0.018537 * t.OUT_4  + 0.187382 * t.OUT_5  + -0.030037 * t.OUT_6  + 0.216767 * t.OUT_7  + -0.000820 * t.OUT_8  + 0.200797 * t.OUT_9 AS OUT_49,
    0.261925 + 0.145707 * t.OUT_0  + -0.004609 * t.OUT_1  + -0.237761 * t.OUT_2  + 0.169588 * t.OUT_3  + 0.238540 * t.OUT_4  + -0.186567 * t.OUT_5  + -0.100514 * t.OUT_6  + 0.010124 * t.OUT_7  + -0.060039 * t.OUT_8  + -0.021080 * t.OUT_9 AS OUT_50,
    -0.101334 + -0.186524 * t.OUT_0  + -0.189504 * t.OUT_1  + -0.061542 * t.OUT_2  + -0.009105 * t.OUT_3  + 0.236395 * t.OUT_4  + 0.008147 * t.OUT_5  + 0.093103 * t.OUT_6  + -0.092134 * t.OUT_7  + -0.187847 * t.OUT_8  + 0.088273 * t.OUT_9 AS OUT_51,
    -0.147521 + 0.173089 * t.OUT_0  + -0.008573 * t.OUT_1  + 0.179746 * t.OUT_2  + -0.152855 * t.OUT_3  + -0.074675 * t.OUT_4  + -0.007819 * t.OUT_5  + -0.114785 * t.OUT_6  + -0.167436 * t.OUT_7  + 0.092252 * t.OUT_8  + 0.238247 * t.OUT_9 AS OUT_52,
    -0.055307 + 0.159299 * t.OUT_0  + 0.162175 * t.OUT_1  + -0.122778 * t.OUT_2  + -0.141857 * t.OUT_3  + 0.175731 * t.OUT_4  + 0.086890 * t.OUT_5  + -0.149451 * t.OUT_6  + -0.255376 * t.OUT_7  + 0.126453 * t.OUT_8  + -0.131293 * t.OUT_9 AS OUT_53,
    -0.059649 + -0.109650 * t.OUT_0  + 0.263403 * t.OUT_1  + 0.026677 * t.OUT_2  + -0.162780 * t.OUT_3  + 0.158080 * t.OUT_4  + -0.139252 * t.OUT_5  + 0.192168 * t.OUT_6  + -0.045576 * t.OUT_7  + -0.133708 * t.OUT_8  + -0.015907 * t.OUT_9 AS OUT_54,
    -0.037486 + 0.082717 * t.OUT_0  + -0.059825 * t.OUT_1  + -0.060892 * t.OUT_2  + 0.098753 * t.OUT_3  + 0.215319 * t.OUT_4  + 0.220716 * t.OUT_5  + 0.101260 * t.OUT_6  + 0.188043 * t.OUT_7  + 0.162031 * t.OUT_8  + 0.144147 * t.OUT_9 AS OUT_55,
    0.231621 + 0.033777 * t.OUT_0  + -0.234125 * t.OUT_1  + 0.047150 * t.OUT_2  + -0.146475 * t.OUT_3  + 0.188459 * t.OUT_4  + -0.024593 * t.OUT_5  + -0.182492 * t.OUT_6  + 0.171512 * t.OUT_7  + -0.020487 * t.OUT_8  + -0.098348 * t.OUT_9 AS OUT_56,
    -0.039006 + -0.013831 * t.OUT_0  + -0.145963 * t.OUT_1  + -0.149224 * t.OUT_2  + -0.067644 * t.OUT_3  + 0.016949 * t.OUT_4  + -0.241385 * t.OUT_5  + 0.132999 * t.OUT_6  + 0.033095 * t.OUT_7  + 0.077397 * t.OUT_8  + 0.138304 * t.OUT_9 AS OUT_57,
    0.053850 + 0.060270 * t.OUT_0  + 0.129122 * t.OUT_1  + 0.029820 * t.OUT_2  + -0.141426 * t.OUT_3  + 0.056485 * t.OUT_4  + -0.140390 * t.OUT_5  + -0.086065 * t.OUT_6  + -0.175389 * t.OUT_7  + 0.144494 * t.OUT_8  + -0.148393 * t.OUT_9 AS OUT_58,
    0.173126 + 0.101301 * t.OUT_0  + -0.225877 * t.OUT_1  + 0.126557 * t.OUT_2  + 0.001062 * t.OUT_3  + -0.003829 * t.OUT_4  + 0.118791 * t.OUT_5  + -0.188434 * t.OUT_6  + -0.105771 * t.OUT_7  + -0.231956 * t.OUT_8  + -0.068261 * t.OUT_9 AS OUT_59,
    0.143211 + -0.233457 * t.OUT_0  + 0.047781 * t.OUT_1  + 0.038196 * t.OUT_2  + -0.205181 * t.OUT_3  + 0.001193 * t.OUT_4  + 0.028906 * t.OUT_5  + 0.070783 * t.OUT_6  + -0.162318 * t.OUT_7  + -0.228207 * t.OUT_8  + -0.218208 * t.OUT_9 AS OUT_60,
    0.083122 + 0.061045 * t.OUT_0  + -0.091632 * t.OUT_1  + 0.181386 * t.OUT_2  + -0.049431 * t.OUT_3  + 0.039477 * t.OUT_4  + -0.062115 * t.OUT_5  + -0.084757 * t.OUT_6  + 0.008599 * t.OUT_7  + 0.239640 * t.OUT_8  + 0.108236 * t.OUT_9 AS OUT_61,
    -0.028516 + 0.065722 * t.OUT_0  + 0.184277 * t.OUT_1  + 0.134195 * t.OUT_2  + 0.155354 * t.OUT_3  + 0.044307 * t.OUT_4  + -0.034638 * t.OUT_5  + 0.187059 * t.OUT_6  + 0.032504 * t.OUT_7  + -0.102312 * t.OUT_8  + 0.054767 * t.OUT_9 AS OUT_62,
    0.172774 + 0.167118 * t.OUT_0  + 0.256483 * t.OUT_1  + 0.194676 * t.OUT_2  + -0.106100 * t.OUT_3  + -0.102978 * t.OUT_4  + -0.023437 * t.OUT_5  + 0.141026 * t.OUT_6  + -0.013620 * t.OUT_7  + -0.080466 * t.OUT_8  + 0.003067 * t.OUT_9 AS OUT_63,
    -0.123516 + -0.232996 * t.OUT_0  + -0.140652 * t.OUT_1  + 0.042148 * t.OUT_2  + 0.197739 * t.OUT_3  + -0.114519 * t.OUT_4  + 0.251790 * t.OUT_5  + -0.063697 * t.OUT_6  + 0.047307 * t.OUT_7  + -0.149971 * t.OUT_8  + -0.264485 * t.OUT_9 AS OUT_64,
    0.107413 + 0.130933 * t.OUT_0  + 0.092477 * t.OUT_1  + -0.191216 * t.OUT_2  + -0.137713 * t.OUT_3  + 0.064846 * t.OUT_4  + 0.172864 * t.OUT_5  + 0.143900 * t.OUT_6  + 0.154198 * t.OUT_7  + -0.250872 * t.OUT_8  + -0.196657 * t.OUT_9 AS OUT_65,
    0.203510 + -0.098982 * t.OUT_0  + -0.081222 * t.OUT_1  + 0.011704 * t.OUT_2  + 0.122584 * t.OUT_3  + 0.192711 * t.OUT_4  + 0.000772 * t.OUT_5  + 0.180076 * t.OUT_6  + -0.018601 * t.OUT_7  + 0.243539 * t.OUT_8  + 0.189440 * t.OUT_9 AS OUT_66,
    0.072770 + -0.184724 * t.OUT_0  + 0.202288 * t.OUT_1  + -0.128688 * t.OUT_2  + -0.181902 * t.OUT_3  + -0.099120 * t.OUT_4  + -0.037134 * t.OUT_5  + 0.125052 * t.OUT_6  + 0.222906 * t.OUT_7  + 0.258418 * t.OUT_8  + -0.145247 * t.OUT_9 AS OUT_67,
    -0.015758 + 0.199476 * t.OUT_0  + -0.223111 * t.OUT_1  + 0.054899 * t.OUT_2  + 0.102421 * t.OUT_3  + -0.077557 * t.OUT_4  + 0.115250 * t.OUT_5  + 0.174664 * t.OUT_6  + 0.012116 * t.OUT_7  + -0.023957 * t.OUT_8  + 0.111985 * t.OUT_9 AS OUT_68,
    -0.033284 + 0.192028 * t.OUT_0  + 0.111920 * t.OUT_1  + 0.027971 * t.OUT_2  + -0.106216 * t.OUT_3  + -0.124994 * t.OUT_4  + -0.062128 * t.OUT_5  + -0.042797 * t.OUT_6  + 0.174809 * t.OUT_7  + 0.178593 * t.OUT_8  + -0.144121 * t.OUT_9 AS OUT_69,
    0.139084 + -0.062228 * t.OUT_0  + 0.017631 * t.OUT_1  + 0.196992 * t.OUT_2  + -0.172584 * t.OUT_3  + -0.064237 * t.OUT_4  + 0.057174 * t.OUT_5  + -0.164328 * t.OUT_6  + 0.145571 * t.OUT_7  + -0.170697 * t.OUT_8  + 0.086439 * t.OUT_9 AS OUT_70,
    -0.169198 + -0.159014 * t.OUT_0  + -0.098789 * t.OUT_1  + 0.152246 * t.OUT_2  + -0.090439 * t.OUT_3  + -0.144210 * t.OUT_4  + 0.064875 * t.OUT_5  + 0.019357 * t.OUT_6  + -0.122553 * t.OUT_7  + 0.117899 * t.OUT_8  + -0.015539 * t.OUT_9 AS OUT_71,
    -0.179624 + 0.024303 * t.OUT_0  + 0.140770 * t.OUT_1  + 0.247378 * t.OUT_2  + -0.207993 * t.OUT_3  + -0.054730 * t.OUT_4  + -0.110378 * t.OUT_5  + 0.005708 * t.OUT_6  + 0.144624 * t.OUT_7  + 0.201909 * t.OUT_8  + 0.023815 * t.OUT_9 AS OUT_72,
    -0.115741 + 0.192219 * t.OUT_0  + 0.077394 * t.OUT_1  + -0.156136 * t.OUT_2  + 0.092274 * t.OUT_3  + -0.049133 * t.OUT_4  + 0.033642 * t.OUT_5  + 0.099230 * t.OUT_6  + 0.006722 * t.OUT_7  + -0.042193 * t.OUT_8  + -0.069051 * t.OUT_9 AS OUT_73,
    0.002753 + -0.139647 * t.OUT_0  + 0.036518 * t.OUT_1  + 0.082926 * t.OUT_2  + -0.185974 * t.OUT_3  + 0.158698 * t.OUT_4  + 0.121733 * t.OUT_5  + -0.047614 * t.OUT_6  + -0.056748 * t.OUT_7  + -0.126667 * t.OUT_8  + -0.102719 * t.OUT_9 AS OUT_74,
    0.176002 + 0.060272 * t.OUT_0  + -0.133115 * t.OUT_1  + 0.105474 * t.OUT_2  + 0.167529 * t.OUT_3  + 0.030157 * t.OUT_4  + -0.029985 * t.OUT_5  + 0.065056 * t.OUT_6  + 0.003490 * t.OUT_7  + 0.228296 * t.OUT_8  + -0.038465 * t.OUT_9 AS OUT_75,
    0.071771 + 0.137723 * t.OUT_0  + 0.226747 * t.OUT_1  + 0.117592 * t.OUT_2  + -0.259659 * t.OUT_3  + 0.019949 * t.OUT_4  + 0.124610 * t.OUT_5  + -0.098567 * t.OUT_6  + 0.149129 * t.OUT_7  + 0.075312 * t.OUT_8  + 0.258568 * t.OUT_9 AS OUT_76,
    0.082869 + 0.107569 * t.OUT_0  + 0.168560 * t.OUT_1  + 0.183529 * t.OUT_2  + -0.040446 * t.OUT_3  + 0.047169 * t.OUT_4  + -0.036746 * t.OUT_5  + 0.143072 * t.OUT_6  + -0.155175 * t.OUT_7  + -0.244609 * t.OUT_8  + -0.246488 * t.OUT_9 AS OUT_77,
    0.143047 + 0.174725 * t.OUT_0  + -0.124198 * t.OUT_1  + -0.150326 * t.OUT_2  + 0.164200 * t.OUT_3  + -0.007746 * t.OUT_4  + -0.164748 * t.OUT_5  + -0.169464 * t.OUT_6  + 0.201131 * t.OUT_7  + 0.202389 * t.OUT_8  + 0.183673 * t.OUT_9 AS OUT_78,
    -0.053263 + -0.126944 * t.OUT_0  + 0.017572 * t.OUT_1  + 0.144654 * t.OUT_2  + -0.009204 * t.OUT_3  + 0.018470 * t.OUT_4  + 0.168743 * t.OUT_5  + 0.125287 * t.OUT_6  + -0.146241 * t.OUT_7  + -0.191728 * t.OUT_8  + -0.207981 * t.OUT_9 AS OUT_79,
    0.183792 + 0.130618 * t.OUT_0  + 0.159101 * t.OUT_1  + 0.141834 * t.OUT_2  + -0.013374 * t.OUT_3  + -0.118114 * t.OUT_4  + -0.092640 * t.OUT_5  + 0.254404 * t.OUT_6  + -0.030168 * t.OUT_7  + -0.168090 * t.OUT_8  + 0.053665 * t.OUT_9 AS OUT_80,
    -0.049352 + 0.134059 * t.OUT_0  + -0.002210 * t.OUT_1  + 0.202511 * t.OUT_2  + -0.113983 * t.OUT_3  + 0.226106 * t.OUT_4  + 0.012067 * t.OUT_5  + -0.031404 * t.OUT_6  + -0.194826 * t.OUT_7  + 0.102711 * t.OUT_8  + 0.180210 * t.OUT_9 AS OUT_81,
    -0.025328 + 0.202902 * t.OUT_0  + 0.027091 * t.OUT_1  + 0.024425 * t.OUT_2  + 0.212952 * t.OUT_3  + 0.255656 * t.OUT_4  + -0.093293 * t.OUT_5  + -0.200167 * t.OUT_6  + -0.156201 * t.OUT_7  + 0.003434 * t.OUT_8  + 0.037116 * t.OUT_9 AS OUT_82,
    0.204993 + 0.010558 * t.OUT_0  + 0.244980 * t.OUT_1  + 0.119889 * t.OUT_2  + -0.084622 * t.OUT_3  + 0.062300 * t.OUT_4  + -0.070921 * t.OUT_5  + 0.170821 * t.OUT_6  + -0.183793 * t.OUT_7  + -0.056556 * t.OUT_8  + 0.081921 * t.OUT_9 AS OUT_83,
    -0.229917 + -0.178034 * t.OUT_0  + 0.111848 * t.OUT_1  + 0.164712 * t.OUT_2  + -0.121325 * t.OUT_3  + 0.013895 * t.OUT_4  + 0.094067 * t.OUT_5  + -0.030993 * t.OUT_6  + 0.039883 * t.OUT_7  + 0.134422 * t.OUT_8  + 0.260578 * t.OUT_9 AS OUT_84,
    -0.230207 + 0.085306 * t.OUT_0  + 0.062880 * t.OUT_1  + 0.135659 * t.OUT_2  + -0.093548 * t.OUT_3  + 0.083321 * t.OUT_4  + 0.175476 * t.OUT_5  + -0.210183 * t.OUT_6  + 0.008250 * t.OUT_7  + 0.130691 * t.OUT_8  + -0.261233 * t.OUT_9 AS OUT_85,
    -0.053529 + -0.033193 * t.OUT_0  + -0.200255 * t.OUT_1  + 0.107752 * t.OUT_2  + -0.026924 * t.OUT_3  + -0.053923 * t.OUT_4  + -0.242813 * t.OUT_5  + -0.066111 * t.OUT_6  + -0.151150 * t.OUT_7  + 0.164075 * t.OUT_8  + -0.147953 * t.OUT_9 AS OUT_86,
    -0.134680 + -0.077420 * t.OUT_0  + -0.065719 * t.OUT_1  + -0.260646 * t.OUT_2  + 0.134664 * t.OUT_3  + 0.182675 * t.OUT_4  + -0.148940 * t.OUT_5  + -0.197240 * t.OUT_6  + -0.074171 * t.OUT_7  + -0.099295 * t.OUT_8  + -0.133456 * t.OUT_9 AS OUT_87,
    -0.197569 + -0.203653 * t.OUT_0  + 0.159494 * t.OUT_1  + 0.051829 * t.OUT_2  + -0.055982 * t.OUT_3  + 0.102712 * t.OUT_4  + 0.059802 * t.OUT_5  + 0.177638 * t.OUT_6  + -0.191857 * t.OUT_7  + -0.042524 * t.OUT_8  + -0.133171 * t.OUT_9 AS OUT_88,
    0.087934 + -0.256175 * t.OUT_0  + 0.093786 * t.OUT_1  + 0.169983 * t.OUT_2  + 0.038631 * t.OUT_3  + -0.070461 * t.OUT_4  + -0.134379 * t.OUT_5  + -0.069361 * t.OUT_6  + -0.081351 * t.OUT_7  + -0.242852 * t.OUT_8  + 0.198176 * t.OUT_9 AS OUT_89,
    -0.203911 + -0.096618 * t.OUT_0  + -0.079017 * t.OUT_1  + 0.054241 * t.OUT_2  + 0.136205 * t.OUT_3  + -0.042935 * t.OUT_4  + -0.147115 * t.OUT_5  + -0.091032 * t.OUT_6  + 0.127389 * t.OUT_7  + -0.130437 * t.OUT_8  + -0.089686 * t.OUT_9 AS OUT_90,
    0.201622 + 0.243561 * t.OUT_0  + -0.028496 * t.OUT_1  + 0.219392 * t.OUT_2  + 0.157394 * t.OUT_3  + -0.177942 * t.OUT_4  + 0.165007 * t.OUT_5  + -0.000794 * t.OUT_6  + -0.061160 * t.OUT_7  + -0.147335 * t.OUT_8  + 0.248356 * t.OUT_9 AS OUT_91,
    0.181007 + 0.041874 * t.OUT_0  + 0.196456 * t.OUT_1  + -0.045637 * t.OUT_2  + -0.118787 * t.OUT_3  + 0.198696 * t.OUT_4  + -0.140234 * t.OUT_5  + 0.196881 * t.OUT_6  + -0.197712 * t.OUT_7  + -0.111714 * t.OUT_8  + 0.204052 * t.OUT_9 AS OUT_92,
    -0.183339 + -0.081150 * t.OUT_0  + -0.155616 * t.OUT_1  + 0.046354 * t.OUT_2  + 0.062596 * t.OUT_3  + -0.227591 * t.OUT_4  + -0.088749 * t.OUT_5  + -0.118746 * t.OUT_6  + -0.234479 * t.OUT_7  + -0.180846 * t.OUT_8  + -0.064904 * t.OUT_9 AS OUT_93,
    -0.151867 + -0.087427 * t.OUT_0  + -0.003604 * t.OUT_1  + -0.197636 * t.OUT_2  + -0.114620 * t.OUT_3  + -0.086699 * t.OUT_4  + 0.211715 * t.OUT_5  + 0.009400 * t.OUT_6  + -0.254731 * t.OUT_7  + -0.114948 * t.OUT_8  + -0.247247 * t.OUT_9 AS OUT_94,
    -0.101947 + -0.244858 * t.OUT_0  + 0.154910 * t.OUT_1  + 0.026222 * t.OUT_2  + 0.093136 * t.OUT_3  + 0.248749 * t.OUT_4  + 0.268662 * t.OUT_5  + -0.042627 * t.OUT_6  + 0.194726 * t.OUT_7  + -0.107285 * t.OUT_8  + -0.087706 * t.OUT_9 AS OUT_95,
    0.116770 + 0.109456 * t.OUT_0  + -0.183883 * t.OUT_1  + -0.192059 * t.OUT_2  + -0.201936 * t.OUT_3  + -0.182720 * t.OUT_4  + -0.001287 * t.OUT_5  + -0.131096 * t.OUT_6  + 0.230569 * t.OUT_7  + 0.170139 * t.OUT_8  + 0.216173 * t.OUT_9 AS OUT_96,
    0.032755 + -0.096590 * t.OUT_0  + -0.153524 * t.OUT_1  + 0.105136 * t.OUT_2  + -0.054662 * t.OUT_3  + 0.233192 * t.OUT_4  + 0.111490 * t.OUT_5  + 0.112930 * t.OUT_6  + 0.196605 * t.OUT_7  + 0.044547 * t.OUT_8  + 0.197074 * t.OUT_9 AS OUT_97,
    0.248740 + -0.124062 * t.OUT_0  + -0.164606 * t.OUT_1  + -0.029958 * t.OUT_2  + 0.159772 * t.OUT_3  + -0.096742 * t.OUT_4  + -0.118222 * t.OUT_5  + -0.163145 * t.OUT_6  + 0.182553 * t.OUT_7  + 0.165074 * t.OUT_8  + -0.088610 * t.OUT_9 AS OUT_98,
    0.137538 + -0.014843 * t.OUT_0  + -0.089102 * t.OUT_1  + 0.040599 * t.OUT_2  + -0.165416 * t.OUT_3  + 0.180396 * t.OUT_4  + -0.022650 * t.OUT_5  + 0.212383 * t.OUT_6  + 0.133628 * t.OUT_7  + 0.084160 * t.OUT_8  + -0.020649 * t.OUT_9 AS OUT_99
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
    -0.049000 + 0.237419 * t.OUT_0  + -0.028136 * t.OUT_1  + -0.258633 * t.OUT_2  + 0.108081 * t.OUT_3  + -0.061927 * t.OUT_4  + -0.211588 * t.OUT_5  + -0.139015 * t.OUT_6  + 0.239223 * t.OUT_7  + -0.083906 * t.OUT_8  + 0.170731 * t.OUT_9  + -0.189064 * t.OUT_10  + 0.272002 * t.OUT_11  + -0.133730 * t.OUT_12  + -0.053007 * t.OUT_13  + 0.211807 * t.OUT_14  + 0.068158 * t.OUT_15  + 0.196836 * t.OUT_16  + -0.251838 * t.OUT_17  + -0.053744 * t.OUT_18  + -0.114957 * t.OUT_19  + -0.049754 * t.OUT_20  + -0.233662 * t.OUT_21  + 0.190153 * t.OUT_22  + 0.132324 * t.OUT_23  + -0.155933 * t.OUT_24  + -0.028323 * t.OUT_25  + -0.037128 * t.OUT_26  + -0.161839 * t.OUT_27  + 0.164496 * t.OUT_28  + -0.275716 * t.OUT_29  + -0.250850 * t.OUT_30  + 0.171200 * t.OUT_31  + -0.082283 * t.OUT_32  + -0.141625 * t.OUT_33  + -0.125216 * t.OUT_34  + -0.099427 * t.OUT_35  + -0.029262 * t.OUT_36  + 0.040273 * t.OUT_37  + -0.220385 * t.OUT_38  + -0.116923 * t.OUT_39  + -0.187078 * t.OUT_40  + -0.256467 * t.OUT_41  + -0.039449 * t.OUT_42  + 0.171863 * t.OUT_43  + -0.120821 * t.OUT_44  + -0.076544 * t.OUT_45  + -0.098308 * t.OUT_46  + -0.071919 * t.OUT_47  + 0.264863 * t.OUT_48  + 0.249767 * t.OUT_49  + -0.060535 * t.OUT_50  + -0.049289 * t.OUT_51  + 0.261738 * t.OUT_52  + -0.150375 * t.OUT_53  + 0.093968 * t.OUT_54  + 0.009334 * t.OUT_55  + -0.042798 * t.OUT_56  + -0.062581 * t.OUT_57  + 0.140991 * t.OUT_58  + -0.112392 * t.OUT_59  + -0.099790 * t.OUT_60  + 0.031359 * t.OUT_61  + -0.044507 * t.OUT_62  + 0.128993 * t.OUT_63  + -0.093719 * t.OUT_64  + -0.052820 * t.OUT_65  + 0.024323 * t.OUT_66  + 0.170080 * t.OUT_67  + -0.068052 * t.OUT_68  + -0.083099 * t.OUT_69  + -0.142733 * t.OUT_70  + 0.119953 * t.OUT_71  + 0.243346 * t.OUT_72  + -0.087835 * t.OUT_73  + 0.011734 * t.OUT_74  + -0.180575 * t.OUT_75  + 0.201989 * t.OUT_76  + -0.050363 * t.OUT_77  + -0.067540 * t.OUT_78  + -0.022490 * t.OUT_79  + 0.251834 * t.OUT_80  + -0.029000 * t.OUT_81  + 0.139966 * t.OUT_82  + 0.229173 * t.OUT_83  + 0.131440 * t.OUT_84  + -0.168438 * t.OUT_85  + -0.037570 * t.OUT_86  + -0.107264 * t.OUT_87  + -0.170921 * t.OUT_88  + -0.045686 * t.OUT_89  + -0.025643 * t.OUT_90  + 0.103302 * t.OUT_91  + 0.249660 * t.OUT_92  + -0.073267 * t.OUT_93  + -0.163436 * t.OUT_94  + -0.037883 * t.OUT_95  + 0.093712 * t.OUT_96  + 0.001765 * t.OUT_97  + -0.103568 * t.OUT_98  + 0.238596 * t.OUT_99 AS OUT_0
   FROM Hidden_Layer_1_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
