WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_original" AS "ADS" 
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
    -0.117091 + -0.012133 * t."OUT_0"  + 0.100548 * t."OUT_1"  + -0.091523 * t."OUT_2"  + 0.117787 * t."OUT_3" AS "OUT_0",
    0.033143 + 0.124602 * t."OUT_0"  + -0.169711 * t."OUT_1"  + -0.003598 * t."OUT_2"  + -0.210842 * t."OUT_3" AS "OUT_1",
    0.122204 + -0.098035 * t."OUT_0"  + -0.078942 * t."OUT_1"  + -0.196642 * t."OUT_2"  + -0.166419 * t."OUT_3" AS "OUT_2",
    0.222082 + -0.009054 * t."OUT_0"  + 0.139843 * t."OUT_1"  + 0.154005 * t."OUT_2"  + -0.067143 * t."OUT_3" AS "OUT_3",
    -0.118162 + 0.035408 * t."OUT_0"  + 0.156219 * t."OUT_1"  + 0.220926 * t."OUT_2"  + -0.171468 * t."OUT_3" AS "OUT_4",
    0.010184 + -0.159864 * t."OUT_0"  + 0.206231 * t."OUT_1"  + 0.046431 * t."OUT_2"  + 0.099781 * t."OUT_3" AS "OUT_5",
    0.233642 + 0.060832 * t."OUT_0"  + 0.172560 * t."OUT_1"  + 0.004230 * t."OUT_2"  + -0.019474 * t."OUT_3" AS "OUT_6",
    0.191188 + -0.001127 * t."OUT_0"  + 0.134427 * t."OUT_1"  + 0.088220 * t."OUT_2"  + -0.075486 * t."OUT_3" AS "OUT_7",
    0.167418 + 0.189610 * t."OUT_0"  + -0.117244 * t."OUT_1"  + 0.009409 * t."OUT_2"  + -0.071532 * t."OUT_3" AS "OUT_8",
    -0.058672 + 0.042047 * t."OUT_0"  + 0.020375 * t."OUT_1"  + 0.109926 * t."OUT_2"  + 0.146273 * t."OUT_3" AS "OUT_9",
    -0.109633 + 0.208292 * t."OUT_0"  + 0.068723 * t."OUT_1"  + 0.022983 * t."OUT_2"  + 0.133244 * t."OUT_3" AS "OUT_10",
    -0.099646 + -0.029011 * t."OUT_0"  + 0.164537 * t."OUT_1"  + 0.149137 * t."OUT_2"  + -0.096549 * t."OUT_3" AS "OUT_11",
    0.040630 + 0.229894 * t."OUT_0"  + 0.115874 * t."OUT_1"  + 0.102969 * t."OUT_2"  + 0.122649 * t."OUT_3" AS "OUT_12",
    -0.204436 + -0.212391 * t."OUT_0"  + -0.000589 * t."OUT_1"  + -0.100990 * t."OUT_2"  + -0.204682 * t."OUT_3" AS "OUT_13",
    -0.097904 + -0.109462 * t."OUT_0"  + 0.136086 * t."OUT_1"  + -0.074476 * t."OUT_2"  + 0.195399 * t."OUT_3" AS "OUT_14",
    -0.228858 + 0.080597 * t."OUT_0"  + 0.164826 * t."OUT_1"  + -0.211989 * t."OUT_2"  + -0.058022 * t."OUT_3" AS "OUT_15",
    -0.057821 + 0.116731 * t."OUT_0"  + 0.037576 * t."OUT_1"  + -0.135638 * t."OUT_2"  + 0.054914 * t."OUT_3" AS "OUT_16",
    -0.075174 + -0.115070 * t."OUT_0"  + -0.082576 * t."OUT_1"  + -0.143667 * t."OUT_2"  + -0.147349 * t."OUT_3" AS "OUT_17",
    -0.013875 + -0.122237 * t."OUT_0"  + -0.065666 * t."OUT_1"  + 0.066427 * t."OUT_2"  + -0.141136 * t."OUT_3" AS "OUT_18",
    -0.040220 + -0.186389 * t."OUT_0"  + -0.119020 * t."OUT_1"  + -0.034734 * t."OUT_2"  + 0.052454 * t."OUT_3" AS "OUT_19",
    0.241146 + 0.112680 * t."OUT_0"  + 0.128054 * t."OUT_1"  + -0.096524 * t."OUT_2"  + -0.071616 * t."OUT_3" AS "OUT_20",
    0.161796 + -0.228582 * t."OUT_0"  + 0.135319 * t."OUT_1"  + -0.196151 * t."OUT_2"  + 0.216900 * t."OUT_3" AS "OUT_21",
    -0.128077 + -0.038297 * t."OUT_0"  + -0.166152 * t."OUT_1"  + 0.211014 * t."OUT_2"  + -0.216590 * t."OUT_3" AS "OUT_22",
    -0.004642 + 0.002388 * t."OUT_0"  + 0.075838 * t."OUT_1"  + -0.098229 * t."OUT_2"  + -0.125119 * t."OUT_3" AS "OUT_23",
    0.135882 + -0.047717 * t."OUT_0"  + -0.153069 * t."OUT_1"  + -0.057221 * t."OUT_2"  + 0.105694 * t."OUT_3" AS "OUT_24",
    -0.216829 + -0.218212 * t."OUT_0"  + -0.000634 * t."OUT_1"  + 0.083368 * t."OUT_2"  + 0.016502 * t."OUT_3" AS "OUT_25",
    -0.122939 + -0.114411 * t."OUT_0"  + 0.046851 * t."OUT_1"  + 0.116911 * t."OUT_2"  + 0.167610 * t."OUT_3" AS "OUT_26",
    0.030725 + 0.211725 * t."OUT_0"  + -0.081405 * t."OUT_1"  + 0.119784 * t."OUT_2"  + 0.165614 * t."OUT_3" AS "OUT_27",
    -0.114748 + -0.009394 * t."OUT_0"  + 0.110888 * t."OUT_1"  + -0.209722 * t."OUT_2"  + -0.141538 * t."OUT_3" AS "OUT_28",
    0.002414 + 0.001981 * t."OUT_0"  + -0.227001 * t."OUT_1"  + 0.179499 * t."OUT_2"  + -0.163729 * t."OUT_3" AS "OUT_29",
    -0.219782 + -0.215072 * t."OUT_0"  + -0.215941 * t."OUT_1"  + 0.212810 * t."OUT_2"  + -0.199146 * t."OUT_3" AS "OUT_30",
    -0.051559 + 0.004903 * t."OUT_0"  + 0.177099 * t."OUT_1"  + 0.174014 * t."OUT_2"  + 0.053262 * t."OUT_3" AS "OUT_31",
    -0.065769 + -0.064935 * t."OUT_0"  + 0.219077 * t."OUT_1"  + 0.018647 * t."OUT_2"  + 0.068579 * t."OUT_3" AS "OUT_32",
    0.103569 + 0.088631 * t."OUT_0"  + -0.158945 * t."OUT_1"  + 0.239618 * t."OUT_2"  + 0.103501 * t."OUT_3" AS "OUT_33",
    -0.046322 + -0.048329 * t."OUT_0"  + -0.090225 * t."OUT_1"  + 0.150161 * t."OUT_2"  + -0.069831 * t."OUT_3" AS "OUT_34",
    0.160289 + 0.101698 * t."OUT_0"  + -0.181566 * t."OUT_1"  + 0.065085 * t."OUT_2"  + 0.015125 * t."OUT_3" AS "OUT_35",
    -0.018475 + -0.159850 * t."OUT_0"  + -0.183640 * t."OUT_1"  + -0.081848 * t."OUT_2"  + 0.226317 * t."OUT_3" AS "OUT_36",
    -0.223956 + 0.210360 * t."OUT_0"  + -0.184418 * t."OUT_1"  + 0.212759 * t."OUT_2"  + -0.176552 * t."OUT_3" AS "OUT_37",
    0.189832 + -0.175863 * t."OUT_0"  + -0.079753 * t."OUT_1"  + -0.238487 * t."OUT_2"  + -0.066630 * t."OUT_3" AS "OUT_38",
    -0.190859 + 0.158104 * t."OUT_0"  + -0.023656 * t."OUT_1"  + -0.192479 * t."OUT_2"  + -0.044962 * t."OUT_3" AS "OUT_39",
    -0.009981 + -0.172538 * t."OUT_0"  + -0.157202 * t."OUT_1"  + -0.025159 * t."OUT_2"  + 0.004695 * t."OUT_3" AS "OUT_40",
    -0.008348 + 0.132152 * t."OUT_0"  + -0.173181 * t."OUT_1"  + -0.013111 * t."OUT_2"  + -0.077972 * t."OUT_3" AS "OUT_41",
    0.088681 + 0.056575 * t."OUT_0"  + -0.212631 * t."OUT_1"  + 0.091959 * t."OUT_2"  + -0.076356 * t."OUT_3" AS "OUT_42",
    -0.244964 + 0.209328 * t."OUT_0"  + 0.044223 * t."OUT_1"  + 0.191419 * t."OUT_2"  + -0.086129 * t."OUT_3" AS "OUT_43",
    -0.084426 + -0.150790 * t."OUT_0"  + -0.157723 * t."OUT_1"  + 0.043977 * t."OUT_2"  + -0.050261 * t."OUT_3" AS "OUT_44",
    0.196254 + -0.185116 * t."OUT_0"  + -0.190227 * t."OUT_1"  + -0.038635 * t."OUT_2"  + 0.122060 * t."OUT_3" AS "OUT_45",
    0.149501 + 0.088980 * t."OUT_0"  + 0.049395 * t."OUT_1"  + -0.150399 * t."OUT_2"  + 0.035568 * t."OUT_3" AS "OUT_46",
    -0.120203 + 0.077844 * t."OUT_0"  + 0.081434 * t."OUT_1"  + -0.146180 * t."OUT_2"  + -0.115286 * t."OUT_3" AS "OUT_47",
    0.163830 + 0.146782 * t."OUT_0"  + -0.051892 * t."OUT_1"  + 0.047229 * t."OUT_2"  + -0.087401 * t."OUT_3" AS "OUT_48",
    0.057943 + 0.214678 * t."OUT_0"  + 0.066174 * t."OUT_1"  + 0.094794 * t."OUT_2"  + 0.017142 * t."OUT_3" AS "OUT_49",
    0.205052 + 0.174027 * t."OUT_0"  + 0.026431 * t."OUT_1"  + -0.217778 * t."OUT_2"  + 0.203517 * t."OUT_3" AS "OUT_50",
    0.207382 + -0.156031 * t."OUT_0"  + -0.158922 * t."OUT_1"  + -0.028284 * t."OUT_2"  + 0.024223 * t."OUT_3" AS "OUT_51",
    -0.111941 + 0.131117 * t."OUT_0"  + -0.051187 * t."OUT_1"  + 0.139319 * t."OUT_2"  + -0.201260 * t."OUT_3" AS "OUT_52",
    0.175715 + 0.204355 * t."OUT_0"  + 0.200729 * t."OUT_1"  + -0.088158 * t."OUT_2"  + -0.111678 * t."OUT_3" AS "OUT_53",
    0.187485 + -0.153832 * t."OUT_0"  + 0.237382 * t."OUT_1"  + -0.010692 * t."OUT_2"  + -0.202935 * t."OUT_3" AS "OUT_54",
    0.231411 + 0.139764 * t."OUT_0"  + -0.005315 * t."OUT_1"  + -0.008057 * t."OUT_2"  + 0.157676 * t."OUT_3" AS "OUT_55",
    0.157551 + 0.071129 * t."OUT_0"  + -0.204307 * t."OUT_1"  + 0.084870 * t."OUT_2"  + -0.114836 * t."OUT_3" AS "OUT_56",
    0.035240 + 0.018012 * t."OUT_0"  + -0.116709 * t."OUT_1"  + -0.122389 * t."OUT_2"  + -0.046736 * t."OUT_3" AS "OUT_57",
    0.028042 + 0.021709 * t."OUT_0"  + 0.098179 * t."OUT_1"  + -0.006843 * t."OUT_2"  + -0.182253 * t."OUT_3" AS "OUT_58",
    -0.036752 + 0.137194 * t."OUT_0"  + -0.198884 * t."OUT_1"  + 0.163042 * t."OUT_2"  + 0.033610 * t."OUT_3" AS "OUT_59",
    -0.025518 + -0.197551 * t."OUT_0"  + 0.084423 * t."OUT_1"  + 0.078389 * t."OUT_2"  + -0.172827 * t."OUT_3" AS "OUT_60",
    0.010304 + 0.030311 * t."OUT_0"  + -0.127324 * t."OUT_1"  + 0.154716 * t."OUT_2"  + -0.079805 * t."OUT_3" AS "OUT_61",
    0.018926 + 0.087688 * t."OUT_0"  + 0.215283 * t."OUT_1"  + 0.160597 * t."OUT_2"  + 0.183998 * t."OUT_3" AS "OUT_62",
    -0.076395 + 0.129271 * t."OUT_0"  + 0.228679 * t."OUT_1"  + 0.160530 * t."OUT_2"  + -0.147938 * t."OUT_3" AS "OUT_63",
    -0.151722 + -0.205019 * t."OUT_0"  + -0.109984 * t."OUT_1"  + 0.077483 * t."OUT_2"  + 0.237101 * t."OUT_3" AS "OUT_64",
    0.039514 + 0.175146 * t."OUT_0"  + 0.126354 * t."OUT_1"  + -0.160340 * t."OUT_2"  + -0.132942 * t."OUT_3" AS "OUT_65",
    0.231954 + -0.133716 * t."OUT_0"  + -0.115576 * t."OUT_1"  + -0.020091 * t."OUT_2"  + 0.093519 * t."OUT_3" AS "OUT_66",
    -0.073392 + -0.230936 * t."OUT_0"  + 0.174307 * t."OUT_1"  + -0.171441 * t."OUT_2"  + -0.156183 * t."OUT_3" AS "OUT_67",
    -0.110864 + 0.236982 * t."OUT_0"  + -0.203653 * t."OUT_1"  + 0.087967 * t."OUT_2"  + 0.123211 * t."OUT_3" AS "OUT_68",
    -0.168345 + 0.220165 * t."OUT_0"  + 0.141192 * t."OUT_1"  + 0.048782 * t."OUT_2"  + -0.114165 * t."OUT_3" AS "OUT_69",
    -0.094771 + -0.023084 * t."OUT_0"  + 0.051550 * t."OUT_1"  + 0.240327 * t."OUT_2"  + -0.143486 * t."OUT_3" AS "OUT_70",
    -0.116597 + -0.195333 * t."OUT_0"  + -0.134079 * t."OUT_1"  + 0.123263 * t."OUT_2"  + -0.123349 * t."OUT_3" AS "OUT_71",
    -0.051795 + -0.017445 * t."OUT_0"  + 0.109845 * t."OUT_1"  + 0.215233 * t."OUT_2"  + -0.227153 * t."OUT_3" AS "OUT_72",
    -0.061539 + 0.238210 * t."OUT_0"  + 0.113010 * t."OUT_1"  + -0.123098 * t."OUT_2"  + 0.067582 * t."OUT_3" AS "OUT_73",
    0.186093 + -0.178365 * t."OUT_0"  + 0.001722 * t."OUT_1"  + 0.047517 * t."OUT_2"  + -0.229206 * t."OUT_3" AS "OUT_74",
    -0.002903 + 0.094690 * t."OUT_0"  + -0.104329 * t."OUT_1"  + 0.141157 * t."OUT_2"  + 0.205869 * t."OUT_3" AS "OUT_75",
    0.058433 + 0.116745 * t."OUT_0"  + 0.202598 * t."OUT_1"  + 0.093183 * t."OUT_2"  + -0.229910 * t."OUT_3" AS "OUT_76",
    0.010816 + 0.130824 * t."OUT_0"  + 0.197659 * t."OUT_1"  + 0.211274 * t."OUT_2"  + -0.016398 * t."OUT_3" AS "OUT_77",
    0.005762 + 0.196451 * t."OUT_0"  + -0.112364 * t."OUT_1"  + -0.138285 * t."OUT_2"  + 0.180512 * t."OUT_3" AS "OUT_78",
    0.013572 + -0.113667 * t."OUT_0"  + 0.028875 * t."OUT_1"  + 0.162468 * t."OUT_2"  + 0.002767 * t."OUT_3" AS "OUT_79",
    -0.093825 + 0.092280 * t."OUT_0"  + 0.128588 * t."OUT_1"  + 0.106884 * t."OUT_2"  + -0.050471 * t."OUT_3" AS "OUT_80",
    0.207312 + 0.177502 * t."OUT_0"  + 0.029513 * t."OUT_1"  + 0.244373 * t."OUT_2"  + -0.081144 * t."OUT_3" AS "OUT_81",
    0.227557 + 0.163909 * t."OUT_0"  + -0.013732 * t."OUT_1"  + -0.020598 * t."OUT_2"  + 0.174507 * t."OUT_3" AS "OUT_82",
    0.081074 + -0.030345 * t."OUT_0"  + 0.217744 * t."OUT_1"  + 0.084580 * t."OUT_2"  + -0.124728 * t."OUT_3" AS "OUT_83",
    0.046049 + -0.204768 * t."OUT_0"  + 0.086678 * t."OUT_1"  + 0.144618 * t."OUT_2"  + -0.152666 * t."OUT_3" AS "OUT_84",
    0.061305 + 0.128682 * t."OUT_0"  + 0.100326 * t."OUT_1"  + 0.128951 * t."OUT_2"  + -0.094129 * t."OUT_3" AS "OUT_85",
    -0.026134 + 0.002664 * t."OUT_0"  + -0.169130 * t."OUT_1"  + 0.147436 * t."OUT_2"  + 0.008500 * t."OUT_3" AS "OUT_86",
    0.154070 + -0.045510 * t."OUT_0"  + -0.032623 * t."OUT_1"  + -0.234563 * t."OUT_2"  + 0.170446 * t."OUT_3" AS "OUT_87",
    0.078641 + -0.168060 * t."OUT_0"  + 0.196908 * t."OUT_1"  + 0.092138 * t."OUT_2"  + -0.023828 * t."OUT_3" AS "OUT_88",
    -0.041455 + -0.236002 * t."OUT_0"  + 0.130789 * t."OUT_1"  + 0.205223 * t."OUT_2"  + 0.071998 * t."OUT_3" AS "OUT_89",
    -0.054875 + -0.087854 * t."OUT_0"  + -0.069635 * t."OUT_1"  + 0.049404 * t."OUT_2"  + 0.151620 * t."OUT_3" AS "OUT_90",
    -0.186224 + 0.246667 * t."OUT_0"  + -0.031564 * t."OUT_1"  + 0.221742 * t."OUT_2"  + 0.158124 * t."OUT_3" AS "OUT_91",
    0.230707 + 0.001221 * t."OUT_0"  + 0.166786 * t."OUT_1"  + -0.085817 * t."OUT_2"  + -0.158684 * t."OUT_3" AS "OUT_92",
    -0.200400 + -0.048975 * t."OUT_0"  + -0.124573 * t."OUT_1"  + 0.079715 * t."OUT_2"  + 0.098564 * t."OUT_3" AS "OUT_93",
    -0.117451 + -0.047057 * t."OUT_0"  + 0.033062 * t."OUT_1"  + -0.163710 * t."OUT_2"  + -0.149044 * t."OUT_3" AS "OUT_94",
    0.224404 + -0.206490 * t."OUT_0"  + 0.197814 * t."OUT_1"  + 0.069021 * t."OUT_2"  + 0.136171 * t."OUT_3" AS "OUT_95",
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
    0.153151 + 0.091883 * t."OUT_0"  + 0.202831 * t."OUT_1"  + -0.159497 * t."OUT_2"  + 0.142862 * t."OUT_3"  + -0.187202 * t."OUT_4"  + 0.236948 * t."OUT_5"  + -0.146609 * t."OUT_6"  + -0.173913 * t."OUT_7"  + -0.130059 * t."OUT_8"  + -0.043236 * t."OUT_9"  + 0.090613 * t."OUT_10"  + 0.157898 * t."OUT_11"  + -0.054491 * t."OUT_12"  + 0.206106 * t."OUT_13"  + -0.089958 * t."OUT_14"  + -0.212150 * t."OUT_15"  + -0.108014 * t."OUT_16"  + -0.017846 * t."OUT_17"  + 0.052047 * t."OUT_18"  + -0.186323 * t."OUT_19"  + 0.130927 * t."OUT_20"  + 0.129412 * t."OUT_21"  + -0.058998 * t."OUT_22"  + -0.108714 * t."OUT_23"  + 0.157869 * t."OUT_24"  + -0.184120 * t."OUT_25"  + 0.202141 * t."OUT_26"  + 0.170632 * t."OUT_27"  + 0.027625 * t."OUT_28"  + -0.196982 * t."OUT_29"  + -0.216899 * t."OUT_30"  + -0.138843 * t."OUT_31"  + 0.044705 * t."OUT_32"  + -0.232564 * t."OUT_33"  + -0.067734 * t."OUT_34"  + -0.084763 * t."OUT_35"  + 0.153542 * t."OUT_36"  + 0.122378 * t."OUT_37"  + -0.183440 * t."OUT_38"  + 0.112132 * t."OUT_39"  + 0.133843 * t."OUT_40"  + 0.046325 * t."OUT_41"  + 0.207116 * t."OUT_42"  + -0.063927 * t."OUT_43"  + -0.170854 * t."OUT_44"  + 0.001236 * t."OUT_45"  + 0.146442 * t."OUT_46"  + -0.173897 * t."OUT_47"  + -0.066991 * t."OUT_48"  + 0.164414 * t."OUT_49"  + -0.158879 * t."OUT_50"  + -0.023332 * t."OUT_51"  + -0.026933 * t."OUT_52"  + 0.112523 * t."OUT_53"  + -0.140922 * t."OUT_54"  + 0.264780 * t."OUT_55"  + 0.011262 * t."OUT_56"  + -0.218735 * t."OUT_57"  + -0.174482 * t."OUT_58"  + 0.158464 * t."OUT_59"  + 0.066136 * t."OUT_60"  + -0.096872 * t."OUT_61"  + -0.004291 * t."OUT_62"  + -0.056914 * t."OUT_63"  + 0.229008 * t."OUT_64"  + 0.214512 * t."OUT_65"  + -0.028451 * t."OUT_66"  + -0.070263 * t."OUT_67"  + 0.153124 * t."OUT_68"  + -0.028788 * t."OUT_69"  + 0.094298 * t."OUT_70"  + 0.035888 * t."OUT_71"  + -0.147084 * t."OUT_72"  + 0.069707 * t."OUT_73"  + 0.098855 * t."OUT_74"  + -0.000089 * t."OUT_75"  + 0.098382 * t."OUT_76"  + -0.003230 * t."OUT_77"  + -0.124832 * t."OUT_78"  + 0.166324 * t."OUT_79"  + -0.127672 * t."OUT_80"  + 0.047861 * t."OUT_81"  + -0.112554 * t."OUT_82"  + -0.105313 * t."OUT_83"  + 0.078769 * t."OUT_84"  + 0.212134 * t."OUT_85"  + -0.216739 * t."OUT_86"  + -0.120561 * t."OUT_87"  + 0.032968 * t."OUT_88"  + -0.102509 * t."OUT_89"  + -0.141826 * t."OUT_90"  + 0.166494 * t."OUT_91"  + -0.172147 * t."OUT_92"  + -0.057205 * t."OUT_93"  + 0.189342 * t."OUT_94"  + 0.244478 * t."OUT_95"  + -0.034807 * t."OUT_96"  + 0.140504 * t."OUT_97"  + -0.089212 * t."OUT_98"  + -0.059055 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
