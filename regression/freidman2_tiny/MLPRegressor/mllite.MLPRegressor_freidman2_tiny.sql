WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t.X_0 AS OUT_0,
    t.X_1 AS OUT_1,
    t.X_2 AS OUT_2,
    t.X_3 AS OUT_3
 FROM model_input AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.091903 + 0.009309 * t.OUT_0  + 0.128929 * t.OUT_1  + -0.066284 * t.OUT_2  + 0.143984 * t.OUT_3 AS OUT_0,
    0.033143 + 0.124602 * t.OUT_0  + -0.169711 * t.OUT_1  + -0.003598 * t.OUT_2  + -0.181313 * t.OUT_3 AS OUT_1,
    0.122204 + -0.098035 * t.OUT_0  + -0.078942 * t.OUT_1  + -0.167284 * t.OUT_2  + -0.166419 * t.OUT_3 AS OUT_2,
    0.246890 + 0.012027 * t.OUT_0  + 0.167836 * t.OUT_1  + 0.178872 * t.OUT_2  + -0.041329 * t.OUT_3 AS OUT_3,
    -0.141618 + 0.015618 * t.OUT_0  + 0.129610 * t.OUT_1  + 0.197402 * t.OUT_2  + -0.195919 * t.OUT_3 AS OUT_4,
    0.034707 + -0.139054 * t.OUT_0  + 0.233931 * t.OUT_1  + 0.071017 * t.OUT_2  + 0.125306 * t.OUT_3 AS OUT_5,
    0.210365 + 0.041214 * t.OUT_0  + 0.146134 * t.OUT_1  + -0.019113 * t.OUT_2  + -0.043746 * t.OUT_3 AS OUT_6,
    0.167779 + -0.020872 * t.OUT_0  + 0.107866 * t.OUT_1  + 0.064744 * t.OUT_2  + -0.099890 * t.OUT_3 AS OUT_7,
    0.182598 + 0.175332 * t.OUT_0  + -0.102064 * t.OUT_1  + 0.024588 * t.OUT_2  + -0.056352 * t.OUT_3 AS OUT_8,
    -0.079812 + 0.024337 * t.OUT_0  + -0.003778 * t.OUT_1  + 0.088782 * t.OUT_2  + 0.124137 * t.OUT_3 AS OUT_9,
    -0.084420 + 0.229752 * t.OUT_0  + 0.097134 * t.OUT_1  + 0.048247 * t.OUT_2  + 0.159469 * t.OUT_3 AS OUT_10,
    -0.074906 + -0.007994 * t.OUT_0  + 0.192461 * t.OUT_1  + 0.173937 * t.OUT_2  + -0.070804 * t.OUT_3 AS OUT_11,
    0.018865 + 0.211726 * t.OUT_0  + 0.091003 * t.OUT_1  + 0.081168 * t.OUT_2  + 0.099892 * t.OUT_3 AS OUT_12,
    -0.204436 + -0.182845 * t.OUT_0  + -0.000589 * t.OUT_1  + -0.100990 * t.OUT_2  + -0.175225 * t.OUT_3 AS OUT_13,
    -0.120636 + -0.128555 * t.OUT_0  + 0.110217 * t.OUT_1  + -0.097267 * t.OUT_2  + 0.171673 * t.OUT_3 AS OUT_14,
    -0.252389 + 0.060734 * t.OUT_0  + 0.138140 * t.OUT_1  + -0.235587 * t.OUT_2  + -0.082549 * t.OUT_3 AS OUT_15,
    -0.080853 + 0.097338 * t.OUT_0  + 0.011408 * t.OUT_1  + -0.158738 * t.OUT_2  + 0.030891 * t.OUT_3 AS OUT_16,
    -0.075174 + -0.115070 * t.OUT_0  + -0.082576 * t.OUT_1  + -0.143667 * t.OUT_2  + -0.147349 * t.OUT_3 AS OUT_17,
    -0.013875 + -0.122237 * t.OUT_0  + -0.065666 * t.OUT_1  + 0.066427 * t.OUT_2  + -0.141136 * t.OUT_3 AS OUT_18,
    -0.040220 + -0.159593 * t.OUT_0  + -0.119020 * t.OUT_1  + -0.034734 * t.OUT_2  + 0.052454 * t.OUT_3 AS OUT_19,
    0.266019 + 0.133822 * t.OUT_0  + 0.156114 * t.OUT_1  + -0.071593 * t.OUT_2  + -0.045737 * t.OUT_3 AS OUT_20,
    0.186724 + -0.207359 * t.OUT_0  + 0.163389 * t.OUT_1  + -0.171179 * t.OUT_2  + 0.242832 * t.OUT_3 AS OUT_21,
    -0.128077 + -0.038297 * t.OUT_0  + -0.166152 * t.OUT_1  + 0.181483 * t.OUT_2  + -0.186997 * t.OUT_3 AS OUT_22,
    -0.027641 + -0.016965 * t.OUT_0  + 0.049699 * t.OUT_1  + -0.121291 * t.OUT_2  + -0.149111 * t.OUT_3 AS OUT_23,
    0.135882 + -0.047717 * t.OUT_0  + -0.153069 * t.OUT_1  + -0.057221 * t.OUT_2  + 0.105694 * t.OUT_3 AS OUT_24,
    -0.216829 + -0.188602 * t.OUT_0  + -0.000634 * t.OUT_1  + 0.083368 * t.OUT_2  + 0.016502 * t.OUT_3 AS OUT_25,
    -0.098281 + -0.093444 * t.OUT_0  + 0.074643 * t.OUT_1  + 0.141619 * t.OUT_2  + 0.193269 * t.OUT_3 AS OUT_26,
    0.015480 + 0.167125 * t.OUT_0  + -0.096650 * t.OUT_1  + 0.104541 * t.OUT_2  + 0.150370 * t.OUT_3 AS OUT_27,
    -0.087587 + 0.013899 * t.OUT_0  + 0.141286 * t.OUT_1  + -0.182583 * t.OUT_2  + -0.113335 * t.OUT_3 AS OUT_28,
    0.002414 + 0.001981 * t.OUT_0  + -0.197302 * t.OUT_1  + 0.154719 * t.OUT_2  + -0.163729 * t.OUT_3 AS OUT_29,
    -0.219782 + -0.185496 * t.OUT_0  + -0.186356 * t.OUT_1  + 0.183259 * t.OUT_2  + -0.169756 * t.OUT_3 AS OUT_30,
    -0.074789 + -0.014669 * t.OUT_0  + 0.150722 * t.OUT_1  + 0.150720 * t.OUT_2  + 0.029038 * t.OUT_3 AS OUT_31,
    -0.039606 + -0.042575 * t.OUT_0  + 0.248456 * t.OUT_1  + 0.044831 * t.OUT_2  + 0.095766 * t.OUT_3 AS OUT_32,
    0.103569 + 0.088631 * t.OUT_0  + -0.158945 * t.OUT_1  + 0.209800 * t.OUT_2  + 0.103501 * t.OUT_3 AS OUT_33,
    -0.046322 + -0.048329 * t.OUT_0  + -0.090225 * t.OUT_1  + 0.150161 * t.OUT_2  + -0.069831 * t.OUT_3 AS OUT_34,
    0.160289 + 0.101698 * t.OUT_0  + -0.154830 * t.OUT_1  + 0.065085 * t.OUT_2  + 0.015125 * t.OUT_3 AS OUT_35,
    -0.018475 + -0.159850 * t.OUT_0  + -0.156878 * t.OUT_1  + -0.081848 * t.OUT_2  + 0.196625 * t.OUT_3 AS OUT_36,
    -0.223956 + 0.180837 * t.OUT_0  + -0.157647 * t.OUT_1  + 0.183208 * t.OUT_2  + -0.176552 * t.OUT_3 AS OUT_37,
    0.189832 + -0.175863 * t.OUT_0  + -0.079753 * t.OUT_1  + -0.208680 * t.OUT_2  + -0.066630 * t.OUT_3 AS OUT_38,
    -0.221136 + 0.129082 * t.OUT_0  + -0.054998 * t.OUT_1  + -0.193415 * t.OUT_2  + -0.074223 * t.OUT_3 AS OUT_39,
    -0.009981 + -0.172538 * t.OUT_0  + -0.157202 * t.OUT_1  + -0.025159 * t.OUT_2  + 0.004695 * t.OUT_3 AS OUT_40,
    -0.008348 + 0.132152 * t.OUT_0  + -0.173181 * t.OUT_1  + -0.013111 * t.OUT_2  + -0.077972 * t.OUT_3 AS OUT_41,
    0.088681 + 0.056575 * t.OUT_0  + -0.183082 * t.OUT_1  + 0.091959 * t.OUT_2  + -0.076356 * t.OUT_3 AS OUT_42,
    -0.267192 + 0.190701 * t.OUT_0  + 0.018885 * t.OUT_1  + 0.169137 * t.OUT_2  + -0.109344 * t.OUT_3 AS OUT_43,
    -0.084426 + -0.150790 * t.OUT_0  + -0.157723 * t.OUT_1  + 0.043977 * t.OUT_2  + -0.050261 * t.OUT_3 AS OUT_44,
    0.196254 + -0.158336 * t.OUT_0  + -0.163386 * t.OUT_1  + -0.038635 * t.OUT_2  + 0.122060 * t.OUT_3 AS OUT_45,
    0.174304 + 0.110056 * t.OUT_0  + 0.077383 * t.OUT_1  + -0.125536 * t.OUT_2  + 0.061376 * t.OUT_3 AS OUT_46,
    -0.143620 + 0.058089 * t.OUT_0  + 0.054866 * t.OUT_1  + -0.169664 * t.OUT_2  + -0.139697 * t.OUT_3 AS OUT_47,
    0.164536 + 0.147572 * t.OUT_0  + -0.051735 * t.OUT_1  + 0.048458 * t.OUT_2  + -0.087689 * t.OUT_3 AS OUT_48,
    0.082666 + 0.235676 * t.OUT_0  + 0.094082 * t.OUT_1  + 0.119577 * t.OUT_2  + 0.042871 * t.OUT_3 AS OUT_49,
    0.181658 + 0.154285 * t.OUT_0  + -0.000107 * t.OUT_1  + -0.241242 * t.OUT_2  + 0.179132 * t.OUT_3 AS OUT_50,
    0.207382 + -0.156031 * t.OUT_0  + -0.158922 * t.OUT_1  + -0.028284 * t.OUT_2  + 0.024223 * t.OUT_3 AS OUT_51,
    -0.099859 + 0.143609 * t.OUT_0  + -0.039579 * t.OUT_1  + 0.151144 * t.OUT_2  + -0.161801 * t.OUT_3 AS OUT_52,
    0.200707 + 0.225609 * t.OUT_0  + 0.228912 * t.OUT_1  + -0.063110 * t.OUT_2  + -0.085678 * t.OUT_3 AS OUT_53,
    0.164247 + -0.173412 * t.OUT_0  + 0.210995 * t.OUT_1  + -0.033995 * t.OUT_2  + -0.227169 * t.OUT_3 AS OUT_54,
    0.198911 + 0.107285 * t.OUT_0  + -0.038270 * t.OUT_1  + -0.040470 * t.OUT_2  + 0.125709 * t.OUT_3 AS OUT_55,
    0.157551 + 0.071129 * t.OUT_0  + -0.174855 * t.OUT_1  + 0.084870 * t.OUT_2  + -0.114836 * t.OUT_3 AS OUT_56,
    0.035240 + 0.018012 * t.OUT_0  + -0.116709 * t.OUT_1  + -0.122389 * t.OUT_2  + -0.046736 * t.OUT_3 AS OUT_57,
    0.004626 + 0.001957 * t.OUT_0  + 0.071612 * t.OUT_1  + -0.030325 * t.OUT_2  + -0.206663 * t.OUT_3 AS OUT_58,
    -0.036752 + 0.137194 * t.OUT_0  + -0.169498 * t.OUT_1  + 0.163042 * t.OUT_2  + 0.033610 * t.OUT_3 AS OUT_59,
    0.000097 + -0.175668 * t.OUT_0  + 0.113188 * t.OUT_1  + 0.104034 * t.OUT_2  + -0.146203 * t.OUT_3 AS OUT_60,
    0.010304 + 0.030311 * t.OUT_0  + -0.127324 * t.OUT_1  + 0.154716 * t.OUT_2  + -0.079805 * t.OUT_3 AS OUT_61,
    0.036184 + 0.107597 * t.OUT_0  + 0.230381 * t.OUT_1  + 0.179057 * t.OUT_2  + 0.200198 * t.OUT_3 AS OUT_62,
    -0.098230 + 0.111043 * t.OUT_0  + 0.203730 * t.OUT_1  + 0.138658 * t.OUT_2  + -0.170767 * t.OUT_3 AS OUT_63,
    -0.151722 + -0.175557 * t.OUT_0  + -0.109984 * t.OUT_1  + 0.077483 * t.OUT_2  + 0.207306 * t.OUT_3 AS OUT_64,
    0.064085 + 0.196000 * t.OUT_0  + 0.154105 * t.OUT_1  + -0.135707 * t.OUT_2  + -0.107368 * t.OUT_3 AS OUT_65,
    0.231954 + -0.133716 * t.OUT_0  + -0.115576 * t.OUT_1  + -0.020091 * t.OUT_2  + 0.093519 * t.OUT_3 AS OUT_66,
    -0.095723 + -0.249667 * t.OUT_0  + 0.148876 * t.OUT_1  + -0.193813 * t.OUT_2  + -0.179508 * t.OUT_3 AS OUT_67,
    -0.110864 + 0.207188 * t.OUT_0  + -0.174208 * t.OUT_1  + 0.087967 * t.OUT_2  + 0.123211 * t.OUT_3 AS OUT_68,
    -0.187401 + 0.204640 * t.OUT_0  + 0.119099 * t.OUT_1  + 0.029838 * t.OUT_2  + -0.134234 * t.OUT_3 AS OUT_69,
    -0.069598 + -0.001652 * t.OUT_0  + 0.079913 * t.OUT_1  + 0.265553 * t.OUT_2  + -0.117306 * t.OUT_3 AS OUT_70,
    -0.116597 + -0.165992 * t.OUT_0  + -0.134079 * t.OUT_1  + 0.123263 * t.OUT_2  + -0.123349 * t.OUT_3 AS OUT_71,
    -0.075080 + -0.037071 * t.OUT_0  + 0.083412 * t.OUT_1  + 0.191882 * t.OUT_2  + -0.251433 * t.OUT_3 AS OUT_72,
    -0.036028 + 0.259951 * t.OUT_0  + 0.141726 * t.OUT_1  + -0.097545 * t.OUT_2  + 0.094108 * t.OUT_3 AS OUT_73,
    0.222978 + -0.140064 * t.OUT_0  + 0.038216 * t.OUT_1  + 0.085182 * t.OUT_2  + -0.192331 * t.OUT_3 AS OUT_74,
    -0.002903 + 0.094690 * t.OUT_0  + -0.104329 * t.OUT_1  + 0.141157 * t.OUT_2  + 0.176397 * t.OUT_3 AS OUT_75,
    0.083547 + 0.138115 * t.OUT_0  + 0.230905 * t.OUT_1  + 0.118350 * t.OUT_2  + -0.203787 * t.OUT_3 AS OUT_76,
    0.032303 + 0.154601 * t.OUT_0  + 0.217252 * t.OUT_1  + 0.233779 * t.OUT_2  + 0.004170 * t.OUT_3 AS OUT_77,
    0.020944 + 0.182096 * t.OUT_0  + -0.097181 * t.OUT_1  + -0.123104 * t.OUT_2  + 0.166350 * t.OUT_3 AS OUT_78,
    0.039335 + -0.091413 * t.OUT_0  + 0.057000 * t.OUT_1  + 0.188603 * t.OUT_2  + 0.029276 * t.OUT_3 AS OUT_79,
    -0.116982 + 0.072775 * t.OUT_0  + 0.102286 * t.OUT_1  + 0.083662 * t.OUT_2  + -0.074622 * t.OUT_3 AS OUT_80,
    0.233445 + 0.199823 * t.OUT_0  + 0.058871 * t.OUT_1  + 0.270527 * t.OUT_2  + -0.053984 * t.OUT_3 AS OUT_81,
    0.216906 + 0.152554 * t.OUT_0  + -0.024456 * t.OUT_1  + -0.031768 * t.OUT_2  + 0.162000 * t.OUT_3 AS OUT_82,
    0.058136 + -0.049637 * t.OUT_0  + 0.191665 * t.OUT_1  + 0.061581 * t.OUT_2  + -0.148660 * t.OUT_3 AS OUT_83,
    0.071449 + -0.183091 * t.OUT_0  + 0.115226 * t.OUT_1  + 0.170054 * t.OUT_2  + -0.126258 * t.OUT_3 AS OUT_84,
    0.085883 + 0.149543 * t.OUT_0  + 0.128084 * t.OUT_1  + 0.153591 * t.OUT_2  + -0.068548 * t.OUT_3 AS OUT_85,
    -0.026134 + 0.002664 * t.OUT_0  + -0.169130 * t.OUT_1  + 0.147436 * t.OUT_2  + 0.008500 * t.OUT_3 AS OUT_86,
    0.154070 + -0.045510 * t.OUT_0  + -0.032623 * t.OUT_1  + -0.204791 * t.OUT_2  + 0.170446 * t.OUT_3 AS OUT_87,
    0.105385 + -0.145153 * t.OUT_0  + 0.226878 * t.OUT_1  + 0.118880 * t.OUT_2  + 0.003949 * t.OUT_3 AS OUT_88,
    -0.064408 + -0.255329 * t.OUT_0  + 0.104734 * t.OUT_1  + 0.182222 * t.OUT_2  + 0.048050 * t.OUT_3 AS OUT_89,
    -0.054875 + -0.087854 * t.OUT_0  + -0.069635 * t.OUT_1  + 0.049404 * t.OUT_2  + 0.151620 * t.OUT_3 AS OUT_90,
    -0.183186 + 0.249564 * t.OUT_0  + -0.030244 * t.OUT_1  + 0.225025 * t.OUT_2  + 0.161844 * t.OUT_3 AS OUT_91,
    0.207307 + -0.018515 * t.OUT_0  + 0.140234 * t.OUT_1  + -0.109283 * t.OUT_2  + -0.183079 * t.OUT_3 AS OUT_92,
    -0.200400 + -0.048975 * t.OUT_0  + -0.124573 * t.OUT_1  + 0.079715 * t.OUT_2  + 0.098564 * t.OUT_3 AS OUT_93,
    -0.092752 + -0.026049 * t.OUT_0  + 0.060896 * t.OUT_1  + -0.138962 * t.OUT_2  + -0.123343 * t.OUT_3 AS OUT_94,
    0.248913 + -0.185693 * t.OUT_0  + 0.225501 * t.OUT_1  + 0.093593 * t.OUT_2  + 0.161682 * t.OUT_3 AS OUT_95,
    -0.156734 + 0.080030 * t.OUT_0  + -0.191749 * t.OUT_1  + -0.200516 * t.OUT_2  + -0.175211 * t.OUT_3 AS OUT_96,
    0.215390 + -0.073063 * t.OUT_0  + -0.131566 * t.OUT_1  + 0.134578 * t.OUT_2  + -0.059070 * t.OUT_3 AS OUT_97,
    -0.134914 + -0.093217 * t.OUT_0  + -0.135137 * t.OUT_1  + 0.004431 * t.OUT_2  + 0.169879 * t.OUT_3 AS OUT_98,
    0.219189 + -0.048806 * t.OUT_0  + -0.125113 * t.OUT_1  + 0.007153 * t.OUT_2  + -0.142700 * t.OUT_3 AS OUT_99
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
    0.177218 + 0.120264 * t.OUT_0  + 0.173396 * t.OUT_1  + -0.159497 * t.OUT_2  + 0.170937 * t.OUT_3  + -0.160824 * t.OUT_4  + 0.265006 * t.OUT_5  + -0.120195 * t.OUT_6  + -0.147616 * t.OUT_7  + -0.145158 * t.OUT_8  + -0.023733 * t.OUT_9  + 0.118419 * t.OUT_10  + 0.185904 * t.OUT_11  + -0.028817 * t.OUT_12  + 0.176631 * t.OUT_13  + -0.063422 * t.OUT_14  + -0.185803 * t.OUT_15  + -0.085033 * t.OUT_16  + -0.017846 * t.OUT_17  + 0.052047 * t.OUT_18  + -0.159528 * t.OUT_19  + 0.158762 * t.OUT_20  + 0.158082 * t.OUT_21  + -0.058998 * t.OUT_22  + -0.083222 * t.OUT_23  + 0.157869 * t.OUT_24  + -0.157352 * t.OUT_25  + 0.232514 * t.OUT_26  + 0.155249 * t.OUT_27  + 0.055959 * t.OUT_28  + -0.167620 * t.OUT_29  + -0.187303 * t.OUT_30  + -0.112319 * t.OUT_31  + 0.072578 * t.OUT_32  + -0.202811 * t.OUT_33  + -0.067734 * t.OUT_34  + -0.084763 * t.OUT_35  + 0.153542 * t.OUT_36  + 0.122378 * t.OUT_37  + -0.156680 * t.OUT_38  + 0.090443 * t.OUT_39  + 0.133843 * t.OUT_40  + 0.046325 * t.OUT_41  + 0.177630 * t.OUT_42  + -0.040524 * t.OUT_43  + -0.170854 * t.OUT_44  + 0.001236 * t.OUT_45  + 0.175112 * t.OUT_46  + -0.148498 * t.OUT_47  + -0.069207 * t.OUT_48  + 0.192211 * t.OUT_49  + -0.137667 * t.OUT_50  + -0.023332 * t.OUT_51  + -0.040967 * t.OUT_52  + 0.140019 * t.OUT_53  + -0.114004 * t.OUT_54  + 0.202455 * t.OUT_55  + 0.011262 * t.OUT_56  + -0.189120 * t.OUT_57  + -0.148616 * t.OUT_58  + 0.158464 * t.OUT_59  + 0.095664 * t.OUT_60  + -0.096872 * t.OUT_61  + 0.022694 * t.OUT_62  + -0.030360 * t.OUT_63  + 0.199289 * t.OUT_64  + 0.242208 * t.OUT_65  + -0.028451 * t.OUT_66  + -0.043323 * t.OUT_67  + 0.153124 * t.OUT_68  + -0.002784 * t.OUT_69  + 0.123792 * t.OUT_70  + 0.035888 * t.OUT_71  + -0.120962 * t.OUT_72  + 0.097271 * t.OUT_73  + 0.140269 * t.OUT_74  + -0.000089 * t.OUT_75  + 0.126019 * t.OUT_76  + 0.023760 * t.OUT_77  + -0.139956 * t.OUT_78  + 0.198603 * t.OUT_79  + -0.101604 * t.OUT_80  + 0.076328 * t.OUT_81  + -0.105743 * t.OUT_82  + -0.078597 * t.OUT_83  + 0.108258 * t.OUT_84  + 0.240062 * t.OUT_85  + -0.187145 * t.OUT_86  + -0.120561 * t.OUT_87  + 0.061103 * t.OUT_88  + -0.075710 * t.OUT_89  + -0.141826 * t.OUT_90  + 0.172836 * t.OUT_91  + -0.145659 * t.OUT_92  + -0.057205 * t.OUT_93  + 0.220268 * t.OUT_94  + 0.272649 * t.OUT_95  + -0.034807 * t.OUT_96  + 0.140504 * t.OUT_97  + -0.089212 * t.OUT_98  + -0.059055 * t.OUT_99 AS OUT_0
   FROM Hidden_Layer_1_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
