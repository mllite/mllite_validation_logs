WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    X_0 AS OUT_0,
    X_1 AS OUT_1,
    X_2 AS OUT_2,
    X_3 AS OUT_3
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.111288 + -0.035887 * t.OUT_0  + 0.099021 * t.OUT_1  + -0.126411 * t.OUT_2  + 0.084191 * t.OUT_3 AS OUT_0,
    0.027330 + 0.118788 * t.OUT_0  + -0.169711 * t.OUT_1  + -0.009411 * t.OUT_2  + -0.216653 * t.OUT_3 AS OUT_1,
    0.122204 + -0.098035 * t.OUT_0  + -0.078942 * t.OUT_1  + -0.196642 * t.OUT_2  + -0.166419 * t.OUT_3 AS OUT_2,
    0.203774 + 0.002628 * t.OUT_0  + 0.107359 * t.OUT_1  + 0.169595 * t.OUT_2  + -0.049360 * t.OUT_3 AS OUT_3,
    -0.090780 + 0.064455 * t.OUT_0  + 0.141645 * t.OUT_1  + 0.244027 * t.OUT_2  + -0.152265 * t.OUT_3 AS OUT_4,
    -0.018011 + -0.148615 * t.OUT_0  + 0.176063 * t.OUT_1  + 0.062594 * t.OUT_2  + 0.118517 * t.OUT_3 AS OUT_5,
    0.216253 + 0.049602 * t.OUT_0  + 0.188383 * t.OUT_1  + -0.006798 * t.OUT_2  + -0.029914 * t.OUT_3 AS OUT_6,
    0.207486 + -0.012424 * t.OUT_0  + 0.167688 * t.OUT_1  + 0.072856 * t.OUT_2  + -0.093123 * t.OUT_3 AS OUT_7,
    0.157006 + 0.182994 * t.OUT_0  + -0.118228 * t.OUT_1  + 0.004847 * t.OUT_2  + -0.074574 * t.OUT_3 AS OUT_8,
    -0.025961 + 0.032728 * t.OUT_0  + 0.050504 * t.OUT_1  + 0.094315 * t.OUT_2  + 0.127625 * t.OUT_3 AS OUT_9,
    -0.144083 + 0.219421 * t.OUT_0  + 0.037714 * t.OUT_1  + 0.040642 * t.OUT_2  + 0.153957 * t.OUT_3 AS OUT_10,
    -0.098499 + -0.017903 * t.OUT_0  + 0.132490 * t.OUT_1  + 0.163260 * t.OUT_2  + -0.080565 * t.OUT_3 AS OUT_11,
    0.076381 + 0.227925 * t.OUT_0  + 0.138991 * t.OUT_1  + 0.087298 * t.OUT_2  + 0.102507 * t.OUT_3 AS OUT_12,
    -0.204436 + -0.212391 * t.OUT_0  + -0.000589 * t.OUT_1  + -0.100990 * t.OUT_2  + -0.204682 * t.OUT_3 AS OUT_13,
    -0.077167 + -0.120517 * t.OUT_0  + 0.169291 * t.OUT_1  + -0.089407 * t.OUT_2  + 0.178132 * t.OUT_3 AS OUT_14,
    -0.195115 + 0.120021 * t.OUT_0  + 0.184687 * t.OUT_1  + -0.178644 * t.OUT_2  + -0.026901 * t.OUT_3 AS OUT_15,
    -0.030745 + 0.145659 * t.OUT_0  + 0.026126 * t.OUT_1  + -0.114340 * t.OUT_2  + 0.071290 * t.OUT_3 AS OUT_16,
    -0.075174 + -0.115070 * t.OUT_0  + -0.082576 * t.OUT_1  + -0.143667 * t.OUT_2  + -0.147349 * t.OUT_3 AS OUT_17,
    -0.013875 + -0.122237 * t.OUT_0  + -0.065666 * t.OUT_1  + 0.066427 * t.OUT_2  + -0.141136 * t.OUT_3 AS OUT_18,
    -0.068000 + -0.186389 * t.OUT_0  + -0.119020 * t.OUT_1  + -0.034734 * t.OUT_2  + 0.024671 * t.OUT_3 AS OUT_19,
    0.241479 + 0.083573 * t.OUT_0  + 0.154659 * t.OUT_1  + -0.120740 * t.OUT_2  + -0.093599 * t.OUT_3 AS OUT_20,
    0.128408 + -0.266000 * t.OUT_0  + 0.105476 * t.OUT_1  + -0.231321 * t.OUT_2  + 0.183014 * t.OUT_3 AS OUT_21,
    -0.133454 + -0.034772 * t.OUT_0  + -0.133985 * t.OUT_1  + 0.219030 * t.OUT_2  + -0.213063 * t.OUT_3 AS OUT_22,
    -0.025003 + -0.014626 * t.OUT_0  + 0.052258 * t.OUT_1  + -0.117187 * t.OUT_2  + -0.146372 * t.OUT_3 AS OUT_23,
    0.164768 + -0.018215 * t.OUT_0  + -0.120466 * t.OUT_1  + -0.028602 * t.OUT_2  + 0.133744 * t.OUT_3 AS OUT_24,
    -0.232232 + -0.233571 * t.OUT_0  + -0.016034 * t.OUT_1  + 0.067947 * t.OUT_2  + 0.001083 * t.OUT_3 AS OUT_25,
    -0.108057 + -0.102443 * t.OUT_0  + 0.026266 * t.OUT_1  + 0.129782 * t.OUT_2  + 0.180856 * t.OUT_3 AS OUT_26,
    -0.006400 + 0.175371 * t.OUT_0  + -0.115928 * t.OUT_1  + 0.083573 * t.OUT_2  + 0.129541 * t.OUT_3 AS OUT_27,
    -0.093473 + 0.002718 * t.OUT_0  + 0.133538 * t.OUT_1  + -0.188771 * t.OUT_2  + -0.120663 * t.OUT_3 AS OUT_28,
    0.035391 + 0.034077 * t.OUT_0  + -0.194093 * t.OUT_1  + 0.210572 * t.OUT_2  + -0.132512 * t.OUT_3 AS OUT_29,
    -0.219782 + -0.215072 * t.OUT_0  + -0.215941 * t.OUT_1  + 0.212810 * t.OUT_2  + -0.199146 * t.OUT_3 AS OUT_30,
    -0.054459 + 0.034069 * t.OUT_0  + 0.147884 * t.OUT_1  + 0.200734 * t.OUT_2  + 0.078228 * t.OUT_3 AS OUT_31,
    -0.046421 + -0.054325 * t.OUT_0  + 0.205291 * t.OUT_1  + 0.028386 * t.OUT_2  + 0.077450 * t.OUT_3 AS OUT_32,
    0.128737 + 0.110941 * t.OUT_0  + -0.145734 * t.OUT_1  + 0.259471 * t.OUT_2  + 0.121870 * t.OUT_3 AS OUT_33,
    -0.019139 + -0.019937 * t.OUT_0  + -0.057742 * t.OUT_1  + 0.178315 * t.OUT_2  + -0.041080 * t.OUT_3 AS OUT_34,
    0.131620 + 0.107549 * t.OUT_0  + -0.153948 * t.OUT_1  + 0.088360 * t.OUT_2  + 0.041316 * t.OUT_3 AS OUT_35,
    -0.041861 + -0.154810 * t.OUT_0  + -0.149435 * t.OUT_1  + -0.082983 * t.OUT_2  + 0.232376 * t.OUT_3 AS OUT_36,
    -0.247256 + 0.188646 * t.OUT_0  + -0.203286 * t.OUT_1  + 0.192232 * t.OUT_2  + -0.196487 * t.OUT_3 AS OUT_37,
    0.223645 + -0.175863 * t.OUT_0  + -0.079753 * t.OUT_1  + -0.238487 * t.OUT_2  + -0.032814 * t.OUT_3 AS OUT_38,
    -0.221136 + 0.129082 * t.OUT_0  + -0.054998 * t.OUT_1  + -0.223075 * t.OUT_2  + -0.074223 * t.OUT_3 AS OUT_39,
    -0.009981 + -0.172538 * t.OUT_0  + -0.157202 * t.OUT_1  + -0.025159 * t.OUT_2  + 0.004695 * t.OUT_3 AS OUT_40,
    0.002748 + 0.139233 * t.OUT_0  + -0.165567 * t.OUT_1  + -0.009988 * t.OUT_2  + -0.074396 * t.OUT_3 AS OUT_41,
    0.120780 + 0.087176 * t.OUT_0  + -0.183811 * t.OUT_1  + 0.120463 * t.OUT_2  + -0.049062 * t.OUT_3 AS OUT_42,
    -0.265580 + 0.199353 * t.OUT_0  + 0.050322 * t.OUT_1  + 0.184252 * t.OUT_2  + -0.091106 * t.OUT_3 AS OUT_43,
    -0.084426 + -0.150790 * t.OUT_0  + -0.157723 * t.OUT_1  + 0.043977 * t.OUT_2  + -0.050261 * t.OUT_3 AS OUT_44,
    0.229338 + -0.151676 * t.OUT_0  + -0.165568 * t.OUT_1  + -0.006543 * t.OUT_2  + 0.152206 * t.OUT_3 AS OUT_45,
    0.165465 + 0.100758 * t.OUT_0  + 0.026336 * t.OUT_1  + -0.138875 * t.OUT_2  + 0.047038 * t.OUT_3 AS OUT_46,
    -0.141207 + 0.059557 * t.OUT_0  + 0.057133 * t.OUT_1  + -0.165788 * t.OUT_2  + -0.137458 * t.OUT_3 AS OUT_47,
    0.153886 + 0.141585 * t.OUT_0  + -0.030379 * t.OUT_1  + 0.044842 * t.OUT_2  + -0.089734 * t.OUT_3 AS OUT_48,
    0.084343 + 0.190657 * t.OUT_0  + 0.088594 * t.OUT_1  + 0.067464 * t.OUT_2  + -0.010132 * t.OUT_3 AS OUT_49,
    0.233377 + 0.203247 * t.OUT_0  + 0.014798 * t.OUT_1  + -0.195268 * t.OUT_2  + 0.221295 * t.OUT_3 AS OUT_50,
    0.234239 + -0.124869 * t.OUT_0  + -0.144169 * t.OUT_1  + 0.002166 * t.OUT_2  + 0.053073 * t.OUT_3 AS OUT_51,
    -0.074644 + 0.165150 * t.OUT_0  + -0.036785 * t.OUT_1  + 0.171089 * t.OUT_2  + -0.169499 * t.OUT_3 AS OUT_52,
    0.190824 + 0.215991 * t.OUT_0  + 0.178516 * t.OUT_1  + -0.075687 * t.OUT_2  + -0.098622 * t.OUT_3 AS OUT_53,
    0.222002 + -0.116067 * t.OUT_0  + 0.268499 * t.OUT_1  + 0.024303 * t.OUT_2  + -0.169734 * t.OUT_3 AS OUT_54,
    0.226049 + 0.093606 * t.OUT_0  + -0.018235 * t.OUT_1  + -0.059909 * t.OUT_2  + 0.104223 * t.OUT_3 AS OUT_55,
    0.151343 + 0.060912 * t.OUT_0  + -0.215811 * t.OUT_1  + 0.073483 * t.OUT_2  + -0.125465 * t.OUT_3 AS OUT_56,
    0.035240 + 0.018012 * t.OUT_0  + -0.116709 * t.OUT_1  + -0.122389 * t.OUT_2  + -0.046736 * t.OUT_3 AS OUT_57,
    0.005074 + 0.002775 * t.OUT_0  + 0.072125 * t.OUT_1  + -0.028835 * t.OUT_2  + -0.206313 * t.OUT_3 AS OUT_58,
    -0.061778 + 0.115806 * t.OUT_0  + -0.215512 * t.OUT_1  + 0.143573 * t.OUT_2  + 0.015350 * t.OUT_3 AS OUT_59,
    -0.000067 + -0.174629 * t.OUT_0  + 0.112881 * t.OUT_1  + 0.103136 * t.OUT_2  + -0.145694 * t.OUT_3 AS OUT_60,
    -0.003329 + 0.013896 * t.OUT_0  + -0.144287 * t.OUT_1  + 0.137504 * t.OUT_2  + -0.097007 * t.OUT_3 AS OUT_61,
    -0.000229 + 0.080216 * t.OUT_0  + 0.218067 * t.OUT_1  + 0.161034 * t.OUT_2  + 0.189464 * t.OUT_3 AS OUT_62,
    -0.089035 + 0.118907 * t.OUT_0  + 0.249903 * t.OUT_1  + 0.148514 * t.OUT_2  + -0.160952 * t.OUT_3 AS OUT_63,
    -0.170842 + -0.219656 * t.OUT_0  + -0.120257 * t.OUT_1  + 0.062048 * t.OUT_2  + 0.222580 * t.OUT_3 AS OUT_64,
    0.032330 + 0.142427 * t.OUT_0  + 0.133425 * t.OUT_1  + -0.188458 * t.OUT_2  + -0.158570 * t.OUT_3 AS OUT_65,
    0.265216 + -0.101437 * t.OUT_0  + -0.095173 * t.OUT_1  + 0.010389 * t.OUT_2  + 0.122555 * t.OUT_3 AS OUT_66,
    -0.036517 + -0.190612 * t.OUT_0  + 0.207909 * t.OUT_1  + -0.133675 * t.OUT_2  + -0.120500 * t.OUT_3 AS OUT_67,
    -0.136822 + 0.216319 * t.OUT_0  + -0.215041 * t.OUT_1  + 0.071282 * t.OUT_2  + 0.109192 * t.OUT_3 AS OUT_68,
    -0.173092 + 0.249567 * t.OUT_0  + 0.112569 * t.OUT_1  + 0.075872 * t.OUT_2  + -0.088564 * t.OUT_3 AS OUT_69,
    -0.073908 + -0.050402 * t.OUT_0  + 0.079084 * t.OUT_1  + 0.213546 * t.OUT_2  + -0.169485 * t.OUT_3 AS OUT_70,
    -0.116597 + -0.195333 * t.OUT_0  + -0.134079 * t.OUT_1  + 0.123263 * t.OUT_2  + -0.123349 * t.OUT_3 AS OUT_71,
    -0.020283 + 0.010168 * t.OUT_0  + 0.103455 * t.OUT_1  + 0.235210 * t.OUT_2  + -0.212669 * t.OUT_3 AS OUT_72,
    -0.071270 + 0.209845 * t.OUT_0  + 0.139911 * t.OUT_1  + -0.147831 * t.OUT_2  + 0.045138 * t.OUT_3 AS OUT_73,
    0.169648 + -0.194949 * t.OUT_0  + -0.013970 * t.OUT_1  + 0.031324 * t.OUT_2  + -0.242647 * t.OUT_3 AS OUT_74,
    -0.034047 + 0.107763 * t.OUT_0  + -0.089501 * t.OUT_1  + 0.166786 * t.OUT_2  + 0.233462 * t.OUT_3 AS OUT_75,
    0.053715 + 0.089241 * t.OUT_0  + 0.229104 * t.OUT_1  + 0.070463 * t.OUT_2  + -0.250483 * t.OUT_3 AS OUT_76,
    -0.004102 + 0.122104 * t.OUT_0  + 0.216475 * t.OUT_1  + 0.204601 * t.OUT_2  + -0.021532 * t.OUT_3 AS OUT_77,
    0.003513 + 0.231927 * t.OUT_0  + -0.074772 * t.OUT_1  + -0.097921 * t.OUT_2  + 0.221752 * t.OUT_3 AS OUT_78,
    -0.021324 + -0.108309 * t.OUT_0  + 0.005970 * t.OUT_1  + 0.181476 * t.OUT_2  + 0.025894 * t.OUT_3 AS OUT_79,
    -0.074495 + 0.121622 * t.OUT_0  + 0.103760 * t.OUT_1  + 0.132201 * t.OUT_2  + -0.027632 * t.OUT_3 AS OUT_80,
    0.186123 + 0.191546 * t.OUT_0  + -0.004064 * t.OUT_1  + 0.262077 * t.OUT_2  + -0.061386 * t.OUT_3 AS OUT_81,
    0.260770 + 0.196607 * t.OUT_0  + -0.021121 * t.OUT_1  + 0.009097 * t.OUT_2  + 0.200428 * t.OUT_3 AS OUT_82,
    0.110763 + -0.041690 * t.OUT_0  + 0.250905 * t.OUT_1  + 0.068965 * t.OUT_2  + -0.142993 * t.OUT_3 AS OUT_83,
    0.027709 + -0.224368 * t.OUT_0  + 0.072596 * t.OUT_1  + 0.124811 * t.OUT_2  + -0.168708 * t.OUT_3 AS OUT_84,
    0.086810 + 0.117438 * t.OUT_0  + 0.114460 * t.OUT_1  + 0.103994 * t.OUT_2  + -0.121406 * t.OUT_3 AS OUT_85,
    -0.000462 + 0.026730 * t.OUT_0  + -0.145915 * t.OUT_1  + 0.170615 * t.OUT_2  + 0.031105 * t.OUT_3 AS OUT_86,
    0.132599 + -0.063202 * t.OUT_0  + -0.053265 * t.OUT_1  + -0.251397 * t.OUT_2  + 0.149995 * t.OUT_3 AS OUT_87,
    0.092493 + -0.182563 * t.OUT_0  + 0.188703 * t.OUT_1  + 0.078283 * t.OUT_2  + -0.038165 * t.OUT_3 AS OUT_88,
    -0.051495 + -0.238317 * t.OUT_0  + 0.151216 * t.OUT_1  + 0.201274 * t.OUT_2  + 0.068283 * t.OUT_3 AS OUT_89,
    -0.075209 + -0.102001 * t.OUT_0  + -0.077071 * t.OUT_1  + 0.035388 * t.OUT_2  + 0.139077 * t.OUT_3 AS OUT_90,
    -0.240769 + 0.196826 * t.OUT_0  + -0.059758 * t.OUT_1  + 0.174407 * t.OUT_2  + 0.112280 * t.OUT_3 AS OUT_91,
    0.261176 + -0.003441 * t.OUT_0  + 0.197482 * t.OUT_1  + -0.095498 * t.OUT_2  + -0.169756 * t.OUT_3 AS OUT_92,
    -0.171049 + -0.022774 * t.OUT_0  + -0.113550 * t.OUT_1  + 0.102032 * t.OUT_2  + 0.118009 * t.OUT_3 AS OUT_93,
    -0.128029 + -0.055625 * t.OUT_0  + 0.025518 * t.OUT_1  + -0.169219 * t.OUT_2  + -0.152611 * t.OUT_3 AS OUT_94,
    0.213849 + -0.233812 * t.OUT_0  + 0.224318 * t.OUT_1  + 0.044909 * t.OUT_2  + 0.114617 * t.OUT_3 AS OUT_95,
    -0.156734 + 0.080030 * t.OUT_0  + -0.221392 * t.OUT_1  + -0.230247 * t.OUT_2  + -0.175211 * t.OUT_3 AS OUT_96,
    0.197159 + -0.091001 * t.OUT_0  + -0.148648 * t.OUT_1  + 0.115960 * t.OUT_2  + -0.077078 * t.OUT_3 AS OUT_97,
    -0.110651 + -0.069600 * t.OUT_0  + -0.111084 * t.OUT_1  + 0.027786 * t.OUT_2  + 0.222290 * t.OUT_3 AS OUT_98,
    0.219189 + -0.048806 * t.OUT_0  + -0.125113 * t.OUT_1  + 0.007153 * t.OUT_2  + -0.142700 * t.OUT_3 AS OUT_99
 FROM Input_Layer_BA AS t
)
,
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
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
 ( SELECT t."index" as "index",
    0.158047 + 0.120180 * t.OUT_0  + 0.133750 * t.OUT_1  + -0.147232 * t.OUT_2  + -0.040208 * t.OUT_3  + -0.053040 * t.OUT_4  + -0.181294 * t.OUT_5  + 0.066868 * t.OUT_6  + 0.147167 * t.OUT_7  + 0.135973 * t.OUT_8  + 0.135177 * t.OUT_9  + -0.234323 * t.OUT_10  + -0.199361 * t.OUT_11  + 0.135881 * t.OUT_12  + 0.089560 * t.OUT_13  + 0.227378 * t.OUT_14  + 0.030418 * t.OUT_15  + -0.093937 * t.OUT_16  + -0.023104 * t.OUT_17  + -0.141248 * t.OUT_18  + -0.193579 * t.OUT_19  + 0.095026 * t.OUT_20  + -0.031210 * t.OUT_21  + -0.051651 * t.OUT_22  + -0.007243 * t.OUT_23  + -0.177983 * t.OUT_24  + -0.012053 * t.OUT_25  + -0.158352 * t.OUT_26  + 0.023212 * t.OUT_27  + 0.107768 * t.OUT_28  + -0.149911 * t.OUT_29  + -0.140442 * t.OUT_30  + -0.068909 * t.OUT_31  + -0.003497 * t.OUT_32  + -0.081202 * t.OUT_33  + -0.222283 * t.OUT_34  + -0.197318 * t.OUT_35  + 0.020354 * t.OUT_36  + 0.135553 * t.OUT_37  + 0.096585 * t.OUT_38  + 0.214694 * t.OUT_39  + -0.127733 * t.OUT_40  + 0.084840 * t.OUT_41  + 0.037244 * t.OUT_42  + -0.089942 * t.OUT_43  + 0.037135 * t.OUT_44  + -0.190284 * t.OUT_45  + -0.110752 * t.OUT_46  + -0.128891 * t.OUT_47  + 0.091538 * t.OUT_48  + 0.174625 * t.OUT_49  + -0.088586 * t.OUT_50  + -0.090402 * t.OUT_51  + -0.176039 * t.OUT_52  + -0.130629 * t.OUT_53  + 0.254016 * t.OUT_54  + 0.160607 * t.OUT_55  + 0.192989 * t.OUT_56  + -0.012243 * t.OUT_57  + -0.052963 * t.OUT_58  + 0.157913 * t.OUT_59  + 0.261093 * t.OUT_60  + 0.125086 * t.OUT_61  + -0.045050 * t.OUT_62  + -0.028487 * t.OUT_63  + 0.151318 * t.OUT_64  + 0.021475 * t.OUT_65  + -0.163621 * t.OUT_66  + -0.040704 * t.OUT_67  + -0.091650 * t.OUT_68  + -0.156798 * t.OUT_69  + 0.130381 * t.OUT_70  + -0.233335 * t.OUT_71  + -0.044355 * t.OUT_72  + 0.231913 * t.OUT_73  + -0.116688 * t.OUT_74  + -0.197812 * t.OUT_75  + 0.201809 * t.OUT_76  + 0.085630 * t.OUT_77  + -0.232377 * t.OUT_78  + -0.047447 * t.OUT_79  + -0.128373 * t.OUT_80  + -0.167338 * t.OUT_81  + -0.145554 * t.OUT_82  + 0.221362 * t.OUT_83  + -0.177352 * t.OUT_84  + 0.211358 * t.OUT_85  + -0.238735 * t.OUT_86  + 0.002680 * t.OUT_87  + 0.114360 * t.OUT_88  + 0.207818 * t.OUT_89  + 0.163651 * t.OUT_90  + 0.017478 * t.OUT_91  + 0.149574 * t.OUT_92  + -0.167187 * t.OUT_93  + -0.187925 * t.OUT_94  + 0.069354 * t.OUT_95  + -0.166456 * t.OUT_96  + -0.115955 * t.OUT_97  + -0.254587 * t.OUT_98  + 0.229560 * t.OUT_99 AS OUT_0,
    -0.084597 + 0.170833 * t.OUT_0  + -0.181360 * t.OUT_1  + -0.174194 * t.OUT_2  + 0.092551 * t.OUT_3  + 0.206890 * t.OUT_4  + -0.140983 * t.OUT_5  + -0.185138 * t.OUT_6  + -0.063705 * t.OUT_7  + -0.158257 * t.OUT_8  + 0.041137 * t.OUT_9  + -0.122750 * t.OUT_10  + -0.085392 * t.OUT_11  + 0.136086 * t.OUT_12  + 0.132537 * t.OUT_13  + -0.086948 * t.OUT_14  + 0.113853 * t.OUT_15  + 0.174335 * t.OUT_16  + -0.040567 * t.OUT_17  + 0.229940 * t.OUT_18  + -0.198304 * t.OUT_19  + -0.122881 * t.OUT_20  + 0.198590 * t.OUT_21  + -0.105165 * t.OUT_22  + 0.067191 * t.OUT_23  + 0.099668 * t.OUT_24  + 0.082095 * t.OUT_25  + 0.174109 * t.OUT_26  + -0.104560 * t.OUT_27  + 0.177342 * t.OUT_28  + 0.065176 * t.OUT_29  + 0.136262 * t.OUT_30  + 0.195859 * t.OUT_31  + 0.119389 * t.OUT_32  + 0.168183 * t.OUT_33  + 0.064358 * t.OUT_34  + -0.183596 * t.OUT_35  + -0.072602 * t.OUT_36  + 0.021473 * t.OUT_37  + -0.024560 * t.OUT_38  + -0.152006 * t.OUT_39  + -0.215319 * t.OUT_40  + 0.034531 * t.OUT_41  + 0.133793 * t.OUT_42  + -0.165148 * t.OUT_43  + 0.114812 * t.OUT_44  + 0.044240 * t.OUT_45  + 0.216948 * t.OUT_46  + 0.186664 * t.OUT_47  + -0.111837 * t.OUT_48  + 0.152352 * t.OUT_49  + 0.149784 * t.OUT_50  + 0.197985 * t.OUT_51  + 0.194603 * t.OUT_52  + 0.101281 * t.OUT_53  + 0.081928 * t.OUT_54  + 0.173554 * t.OUT_55  + 0.011171 * t.OUT_56  + -0.027236 * t.OUT_57  + 0.072563 * t.OUT_58  + -0.121982 * t.OUT_59  + -0.033314 * t.OUT_60  + -0.041969 * t.OUT_61  + -0.158124 * t.OUT_62  + -0.080779 * t.OUT_63  + -0.076094 * t.OUT_64  + -0.198128 * t.OUT_65  + 0.219379 * t.OUT_66  + -0.206131 * t.OUT_67  + -0.211112 * t.OUT_68  + 0.096435 * t.OUT_69  + 0.069411 * t.OUT_70  + -0.228597 * t.OUT_71  + 0.014724 * t.OUT_72  + -0.025844 * t.OUT_73  + -0.034597 * t.OUT_74  + -0.165763 * t.OUT_75  + -0.216579 * t.OUT_76  + -0.229570 * t.OUT_77  + -0.162073 * t.OUT_78  + -0.032309 * t.OUT_79  + 0.121152 * t.OUT_80  + -0.096434 * t.OUT_81  + 0.070216 * t.OUT_82  + 0.016379 * t.OUT_83  + -0.259217 * t.OUT_84  + 0.225228 * t.OUT_85  + -0.052045 * t.OUT_86  + 0.036598 * t.OUT_87  + 0.161274 * t.OUT_88  + 0.032363 * t.OUT_89  + -0.146729 * t.OUT_90  + -0.066342 * t.OUT_91  + -0.160685 * t.OUT_92  + -0.051594 * t.OUT_93  + -0.225441 * t.OUT_94  + -0.140860 * t.OUT_95  + -0.048821 * t.OUT_96  + -0.214439 * t.OUT_97  + 0.246300 * t.OUT_98  + 0.222724 * t.OUT_99 AS OUT_1,
    -0.134385 + -0.179649 * t.OUT_0  + 0.226671 * t.OUT_1  + -0.143742 * t.OUT_2  + 0.135316 * t.OUT_3  + -0.103310 * t.OUT_4  + -0.024521 * t.OUT_5  + 0.102936 * t.OUT_6  + -0.135788 * t.OUT_7  + 0.179922 * t.OUT_8  + -0.173550 * t.OUT_9  + 0.060573 * t.OUT_10  + -0.097672 * t.OUT_11  + -0.172311 * t.OUT_12  + 0.045873 * t.OUT_13  + -0.159797 * t.OUT_14  + -0.202968 * t.OUT_15  + -0.170068 * t.OUT_16  + 0.109409 * t.OUT_17  + 0.011152 * t.OUT_18  + 0.134586 * t.OUT_19  + -0.034349 * t.OUT_20  + 0.185372 * t.OUT_21  + 0.184157 * t.OUT_22  + 0.014534 * t.OUT_23  + 0.070924 * t.OUT_24  + 0.007195 * t.OUT_25  + -0.100598 * t.OUT_26  + -0.086002 * t.OUT_27  + -0.243846 * t.OUT_28  + -0.137761 * t.OUT_29  + -0.172414 * t.OUT_30  + 0.251072 * t.OUT_31  + -0.098281 * t.OUT_32  + -0.058229 * t.OUT_33  + 0.124833 * t.OUT_34  + 0.026988 * t.OUT_35  + 0.095709 * t.OUT_36  + 0.092483 * t.OUT_37  + -0.083058 * t.OUT_38  + -0.157632 * t.OUT_39  + -0.184587 * t.OUT_40  + -0.110083 * t.OUT_41  + 0.023949 * t.OUT_42  + 0.033188 * t.OUT_43  + -0.197155 * t.OUT_44  + -0.093660 * t.OUT_45  + -0.160216 * t.OUT_46  + 0.185388 * t.OUT_47  + 0.147238 * t.OUT_48  + -0.061579 * t.OUT_49  + -0.153981 * t.OUT_50  + 0.092422 * t.OUT_51  + -0.129211 * t.OUT_52  + -0.147170 * t.OUT_53  + -0.058913 * t.OUT_54  + 0.106068 * t.OUT_55  + -0.167473 * t.OUT_56  + 0.134695 * t.OUT_57  + -0.158728 * t.OUT_58  + 0.152638 * t.OUT_59  + -0.270712 * t.OUT_60  + -0.199695 * t.OUT_61  + 0.226329 * t.OUT_62  + -0.053846 * t.OUT_63  + 0.068141 * t.OUT_64  + 0.117822 * t.OUT_65  + -0.217198 * t.OUT_66  + -0.055957 * t.OUT_67  + 0.015069 * t.OUT_68  + 0.149760 * t.OUT_69  + -0.025596 * t.OUT_70  + 0.203508 * t.OUT_71  + -0.154840 * t.OUT_72  + 0.031781 * t.OUT_73  + -0.029488 * t.OUT_74  + -0.053178 * t.OUT_75  + -0.050127 * t.OUT_76  + 0.237110 * t.OUT_77  + 0.024154 * t.OUT_78  + 0.209172 * t.OUT_79  + -0.000053 * t.OUT_80  + -0.091484 * t.OUT_81  + -0.153098 * t.OUT_82  + -0.085708 * t.OUT_83  + -0.101667 * t.OUT_84  + 0.050076 * t.OUT_85  + -0.113861 * t.OUT_86  + -0.075341 * t.OUT_87  + -0.075520 * t.OUT_88  + 0.237127 * t.OUT_89  + 0.141647 * t.OUT_90  + 0.058720 * t.OUT_91  + 0.212531 * t.OUT_92  + -0.139383 * t.OUT_93  + 0.005316 * t.OUT_94  + -0.059539 * t.OUT_95  + 0.121959 * t.OUT_96  + -0.236563 * t.OUT_97  + 0.236432 * t.OUT_98  + 0.104381 * t.OUT_99 AS OUT_2
 FROM Hidden_Layer_1_Activation AS t
)

, soft_max_orig_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2"
  FROM "Output_Layer_BA" AS t )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."Score_2" AS "Score_2",
    EXP(max(-32.0, soft_max_score_max."Score_2" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_2",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 2 AS "class", t."ExpDelta_Score_2" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."ExpDelta_Score_2" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_2",
    t1."Score_2" AS "Score_2"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
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
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
   WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2"
 END AS "DecisionProba"
FROM arg_max_cte