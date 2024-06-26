WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_small" AS "ADS" 
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
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    0.195896 + 0.012282 * t."OUT_0"  + 0.128589 * t."OUT_1"  + -0.061875 * t."OUT_2"  + 0.143541 * t."OUT_3"  + -0.086014 * t."OUT_4"  + 0.054114 * t."OUT_5"  + 0.109611 * t."OUT_6"  + -0.143400 * t."OUT_7"  + 0.184404 * t."OUT_8"  + 0.160419 * t."OUT_9" AS "OUT_0",
    0.110751 + 0.092645 * t."OUT_0"  + -0.193511 * t."OUT_1"  + -0.032011 * t."OUT_2"  + -0.233532 * t."OUT_3"  + 0.003701 * t."OUT_4"  + 0.222850 * t."OUT_5"  + -0.048603 * t."OUT_6"  + -0.097234 * t."OUT_7"  + -0.130336 * t."OUT_8"  + 0.083459 * t."OUT_9" AS "OUT_1",
    0.162792 + -0.126915 * t."OUT_0"  + -0.108333 * t."OUT_1"  + -0.222797 * t."OUT_2"  + -0.193417 * t."OUT_3"  + 0.087219 * t."OUT_4"  + -0.121257 * t."OUT_5"  + -0.153808 * t."OUT_6"  + -0.201375 * t."OUT_7"  + -0.132455 * t."OUT_8"  + -0.170629 * t."OUT_9" AS "OUT_2",
    0.079588 + 0.015825 * t."OUT_0"  + 0.167321 * t."OUT_1"  + 0.177396 * t."OUT_2"  + -0.035749 * t."OUT_3"  + 0.244309 * t."OUT_4"  + 0.102296 * t."OUT_5"  + 0.001713 * t."OUT_6"  + 0.006882 * t."OUT_7"  + -0.075949 * t."OUT_8"  + -0.012499 * t."OUT_9" AS "OUT_3",
    0.139616 + 0.012119 * t."OUT_0"  + 0.122966 * t."OUT_1"  + 0.189535 * t."OUT_2"  + -0.193872 * t."OUT_3"  + -0.140886 * t."OUT_4"  + -0.150509 * t."OUT_5"  + 0.137726 * t."OUT_6"  + -0.098980 * t."OUT_7"  + 0.189185 * t."OUT_8"  + -0.198040 * t."OUT_9" AS "OUT_4",
    0.059020 + -0.195338 * t."OUT_0"  + 0.167360 * t."OUT_1"  + 0.008259 * t."OUT_2"  + 0.062001 * t."OUT_3"  + -0.026294 * t."OUT_4"  + 0.257085 * t."OUT_5"  + -0.136821 * t."OUT_6"  + -0.256007 * t."OUT_7"  + -0.174627 * t."OUT_8"  + -0.197047 * t."OUT_9" AS "OUT_5",
    -0.126847 + 0.067695 * t."OUT_0"  + 0.169704 * t."OUT_1"  + 0.009696 * t."OUT_2"  + -0.015207 * t."OUT_3"  + 0.232067 * t."OUT_4"  + -0.142470 * t."OUT_5"  + -0.201494 * t."OUT_6"  + -0.002551 * t."OUT_7"  + -0.143924 * t."OUT_8"  + 0.174494 * t."OUT_9" AS "OUT_6",
    0.192640 + 0.039855 * t."OUT_0"  + 0.165006 * t."OUT_1"  + 0.123765 * t."OUT_2"  + -0.037263 * t."OUT_3"  + 0.223200 * t."OUT_4"  + -0.200963 * t."OUT_5"  + -0.003087 * t."OUT_6"  + -0.109377 * t."OUT_7"  + -0.006732 * t."OUT_8"  + 0.174502 * t."OUT_9" AS "OUT_7",
    -0.074359 + 0.199127 * t."OUT_0"  + -0.099241 * t."OUT_1"  + 0.023908 * t."OUT_2"  + -0.054794 * t."OUT_3"  + 0.177548 * t."OUT_4"  + -0.139093 * t."OUT_5"  + 0.031582 * t."OUT_6"  + 0.081630 * t."OUT_7"  + -0.052523 * t."OUT_8"  + -0.088494 * t."OUT_9" AS "OUT_8",
    0.127594 + 0.082151 * t."OUT_0"  + 0.054598 * t."OUT_1"  + 0.145278 * t."OUT_2"  + 0.178818 * t."OUT_3"  + -0.019324 * t."OUT_4"  + -0.077233 * t."OUT_5"  + -0.106547 * t."OUT_6"  + 0.186875 * t."OUT_7"  + 0.137198 * t."OUT_8"  + 0.162323 * t."OUT_9" AS "OUT_9",
    -0.127235 + 0.194186 * t."OUT_0"  + 0.065246 * t."OUT_1"  + 0.017044 * t."OUT_2"  + 0.126146 * t."OUT_3"  + -0.111194 * t."OUT_4"  + 0.084523 * t."OUT_5"  + 0.069393 * t."OUT_6"  + 0.122799 * t."OUT_7"  + -0.204356 * t."OUT_8"  + 0.085913 * t."OUT_9" AS "OUT_10",
    0.262049 + -0.004241 * t."OUT_0"  + 0.190665 * t."OUT_1"  + 0.171999 * t."OUT_2"  + -0.065006 * t."OUT_3"  + -0.069185 * t."OUT_4"  + 0.117378 * t."OUT_5"  + 0.117949 * t."OUT_6"  + 0.100835 * t."OUT_7"  + -0.089036 * t."OUT_8"  + -0.032632 * t."OUT_9" AS "OUT_11",
    -0.038703 + 0.218352 * t."OUT_0"  + 0.099458 * t."OUT_1"  + 0.092420 * t."OUT_2"  + 0.108565 * t."OUT_3"  + 0.059448 * t."OUT_4"  + -0.039043 * t."OUT_5"  + 0.008086 * t."OUT_6"  + -0.021133 * t."OUT_7"  + -0.141178 * t."OUT_8"  + 0.055349 * t."OUT_9" AS "OUT_12",
    -0.171234 + -0.206518 * t."OUT_0"  + -0.000572 * t."OUT_1"  + -0.098198 * t."OUT_2"  + -0.199022 * t."OUT_3"  + -0.198782 * t."OUT_4"  + 0.197494 * t."OUT_5"  + 0.103546 * t."OUT_6"  + -0.225788 * t."OUT_7"  + -0.096989 * t."OUT_8"  + -0.161775 * t."OUT_9" AS "OUT_13",
    -0.201717 + -0.097840 * t."OUT_0"  + 0.134318 * t."OUT_1"  + -0.066766 * t."OUT_2"  + 0.193798 * t."OUT_3"  + -0.090239 * t."OUT_4"  + -0.087882 * t."OUT_5"  + 0.059954 * t."OUT_6"  + -0.221204 * t."OUT_7"  + 0.187060 * t."OUT_8"  + -0.003387 * t."OUT_9" AS "OUT_14",
    0.226811 + 0.120628 * t."OUT_0"  + 0.195869 * t."OUT_1"  + -0.166836 * t."OUT_2"  + -0.018981 * t."OUT_3"  + -0.183928 * t."OUT_4"  + -0.239033 * t."OUT_5"  + -0.023800 * t."OUT_6"  + 0.230683 * t."OUT_7"  + 0.000873 * t."OUT_8"  + 0.215070 * t."OUT_9" AS "OUT_15",
    0.022748 + 0.156562 * t."OUT_0"  + 0.071971 * t."OUT_1"  + -0.131546 * t."OUT_2"  + 0.090503 * t."OUT_3"  + -0.084076 * t."OUT_4"  + -0.140483 * t."OUT_5"  + -0.047813 * t."OUT_6"  + -0.104621 * t."OUT_7"  + 0.145240 * t."OUT_8"  + -0.133527 * t."OUT_9" AS "OUT_16",
    -0.212649 + -0.111888 * t."OUT_0"  + -0.080293 * t."OUT_1"  + -0.139694 * t."OUT_2"  + -0.143274 * t."OUT_3"  + -0.073095 * t."OUT_4"  + -0.017101 * t."OUT_5"  + 0.207751 * t."OUT_6"  + 0.030043 * t."OUT_7"  + -0.105657 * t."OUT_8"  + 0.191617 * t."OUT_9" AS "OUT_17",
    -0.184909 + -0.118856 * t."OUT_0"  + -0.063850 * t."OUT_1"  + 0.064590 * t."OUT_2"  + -0.137233 * t."OUT_3"  + -0.013491 * t."OUT_4"  + 0.049873 * t."OUT_5"  + -0.147090 * t."OUT_6"  + -0.127053 * t."OUT_7"  + -0.067582 * t."OUT_8"  + 0.133874 * t."OUT_9" AS "OUT_18",
    -0.101903 + -0.181234 * t."OUT_0"  + -0.115728 * t."OUT_1"  + -0.033774 * t."OUT_2"  + 0.051003 * t."OUT_3"  + -0.039108 * t."OUT_4"  + -0.178538 * t."OUT_5"  + -0.152534 * t."OUT_6"  + 0.230009 * t."OUT_7"  + -0.087059 * t."OUT_8"  + 0.123201 * t."OUT_9" AS "OUT_19",
    0.143391 + 0.091519 * t."OUT_0"  + 0.113189 * t."OUT_1"  + -0.108874 * t."OUT_2"  + -0.082765 * t."OUT_3"  + 0.220174 * t."OUT_4"  + 0.133274 * t."OUT_5"  + -0.113953 * t."OUT_6"  + -0.043834 * t."OUT_7"  + 0.141795 * t."OUT_8"  + -0.208707 * t."OUT_9" AS "OUT_20",
    0.048225 + -0.261806 * t."OUT_0"  + 0.097587 * t."OUT_1"  + -0.227447 * t."OUT_2"  + 0.175559 * t."OUT_3"  + 0.119334 * t."OUT_4"  + 0.149099 * t."OUT_5"  + -0.176269 * t."OUT_6"  + 0.009738 * t."OUT_7"  + 0.107107 * t."OUT_8"  + -0.018776 * t."OUT_9" AS "OUT_21",
    0.145061 + -0.004844 * t."OUT_0"  + -0.129179 * t."OUT_1"  + 0.237573 * t."OUT_2"  + -0.178198 * t."OUT_3"  + -0.092128 * t."OUT_4"  + -0.088912 * t."OUT_5"  + -0.211025 * t."OUT_6"  + -0.101890 * t."OUT_7"  + -0.179531 * t."OUT_8"  + 0.118537 * t."OUT_9" AS "OUT_22",
    0.048024 + 0.044995 * t."OUT_0"  + 0.064212 * t."OUT_1"  + -0.062572 * t."OUT_2"  + -0.133690 * t."OUT_3"  + -0.026662 * t."OUT_4"  + -0.134298 * t."OUT_5"  + 0.112689 * t."OUT_6"  + -0.029491 * t."OUT_7"  + -0.058371 * t."OUT_8"  + -0.245714 * t."OUT_9" AS "OUT_23",
    0.187245 + -0.077567 * t."OUT_0"  + -0.179988 * t."OUT_1"  + -0.086811 * t."OUT_2"  + 0.071591 * t."OUT_3"  + 0.100939 * t."OUT_4"  + 0.182427 * t."OUT_5"  + 0.037734 * t."OUT_6"  + -0.039610 * t."OUT_7"  + -0.244768 * t."OUT_8"  + 0.173273 * t."OUT_9" AS "OUT_24",
    0.079707 + -0.176545 * t."OUT_0"  + 0.034205 * t."OUT_1"  + 0.116597 * t."OUT_2"  + 0.051498 * t."OUT_3"  + -0.230725 * t."OUT_4"  + -0.208032 * t."OUT_5"  + -0.110109 * t."OUT_6"  + -0.134257 * t."OUT_7"  + 0.221697 * t."OUT_8"  + -0.106672 * t."OUT_9" AS "OUT_25",
    -0.065669 + -0.119584 * t."OUT_0"  + 0.043865 * t."OUT_1"  + 0.108315 * t."OUT_2"  + 0.159499 * t."OUT_3"  + -0.124184 * t."OUT_4"  + 0.193194 * t."OUT_5"  + 0.062576 * t."OUT_6"  + -0.179792 * t."OUT_7"  + 0.026405 * t."OUT_8"  + 0.100807 * t."OUT_9" AS "OUT_26",
    -0.047102 + 0.174785 * t."OUT_0"  + -0.076419 * t."OUT_1"  + 0.084217 * t."OUT_2"  + 0.130277 * t."OUT_3"  + 0.000896 * t."OUT_4"  + 0.134096 * t."OUT_5"  + 0.083691 * t."OUT_6"  + -0.057163 * t."OUT_7"  + -0.021156 * t."OUT_8"  + -0.210850 * t."OUT_9" AS "OUT_27",
    -0.119893 + -0.017166 * t."OUT_0"  + 0.106709 * t."OUT_1"  + -0.208821 * t."OUT_2"  + -0.140596 * t."OUT_3"  + -0.115747 * t."OUT_4"  + 0.024943 * t."OUT_5"  + 0.055378 * t."OUT_6"  + 0.165398 * t."OUT_7"  + 0.144472 * t."OUT_8"  + 0.080090 * t."OUT_9" AS "OUT_28",
    -0.229500 + 0.001926 * t."OUT_0"  + -0.220723 * t."OUT_1"  + 0.174535 * t."OUT_2"  + -0.159201 * t."OUT_3"  + 0.002348 * t."OUT_4"  + -0.188752 * t."OUT_5"  + -0.068637 * t."OUT_6"  + -0.189175 * t."OUT_7"  + 0.119070 * t."OUT_8"  + 0.165255 * t."OUT_9" AS "OUT_29",
    0.160721 + -0.240698 * t."OUT_0"  + -0.241526 * t."OUT_1"  + 0.175349 * t."OUT_2"  + -0.225222 * t."OUT_3"  + -0.245292 * t."OUT_4"  + -0.176278 * t."OUT_5"  + -0.145055 * t."OUT_6"  + -0.053538 * t."OUT_7"  + 0.007953 * t."OUT_8"  + 0.050464 * t."OUT_9" AS "OUT_30",
    0.195926 + 0.045909 * t."OUT_0"  + 0.206700 * t."OUT_1"  + 0.207384 * t."OUT_2"  + 0.088124 * t."OUT_3"  + -0.012636 * t."OUT_4"  + -0.167510 * t."OUT_5"  + -0.016317 * t."OUT_6"  + 0.126199 * t."OUT_7"  + 0.187632 * t."OUT_8"  + -0.013307 * t."OUT_9" AS "OUT_31",
    0.123076 + -0.102114 * t."OUT_0"  + 0.180897 * t."OUT_1"  + -0.017764 * t."OUT_2"  + 0.032685 * t."OUT_3"  + -0.099140 * t."OUT_4"  + 0.072014 * t."OUT_5"  + 0.066722 * t."OUT_6"  + -0.263362 * t."OUT_7"  + 0.149225 * t."OUT_8"  + 0.069719 * t."OUT_9" AS "OUT_32",
    -0.072986 + 0.086180 * t."OUT_0"  + -0.154549 * t."OUT_1"  + 0.232991 * t."OUT_2"  + 0.100638 * t."OUT_3"  + 0.100705 * t."OUT_4"  + -0.222847 * t."OUT_5"  + 0.111099 * t."OUT_6"  + 0.228079 * t."OUT_7"  + -0.176962 * t."OUT_8"  + 0.081909 * t."OUT_9" AS "OUT_33",
    0.103372 + -0.077847 * t."OUT_0"  + -0.118567 * t."OUT_1"  + 0.115151 * t."OUT_2"  + -0.098765 * t."OUT_3"  + -0.075911 * t."OUT_4"  + -0.034065 * t."OUT_5"  + -0.159907 * t."OUT_6"  + -0.233737 * t."OUT_7"  + -0.079103 * t."OUT_8"  + -0.115169 * t."OUT_9" AS "OUT_34",
    -0.029430 + 0.084303 * t."OUT_0"  + -0.161417 * t."OUT_1"  + 0.052732 * t."OUT_2"  + 0.001409 * t."OUT_3"  + 0.142207 * t."OUT_4"  + -0.095297 * t."OUT_5"  + -0.155473 * t."OUT_6"  + -0.182764 * t."OUT_7"  + 0.035428 * t."OUT_8"  + 0.103715 * t."OUT_9" AS "OUT_35",
    0.171493 + -0.119878 * t."OUT_0"  + -0.143015 * t."OUT_1"  + -0.044032 * t."OUT_2"  + 0.255613 * t."OUT_3"  + 0.017589 * t."OUT_4"  + 0.111582 * t."OUT_5"  + -0.022838 * t."OUT_6"  + 0.040195 * t."OUT_7"  + 0.018730 * t."OUT_8"  + 0.060122 * t."OUT_9" AS "OUT_36",
    0.001702 + 0.239115 * t."OUT_0"  + -0.215120 * t."OUT_1"  + 0.242410 * t."OUT_2"  + -0.204739 * t."OUT_3"  + -0.252279 * t."OUT_4"  + 0.083225 * t."OUT_5"  + -0.091935 * t."OUT_6"  + -0.022944 * t."OUT_7"  + 0.162710 * t."OUT_8"  + -0.255794 * t."OUT_9" AS "OUT_37",
    0.100326 + -0.202500 * t."OUT_0"  + -0.109030 * t."OUT_1"  + -0.263394 * t."OUT_2"  + -0.096298 * t."OUT_3"  + 0.153067 * t."OUT_4"  + -0.144290 * t."OUT_5"  + -0.103344 * t."OUT_6"  + -0.068100 * t."OUT_7"  + -0.168679 * t."OUT_8"  + 0.050308 * t."OUT_9" AS "OUT_38",
    -0.060315 + 0.125512 * t."OUT_0"  + -0.053477 * t."OUT_1"  + -0.216906 * t."OUT_2"  + -0.072170 * t."OUT_3"  + -0.215021 * t."OUT_4"  + 0.086664 * t."OUT_5"  + 0.232291 * t."OUT_6"  + 0.174199 * t."OUT_7"  + -0.131498 * t."OUT_8"  + -0.056467 * t."OUT_9" AS "OUT_39",
    0.045021 + -0.199150 * t."OUT_0"  + -0.184221 * t."OUT_1"  + -0.055849 * t."OUT_2"  + -0.026829 * t."OUT_3"  + -0.041104 * t."OUT_4"  + 0.159619 * t."OUT_5"  + -0.096561 * t."OUT_6"  + -0.144710 * t."OUT_7"  + 0.095863 * t."OUT_8"  + 0.115743 * t."OUT_9" AS "OUT_40",
    0.026959 + 0.097363 * t."OUT_0"  + -0.184308 * t."OUT_1"  + -0.043555 * t."OUT_2"  + -0.104941 * t."OUT_3"  + -0.022816 * t."OUT_4"  + 0.067623 * t."OUT_5"  + -0.120058 * t."OUT_6"  + 0.081827 * t."OUT_7"  + -0.207593 * t."OUT_8"  + -0.218624 * t."OUT_9" AS "OUT_41",
    -0.061626 + 0.040430 * t."OUT_0"  + -0.192170 * t."OUT_1"  + 0.103991 * t."OUT_2"  + -0.058984 * t."OUT_3"  + 0.071281 * t."OUT_4"  + 0.183300 * t."OUT_5"  + 0.193922 * t."OUT_6"  + -0.015245 * t."OUT_7"  + 0.109241 * t."OUT_8"  + -0.095603 * t."OUT_9" AS "OUT_42",
    0.234247 + 0.244738 * t."OUT_0"  + 0.077648 * t."OUT_1"  + 0.224413 * t."OUT_2"  + -0.047281 * t."OUT_3"  + -0.200576 * t."OUT_4"  + -0.097128 * t."OUT_5"  + 0.167267 * t."OUT_6"  + -0.110336 * t."OUT_7"  + 0.204089 * t."OUT_8"  + -0.164989 * t."OUT_9" AS "OUT_43",
    -0.159492 + -0.146620 * t."OUT_0"  + -0.153361 * t."OUT_1"  + 0.042761 * t."OUT_2"  + -0.048871 * t."OUT_3"  + -0.082091 * t."OUT_4"  + -0.163715 * t."OUT_5"  + 0.107958 * t."OUT_6"  + -0.112036 * t."OUT_7"  + 0.215166 * t."OUT_8"  + 0.059418 * t."OUT_9" AS "OUT_44",
    -0.045821 + -0.179997 * t."OUT_0"  + -0.184967 * t."OUT_1"  + -0.037566 * t."OUT_2"  + 0.118685 * t."OUT_3"  + 0.190826 * t."OUT_4"  + 0.001184 * t."OUT_5"  + -0.130260 * t."OUT_6"  + -0.092788 * t."OUT_7"  + 0.020545 * t."OUT_8"  + 0.099267 * t."OUT_9" AS "OUT_45",
    0.170217 + 0.047038 * t."OUT_0"  + 0.015297 * t."OUT_1"  + -0.182703 * t."OUT_2"  + -0.000006 * t."OUT_3"  + 0.109598 * t."OUT_4"  + 0.169520 * t."OUT_5"  + 0.188733 * t."OUT_6"  + -0.152609 * t."OUT_7"  + -0.123306 * t."OUT_8"  + -0.230640 * t."OUT_9" AS "OUT_46",
    -0.070277 + 0.084222 * t."OUT_0"  + 0.081078 * t."OUT_1"  + -0.136572 * t."OUT_2"  + -0.108388 * t."OUT_3"  + -0.112011 * t."OUT_4"  + -0.168896 * t."OUT_5"  + 0.184447 * t."OUT_6"  + 0.049644 * t."OUT_7"  + 0.221469 * t."OUT_8"  + 0.211367 * t."OUT_9" AS "OUT_47",
    0.194442 + 0.189455 * t."OUT_0"  + -0.004364 * t."OUT_1"  + 0.093147 * t."OUT_2"  + -0.039257 * t."OUT_3"  + 0.205909 * t."OUT_4"  + -0.109961 * t."OUT_5"  + 0.099542 * t."OUT_6"  + -0.127883 * t."OUT_7"  + -0.064571 * t."OUT_8"  + -0.083020 * t."OUT_9" AS "OUT_48",
    0.026867 + 0.233540 * t."OUT_0"  + 0.094057 * t."OUT_1"  + 0.119402 * t."OUT_2"  + 0.045477 * t."OUT_3"  + 0.083644 * t."OUT_4"  + 0.186744 * t."OUT_5"  + -0.093420 * t."OUT_6"  + 0.215830 * t."OUT_7"  + -0.000413 * t."OUT_8"  + 0.200431 * t."OUT_9" AS "OUT_49",
    0.197822 + 0.148252 * t."OUT_0"  + -0.001862 * t."OUT_1"  + -0.235678 * t."OUT_2"  + 0.172107 * t."OUT_3"  + 0.174750 * t."OUT_4"  + -0.126628 * t."OUT_5"  + -0.039195 * t."OUT_6"  + 0.012971 * t."OUT_7"  + -0.056993 * t."OUT_8"  + -0.018409 * t."OUT_9" AS "OUT_50",
    -0.136341 + -0.151716 * t."OUT_0"  + -0.154527 * t."OUT_1"  + -0.027502 * t."OUT_2"  + 0.023553 * t."OUT_3"  + 0.201647 * t."OUT_4"  + -0.022357 * t."OUT_5"  + 0.127940 * t."OUT_6"  + -0.057735 * t."OUT_7"  + -0.153590 * t."OUT_8"  + 0.122640 * t."OUT_9" AS "OUT_51",
    -0.171511 + 0.139637 * t."OUT_0"  + -0.038484 * t."OUT_1"  + 0.146964 * t."OUT_2"  + -0.183407 * t."OUT_3"  + -0.097097 * t."OUT_4"  + -0.039255 * t."OUT_5"  + -0.147972 * t."OUT_6"  + -0.197407 * t."OUT_7"  + 0.088228 * t."OUT_8"  + 0.204492 * t."OUT_9" AS "OUT_52",
    -0.057892 + 0.165863 * t."OUT_0"  + 0.169086 * t."OUT_1"  + -0.115523 * t."OUT_2"  + -0.136515 * t."OUT_3"  + 0.141753 * t."OUT_4"  + 0.081398 * t."OUT_5"  + -0.143258 * t."OUT_6"  + -0.248548 * t."OUT_7"  + 0.132349 * t."OUT_8"  + -0.075945 * t."OUT_9" AS "OUT_53",
    0.001597 + -0.174768 * t."OUT_0"  + 0.255912 * t."OUT_1"  + -0.040077 * t."OUT_2"  + -0.229097 * t."OUT_3"  + 0.151573 * t."OUT_4"  + -0.172127 * t."OUT_5"  + 0.196002 * t."OUT_6"  + -0.110145 * t."OUT_7"  + -0.201500 * t."OUT_8"  + -0.039645 * t."OUT_9" AS "OUT_54",
    -0.038056 + 0.084937 * t."OUT_0"  + -0.054583 * t."OUT_1"  + -0.060299 * t."OUT_2"  + 0.100605 * t."OUT_3"  + 0.171112 * t."OUT_4"  + 0.200127 * t."OUT_5"  + 0.142117 * t."OUT_6"  + 0.188661 * t."OUT_7"  + 0.160977 * t."OUT_8"  + 0.144619 * t."OUT_9" AS "OUT_55",
    0.242821 + 0.078459 * t."OUT_0"  + -0.189369 * t."OUT_1"  + 0.091821 * t."OUT_2"  + -0.102356 * t."OUT_3"  + 0.162497 * t."OUT_4"  + 0.001504 * t."OUT_5"  + -0.156425 * t."OUT_6"  + 0.216391 * t."OUT_7"  + 0.024268 * t."OUT_8"  + -0.053683 * t."OUT_9" AS "OUT_56",
    -0.059154 + 0.017514 * t."OUT_0"  + -0.113482 * t."OUT_1"  + -0.119004 * t."OUT_2"  + -0.045444 * t."OUT_3"  + 0.034265 * t."OUT_4"  + -0.209596 * t."OUT_5"  + 0.164164 * t."OUT_6"  + 0.064447 * t."OUT_7"  + 0.109482 * t."OUT_8"  + 0.167162 * t."OUT_9" AS "OUT_57",
    0.114007 + 0.062140 * t."OUT_0"  + 0.129841 * t."OUT_1"  + 0.031412 * t."OUT_2"  + -0.140996 * t."OUT_3"  + 0.064647 * t."OUT_4"  + -0.201699 * t."OUT_5"  + -0.149781 * t."OUT_6"  + -0.174447 * t."OUT_7"  + 0.148966 * t."OUT_8"  + -0.141213 * t."OUT_9" AS "OUT_58",
    0.122753 + 0.102277 * t."OUT_0"  + -0.224489 * t."OUT_1"  + 0.127407 * t."OUT_2"  + 0.001547 * t."OUT_3"  + -0.066874 * t."OUT_4"  + 0.182951 * t."OUT_5"  + -0.125255 * t."OUT_6"  + -0.104634 * t."OUT_7"  + -0.232823 * t."OUT_8"  + -0.069035 * t."OUT_9" AS "OUT_59",
    0.078955 + -0.230574 * t."OUT_0"  + 0.050323 * t."OUT_1"  + 0.040739 * t."OUT_2"  + -0.201637 * t."OUT_3"  + -0.059583 * t."OUT_4"  + 0.092958 * t."OUT_5"  + 0.133923 * t."OUT_6"  + -0.160551 * t."OUT_7"  + -0.226414 * t."OUT_8"  + -0.222980 * t."OUT_9" AS "OUT_60",
    0.122125 + 0.063605 * t."OUT_0"  + -0.089683 * t."OUT_1"  + 0.184570 * t."OUT_2"  + -0.043460 * t."OUT_3"  + 0.044160 * t."OUT_4"  + -0.126945 * t."OUT_5"  + -0.150972 * t."OUT_6"  + 0.009473 * t."OUT_7"  + 0.243320 * t."OUT_8"  + 0.110347 * t."OUT_9" AS "OUT_61",
    -0.024209 + 0.068805 * t."OUT_0"  + 0.188054 * t."OUT_1"  + 0.136316 * t."OUT_2"  + 0.157742 * t."OUT_3"  + -0.000215 * t."OUT_4"  + 0.004861 * t."OUT_5"  + 0.241811 * t."OUT_6"  + 0.038202 * t."OUT_7"  + -0.105019 * t."OUT_8"  + 0.056144 * t."OUT_9" AS "OUT_62",
    0.172217 + 0.167163 * t."OUT_0"  + 0.257263 * t."OUT_1"  + 0.194644 * t."OUT_2"  + -0.107118 * t."OUT_3"  + -0.036405 * t."OUT_4"  + -0.089339 * t."OUT_5"  + 0.075283 * t."OUT_6"  + -0.013351 * t."OUT_7"  + -0.080079 * t."OUT_8"  + 0.003009 * t."OUT_9" AS "OUT_63",
    -0.158251 + -0.199349 * t."OUT_0"  + -0.106942 * t."OUT_1"  + 0.075340 * t."OUT_2"  + 0.230544 * t."OUT_3"  + -0.147526 * t."OUT_4"  + 0.219440 * t."OUT_5"  + -0.030127 * t."OUT_6"  + 0.082088 * t."OUT_7"  + -0.115760 * t."OUT_8"  + -0.232566 * t."OUT_9" AS "OUT_64",
    0.103942 + 0.131176 * t."OUT_0"  + 0.090468 * t."OUT_1"  + -0.192023 * t."OUT_2"  + -0.163514 * t."OUT_3"  + 0.002997 * t."OUT_4"  + 0.234254 * t."OUT_5"  + 0.204928 * t."OUT_6"  + 0.154868 * t."OUT_7"  + -0.251008 * t."OUT_8"  + -0.203595 * t."OUT_9" AS "OUT_65",
    0.260032 + -0.095250 * t."OUT_0"  + -0.077621 * t."OUT_1"  + 0.015235 * t."OUT_2"  + 0.125707 * t."OUT_3"  + 0.260315 * t."OUT_4"  + -0.062021 * t."OUT_5"  + 0.114047 * t."OUT_6"  + -0.014984 * t."OUT_7"  + 0.248254 * t."OUT_8"  + 0.193111 * t."OUT_9" AS "OUT_66",
    0.134150 + -0.183516 * t."OUT_0"  + 0.203980 * t."OUT_1"  + -0.128563 * t."OUT_2"  + -0.115569 * t."OUT_3"  + -0.033913 * t."OUT_4"  + -0.101227 * t."OUT_5"  + 0.061498 * t."OUT_6"  + 0.224110 * t."OUT_7"  + 0.258608 * t."OUT_8"  + -0.097267 * t."OUT_9" AS "OUT_67",
    -0.012898 + 0.200233 * t."OUT_0"  + -0.164783 * t."OUT_1"  + 0.057499 * t."OUT_2"  + 0.089506 * t."OUT_3"  + -0.138608 * t."OUT_4"  + 0.118037 * t."OUT_5"  + 0.205821 * t."OUT_6"  + 0.032045 * t."OUT_7"  + -0.020143 * t."OUT_8"  + 0.114721 * t."OUT_9" AS "OUT_68",
    -0.027155 + 0.196010 * t."OUT_0"  + 0.112230 * t."OUT_1"  + 0.031417 * t."OUT_2"  + -0.125635 * t."OUT_3"  + -0.181174 * t."OUT_4"  + -0.052505 * t."OUT_5"  + 0.013078 * t."OUT_6"  + 0.180299 * t."OUT_7"  + 0.183341 * t."OUT_8"  + -0.185518 * t."OUT_9" AS "OUT_69",
    0.095174 + -0.062185 * t."OUT_0"  + 0.017152 * t."OUT_1"  + 0.196971 * t."OUT_2"  + -0.174351 * t."OUT_3"  + -0.128164 * t."OUT_4"  + 0.120565 * t."OUT_5"  + -0.101691 * t."OUT_6"  + 0.144810 * t."OUT_7"  + -0.171964 * t."OUT_8"  + 0.085910 * t."OUT_9" AS "OUT_70",
    -0.138994 + -0.189931 * t."OUT_0"  + -0.130371 * t."OUT_1"  + 0.119854 * t."OUT_2"  + -0.119938 * t."OUT_3"  + -0.113373 * t."OUT_4"  + 0.034388 * t."OUT_5"  + -0.011847 * t."OUT_6"  + -0.153758 * t."OUT_7"  + 0.087434 * t."OUT_8"  + -0.048069 * t."OUT_9" AS "OUT_71",
    -0.213359 + -0.008417 * t."OUT_0"  + 0.108722 * t."OUT_1"  + 0.214863 * t."OUT_2"  + -0.217144 * t."OUT_3"  + -0.045477 * t."OUT_4"  + -0.142827 * t."OUT_5"  + -0.026355 * t."OUT_6"  + 0.113117 * t."OUT_7"  + 0.168814 * t."OUT_8"  + -0.008792 * t."OUT_9" AS "OUT_72",
    -0.084847 + 0.223316 * t."OUT_0"  + 0.108371 * t."OUT_1"  + -0.124946 * t."OUT_2"  + 0.062357 * t."OUT_3"  + -0.064375 * t."OUT_4"  + 0.064623 * t."OUT_5"  + 0.130339 * t."OUT_6"  + 0.037663 * t."OUT_7"  + -0.011586 * t."OUT_8"  + -0.098116 * t."OUT_9" AS "OUT_73",
    0.062910 + -0.134376 * t."OUT_0"  + 0.033836 * t."OUT_1"  + 0.085174 * t."OUT_2"  + -0.191553 * t."OUT_3"  + 0.217246 * t."OUT_4"  + 0.101410 * t."OUT_5"  + -0.110511 * t."OUT_6"  + -0.049547 * t."OUT_7"  + -0.120952 * t."OUT_8"  + -0.106663 * t."OUT_9" AS "OUT_74",
    0.174422 + 0.060514 * t."OUT_0"  + -0.132984 * t."OUT_1"  + 0.105695 * t."OUT_2"  + 0.168609 * t."OUT_3"  + -0.034395 * t."OUT_4"  + 0.031456 * t."OUT_5"  + 0.128107 * t."OUT_6"  + 0.003351 * t."OUT_7"  + 0.197542 * t."OUT_8"  + -0.038545 * t."OUT_9" AS "OUT_75",
    0.071624 + 0.136899 * t."OUT_0"  + 0.226005 * t."OUT_1"  + 0.117659 * t."OUT_2"  + -0.194895 * t."OUT_3"  + 0.082119 * t."OUT_4"  + 0.114126 * t."OUT_5"  + -0.161028 * t."OUT_6"  + 0.146342 * t."OUT_7"  + 0.074880 * t."OUT_8"  + 0.257818 * t."OUT_9" AS "OUT_76",
    0.081956 + 0.107295 * t."OUT_0"  + 0.168239 * t."OUT_1"  + 0.183797 * t."OUT_2"  + -0.038747 * t."OUT_3"  + -0.011556 * t."OUT_4"  + 0.025514 * t."OUT_5"  + 0.203627 * t."OUT_6"  + -0.157368 * t."OUT_7"  + -0.244156 * t."OUT_8"  + -0.249630 * t."OUT_9" AS "OUT_77",
    0.142113 + 0.174869 * t."OUT_0"  + -0.125388 * t."OUT_1"  + -0.150614 * t."OUT_2"  + 0.159361 * t."OUT_3"  + -0.010563 * t."OUT_4"  + -0.103212 * t."OUT_5"  + -0.107692 * t."OUT_6"  + 0.201188 * t."OUT_7"  + 0.202316 * t."OUT_8"  + 0.182819 * t."OUT_9" AS "OUT_78",
    -0.061846 + -0.117954 * t."OUT_0"  + 0.026581 * t."OUT_1"  + 0.153721 * t."OUT_2"  + -0.000200 * t."OUT_3"  + 0.009355 * t."OUT_4"  + 0.159819 * t."OUT_5"  + 0.134310 * t."OUT_6"  + -0.137194 * t."OUT_7"  + -0.182806 * t."OUT_8"  + -0.198841 * t."OUT_9" AS "OUT_79",
    0.183653 + 0.130676 * t."OUT_0"  + 0.159345 * t."OUT_1"  + 0.141921 * t."OUT_2"  + -0.012927 * t."OUT_3"  + -0.053921 * t."OUT_4"  + -0.156840 * t."OUT_5"  + 0.189659 * t."OUT_6"  + -0.030078 * t."OUT_7"  + -0.168120 * t."OUT_8"  + 0.053296 * t."OUT_9" AS "OUT_80",
    -0.043004 + 0.139521 * t."OUT_0"  + -0.000044 * t."OUT_1"  + 0.209916 * t."OUT_2"  + -0.105422 * t."OUT_3"  + 0.172997 * t."OUT_4"  + 0.019870 * t."OUT_5"  + 0.018403 * t."OUT_6"  + -0.187668 * t."OUT_7"  + 0.110457 * t."OUT_8"  + 0.185611 * t."OUT_9" AS "OUT_81",
    0.035775 + 0.202292 * t."OUT_0"  + 0.024404 * t."OUT_1"  + 0.025114 * t."OUT_2"  + 0.209651 * t."OUT_3"  + 0.263209 * t."OUT_4"  + -0.091395 * t."OUT_5"  + -0.263633 * t."OUT_6"  + -0.157486 * t."OUT_7"  + 0.020703 * t."OUT_8"  + 0.038757 * t."OUT_9" AS "OUT_82",
    0.228323 + 0.011505 * t."OUT_0"  + 0.246107 * t."OUT_1"  + 0.120302 * t."OUT_2"  + -0.085060 * t."OUT_3"  + 0.116210 * t."OUT_4"  + -0.135145 * t."OUT_5"  + 0.106591 * t."OUT_6"  + -0.182417 * t."OUT_7"  + -0.057604 * t."OUT_8"  + 0.084195 * t."OUT_9" AS "OUT_83",
    -0.217403 + -0.207344 * t."OUT_0"  + 0.082733 * t."OUT_1"  + 0.135380 * t."OUT_2"  + -0.151784 * t."OUT_3"  + 0.040260 * t."OUT_4"  + 0.074792 * t."OUT_5"  + -0.062532 * t."OUT_6"  + 0.009658 * t."OUT_7"  + 0.133049 * t."OUT_8"  + 0.229082 * t."OUT_9" AS "OUT_84",
    -0.208790 + 0.116708 * t."OUT_0"  + 0.095853 * t."OUT_1"  + 0.119981 * t."OUT_2"  + -0.095052 * t."OUT_3"  + 0.054912 * t."OUT_4"  + 0.201346 * t."OUT_5"  + -0.178066 * t."OUT_6"  + 0.039948 * t."OUT_7"  + 0.161571 * t."OUT_8"  + -0.227892 * t."OUT_9" AS "OUT_85",
    -0.089505 + 0.002590 * t."OUT_0"  + -0.164452 * t."OUT_1"  + 0.143359 * t."OUT_2"  + 0.008265 * t."OUT_3"  + -0.025411 * t."OUT_4"  + -0.207684 * t."OUT_5"  + -0.030589 * t."OUT_6"  + -0.116722 * t."OUT_7"  + 0.195802 * t."OUT_8"  + -0.114371 * t."OUT_9" AS "OUT_86",
    -0.168300 + -0.044251 * t."OUT_0"  + -0.031721 * t."OUT_1"  + -0.228076 * t."OUT_2"  + 0.165732 * t."OUT_3"  + 0.149809 * t."OUT_4"  + -0.115523 * t."OUT_5"  + -0.163597 * t."OUT_6"  + -0.039807 * t."OUT_7"  + -0.067107 * t."OUT_8"  + -0.106257 * t."OUT_9" AS "OUT_87",
    -0.231966 + -0.171516 * t."OUT_0"  + 0.190237 * t."OUT_1"  + 0.084594 * t."OUT_2"  + -0.026248 * t."OUT_3"  + 0.072193 * t."OUT_4"  + 0.030204 * t."OUT_5"  + 0.208170 * t."OUT_6"  + -0.161073 * t."OUT_7"  + -0.010812 * t."OUT_8"  + -0.166309 * t."OUT_9" AS "OUT_88",
    0.052187 + -0.222803 * t."OUT_0"  + 0.130445 * t."OUT_1"  + 0.204919 * t."OUT_2"  + 0.073629 * t."OUT_3"  + -0.052943 * t."OUT_4"  + -0.103190 * t."OUT_5"  + -0.034631 * t."OUT_6"  + -0.052267 * t."OUT_7"  + -0.208714 * t."OUT_8"  + 0.233347 * t."OUT_9" AS "OUT_89",
    -0.215062 + -0.085424 * t."OUT_0"  + -0.067709 * t."OUT_1"  + 0.048038 * t."OUT_2"  + 0.147427 * t."OUT_3"  + -0.053358 * t."OUT_4"  + -0.135900 * t."OUT_5"  + -0.079834 * t."OUT_6"  + 0.118014 * t."OUT_7"  + -0.119601 * t."OUT_8"  + -0.078309 * t."OUT_9" AS "OUT_90",
    0.201412 + 0.243613 * t."OUT_0"  + -0.028662 * t."OUT_1"  + 0.219396 * t."OUT_2"  + 0.157444 * t."OUT_3"  + -0.177547 * t."OUT_4"  + 0.098833 * t."OUT_5"  + -0.066841 * t."OUT_6"  + -0.061177 * t."OUT_7"  + -0.147227 * t."OUT_8"  + 0.248517 * t."OUT_9" AS "OUT_91",
    0.209459 + 0.042122 * t."OUT_0"  + 0.196454 * t."OUT_1"  + -0.045475 * t."OUT_2"  + -0.118176 * t."OUT_3"  + 0.261610 * t."OUT_4"  + -0.199223 * t."OUT_5"  + 0.132156 * t."OUT_6"  + -0.197652 * t."OUT_7"  + -0.112279 * t."OUT_8"  + 0.204587 * t."OUT_9" AS "OUT_92",
    -0.217911 + -0.047620 * t."OUT_0"  + -0.121128 * t."OUT_1"  + 0.077510 * t."OUT_2"  + 0.095838 * t."OUT_3"  + -0.194857 * t."OUT_4"  + -0.054815 * t."OUT_5"  + -0.084746 * t."OUT_6"  + -0.200696 * t."OUT_7"  + -0.146511 * t."OUT_8"  + -0.033468 * t."OUT_9" AS "OUT_93",
    -0.186320 + -0.054086 * t."OUT_0"  + 0.030465 * t."OUT_1"  + -0.164539 * t."OUT_2"  + -0.148391 * t."OUT_3"  + -0.118841 * t."OUT_4"  + 0.180901 * t."OUT_5"  + 0.042930 * t."OUT_6"  + -0.221727 * t."OUT_7"  + -0.082605 * t."OUT_8"  + -0.214357 * t."OUT_9" AS "OUT_94",
    -0.137763 + -0.209201 * t."OUT_0"  + 0.190632 * t."OUT_1"  + 0.061699 * t."OUT_2"  + 0.128867 * t."OUT_3"  + 0.213490 * t."OUT_4"  + 0.232928 * t."OUT_5"  + -0.006839 * t."OUT_6"  + 0.230124 * t."OUT_7"  + -0.071771 * t."OUT_8"  + -0.120786 * t."OUT_9" AS "OUT_95",
    0.148497 + 0.110707 * t."OUT_0"  + -0.182394 * t."OUT_1"  + -0.190987 * t."OUT_2"  + -0.137466 * t."OUT_3"  + -0.119497 * t."OUT_4"  + -0.066229 * t."OUT_5"  + -0.195811 * t."OUT_6"  + 0.231356 * t."OUT_7"  + 0.171687 * t."OUT_8"  + 0.218809 * t."OUT_9" AS "OUT_96",
    0.029637 + -0.096547 * t."OUT_0"  + -0.150608 * t."OUT_1"  + 0.104870 * t."OUT_2"  + -0.082526 * t."OUT_3"  + 0.181538 * t."OUT_4"  + 0.105072 * t."OUT_5"  + 0.164761 * t."OUT_6"  + 0.195137 * t."OUT_7"  + 0.045157 * t."OUT_8"  + 0.196483 * t."OUT_9" AS "OUT_97",
    0.183973 + -0.121004 * t."OUT_0"  + -0.161746 * t."OUT_1"  + -0.026059 * t."OUT_2"  + 0.163384 * t."OUT_3"  + -0.161563 * t."OUT_4"  + -0.055137 * t."OUT_5"  + -0.099864 * t."OUT_6"  + 0.185130 * t."OUT_7"  + 0.168387 * t."OUT_8"  + -0.087749 * t."OUT_9" AS "OUT_98",
    0.134825 + -0.015034 * t."OUT_0"  + -0.089247 * t."OUT_1"  + 0.039379 * t."OUT_2"  + -0.106323 * t."OUT_3"  + 0.245563 * t."OUT_4"  + -0.088995 * t."OUT_5"  + 0.147492 * t."OUT_6"  + 0.133450 * t."OUT_7"  + 0.085834 * t."OUT_8"  + -0.022060 * t."OUT_9" AS "OUT_99"
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
    0.015512 + 0.235864 * t."OUT_0"  + -0.009255 * t."OUT_1"  + -0.194631 * t."OUT_2"  + 0.106992 * t."OUT_3"  + -0.060018 * t."OUT_4"  + -0.147714 * t."OUT_5"  + -0.104680 * t."OUT_6"  + 0.237693 * t."OUT_7"  + -0.112567 * t."OUT_8"  + 0.169989 * t."OUT_9"  + -0.219337 * t."OUT_10"  + 0.271178 * t."OUT_11"  + -0.152235 * t."OUT_12"  + -0.019808 * t."OUT_13"  + 0.176421 * t."OUT_14"  + 0.066505 * t."OUT_15"  + 0.197208 * t."OUT_16"  + -0.217113 * t."OUT_17"  + -0.019708 * t."OUT_18"  + -0.081904 * t."OUT_19"  + 0.017376 * t."OUT_20"  + -0.170368 * t."OUT_21"  + 0.252509 * t."OUT_22"  + 0.132411 * t."OUT_23"  + -0.089870 * t."OUT_24"  + 0.037788 * t."OUT_25"  + -0.057641 * t."OUT_26"  + -0.178320 * t."OUT_27"  + 0.130514 * t."OUT_28"  + -0.240939 * t."OUT_29"  + -0.186489 * t."OUT_30"  + 0.170477 * t."OUT_31"  + -0.055792 * t."OUT_32"  + -0.171756 * t."OUT_33"  + -0.060917 * t."OUT_34"  + -0.052248 * t."OUT_35"  + 0.036321 * t."OUT_36"  + 0.042899 * t."OUT_37"  + -0.156687 * t."OUT_38"  + -0.147492 * t."OUT_39"  + -0.123660 * t."OUT_40"  + -0.191097 * t."OUT_41"  + -0.051325 * t."OUT_42"  + 0.171487 * t."OUT_43"  + -0.086666 * t."OUT_44"  + -0.043590 * t."OUT_45"  + -0.080801 * t."OUT_46"  + -0.102427 * t."OUT_47"  + 0.263851 * t."OUT_48"  + 0.251814 * t."OUT_49"  + -0.019247 * t."OUT_50"  + -0.015536 * t."OUT_51"  + 0.227785 * t."OUT_52"  + -0.144132 * t."OUT_53"  + 0.126315 * t."OUT_54"  + 0.004185 * t."OUT_55"  + 0.024838 * t."OUT_56"  + -0.088470 * t."OUT_57"  + 0.202336 * t."OUT_58"  + -0.084091 * t."OUT_59"  + -0.035451 * t."OUT_60"  + 0.057152 * t."OUT_61"  + -0.052016 * t."OUT_62"  + 0.128627 * t."OUT_63"  + -0.059785 * t."OUT_64"  + -0.052361 * t."OUT_65"  + 0.045884 * t."OUT_66"  + 0.217937 * t."OUT_67"  + -0.073538 * t."OUT_68"  + -0.091249 * t."OUT_69"  + -0.128882 * t."OUT_70"  + 0.149806 * t."OUT_71"  + 0.208580 * t."OUT_72"  + -0.118373 * t."OUT_73"  + 0.076600 * t."OUT_74"  + -0.179287 * t."OUT_75"  + 0.202306 * t."OUT_76"  + -0.050193 * t."OUT_77"  + -0.065070 * t."OUT_78"  + 0.006858 * t."OUT_79"  + 0.251390 * t."OUT_80"  + -0.038845 * t."OUT_81"  + 0.155420 * t."OUT_82"  + 0.227907 * t."OUT_83"  + 0.144925 * t."OUT_84"  + -0.192256 * t."OUT_85"  + -0.003184 * t."OUT_86"  + -0.073941 * t."OUT_87"  + -0.194469 * t."OUT_88"  + 0.020872 * t."OUT_89"  + 0.006499 * t."OUT_90"  + 0.102909 * t."OUT_91"  + 0.247396 * t."OUT_92"  + -0.039389 * t."OUT_93"  + -0.130068 * t."OUT_94"  + -0.003247 * t."OUT_95"  + 0.118109 * t."OUT_96"  + 0.001776 * t."OUT_97"  + -0.038218 * t."OUT_98"  + 0.236467 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
