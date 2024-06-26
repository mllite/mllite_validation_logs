WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "iris_original" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.098532 + -0.000779 * t."OUT_0"  + 0.121816 * t."OUT_1"  + -0.093706 * t."OUT_2"  + 0.109162 * t."OUT_3" AS "OUT_0",
    0.019639 + 0.110842 * t."OUT_0"  + -0.182607 * t."OUT_1"  + -0.017983 * t."OUT_2"  + -0.225156 * t."OUT_3" AS "OUT_1",
    0.122204 + -0.098035 * t."OUT_0"  + -0.078942 * t."OUT_1"  + -0.196642 * t."OUT_2"  + -0.166419 * t."OUT_3" AS "OUT_2",
    0.209206 + -0.013743 * t."OUT_0"  + 0.121784 * t."OUT_1"  + 0.172121 * t."OUT_2"  + -0.044979 * t."OUT_3" AS "OUT_3",
    -0.105179 + 0.053185 * t."OUT_0"  + 0.160068 * t."OUT_1"  + 0.242066 * t."OUT_2"  + -0.153774 * t."OUT_3" AS "OUT_4",
    0.000885 + -0.153822 * t."OUT_0"  + 0.183993 * t."OUT_1"  + 0.072595 * t."OUT_2"  + 0.128557 * t."OUT_3" AS "OUT_5",
    0.228587 + 0.059612 * t."OUT_0"  + 0.169861 * t."OUT_1"  + -0.003580 * t."OUT_2"  + -0.025944 * t."OUT_3" AS "OUT_6",
    0.202327 + 0.002174 * t."OUT_0"  + 0.150623 * t."OUT_1"  + 0.070857 * t."OUT_2"  + -0.096972 * t."OUT_3" AS "OUT_7",
    0.173730 + 0.195118 * t."OUT_0"  + -0.105122 * t."OUT_1"  + 0.009453 * t."OUT_2"  + -0.069851 * t."OUT_3" AS "OUT_8",
    -0.026400 + 0.050173 * t."OUT_0"  + 0.056297 * t."OUT_1"  + 0.090400 * t."OUT_2"  + 0.123123 * t."OUT_3" AS "OUT_9",
    -0.148690 + 0.196991 * t."OUT_0"  + 0.032698 * t."OUT_1"  + 0.044168 * t."OUT_2"  + 0.158008 * t."OUT_3" AS "OUT_10",
    -0.105982 + -0.031700 * t."OUT_0"  + 0.154149 * t."OUT_1"  + 0.165292 * t."OUT_2"  + -0.076405 * t."OUT_3" AS "OUT_11",
    0.073768 + 0.257415 * t."OUT_0"  + 0.145425 * t."OUT_1"  + 0.080278 * t."OUT_2"  + 0.096912 * t."OUT_3" AS "OUT_12",
    -0.204436 + -0.212391 * t."OUT_0"  + -0.000589 * t."OUT_1"  + -0.100990 * t."OUT_2"  + -0.204682 * t."OUT_3" AS "OUT_13",
    -0.092806 + -0.100623 * t."OUT_0"  + 0.138138 * t."OUT_1"  + -0.068665 * t."OUT_2"  + 0.199310 * t."OUT_3" AS "OUT_14",
    -0.190904 + 0.121962 * t."OUT_0"  + 0.198770 * t."OUT_1"  + -0.174828 * t."OUT_2"  + -0.025606 * t."OUT_3" AS "OUT_15",
    -0.042112 + 0.135730 * t."OUT_0"  + 0.044675 * t."OUT_1"  + -0.117002 * t."OUT_2"  + 0.067588 * t."OUT_3" AS "OUT_16",
    -0.075174 + -0.115070 * t."OUT_0"  + -0.082576 * t."OUT_1"  + -0.143667 * t."OUT_2"  + -0.147349 * t."OUT_3" AS "OUT_17",
    -0.013875 + -0.122237 * t."OUT_0"  + -0.065666 * t."OUT_1"  + 0.066427 * t."OUT_2"  + -0.141136 * t."OUT_3" AS "OUT_18",
    -0.040220 + -0.186389 * t."OUT_0"  + -0.119020 * t."OUT_1"  + -0.034734 * t."OUT_2"  + 0.052454 * t."OUT_3" AS "OUT_19",
    0.234043 + 0.096794 * t."OUT_0"  + 0.130644 * t."OUT_1"  + -0.122147 * t."OUT_2"  + -0.097191 * t."OUT_3" AS "OUT_20",
    0.157066 + -0.237124 * t."OUT_0"  + 0.133635 * t."OUT_1"  + -0.201623 * t."OUT_2"  + 0.213375 * t."OUT_3" AS "OUT_21",
    -0.101844 + -0.009869 * t."OUT_0"  + -0.138160 * t."OUT_1"  + 0.241753 * t."OUT_2"  + -0.184310 * t."OUT_3" AS "OUT_22",
    -0.023605 + -0.012869 * t."OUT_0"  + 0.053682 * t."OUT_1"  + -0.116291 * t."OUT_2"  + -0.144868 * t."OUT_3" AS "OUT_23",
    0.135882 + -0.047717 * t."OUT_0"  + -0.153069 * t."OUT_1"  + -0.057221 * t."OUT_2"  + 0.105694 * t."OUT_3" AS "OUT_24",
    -0.216829 + -0.218212 * t."OUT_0"  + -0.000634 * t."OUT_1"  + 0.083368 * t."OUT_2"  + 0.016502 * t."OUT_3" AS "OUT_25",
    -0.097624 + -0.093639 * t."OUT_0"  + 0.074421 * t."OUT_1"  + 0.138894 * t."OUT_2"  + 0.188519 * t."OUT_3" AS "OUT_26",
    0.015235 + 0.188912 * t."OUT_0"  + -0.089250 * t."OUT_1"  + 0.083849 * t."OUT_2"  + 0.127926 * t."OUT_3" AS "OUT_27",
    -0.119039 + -0.017654 * t."OUT_0"  + 0.109744 * t."OUT_1"  + -0.214760 * t."OUT_2"  + -0.144595 * t."OUT_3" AS "OUT_28",
    0.034345 + 0.033421 * t."OUT_0"  + -0.195163 * t."OUT_1"  + 0.209905 * t."OUT_2"  + -0.134820 * t."OUT_3" AS "OUT_29",
    -0.219782 + -0.215072 * t."OUT_0"  + -0.215941 * t."OUT_1"  + 0.212810 * t."OUT_2"  + -0.199146 * t."OUT_3" AS "OUT_30",
    -0.051891 + 0.018631 * t."OUT_0"  + 0.166038 * t."OUT_1"  + 0.202819 * t."OUT_2"  + 0.082352 * t."OUT_3" AS "OUT_31",
    -0.060398 + -0.063573 * t."OUT_0"  + 0.221816 * t."OUT_1"  + 0.026879 * t."OUT_2"  + 0.075266 * t."OUT_3" AS "OUT_32",
    0.110377 + 0.097136 * t."OUT_0"  + -0.158285 * t."OUT_1"  + 0.256231 * t."OUT_2"  + 0.119638 * t."OUT_3" AS "OUT_33",
    -0.018017 + -0.020062 * t."OUT_0"  + -0.061890 * t."OUT_1"  + 0.178407 * t."OUT_2"  + -0.041464 * t."OUT_3" AS "OUT_34",
    0.136912 + 0.086656 * t."OUT_0"  + -0.204111 * t."OUT_1"  + 0.095339 * t."OUT_2"  + 0.047029 * t."OUT_3" AS "OUT_35",
    -0.018475 + -0.159850 * t."OUT_0"  + -0.183640 * t."OUT_1"  + -0.081848 * t."OUT_2"  + 0.226317 * t."OUT_3" AS "OUT_36",
    -0.231042 + 0.200836 * t."OUT_0"  + -0.184975 * t."OUT_1"  + 0.195718 * t."OUT_2"  + -0.193628 * t."OUT_3" AS "OUT_37",
    0.189832 + -0.175863 * t."OUT_0"  + -0.079753 * t."OUT_1"  + -0.238487 * t."OUT_2"  + -0.066630 * t."OUT_3" AS "OUT_38",
    -0.187474 + 0.162803 * t."OUT_0"  + -0.021272 * t."OUT_1"  + -0.189475 * t."OUT_2"  + -0.040574 * t."OUT_3" AS "OUT_39",
    -0.009981 + -0.172538 * t."OUT_0"  + -0.157202 * t."OUT_1"  + -0.025159 * t."OUT_2"  + 0.004695 * t."OUT_3" AS "OUT_40",
    -0.023909 + 0.115909 * t."OUT_0"  + -0.189324 * t."OUT_1"  + -0.029506 * t."OUT_2"  + -0.094100 * t."OUT_3" AS "OUT_41",
    0.113641 + 0.081902 * t."OUT_0"  + -0.188934 * t."OUT_1"  + 0.118725 * t."OUT_2"  + -0.049920 * t."OUT_3" AS "OUT_42",
    -0.254362 + 0.206204 * t."OUT_0"  + 0.035673 * t."OUT_1"  + 0.189765 * t."OUT_2"  + -0.080931 * t."OUT_3" AS "OUT_43",
    -0.084426 + -0.150790 * t."OUT_0"  + -0.157723 * t."OUT_1"  + 0.043977 * t."OUT_2"  + -0.050261 * t."OUT_3" AS "OUT_44",
    0.196254 + -0.185116 * t."OUT_0"  + -0.190227 * t."OUT_1"  + -0.038635 * t."OUT_2"  + 0.122060 * t."OUT_3" AS "OUT_45",
    0.153013 + 0.089894 * t."OUT_0"  + 0.049894 * t."OUT_1"  + -0.140220 * t."OUT_2"  + 0.046550 * t."OUT_3" AS "OUT_46",
    -0.147003 + 0.054808 * t."OUT_0"  + 0.051571 * t."OUT_1"  + -0.172253 * t."OUT_2"  + -0.143239 * t."OUT_3" AS "OUT_47",
    0.168846 + 0.151583 * t."OUT_0"  + -0.041789 * t."OUT_1"  + 0.048101 * t."OUT_2"  + -0.085730 * t."OUT_3" AS "OUT_48",
    0.084430 + 0.216110 * t."OUT_0"  + 0.095237 * t."OUT_1"  + 0.061779 * t."OUT_2"  + -0.015393 * t."OUT_3" AS "OUT_49",
    0.220722 + 0.192875 * t."OUT_0"  + 0.033476 * t."OUT_1"  + -0.199500 * t."OUT_2"  + 0.215396 * t."OUT_3" AS "OUT_50",
    0.207382 + -0.156031 * t."OUT_0"  + -0.158922 * t."OUT_1"  + -0.028284 * t."OUT_2"  + 0.024223 * t."OUT_3" AS "OUT_51",
    -0.093660 + 0.152086 * t."OUT_0"  + -0.039774 * t."OUT_1"  + 0.168341 * t."OUT_2"  + -0.171400 * t."OUT_3" AS "OUT_52",
    0.177442 + 0.204521 * t."OUT_0"  + 0.199039 * t."OUT_1"  + -0.076521 * t."OUT_2"  + -0.098199 * t."OUT_3" AS "OUT_53",
    0.224654 + -0.113010 * t."OUT_0"  + 0.271461 * t."OUT_1"  + 0.026005 * t."OUT_2"  + -0.170731 * t."OUT_3" AS "OUT_54",
    0.226658 + 0.107473 * t."OUT_0"  + -0.008065 * t."OUT_1"  + -0.067125 * t."OUT_2"  + 0.097191 * t."OUT_3" AS "OUT_55",
    0.136192 + 0.049613 * t."OUT_0"  + -0.225550 * t."OUT_1"  + 0.063218 * t."OUT_2"  + -0.136283 * t."OUT_3" AS "OUT_56",
    0.035240 + 0.018012 * t."OUT_0"  + -0.116709 * t."OUT_1"  + -0.122389 * t."OUT_2"  + -0.046736 * t."OUT_3" AS "OUT_57",
    0.044461 + 0.041052 * t."OUT_0"  + 0.106180 * t."OUT_1"  + 0.010971 * t."OUT_2"  + -0.170985 * t."OUT_3" AS "OUT_58",
    -0.045817 + 0.126534 * t."OUT_0"  + -0.201856 * t."OUT_1"  + 0.146223 * t."OUT_2"  + 0.017475 * t."OUT_3" AS "OUT_59",
    -0.030121 + -0.205991 * t."OUT_0"  + 0.082876 * t."OUT_1"  + 0.073041 * t."OUT_2"  + -0.176220 * t."OUT_3" AS "OUT_60",
    -0.015354 + 0.004523 * t."OUT_0"  + -0.153120 * t."OUT_1"  + 0.128689 * t."OUT_2"  + -0.106127 * t."OUT_3" AS "OUT_61",
    0.009224 + 0.085189 * t."OUT_0"  + 0.205969 * t."OUT_1"  + 0.170837 * t."OUT_2"  + 0.205910 * t."OUT_3" AS "OUT_62",
    -0.081034 + 0.127168 * t."OUT_0"  + 0.225839 * t."OUT_1"  + 0.150561 * t."OUT_2"  + -0.159467 * t."OUT_3" AS "OUT_63",
    -0.151722 + -0.205019 * t."OUT_0"  + -0.109984 * t."OUT_1"  + 0.077483 * t."OUT_2"  + 0.237101 * t."OUT_3" AS "OUT_64",
    0.021404 + 0.154664 * t."OUT_0"  + 0.116280 * t."OUT_1"  + -0.177644 * t."OUT_2"  + -0.140209 * t."OUT_3" AS "OUT_65",
    0.231954 + -0.133716 * t."OUT_0"  + -0.115576 * t."OUT_1"  + -0.020091 * t."OUT_2"  + 0.093519 * t."OUT_3" AS "OUT_66",
    -0.068275 + -0.222118 * t."OUT_0"  + 0.176415 * t."OUT_1"  + -0.165604 * t."OUT_2"  + -0.152247 * t."OUT_3" AS "OUT_67",
    -0.123535 + 0.225792 * t."OUT_0"  + -0.211546 * t."OUT_1"  + 0.077232 * t."OUT_2"  + 0.118294 * t."OUT_3" AS "OUT_68",
    -0.168888 + 0.234130 * t."OUT_0"  + 0.129716 * t."OUT_1"  + 0.077963 * t."OUT_2"  + -0.084738 * t."OUT_3" AS "OUT_69",
    -0.073761 + -0.034471 * t."OUT_0"  + 0.082361 * t."OUT_1"  + 0.210213 * t."OUT_2"  + -0.173398 * t."OUT_3" AS "OUT_70",
    -0.116597 + -0.195333 * t."OUT_0"  + -0.134079 * t."OUT_1"  + 0.123263 * t."OUT_2"  + -0.123349 * t."OUT_3" AS "OUT_71",
    -0.037255 + 0.000541 * t."OUT_0"  + 0.115613 * t."OUT_1"  + 0.233792 * t."OUT_2"  + -0.214962 * t."OUT_3" AS "OUT_72",
    -0.066767 + 0.222569 * t."OUT_0"  + 0.117970 * t."OUT_1"  + -0.149391 * t."OUT_2"  + 0.041248 * t."OUT_3" AS "OUT_73",
    0.191070 + -0.173311 * t."OUT_0"  + 0.006743 * t."OUT_1"  + 0.052584 * t."OUT_2"  + -0.224140 * t."OUT_3" AS "OUT_74",
    -0.031577 + 0.072854 * t."OUT_0"  + -0.133457 * t."OUT_1"  + 0.172006 * t."OUT_2"  + 0.237782 * t."OUT_3" AS "OUT_75",
    0.051058 + 0.100432 * t."OUT_0"  + 0.205202 * t."OUT_1"  + 0.067853 * t."OUT_2"  + -0.254948 * t."OUT_3" AS "OUT_76",
    0.008651 + 0.131505 * t."OUT_0"  + 0.198768 * t."OUT_1"  + 0.208120 * t."OUT_2"  + -0.016283 * t."OUT_3" AS "OUT_77",
    -0.010686 + 0.186769 * t."OUT_0"  + -0.128665 * t."OUT_1"  + -0.094700 * t."OUT_2"  + 0.225225 * t."OUT_3" AS "OUT_78",
    0.034027 + -0.094192 * t."OUT_0"  + 0.052750 * t."OUT_1"  + 0.187943 * t."OUT_2"  + 0.030551 * t."OUT_3" AS "OUT_79",
    -0.086247 + 0.108407 * t."OUT_0"  + 0.126243 * t."OUT_1"  + 0.132351 * t."OUT_2"  + -0.025438 * t."OUT_3" AS "OUT_80",
    0.194258 + 0.171085 * t."OUT_0"  + 0.011664 * t."OUT_1"  + 0.263559 * t."OUT_2"  + -0.057785 * t."OUT_3" AS "OUT_81",
    0.247488 + 0.185078 * t."OUT_0"  + -0.002378 * t."OUT_1"  + 0.006003 * t."OUT_2"  + 0.197215 * t."OUT_3" AS "OUT_82",
    0.098704 + -0.025232 * t."OUT_0"  + 0.241266 * t."OUT_1"  + 0.065957 * t."OUT_2"  + -0.147420 * t."OUT_3" AS "OUT_83",
    0.041405 + -0.213241 * t."OUT_0"  + 0.085086 * t."OUT_1"  + 0.139230 * t."OUT_2"  + -0.156101 * t."OUT_3" AS "OUT_84",
    0.081027 + 0.135637 * t."OUT_0"  + 0.121805 * t."OUT_1"  + 0.094401 * t."OUT_2"  + -0.128151 * t."OUT_3" AS "OUT_85",
    0.000627 + 0.029154 * t."OUT_0"  + -0.142576 * t."OUT_1"  + 0.173513 * t."OUT_2"  + 0.034109 * t."OUT_3" AS "OUT_86",
    0.154070 + -0.045510 * t."OUT_0"  + -0.032623 * t."OUT_1"  + -0.234563 * t."OUT_2"  + 0.170446 * t."OUT_3" AS "OUT_87",
    0.077478 + -0.177834 * t."OUT_0"  + 0.198173 * t."OUT_1"  + 0.074171 * t."OUT_2"  + -0.045989 * t."OUT_3" AS "OUT_88",
    -0.031658 + -0.219020 * t."OUT_0"  + 0.138679 * t."OUT_1"  + 0.222428 * t."OUT_2"  + 0.090810 * t."OUT_3" AS "OUT_89",
    -0.054875 + -0.087854 * t."OUT_0"  + -0.069635 * t."OUT_1"  + 0.049404 * t."OUT_2"  + 0.151620 * t."OUT_3" AS "OUT_90",
    -0.226724 + 0.206058 * t."OUT_0"  + -0.067866 * t."OUT_1"  + 0.177260 * t."OUT_2"  + 0.115649 * t."OUT_3" AS "OUT_91",
    0.220491 + -0.006717 * t."OUT_0"  + 0.156465 * t."OUT_1"  + -0.101966 * t."OUT_2"  + -0.178229 * t."OUT_3" AS "OUT_92",
    -0.200400 + -0.048975 * t."OUT_0"  + -0.124573 * t."OUT_1"  + 0.079715 * t."OUT_2"  + 0.098564 * t."OUT_3" AS "OUT_93",
    -0.122221 + -0.055625 * t."OUT_0"  + 0.031332 * t."OUT_1"  + -0.169219 * t."OUT_2"  + -0.152611 * t."OUT_3" AS "OUT_94",
    0.207426 + -0.227096 * t."OUT_0"  + 0.183878 * t."OUT_1"  + 0.051804 * t."OUT_2"  + 0.121120 * t."OUT_3" AS "OUT_95",
    -0.156734 + 0.080030 * t."OUT_0"  + -0.221392 * t."OUT_1"  + -0.230247 * t."OUT_2"  + -0.175211 * t."OUT_3" AS "OUT_96",
    0.204344 + -0.084169 * t."OUT_0"  + -0.142464 * t."OUT_1"  + 0.123442 * t."OUT_2"  + -0.069942 * t."OUT_3" AS "OUT_97",
    -0.134914 + -0.093217 * t."OUT_0"  + -0.135137 * t."OUT_1"  + 0.004431 * t."OUT_2"  + 0.199270 * t."OUT_3" AS "OUT_98",
    0.219189 + -0.048806 * t."OUT_0"  + -0.125113 * t."OUT_1"  + 0.007153 * t."OUT_2"  + -0.142700 * t."OUT_3" AS "OUT_99"
 FROM "Input_Layer_BA" AS t
),
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
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
 ( SELECT t."index" as "index",
    0.159479 + 0.123795 * t."OUT_0"  + 0.141454 * t."OUT_1"  + -0.147232 * t."OUT_2"  + -0.056490 * t."OUT_3"  + -0.068860 * t."OUT_4"  + -0.234674 * t."OUT_5"  + 0.054664 * t."OUT_6"  + 0.123828 * t."OUT_7"  + 0.147177 * t."OUT_8"  + 0.135512 * t."OUT_9"  + -0.225856 * t."OUT_10"  + -0.242000 * t."OUT_11"  + 0.142678 * t."OUT_12"  + 0.089560 * t."OUT_13"  + 0.205095 * t."OUT_14"  + 0.034529 * t."OUT_15"  + -0.058221 * t."OUT_16"  + -0.023104 * t."OUT_17"  + -0.141248 * t."OUT_18"  + -0.216601 * t."OUT_19"  + 0.088513 * t."OUT_20"  + -0.058436 * t."OUT_21"  + -0.064224 * t."OUT_22"  + -0.011402 * t."OUT_23"  + -0.147600 * t."OUT_24"  + -0.000088 * t."OUT_25"  + -0.171059 * t."OUT_26"  + 0.027037 * t."OUT_27"  + 0.077292 * t."OUT_28"  + -0.153944 * t."OUT_29"  + -0.140442 * t."OUT_30"  + -0.071275 * t."OUT_31"  + -0.025346 * t."OUT_32"  + -0.081113 * t."OUT_33"  + -0.225455 * t."OUT_34"  + -0.199044 * t."OUT_35"  + 0.032638 * t."OUT_36"  + 0.134099 * t."OUT_37"  + 0.061958 * t."OUT_38"  + 0.248914 * t."OUT_39"  + -0.127733 * t."OUT_40"  + 0.088437 * t."OUT_41"  + 0.034192 * t."OUT_42"  + -0.085077 * t."OUT_43"  + 0.037135 * t."OUT_44"  + -0.167643 * t."OUT_45"  + -0.105953 * t."OUT_46"  + -0.125295 * t."OUT_47"  + 0.102499 * t."OUT_48"  + 0.182480 * t."OUT_49"  + -0.059370 * t."OUT_50"  + -0.122756 * t."OUT_51"  + -0.166532 * t."OUT_52"  + -0.150320 * t."OUT_53"  + 0.258828 * t."OUT_54"  + 0.174399 * t."OUT_55"  + 0.194282 * t."OUT_56"  + -0.012243 * t."OUT_57"  + -0.044824 * t."OUT_58"  + 0.154857 * t."OUT_59"  + 0.229489 * t."OUT_60"  + 0.122664 * t."OUT_61"  + -0.044488 * t."OUT_62"  + -0.041481 * t."OUT_63"  + 0.170070 * t."OUT_64"  + 0.026575 * t."OUT_65"  + -0.134599 * t."OUT_66"  + -0.070992 * t."OUT_67"  + -0.091327 * t."OUT_68"  + -0.150340 * t."OUT_69"  + 0.106269 * t."OUT_70"  + -0.233335 * t."OUT_71"  + -0.089201 * t."OUT_72"  + 0.245358 * t."OUT_73"  + -0.138795 * t."OUT_74"  + -0.199053 * t."OUT_75"  + 0.174430 * t."OUT_76"  + 0.085511 * t."OUT_77"  + -0.220941 * t."OUT_78"  + -0.059162 * t."OUT_79"  + -0.126407 * t."OUT_80"  + -0.161586 * t."OUT_81"  + -0.135470 * t."OUT_82"  + 0.195461 * t."OUT_83"  + -0.204005 * t."OUT_84"  + 0.210660 * t."OUT_85"  + -0.243466 * t."OUT_86"  + -0.025500 * t."OUT_87"  + 0.114746 * t."OUT_88"  + 0.171499 * t."OUT_89"  + 0.182126 * t."OUT_90"  + 0.020048 * t."OUT_91"  + 0.152791 * t."OUT_92"  + -0.141780 * t."OUT_93"  + -0.194919 * t."OUT_94"  + 0.027695 * t."OUT_95"  + -0.166456 * t."OUT_96"  + -0.107768 * t."OUT_97"  + -0.229138 * t."OUT_98"  + 0.229560 * t."OUT_99" AS "OUT_0",
    -0.097670 + 0.166936 * t."OUT_0"  + -0.175248 * t."OUT_1"  + -0.174194 * t."OUT_2"  + 0.097077 * t."OUT_3"  + 0.214597 * t."OUT_4"  + -0.129712 * t."OUT_5"  + -0.178790 * t."OUT_6"  + -0.050463 * t."OUT_7"  + -0.170724 * t."OUT_8"  + 0.038866 * t."OUT_9"  + -0.129619 * t."OUT_10"  + -0.058007 * t."OUT_11"  + 0.130645 * t."OUT_12"  + 0.132537 * t."OUT_13"  + -0.066713 * t."OUT_14"  + 0.109622 * t."OUT_15"  + 0.158463 * t."OUT_16"  + -0.040567 * t."OUT_17"  + 0.229940 * t."OUT_18"  + -0.174870 * t."OUT_19"  + -0.097337 * t."OUT_20"  + 0.226774 * t."OUT_21"  + -0.094717 * t."OUT_22"  + 0.070254 * t."OUT_23"  + 0.066783 * t."OUT_24"  + 0.095540 * t."OUT_25"  + 0.157853 * t."OUT_26"  + -0.111250 * t."OUT_27"  + 0.208076 * t."OUT_28"  + 0.051200 * t."OUT_29"  + 0.136262 * t."OUT_30"  + 0.197596 * t."OUT_31"  + 0.136629 * t."OUT_32"  + 0.163709 * t."OUT_33"  + 0.052032 * t."OUT_34"  + -0.187712 * t."OUT_35"  + -0.076406 * t."OUT_36"  + 0.015398 * t."OUT_37"  + 0.010282 * t."OUT_38"  + -0.185612 * t."OUT_39"  + -0.215319 * t."OUT_40"  + 0.023082 * t."OUT_41"  + 0.129463 * t."OUT_42"  + -0.170571 * t."OUT_43"  + 0.114812 * t."OUT_44"  + 0.013143 * t."OUT_45"  + 0.227442 * t."OUT_46"  + 0.181828 * t."OUT_47"  + -0.123472 * t."OUT_48"  + 0.145727 * t."OUT_49"  + 0.133921 * t."OUT_50"  + 0.165788 * t."OUT_51"  + 0.182229 * t."OUT_52"  + 0.109815 * t."OUT_53"  + 0.077752 * t."OUT_54"  + 0.162458 * t."OUT_55"  + 0.003732 * t."OUT_56"  + -0.027236 * t."OUT_57"  + 0.096600 * t."OUT_58"  + -0.123876 * t."OUT_59"  + -0.001439 * t."OUT_60"  + -0.048034 * t."OUT_61"  + -0.158734 * t."OUT_62"  + -0.073778 * t."OUT_63"  + -0.087578 * t."OUT_64"  + -0.176567 * t."OUT_65"  + 0.185941 * t."OUT_66"  + -0.175433 * t."OUT_67"  + -0.215711 * t."OUT_68"  + 0.092146 * t."OUT_69"  + 0.086709 * t."OUT_70"  + -0.228597 * t."OUT_71"  + 0.042513 * t."OUT_72"  + -0.031411 * t."OUT_73"  + -0.011309 * t."OUT_74"  + -0.168521 * t."OUT_75"  + -0.189317 * t."OUT_76"  + -0.230039 * t."OUT_77"  + -0.173020 * t."OUT_78"  + -0.017206 * t."OUT_79"  + 0.119916 * t."OUT_80"  + -0.104023 * t."OUT_81"  + 0.060908 * t."OUT_82"  + 0.048375 * t."OUT_83"  + -0.231565 * t."OUT_84"  + 0.222943 * t."OUT_85"  + -0.053727 * t."OUT_86"  + 0.065094 * t."OUT_87"  + 0.174073 * t."OUT_88"  + 0.026102 * t."OUT_89"  + -0.158897 * t."OUT_90"  + -0.071620 * t."OUT_91"  + -0.150070 * t."OUT_92"  + -0.064583 * t."OUT_93"  + -0.222057 * t."OUT_94"  + -0.115167 * t."OUT_95"  + -0.048821 * t."OUT_96"  + -0.250903 * t."OUT_97"  + 0.237815 * t."OUT_98"  + 0.222724 * t."OUT_99" AS "OUT_1",
    -0.130647 + -0.192030 * t."OUT_0"  + 0.218568 * t."OUT_1"  + -0.143742 * t."OUT_2"  + 0.147961 * t."OUT_3"  + -0.091539 * t."OUT_4"  + 0.016398 * t."OUT_5"  + 0.102137 * t."OUT_6"  + -0.132467 * t."OUT_7"  + 0.180159 * t."OUT_8"  + -0.167321 * t."OUT_9"  + 0.038402 * t."OUT_10"  + -0.082311 * t."OUT_11"  + -0.190477 * t."OUT_12"  + 0.045873 * t."OUT_13"  + -0.169187 * t."OUT_14"  + -0.206501 * t."OUT_15"  + -0.189012 * t."OUT_16"  + 0.109409 * t."OUT_17"  + 0.011152 * t."OUT_18"  + 0.156918 * t."OUT_19"  + -0.035420 * t."OUT_20"  + 0.210364 * t."OUT_21"  + 0.186132 * t."OUT_22"  + 0.018076 * t."OUT_23"  + 0.104495 * t."OUT_24"  + -0.005308 * t."OUT_25"  + -0.095883 * t."OUT_26"  + -0.080600 * t."OUT_27"  + -0.214625 * t."OUT_28"  + -0.069680 * t."OUT_29"  + -0.172414 * t."OUT_30"  + 0.257564 * t."OUT_31"  + -0.106308 * t."OUT_32"  + -0.050270 * t."OUT_33"  + 0.143395 * t."OUT_34"  + 0.060895 * t."OUT_35"  + 0.071713 * t."OUT_36"  + 0.134971 * t."OUT_37"  + -0.048880 * t."OUT_38"  + -0.192472 * t."OUT_39"  + -0.184587 * t."OUT_40"  + -0.096282 * t."OUT_41"  + 0.088595 * t."OUT_42"  + 0.022207 * t."OUT_43"  + -0.197155 * t."OUT_44"  + -0.060541 * t."OUT_45"  + -0.161401 * t."OUT_46"  + 0.182823 * t."OUT_47"  + 0.144873 * t."OUT_48"  + -0.078287 * t."OUT_49"  + -0.179638 * t."OUT_50"  + 0.126837 * t."OUT_51"  + -0.119083 * t."OUT_52"  + -0.147910 * t."OUT_53"  + -0.063948 * t."OUT_54"  + 0.077049 * t."OUT_55"  + -0.117549 * t."OUT_56"  + 0.134695 * t."OUT_57"  + -0.163806 * t."OUT_58"  + 0.168337 * t."OUT_59"  + -0.240071 * t."OUT_60"  + -0.156803 * t."OUT_61"  + 0.221187 * t."OUT_62"  + -0.052559 * t."OUT_63"  + 0.044365 * t."OUT_64"  + 0.114076 * t."OUT_65"  + -0.181720 * t."OUT_66"  + -0.027029 * t."OUT_67"  + 0.026089 * t."OUT_68"  + 0.139870 * t."OUT_69"  + 0.005975 * t."OUT_70"  + 0.203508 * t."OUT_71"  + -0.126713 * t."OUT_72"  + 0.016912 * t."OUT_73"  + -0.008695 * t."OUT_74"  + -0.046368 * t."OUT_75"  + -0.049104 * t."OUT_76"  + 0.230913 * t."OUT_77"  + -0.003180 * t."OUT_78"  + 0.212333 * t."OUT_79"  + -0.008390 * t."OUT_80"  + -0.093041 * t."OUT_81"  + -0.173235 * t."OUT_82"  + -0.086438 * t."OUT_83"  + -0.076778 * t."OUT_84"  + 0.049013 * t."OUT_85"  + -0.103015 * t."OUT_86"  + -0.047723 * t."OUT_87"  + -0.081059 * t."OUT_88"  + 0.246117 * t."OUT_89"  + 0.116898 * t."OUT_90"  + 0.063796 * t."OUT_91"  + 0.213791 * t."OUT_92"  + -0.169690 * t."OUT_93"  + 0.009980 * t."OUT_94"  + -0.025231 * t."OUT_95"  + 0.121959 * t."OUT_96"  + -0.196703 * t."OUT_97"  + 0.205077 * t."OUT_98"  + 0.104381 * t."OUT_99" AS "OUT_2"
 FROM "Hidden_Layer_1_Activation" AS t
),
model_scores_cte AS 
( SELECT t."index" AS "index",
   t."OUT_0" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."OUT_1" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   t."OUT_2" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2"
  FROM "Output_Layer_BA" AS t ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    t1."Proba_2" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_2" AS "Exp_Score_2",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
)
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte