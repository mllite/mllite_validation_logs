WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_small" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.117069 + -0.011615 * t."OUT_0"  + 0.100547 * t."OUT_1"  + -0.091876 * t."OUT_2"  + 0.117884 * t."OUT_3" AS "OUT_0",
    0.033143 + 0.124602 * t."OUT_0"  + -0.169711 * t."OUT_1"  + -0.003598 * t."OUT_2"  + -0.210842 * t."OUT_3" AS "OUT_1",
    0.122204 + -0.098035 * t."OUT_0"  + -0.078942 * t."OUT_1"  + -0.196642 * t."OUT_2"  + -0.166419 * t."OUT_3" AS "OUT_2",
    0.222106 + -0.008538 * t."OUT_0"  + 0.139843 * t."OUT_1"  + 0.153655 * t."OUT_2"  + -0.067045 * t."OUT_3" AS "OUT_3",
    -0.118190 + 0.034899 * t."OUT_0"  + 0.156214 * t."OUT_1"  + 0.221266 * t."OUT_2"  + -0.171569 * t."OUT_3" AS "OUT_4",
    0.010209 + -0.159349 * t."OUT_0"  + 0.206232 * t."OUT_1"  + 0.046084 * t."OUT_2"  + 0.099880 * t."OUT_3" AS "OUT_5",
    0.233614 + 0.060324 * t."OUT_0"  + 0.172554 * t."OUT_1"  + 0.004569 * t."OUT_2"  + -0.019576 * t."OUT_3" AS "OUT_6",
    0.191160 + -0.001636 * t."OUT_0"  + 0.134421 * t."OUT_1"  + 0.088560 * t."OUT_2"  + -0.075587 * t."OUT_3" AS "OUT_7",
    0.168131 + 0.190324 * t."OUT_0"  + -0.116530 * t."OUT_1"  + 0.010122 * t."OUT_2"  + -0.070819 * t."OUT_3" AS "OUT_8",
    -0.058706 + 0.041552 * t."OUT_0"  + 0.020361 * t."OUT_1"  + 0.110250 * t."OUT_2"  + 0.146166 * t."OUT_3" AS "OUT_9",
    -0.109611 + 0.208812 * t."OUT_0"  + 0.068721 * t."OUT_1"  + 0.022630 * t."OUT_2"  + 0.133341 * t."OUT_3" AS "OUT_10",
    -0.099623 + -0.028494 * t."OUT_0"  + 0.164538 * t."OUT_1"  + 0.148787 * t."OUT_2"  + -0.096451 * t."OUT_3" AS "OUT_11",
    0.040598 + 0.229395 * t."OUT_0"  + 0.115862 * t."OUT_1"  + 0.103299 * t."OUT_2"  + 0.122543 * t."OUT_3" AS "OUT_12",
    -0.204436 + -0.212391 * t."OUT_0"  + -0.000589 * t."OUT_1"  + -0.100990 * t."OUT_2"  + -0.204682 * t."OUT_3" AS "OUT_13",
    -0.097934 + -0.109969 * t."OUT_0"  + 0.136078 * t."OUT_1"  + -0.074140 * t."OUT_2"  + 0.195296 * t."OUT_3" AS "OUT_14",
    -0.228885 + 0.080087 * t."OUT_0"  + 0.164821 * t."OUT_1"  + -0.211648 * t."OUT_2"  + -0.058124 * t."OUT_3" AS "OUT_15",
    -0.057850 + 0.116227 * t."OUT_0"  + 0.037569 * t."OUT_1"  + -0.135301 * t."OUT_2"  + 0.054811 * t."OUT_3" AS "OUT_16",
    -0.075174 + -0.115070 * t."OUT_0"  + -0.082576 * t."OUT_1"  + -0.143667 * t."OUT_2"  + -0.147349 * t."OUT_3" AS "OUT_17",
    -0.013875 + -0.122237 * t."OUT_0"  + -0.065666 * t."OUT_1"  + 0.066427 * t."OUT_2"  + -0.141136 * t."OUT_3" AS "OUT_18",
    -0.040220 + -0.186389 * t."OUT_0"  + -0.119020 * t."OUT_1"  + -0.034734 * t."OUT_2"  + 0.052454 * t."OUT_3" AS "OUT_19",
    0.241169 + 0.113198 * t."OUT_0"  + 0.128053 * t."OUT_1"  + -0.096874 * t."OUT_2"  + -0.071519 * t."OUT_3" AS "OUT_20",
    0.161795 + -0.228091 * t."OUT_0"  + 0.135315 * t."OUT_1"  + -0.196517 * t."OUT_2"  + 0.216970 * t."OUT_3" AS "OUT_21",
    -0.128077 + -0.038297 * t."OUT_0"  + -0.166152 * t."OUT_1"  + 0.211014 * t."OUT_2"  + -0.216590 * t."OUT_3" AS "OUT_22",
    -0.004672 + 0.001881 * t."OUT_0"  + 0.075831 * t."OUT_1"  + -0.097892 * t."OUT_2"  + -0.125222 * t."OUT_3" AS "OUT_23",
    0.135882 + -0.047717 * t."OUT_0"  + -0.153069 * t."OUT_1"  + -0.057221 * t."OUT_2"  + 0.105694 * t."OUT_3" AS "OUT_24",
    -0.216829 + -0.218212 * t."OUT_0"  + -0.000634 * t."OUT_1"  + 0.083368 * t."OUT_2"  + 0.016502 * t."OUT_3" AS "OUT_25",
    -0.122940 + -0.113922 * t."OUT_0"  + 0.046848 * t."OUT_1"  + 0.116548 * t."OUT_2"  + 0.167681 * t."OUT_3" AS "OUT_26",
    0.029963 + 0.210963 * t."OUT_0"  + -0.082167 * t."OUT_1"  + 0.119022 * t."OUT_2"  + 0.164852 * t."OUT_3" AS "OUT_27",
    -0.114735 + -0.008862 * t."OUT_0"  + 0.110877 * t."OUT_1"  + -0.210092 * t."OUT_2"  + -0.141449 * t."OUT_3" AS "OUT_28",
    0.002414 + 0.001981 * t."OUT_0"  + -0.227001 * t."OUT_1"  + 0.179499 * t."OUT_2"  + -0.163729 * t."OUT_3" AS "OUT_29",
    -0.219782 + -0.215072 * t."OUT_0"  + -0.215941 * t."OUT_1"  + 0.212810 * t."OUT_2"  + -0.199146 * t."OUT_3" AS "OUT_30",
    -0.051588 + 0.004395 * t."OUT_0"  + 0.177093 * t."OUT_1"  + 0.174353 * t."OUT_2"  + 0.053160 * t."OUT_3" AS "OUT_31",
    -0.065751 + -0.064410 * t."OUT_0"  + 0.219072 * t."OUT_1"  + 0.018286 * t."OUT_2"  + 0.068672 * t."OUT_3" AS "OUT_32",
    0.103569 + 0.088631 * t."OUT_0"  + -0.158945 * t."OUT_1"  + 0.239618 * t."OUT_2"  + 0.103501 * t."OUT_3" AS "OUT_33",
    -0.046322 + -0.048329 * t."OUT_0"  + -0.090225 * t."OUT_1"  + 0.150161 * t."OUT_2"  + -0.069831 * t."OUT_3" AS "OUT_34",
    0.160289 + 0.101698 * t."OUT_0"  + -0.181566 * t."OUT_1"  + 0.065085 * t."OUT_2"  + 0.015125 * t."OUT_3" AS "OUT_35",
    -0.018475 + -0.159850 * t."OUT_0"  + -0.183640 * t."OUT_1"  + -0.081848 * t."OUT_2"  + 0.226317 * t."OUT_3" AS "OUT_36",
    -0.223956 + 0.210360 * t."OUT_0"  + -0.184418 * t."OUT_1"  + 0.212759 * t."OUT_2"  + -0.176552 * t."OUT_3" AS "OUT_37",
    0.189832 + -0.175863 * t."OUT_0"  + -0.079753 * t."OUT_1"  + -0.238487 * t."OUT_2"  + -0.066630 * t."OUT_3" AS "OUT_38",
    -0.193418 + 0.155080 * t."OUT_0"  + -0.025305 * t."OUT_1"  + -0.194079 * t."OUT_2"  + -0.047981 * t."OUT_3" AS "OUT_39",
    -0.009981 + -0.172538 * t."OUT_0"  + -0.157202 * t."OUT_1"  + -0.025159 * t."OUT_2"  + 0.004695 * t."OUT_3" AS "OUT_40",
    -0.008348 + 0.132152 * t."OUT_0"  + -0.173181 * t."OUT_1"  + -0.013111 * t."OUT_2"  + -0.077972 * t."OUT_3" AS "OUT_41",
    0.088681 + 0.056575 * t."OUT_0"  + -0.212631 * t."OUT_1"  + 0.091959 * t."OUT_2"  + -0.076356 * t."OUT_3" AS "OUT_42",
    -0.244995 + 0.208829 * t."OUT_0"  + 0.044212 * t."OUT_1"  + 0.191750 * t."OUT_2"  + -0.086234 * t."OUT_3" AS "OUT_43",
    -0.084426 + -0.150790 * t."OUT_0"  + -0.157723 * t."OUT_1"  + 0.043977 * t."OUT_2"  + -0.050261 * t."OUT_3" AS "OUT_44",
    0.196254 + -0.185116 * t."OUT_0"  + -0.190227 * t."OUT_1"  + -0.038635 * t."OUT_2"  + 0.122060 * t."OUT_3" AS "OUT_45",
    0.149525 + 0.089497 * t."OUT_0"  + 0.049395 * t."OUT_1"  + -0.150749 * t."OUT_2"  + 0.035665 * t."OUT_3" AS "OUT_46",
    -0.120231 + 0.077336 * t."OUT_0"  + 0.081428 * t."OUT_1"  + -0.145840 * t."OUT_2"  + -0.115387 * t."OUT_3" AS "OUT_47",
    0.164307 + 0.147229 * t."OUT_0"  + -0.051416 * t."OUT_1"  + 0.047529 * t."OUT_2"  + -0.086866 * t."OUT_3" AS "OUT_48",
    0.057967 + 0.215195 * t."OUT_0"  + 0.066174 * t."OUT_1"  + 0.094445 * t."OUT_2"  + 0.017240 * t."OUT_3" AS "OUT_49",
    0.205024 + 0.173521 * t."OUT_0"  + 0.026424 * t."OUT_1"  + -0.217439 * t."OUT_2"  + 0.203415 * t."OUT_3" AS "OUT_50",
    0.207382 + -0.156031 * t."OUT_0"  + -0.158922 * t."OUT_1"  + -0.028284 * t."OUT_2"  + 0.024223 * t."OUT_3" AS "OUT_51",
    -0.113035 + 0.130262 * t."OUT_0"  + -0.052491 * t."OUT_1"  + 0.138465 * t."OUT_2"  + -0.201950 * t."OUT_3" AS "OUT_52",
    0.175737 + 0.204874 * t."OUT_0"  + 0.200728 * t."OUT_1"  + -0.088509 * t."OUT_2"  + -0.111581 * t."OUT_3" AS "OUT_53",
    0.187457 + -0.154341 * t."OUT_0"  + 0.237376 * t."OUT_1"  + -0.010353 * t."OUT_2"  + -0.203037 * t."OUT_3" AS "OUT_54",
    0.230418 + 0.138628 * t."OUT_0"  + -0.006113 * t."OUT_1"  + -0.009034 * t."OUT_2"  + 0.156734 * t."OUT_3" AS "OUT_55",
    0.157551 + 0.071129 * t."OUT_0"  + -0.204307 * t."OUT_1"  + 0.084870 * t."OUT_2"  + -0.114836 * t."OUT_3" AS "OUT_56",
    0.035240 + 0.018012 * t."OUT_0"  + -0.116709 * t."OUT_1"  + -0.122389 * t."OUT_2"  + -0.046736 * t."OUT_3" AS "OUT_57",
    0.028014 + 0.021201 * t."OUT_0"  + 0.098173 * t."OUT_1"  + -0.006503 * t."OUT_2"  + -0.182355 * t."OUT_3" AS "OUT_58",
    -0.036752 + 0.137194 * t."OUT_0"  + -0.198884 * t."OUT_1"  + 0.163042 * t."OUT_2"  + 0.033610 * t."OUT_3" AS "OUT_59",
    -0.025523 + -0.197059 * t."OUT_0"  + 0.084417 * t."OUT_1"  + 0.078018 * t."OUT_2"  + -0.172760 * t."OUT_3" AS "OUT_60",
    0.010304 + 0.030311 * t."OUT_0"  + -0.127324 * t."OUT_1"  + 0.154716 * t."OUT_2"  + -0.079805 * t."OUT_3" AS "OUT_61",
    0.018818 + 0.087314 * t."OUT_0"  + 0.215159 * t."OUT_1"  + 0.160751 * t."OUT_2"  + 0.183826 * t."OUT_3" AS "OUT_62",
    -0.076427 + 0.128770 * t."OUT_0"  + 0.228668 * t."OUT_1"  + 0.160860 * t."OUT_2"  + -0.148043 * t."OUT_3" AS "OUT_63",
    -0.151722 + -0.205019 * t."OUT_0"  + -0.109984 * t."OUT_1"  + 0.077483 * t."OUT_2"  + 0.237101 * t."OUT_3" AS "OUT_64",
    0.039539 + 0.175661 * t."OUT_0"  + 0.126355 * t."OUT_1"  + -0.160689 * t."OUT_2"  + -0.132844 * t."OUT_3" AS "OUT_65",
    0.231954 + -0.133716 * t."OUT_0"  + -0.115576 * t."OUT_1"  + -0.020091 * t."OUT_2"  + 0.093519 * t."OUT_3" AS "OUT_66",
    -0.073407 + -0.231418 * t."OUT_0"  + 0.174300 * t."OUT_1"  + -0.171098 * t."OUT_2"  + -0.156270 * t."OUT_3" AS "OUT_67",
    -0.110864 + 0.236982 * t."OUT_0"  + -0.203653 * t."OUT_1"  + 0.087967 * t."OUT_2"  + 0.123211 * t."OUT_3" AS "OUT_68",
    -0.168383 + 0.219677 * t."OUT_0"  + 0.141172 * t."OUT_1"  + 0.049098 * t."OUT_2"  + -0.114276 * t."OUT_3" AS "OUT_69",
    -0.094749 + -0.022566 * t."OUT_0"  + 0.051549 * t."OUT_1"  + 0.239975 * t."OUT_2"  + -0.143390 * t."OUT_3" AS "OUT_70",
    -0.116597 + -0.195333 * t."OUT_0"  + -0.134079 * t."OUT_1"  + 0.123263 * t."OUT_2"  + -0.123349 * t."OUT_3" AS "OUT_71",
    -0.051824 + -0.017953 * t."OUT_0"  + 0.109839 * t."OUT_1"  + 0.215572 * t."OUT_2"  + -0.227255 * t."OUT_3" AS "OUT_72",
    -0.061518 + 0.238732 * t."OUT_0"  + 0.113007 * t."OUT_1"  + -0.123454 * t."OUT_2"  + 0.067677 * t."OUT_3" AS "OUT_73",
    0.185760 + -0.178979 * t."OUT_0"  + 0.001298 * t."OUT_1"  + 0.046885 * t."OUT_2"  + -0.229300 * t."OUT_3" AS "OUT_74",
    -0.002903 + 0.094690 * t."OUT_0"  + -0.104329 * t."OUT_1"  + 0.141157 * t."OUT_2"  + 0.205869 * t."OUT_3" AS "OUT_75",
    0.058455 + 0.117264 * t."OUT_0"  + 0.202597 * t."OUT_1"  + 0.092831 * t."OUT_2"  + -0.229814 * t."OUT_3" AS "OUT_76",
    0.010688 + 0.130491 * t."OUT_0"  + 0.197499 * t."OUT_1"  + 0.211375 * t."OUT_2"  + -0.016586 * t."OUT_3" AS "OUT_77",
    0.006473 + 0.197163 * t."OUT_0"  + -0.111652 * t."OUT_1"  + -0.137573 * t."OUT_2"  + 0.181224 * t."OUT_3" AS "OUT_78",
    0.013324 + -0.113392 * t."OUT_0"  + 0.028795 * t."OUT_1"  + 0.161757 * t."OUT_2"  + 0.002602 * t."OUT_3" AS "OUT_79",
    -0.093854 + 0.091773 * t."OUT_0"  + 0.128582 * t."OUT_1"  + 0.107223 * t."OUT_2"  + -0.050573 * t."OUT_3" AS "OUT_80",
    0.207332 + 0.178033 * t."OUT_0"  + 0.029506 * t."OUT_1"  + 0.244012 * t."OUT_2"  + -0.081051 * t."OUT_3" AS "OUT_81",
    0.227205 + 0.163535 * t."OUT_0"  + -0.014101 * t."OUT_1"  + -0.021007 * t."OUT_2"  + 0.173903 * t."OUT_3" AS "OUT_82",
    0.081045 + -0.030852 * t."OUT_0"  + 0.217737 * t."OUT_1"  + 0.084917 * t."OUT_2"  + -0.124830 * t."OUT_3" AS "OUT_83",
    0.046045 + -0.204278 * t."OUT_0"  + 0.086673 * t."OUT_1"  + 0.144249 * t."OUT_2"  + -0.152597 * t."OUT_3" AS "OUT_84",
    0.061330 + 0.129198 * t."OUT_0"  + 0.100327 * t."OUT_1"  + 0.128603 * t."OUT_2"  + -0.094030 * t."OUT_3" AS "OUT_85",
    -0.026134 + 0.002664 * t."OUT_0"  + -0.169130 * t."OUT_1"  + 0.147436 * t."OUT_2"  + 0.008500 * t."OUT_3" AS "OUT_86",
    0.154070 + -0.045510 * t."OUT_0"  + -0.032623 * t."OUT_1"  + -0.234563 * t."OUT_2"  + 0.170446 * t."OUT_3" AS "OUT_87",
    0.078656 + -0.167532 * t."OUT_0"  + 0.196900 * t."OUT_1"  + 0.091772 * t."OUT_2"  + -0.023737 * t."OUT_3" AS "OUT_88",
    -0.041461 + -0.236487 * t."OUT_0"  + 0.130786 * t."OUT_1"  + 0.205575 * t."OUT_2"  + 0.071922 * t."OUT_3" AS "OUT_89",
    -0.054875 + -0.087854 * t."OUT_0"  + -0.069635 * t."OUT_1"  + 0.049404 * t."OUT_2"  + 0.151620 * t."OUT_3" AS "OUT_90",
    -0.187386 + 0.245350 * t."OUT_0"  + -0.032780 * t."OUT_1"  + 0.220741 * t."OUT_2"  + 0.156766 * t."OUT_3" AS "OUT_91",
    0.230679 + 0.000712 * t."OUT_0"  + 0.166780 * t."OUT_1"  + -0.085477 * t."OUT_2"  + -0.158786 * t."OUT_3" AS "OUT_92",
    -0.200400 + -0.048975 * t."OUT_0"  + -0.124573 * t."OUT_1"  + 0.079715 * t."OUT_2"  + 0.098564 * t."OUT_3" AS "OUT_93",
    -0.117452 + -0.046567 * t."OUT_0"  + 0.033059 * t."OUT_1"  + -0.164074 * t."OUT_2"  + -0.148973 * t."OUT_3" AS "OUT_94",
    0.224428 + -0.205976 * t."OUT_0"  + 0.197816 * t."OUT_1"  + 0.068673 * t."OUT_2"  + 0.136269 * t."OUT_3" AS "OUT_95",
    -0.156734 + 0.080030 * t."OUT_0"  + -0.221392 * t."OUT_1"  + -0.230247 * t."OUT_2"  + -0.175211 * t."OUT_3" AS "OUT_96",
    0.215390 + -0.073063 * t."OUT_0"  + -0.131566 * t."OUT_1"  + 0.134578 * t."OUT_2"  + -0.059070 * t."OUT_3" AS "OUT_97",
    -0.134914 + -0.093217 * t."OUT_0"  + -0.135137 * t."OUT_1"  + 0.004431 * t."OUT_2"  + 0.199270 * t."OUT_3" AS "OUT_98",
    0.219189 + -0.048806 * t."OUT_0"  + -0.125113 * t."OUT_1"  + 0.007153 * t."OUT_2"  + -0.142700 * t."OUT_3" AS "OUT_99"
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
    0.153177 + 0.091872 * t."OUT_0"  + 0.202831 * t."OUT_1"  + -0.159497 * t."OUT_2"  + 0.142856 * t."OUT_3"  + -0.187181 * t."OUT_4"  + 0.236899 * t."OUT_5"  + -0.146581 * t."OUT_6"  + -0.173905 * t."OUT_7"  + -0.130623 * t."OUT_8"  + -0.043106 * t."OUT_9"  + 0.090756 * t."OUT_10"  + 0.157886 * t."OUT_11"  + -0.054382 * t."OUT_12"  + 0.206106 * t."OUT_13"  + -0.089997 * t."OUT_14"  + -0.212115 * t."OUT_15"  + -0.107853 * t."OUT_16"  + -0.017846 * t."OUT_17"  + 0.052047 * t."OUT_18"  + -0.186323 * t."OUT_19"  + 0.130974 * t."OUT_20"  + 0.129299 * t."OUT_21"  + -0.058998 * t."OUT_22"  + -0.108700 * t."OUT_23"  + 0.157869 * t."OUT_24"  + -0.184120 * t."OUT_25"  + 0.201960 * t."OUT_26"  + 0.169806 * t."OUT_27"  + 0.027615 * t."OUT_28"  + -0.196982 * t."OUT_29"  + -0.216899 * t."OUT_30"  + -0.138833 * t."OUT_31"  + 0.044687 * t."OUT_32"  + -0.232564 * t."OUT_33"  + -0.067734 * t."OUT_34"  + -0.084763 * t."OUT_35"  + 0.153542 * t."OUT_36"  + 0.122378 * t."OUT_37"  + -0.183440 * t."OUT_38"  + 0.108585 * t."OUT_39"  + 0.133843 * t."OUT_40"  + 0.046325 * t."OUT_41"  + 0.207116 * t."OUT_42"  + -0.063714 * t."OUT_43"  + -0.170854 * t."OUT_44"  + 0.001236 * t."OUT_45"  + 0.146528 * t."OUT_46"  + -0.173834 * t."OUT_47"  + -0.067123 * t."OUT_48"  + 0.164565 * t."OUT_49"  + -0.158619 * t."OUT_50"  + -0.023332 * t."OUT_51"  + -0.027314 * t."OUT_52"  + 0.112579 * t."OUT_53"  + -0.140956 * t."OUT_54"  + 0.263193 * t."OUT_55"  + 0.011262 * t."OUT_56"  + -0.218735 * t."OUT_57"  + -0.174460 * t."OUT_58"  + 0.158464 * t."OUT_59"  + 0.065961 * t."OUT_60"  + -0.096872 * t."OUT_61"  + -0.004261 * t."OUT_62"  + -0.056876 * t."OUT_63"  + 0.229008 * t."OUT_64"  + 0.214585 * t."OUT_65"  + -0.028451 * t."OUT_66"  + -0.070342 * t."OUT_67"  + 0.153124 * t."OUT_68"  + -0.028699 * t."OUT_69"  + 0.094255 * t."OUT_70"  + 0.035888 * t."OUT_71"  + -0.147084 * t."OUT_72"  + 0.069814 * t."OUT_73"  + 0.098595 * t."OUT_74"  + -0.000089 * t."OUT_75"  + 0.098413 * t."OUT_76"  + -0.003187 * t."OUT_77"  + -0.125453 * t."OUT_78"  + 0.165996 * t."OUT_79"  + -0.127624 * t."OUT_80"  + 0.048099 * t."OUT_81"  + -0.112382 * t."OUT_82"  + -0.105315 * t."OUT_83"  + 0.078595 * t."OUT_84"  + 0.212200 * t."OUT_85"  + -0.216739 * t."OUT_86"  + -0.120561 * t."OUT_87"  + 0.032914 * t."OUT_88"  + -0.102616 * t."OUT_89"  + -0.141826 * t."OUT_90"  + 0.164420 * t."OUT_91"  + -0.172139 * t."OUT_92"  + -0.057205 * t."OUT_93"  + 0.189214 * t."OUT_94"  + 0.244412 * t."OUT_95"  + -0.034807 * t."OUT_96"  + 0.140504 * t."OUT_97"  + -0.089212 * t."OUT_98"  + -0.059055 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
