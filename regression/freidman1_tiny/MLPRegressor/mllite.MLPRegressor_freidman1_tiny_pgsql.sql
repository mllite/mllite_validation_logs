WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
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
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    0.195659 + 0.012032 * t."OUT_0"  + 0.128382 * t."OUT_1"  + -0.062117 * t."OUT_2"  + 0.143316 * t."OUT_3"  + -0.086260 * t."OUT_4"  + 0.118702 * t."OUT_5"  + 0.174215 * t."OUT_6"  + -0.143680 * t."OUT_7"  + 0.184154 * t."OUT_8"  + 0.160141 * t."OUT_9" AS "OUT_0",
    0.113903 + 0.095164 * t."OUT_0"  + -0.189519 * t."OUT_1"  + -0.027405 * t."OUT_2"  + -0.230426 * t."OUT_3"  + 0.007506 * t."OUT_4"  + 0.169315 * t."OUT_5"  + -0.102514 * t."OUT_6"  + -0.093869 * t."OUT_7"  + -0.125256 * t."OUT_8"  + 0.085845 * t."OUT_9" AS "OUT_1",
    0.194378 + -0.095324 * t."OUT_0"  + -0.076759 * t."OUT_1"  + -0.161918 * t."OUT_2"  + -0.161817 * t."OUT_3"  + 0.118825 * t."OUT_4"  + -0.152833 * t."OUT_5"  + -0.158631 * t."OUT_6"  + -0.169759 * t."OUT_7"  + -0.100858 * t."OUT_8"  + -0.139033 * t."OUT_9" AS "OUT_2",
    0.079359 + 0.015585 * t."OUT_0"  + 0.167121 * t."OUT_1"  + 0.177163 * t."OUT_2"  + -0.035965 * t."OUT_3"  + 0.244073 * t."OUT_4"  + 0.168085 * t."OUT_5"  + 0.067517 * t."OUT_6"  + 0.006614 * t."OUT_7"  + -0.076190 * t."OUT_8"  + -0.012764 * t."OUT_9" AS "OUT_3",
    0.140088 + 0.012451 * t."OUT_0"  + 0.123386 * t."OUT_1"  + 0.189975 * t."OUT_2"  + -0.193309 * t."OUT_3"  + -0.140376 * t."OUT_4"  + -0.211632 * t."OUT_5"  + 0.076417 * t."OUT_6"  + -0.098291 * t."OUT_7"  + 0.189627 * t."OUT_8"  + -0.197295 * t."OUT_9" AS "OUT_4",
    0.062216 + -0.190867 * t."OUT_0"  + 0.170392 * t."OUT_1"  + 0.011132 * t."OUT_2"  + 0.065274 * t."OUT_3"  + -0.022347 * t."OUT_4"  + 0.197587 * t."OUT_5"  + -0.195290 * t."OUT_6"  + -0.253842 * t."OUT_7"  + -0.170379 * t."OUT_8"  + -0.194026 * t."OUT_9" AS "OUT_5",
    -0.154110 + 0.041916 * t."OUT_0"  + 0.141356 * t."OUT_1"  + -0.017188 * t."OUT_2"  + -0.043742 * t."OUT_3"  + 0.204623 * t."OUT_4"  + -0.170950 * t."OUT_5"  + -0.225908 * t."OUT_6"  + -0.030019 * t."OUT_7"  + -0.168729 * t."OUT_8"  + 0.148495 * t."OUT_9" AS "OUT_6",
    0.192404 + 0.039606 * t."OUT_0"  + 0.164800 * t."OUT_1"  + 0.123525 * t."OUT_2"  + -0.037486 * t."OUT_3"  + 0.222956 * t."OUT_4"  + -0.136381 * t."OUT_5"  + 0.061511 * t."OUT_6"  + -0.109656 * t."OUT_7"  + -0.006981 * t."OUT_8"  + 0.174226 * t."OUT_9" AS "OUT_7",
    -0.098177 + 0.174779 * t."OUT_0"  + -0.122308 * t."OUT_1"  + -0.000482 * t."OUT_2"  + -0.076997 * t."OUT_3"  + 0.153565 * t."OUT_4"  + -0.158998 * t."OUT_5"  + 0.007573 * t."OUT_6"  + 0.057013 * t."OUT_7"  + -0.077941 * t."OUT_8"  + -0.113941 * t."OUT_9" AS "OUT_8",
    0.127356 + 0.081901 * t."OUT_0"  + 0.054390 * t."OUT_1"  + 0.145036 * t."OUT_2"  + 0.178592 * t."OUT_3"  + -0.019570 * t."OUT_4"  + -0.012291 * t."OUT_5"  + -0.041589 * t."OUT_6"  + 0.186595 * t."OUT_7"  + 0.136947 * t."OUT_8"  + 0.162047 * t."OUT_9" AS "OUT_9",
    -0.154068 + 0.168065 * t."OUT_0"  + 0.038162 * t."OUT_1"  + -0.008600 * t."OUT_2"  + 0.099415 * t."OUT_3"  + -0.135269 * t."OUT_4"  + 0.057411 * t."OUT_5"  + 0.043616 * t."OUT_6"  + 0.095073 * t."OUT_7"  + -0.226739 * t."OUT_8"  + 0.057664 * t."OUT_9" AS "OUT_10",
    0.261810 + -0.004493 * t."OUT_0"  + 0.190456 * t."OUT_1"  + 0.171754 * t."OUT_2"  + -0.065233 * t."OUT_3"  + -0.069434 * t."OUT_4"  + 0.181848 * t."OUT_5"  + 0.182436 * t."OUT_6"  + 0.100552 * t."OUT_7"  + -0.089289 * t."OUT_8"  + -0.032912 * t."OUT_9" AS "OUT_11",
    -0.055187 + 0.201040 * t."OUT_0"  + 0.084000 * t."OUT_1"  + 0.075088 * t."OUT_2"  + 0.092553 * t."OUT_3"  + 0.013841 * t."OUT_4"  + -0.085045 * t."OUT_5"  + -0.032843 * t."OUT_6"  + -0.051976 * t."OUT_7"  + -0.167528 * t."OUT_8"  + 0.039073 * t."OUT_9" AS "OUT_12",
    -0.171234 + -0.177038 * t."OUT_0"  + -0.000572 * t."OUT_1"  + -0.098198 * t."OUT_2"  + -0.169634 * t."OUT_3"  + -0.169397 * t."OUT_4"  + 0.168126 * t."OUT_5"  + 0.103546 * t."OUT_6"  + -0.196101 * t."OUT_7"  + -0.096989 * t."OUT_8"  + -0.161775 * t."OUT_9" AS "OUT_13",
    -0.166971 + -0.063450 * t."OUT_0"  + 0.168980 * t."OUT_1"  + -0.032675 * t."OUT_2"  + 0.228700 * t."OUT_3"  + -0.055445 * t."OUT_4"  + -0.053021 * t."OUT_5"  + 0.094716 * t."OUT_6"  + -0.186215 * t."OUT_7"  + 0.221800 * t."OUT_8"  + 0.029958 * t."OUT_9" AS "OUT_14",
    0.227465 + 0.121088 * t."OUT_0"  + 0.196624 * t."OUT_1"  + -0.166175 * t."OUT_2"  + -0.018157 * t."OUT_3"  + -0.182987 * t."OUT_4"  + -0.170452 * t."OUT_5"  + 0.044438 * t."OUT_6"  + 0.231222 * t."OUT_7"  + 0.001800 * t."OUT_8"  + 0.215276 * t."OUT_9" AS "OUT_15",
    0.022556 + 0.157230 * t."OUT_0"  + 0.074050 * t."OUT_1"  + -0.090839 * t."OUT_2"  + 0.092463 * t."OUT_3"  + -0.015890 * t."OUT_4"  + -0.070918 * t."OUT_5"  + -0.012160 * t."OUT_6"  + -0.037409 * t."OUT_7"  + 0.166193 * t."OUT_8"  + -0.080450 * t."OUT_9" AS "OUT_16",
    -0.212649 + -0.111888 * t."OUT_0"  + -0.080293 * t."OUT_1"  + -0.139694 * t."OUT_2"  + -0.143274 * t."OUT_3"  + -0.073095 * t."OUT_4"  + -0.017101 * t."OUT_5"  + 0.178257 * t."OUT_6"  + 0.030043 * t."OUT_7"  + -0.105657 * t."OUT_8"  + 0.162326 * t."OUT_9" AS "OUT_17",
    -0.184909 + -0.118856 * t."OUT_0"  + -0.063850 * t."OUT_1"  + 0.064590 * t."OUT_2"  + -0.137233 * t."OUT_3"  + -0.013491 * t."OUT_4"  + 0.049873 * t."OUT_5"  + -0.147090 * t."OUT_6"  + -0.127053 * t."OUT_7"  + -0.067582 * t."OUT_8"  + 0.133874 * t."OUT_9" AS "OUT_18",
    -0.101903 + -0.154503 * t."OUT_0"  + -0.115728 * t."OUT_1"  + -0.033774 * t."OUT_2"  + 0.051003 * t."OUT_3"  + -0.039108 * t."OUT_4"  + -0.178538 * t."OUT_5"  + -0.152534 * t."OUT_6"  + 0.200280 * t."OUT_7"  + -0.087059 * t."OUT_8"  + 0.123201 * t."OUT_9" AS "OUT_19",
    0.141905 + 0.089775 * t."OUT_0"  + 0.112074 * t."OUT_1"  + -0.110144 * t."OUT_2"  + -0.084284 * t."OUT_3"  + 0.218936 * t."OUT_4"  + 0.112847 * t."OUT_5"  + -0.134448 * t."OUT_6"  + -0.045276 * t."OUT_7"  + 0.140638 * t."OUT_8"  + -0.211060 * t."OUT_9" AS "OUT_20",
    0.049599 + -0.259722 * t."OUT_0"  + 0.099371 * t."OUT_1"  + -0.225930 * t."OUT_2"  + 0.177085 * t."OUT_3"  + 0.122473 * t."OUT_4"  + 0.092240 * t."OUT_5"  + -0.238071 * t."OUT_6"  + 0.012441 * t."OUT_7"  + 0.109203 * t."OUT_8"  + -0.017329 * t."OUT_9" AS "OUT_21",
    0.112672 + -0.037238 * t."OUT_0"  + -0.161557 * t."OUT_1"  + 0.175715 * t."OUT_2"  + -0.181074 * t."OUT_3"  + -0.124535 * t."OUT_4"  + -0.056533 * t."OUT_5"  + -0.178617 * t."OUT_6"  + -0.134306 * t."OUT_7"  + -0.182389 * t."OUT_8"  + 0.086139 * t."OUT_9" AS "OUT_22",
    0.013955 + 0.010891 * t."OUT_0"  + 0.075700 * t."OUT_1"  + -0.089895 * t."OUT_2"  + -0.117890 * t."OUT_3"  + 0.000409 * t."OUT_4"  + -0.106200 * t."OUT_5"  + 0.100453 * t."OUT_6"  + -0.010944 * t."OUT_7"  + -0.051375 * t."OUT_8"  + -0.194819 * t."OUT_9" AS "OUT_23",
    0.188562 + -0.075912 * t."OUT_0"  + -0.178944 * t."OUT_1"  + -0.084876 * t."OUT_2"  + 0.072607 * t."OUT_3"  + 0.101907 * t."OUT_4"  + 0.120662 * t."OUT_5"  + -0.022938 * t."OUT_6"  + -0.038444 * t."OUT_7"  + -0.242833 * t."OUT_8"  + 0.174470 * t."OUT_9" AS "OUT_24",
    0.044130 + -0.182633 * t."OUT_0"  + -0.000617 * t."OUT_1"  + 0.081062 * t."OUT_2"  + 0.016046 * t."OUT_3"  + -0.181304 * t."OUT_4"  + -0.176427 * t."OUT_5"  + -0.074756 * t."OUT_6"  + -0.169813 * t."OUT_7"  + 0.159309 * t."OUT_8"  + -0.142199 * t."OUT_9" AS "OUT_25",
    -0.092096 + -0.145328 * t."OUT_0"  + 0.016674 * t."OUT_1"  + 0.082646 * t."OUT_2"  + 0.133132 * t."OUT_3"  + -0.149961 * t."OUT_4"  + 0.165081 * t."OUT_5"  + 0.035022 * t."OUT_6"  + -0.203970 * t."OUT_7"  + -0.000699 * t."OUT_8"  + 0.075397 * t."OUT_9" AS "OUT_26",
    -0.060206 + 0.161733 * t."OUT_0"  + -0.123742 * t."OUT_1"  + 0.072027 * t."OUT_2"  + 0.116789 * t."OUT_3"  + -0.014529 * t."OUT_4"  + 0.118194 * t."OUT_5"  + 0.068608 * t."OUT_6"  + -0.103311 * t."OUT_7"  + -0.040965 * t."OUT_8"  + -0.253811 * t."OUT_9" AS "OUT_27",
    -0.084243 + 0.018288 * t."OUT_0"  + 0.142394 * t."OUT_1"  + -0.173131 * t."OUT_2"  + -0.104885 * t."OUT_3"  + -0.080060 * t."OUT_4"  + 0.060520 * t."OUT_5"  + 0.090858 * t."OUT_6"  + 0.200850 * t."OUT_7"  + 0.180075 * t."OUT_8"  + 0.115626 * t."OUT_9" AS "OUT_28",
    -0.229500 + 0.001926 * t."OUT_0"  + -0.191087 * t."OUT_1"  + 0.174535 * t."OUT_2"  + -0.159201 * t."OUT_3"  + 0.002348 * t."OUT_4"  + -0.161928 * t."OUT_5"  + -0.068637 * t."OUT_6"  + -0.162346 * t."OUT_7"  + 0.119070 * t."OUT_8"  + 0.165255 * t."OUT_9" AS "OUT_29",
    0.178974 + -0.222245 * t."OUT_0"  + -0.223461 * t."OUT_1"  + 0.193416 * t."OUT_2"  + -0.206740 * t."OUT_3"  + -0.227364 * t."OUT_4"  + -0.221465 * t."OUT_5"  + -0.189304 * t."OUT_6"  + -0.035795 * t."OUT_7"  + 0.025815 * t."OUT_8"  + 0.069999 * t."OUT_9" AS "OUT_30",
    0.195691 + 0.045661 * t."OUT_0"  + 0.206494 * t."OUT_1"  + 0.207144 * t."OUT_2"  + 0.087901 * t."OUT_3"  + -0.012880 * t."OUT_4"  + -0.102578 * t."OUT_5"  + 0.048632 * t."OUT_6"  + 0.125921 * t."OUT_7"  + 0.187384 * t."OUT_8"  + -0.013582 * t."OUT_9" AS "OUT_31",
    0.123640 + -0.101359 * t."OUT_0"  + 0.181375 * t."OUT_1"  + -0.017115 * t."OUT_2"  + 0.032977 * t."OUT_3"  + -0.098764 * t."OUT_4"  + 0.011080 * t."OUT_5"  + 0.005949 * t."OUT_6"  + -0.262484 * t."OUT_7"  + 0.149632 * t."OUT_8"  + 0.070179 * t."OUT_9" AS "OUT_32",
    -0.102471 + 0.056230 * t."OUT_0"  + -0.183514 * t."OUT_1"  + 0.203596 * t."OUT_2"  + 0.071142 * t."OUT_3"  + 0.071176 * t."OUT_4"  + -0.250879 * t."OUT_5"  + 0.081879 * t."OUT_6"  + 0.197822 * t."OUT_7"  + -0.205784 * t."OUT_8"  + 0.051937 * t."OUT_9" AS "OUT_33",
    0.134222 + -0.046993 * t."OUT_0"  + -0.087730 * t."OUT_1"  + 0.146008 * t."OUT_2"  + -0.067900 * t."OUT_3"  + -0.045041 * t."OUT_4"  + -0.064904 * t."OUT_5"  + -0.161499 * t."OUT_6"  + -0.173421 * t."OUT_7"  + -0.048241 * t."OUT_8"  + -0.084309 * t."OUT_9" AS "OUT_34",
    -0.041436 + 0.073231 * t."OUT_0"  + -0.201221 * t."OUT_1"  + 0.039788 * t."OUT_2"  + -0.010464 * t."OUT_3"  + 0.130932 * t."OUT_4"  + -0.107290 * t."OUT_5"  + -0.185705 * t."OUT_6"  + -0.202135 * t."OUT_7"  + 0.023321 * t."OUT_8"  + 0.089396 * t."OUT_9" AS "OUT_35",
    0.171506 + -0.119841 * t."OUT_0"  + -0.143022 * t."OUT_1"  + -0.044001 * t."OUT_2"  + 0.255594 * t."OUT_3"  + 0.017587 * t."OUT_4"  + 0.182630 * t."OUT_5"  + 0.048211 * t."OUT_6"  + 0.040254 * t."OUT_7"  + 0.018732 * t."OUT_8"  + 0.060107 * t."OUT_9" AS "OUT_36",
    0.001485 + 0.240212 * t."OUT_0"  + -0.143572 * t."OUT_1"  + 0.242546 * t."OUT_2"  + -0.135912 * t."OUT_3"  + -0.181968 * t."OUT_4"  + 0.152944 * t."OUT_5"  + -0.022791 * t."OUT_6"  + 0.009354 * t."OUT_7"  + 0.211139 * t."OUT_8"  + -0.184652 * t."OUT_9" AS "OUT_37",
    0.131822 + -0.171000 * t."OUT_0"  + -0.077547 * t."OUT_1"  + -0.202145 * t."OUT_2"  + -0.064788 * t."OUT_3"  + 0.157809 * t."OUT_4"  + -0.175775 * t."OUT_5"  + -0.134861 * t."OUT_6"  + -0.036575 * t."OUT_7"  + -0.137172 * t."OUT_8"  + 0.081814 * t."OUT_9" AS "OUT_38",
    -0.086424 + 0.098072 * t."OUT_0"  + -0.078687 * t."OUT_1"  + -0.244311 * t."OUT_2"  + -0.095957 * t."OUT_3"  + -0.239578 * t."OUT_4"  + 0.061166 * t."OUT_5"  + 0.204208 * t."OUT_6"  + 0.147709 * t."OUT_7"  + -0.152324 * t."OUT_8"  + -0.086634 * t."OUT_9" AS "OUT_39",
    0.056603 + -0.184238 * t."OUT_0"  + -0.173113 * t."OUT_1"  + -0.045062 * t."OUT_2"  + -0.015588 * t."OUT_3"  + -0.029589 * t."OUT_4"  + 0.105777 * t."OUT_5"  + -0.148628 * t."OUT_6"  + -0.135341 * t."OUT_7"  + 0.106103 * t."OUT_8"  + 0.128487 * t."OUT_9" AS "OUT_40",
    0.042475 + 0.112719 * t."OUT_0"  + -0.183673 * t."OUT_1"  + -0.027832 * t."OUT_2"  + -0.091341 * t."OUT_3"  + -0.024958 * t."OUT_4"  + 0.028465 * t."OUT_5"  + -0.161044 * t."OUT_6"  + 0.091961 * t."OUT_7"  + -0.197825 * t."OUT_8"  + -0.208293 * t."OUT_9" AS "OUT_41",
    -0.075953 + 0.025965 * t."OUT_0"  + -0.235595 * t."OUT_1"  + 0.060269 * t."OUT_2"  + -0.103092 * t."OUT_3"  + 0.056856 * t."OUT_4"  + 0.169454 * t."OUT_5"  + 0.176126 * t."OUT_6"  + -0.028933 * t."OUT_7"  + 0.094222 * t."OUT_8"  + -0.133626 * t."OUT_9" AS "OUT_42",
    0.234015 + 0.244494 * t."OUT_0"  + 0.077447 * t."OUT_1"  + 0.224177 * t."OUT_2"  + -0.047500 * t."OUT_3"  + -0.200816 * t."OUT_4"  + -0.032202 * t."OUT_5"  + 0.232210 * t."OUT_6"  + -0.110610 * t."OUT_7"  + 0.203845 * t."OUT_8"  + -0.165260 * t."OUT_9" AS "OUT_43",
    -0.159492 + -0.146620 * t."OUT_0"  + -0.153361 * t."OUT_1"  + 0.042761 * t."OUT_2"  + -0.048871 * t."OUT_3"  + -0.082091 * t."OUT_4"  + -0.163715 * t."OUT_5"  + 0.107958 * t."OUT_6"  + -0.112036 * t."OUT_7"  + 0.185589 * t."OUT_8"  + 0.059418 * t."OUT_9" AS "OUT_44",
    -0.057165 + -0.191446 * t."OUT_0"  + -0.196526 * t."OUT_1"  + -0.048949 * t."OUT_2"  + 0.107277 * t."OUT_3"  + 0.179430 * t."OUT_4"  + -0.010299 * t."OUT_5"  + -0.141165 * t."OUT_6"  + -0.103857 * t."OUT_7"  + 0.009203 * t."OUT_8"  + 0.087780 * t."OUT_9" AS "OUT_45",
    0.171135 + 0.048159 * t."OUT_0"  + 0.015713 * t."OUT_1"  + -0.181982 * t."OUT_2"  + 0.000710 * t."OUT_3"  + 0.110482 * t."OUT_4"  + 0.107936 * t."OUT_5"  + 0.127320 * t."OUT_6"  + -0.151351 * t."OUT_7"  + -0.122401 * t."OUT_8"  + -0.228045 * t."OUT_9" AS "OUT_46",
    -0.096129 + 0.058125 * t."OUT_0"  + 0.056480 * t."OUT_1"  + -0.163741 * t."OUT_2"  + -0.131537 * t."OUT_3"  + -0.136878 * t."OUT_4"  + -0.191577 * t."OUT_5"  + 0.159462 * t."OUT_6"  + 0.023289 * t."OUT_7"  + 0.194845 * t."OUT_8"  + 0.183548 * t."OUT_9" AS "OUT_47",
    0.194471 + 0.189335 * t."OUT_0"  + -0.004225 * t."OUT_1"  + 0.093100 * t."OUT_2"  + -0.039161 * t."OUT_3"  + 0.205808 * t."OUT_4"  + -0.045030 * t."OUT_5"  + 0.164322 * t."OUT_6"  + -0.127777 * t."OUT_7"  + -0.064600 * t."OUT_8"  + -0.083094 * t."OUT_9" AS "OUT_48",
    0.025618 + 0.232482 * t."OUT_0"  + 0.094843 * t."OUT_1"  + 0.118942 * t."OUT_2"  + 0.045343 * t."OUT_3"  + 0.083826 * t."OUT_4"  + 0.187356 * t."OUT_5"  + -0.030345 * t."OUT_6"  + 0.216499 * t."OUT_7"  + -0.000423 * t."OUT_8"  + 0.200543 * t."OUT_9" AS "OUT_49",
    0.198269 + 0.148701 * t."OUT_0"  + -0.001434 * t."OUT_1"  + -0.235052 * t."OUT_2"  + 0.172368 * t."OUT_3"  + 0.174992 * t."OUT_4"  + -0.185210 * t."OUT_5"  + -0.097421 * t."OUT_6"  + 0.013195 * t."OUT_7"  + -0.056356 * t."OUT_8"  + -0.017869 * t."OUT_9" AS "OUT_50",
    -0.136341 + -0.151716 * t."OUT_0"  + -0.154527 * t."OUT_1"  + -0.027502 * t."OUT_2"  + 0.023553 * t."OUT_3"  + 0.172226 * t."OUT_4"  + -0.022357 * t."OUT_5"  + 0.127940 * t."OUT_6"  + -0.057735 * t."OUT_7"  + -0.153590 * t."OUT_8"  + 0.122640 * t."OUT_9" AS "OUT_51",
    -0.137144 + 0.174161 * t."OUT_0"  + -0.004646 * t."OUT_1"  + 0.181277 * t."OUT_2"  + -0.149172 * t."OUT_3"  + -0.062732 * t."OUT_4"  + -0.006470 * t."OUT_5"  + -0.114572 * t."OUT_6"  + -0.162724 * t."OUT_7"  + 0.122279 * t."OUT_8"  + 0.238720 * t."OUT_9" AS "OUT_52",
    -0.060972 + 0.162466 * t."OUT_0"  + 0.165165 * t."OUT_1"  + -0.118005 * t."OUT_2"  + -0.139397 * t."OUT_3"  + 0.138079 * t."OUT_4"  + 0.077252 * t."OUT_5"  + -0.145833 * t."OUT_6"  + -0.250002 * t."OUT_7"  + 0.129705 * t."OUT_8"  + -0.127114 * t."OUT_9" AS "OUT_53",
    0.001191 + -0.106022 * t."OUT_0"  + 0.268260 * t."OUT_1"  + 0.030697 * t."OUT_2"  + -0.158198 * t."OUT_3"  + 0.222633 * t."OUT_4"  + -0.101263 * t."OUT_5"  + 0.194954 * t."OUT_6"  + -0.038856 * t."OUT_7"  + -0.131309 * t."OUT_8"  + 0.031286 * t."OUT_9" AS "OUT_54",
    -0.038463 + 0.083031 * t."OUT_0"  + -0.058506 * t."OUT_1"  + -0.060641 * t."OUT_2"  + 0.100937 * t."OUT_3"  + 0.172118 * t."OUT_4"  + 0.201212 * t."OUT_5"  + 0.101447 * t."OUT_6"  + 0.188870 * t."OUT_7"  + 0.161292 * t."OUT_8"  + 0.144607 * t."OUT_9" AS "OUT_55",
    0.242343 + 0.077972 * t."OUT_0"  + -0.189825 * t."OUT_1"  + 0.091341 * t."OUT_2"  + -0.102824 * t."OUT_3"  + 0.162017 * t."OUT_4"  + 0.019611 * t."OUT_5"  + -0.138308 * t."OUT_6"  + 0.215883 * t."OUT_7"  + 0.023782 * t."OUT_8"  + -0.054191 * t."OUT_9" AS "OUT_56",
    -0.081570 + -0.006326 * t."OUT_0"  + -0.133901 * t."OUT_1"  + -0.140241 * t."OUT_2"  + -0.065645 * t."OUT_3"  + 0.011453 * t."OUT_4"  + -0.229597 * t."OUT_5"  + 0.142164 * t."OUT_6"  + 0.041844 * t."OUT_7"  + 0.087710 * t."OUT_8"  + 0.142062 * t."OUT_9" AS "OUT_57",
    0.081513 + 0.029642 * t."OUT_0"  + 0.097359 * t."OUT_1"  + -0.001088 * t."OUT_2"  + -0.173504 * t."OUT_3"  + 0.032135 * t."OUT_4"  + -0.169215 * t."OUT_5"  + -0.117268 * t."OUT_6"  + -0.177484 * t."OUT_7"  + 0.116462 * t."OUT_8"  + -0.173716 * t."OUT_9" AS "OUT_58",
    0.128217 + 0.105837 * t."OUT_0"  + -0.217042 * t."OUT_1"  + 0.133076 * t."OUT_2"  + 0.009390 * t."OUT_3"  + -0.060461 * t."OUT_4"  + 0.126042 * t."OUT_5"  + -0.181285 * t."OUT_6"  + -0.099584 * t."OUT_7"  + -0.226055 * t."OUT_8"  + -0.064952 * t."OUT_9" AS "OUT_59",
    0.103845 + -0.204025 * t."OUT_0"  + 0.075197 * t."OUT_1"  + 0.065634 * t."OUT_2"  + -0.176717 * t."OUT_3"  + -0.034670 * t."OUT_4"  + 0.057308 * t."OUT_5"  + 0.098240 * t."OUT_6"  + -0.135627 * t."OUT_7"  + -0.199792 * t."OUT_8"  + -0.196415 * t."OUT_9" AS "OUT_60",
    0.122265 + 0.063715 * t."OUT_0"  + -0.089367 * t."OUT_1"  + 0.184648 * t."OUT_2"  + -0.043374 * t."OUT_3"  + 0.044057 * t."OUT_4"  + -0.058294 * t."OUT_5"  + -0.082391 * t."OUT_6"  + 0.009767 * t."OUT_7"  + 0.243257 * t."OUT_8"  + 0.110213 * t."OUT_9" AS "OUT_61",
    -0.028630 + 0.065382 * t."OUT_0"  + 0.184749 * t."OUT_1"  + 0.134273 * t."OUT_2"  + 0.155669 * t."OUT_3"  + -0.003979 * t."OUT_4"  + -0.036382 * t."OUT_5"  + 0.187178 * t."OUT_6"  + 0.032714 * t."OUT_7"  + -0.108404 * t."OUT_8"  + 0.054573 * t."OUT_9" AS "OUT_62",
    0.171996 + 0.166930 * t."OUT_0"  + 0.257071 * t."OUT_1"  + 0.194418 * t."OUT_2"  + -0.107327 * t."OUT_3"  + -0.036634 * t."OUT_4"  + -0.023962 * t."OUT_5"  + 0.140675 * t."OUT_6"  + -0.013613 * t."OUT_7"  + -0.080313 * t."OUT_8"  + 0.002750 * t."OUT_9" AS "OUT_63",
    -0.180297 + -0.222547 * t."OUT_0"  + -0.129396 * t."OUT_1"  + 0.053854 * t."OUT_2"  + 0.208751 * t."OUT_3"  + -0.167955 * t."OUT_4"  + 0.197434 * t."OUT_5"  + -0.052367 * t."OUT_6"  + 0.059933 * t."OUT_7"  + -0.136951 * t."OUT_8"  + -0.252801 * t."OUT_9" AS "OUT_64",
    0.106706 + 0.134275 * t."OUT_0"  + 0.092230 * t."OUT_1"  + -0.188652 * t."OUT_2"  + -0.160906 * t."OUT_3"  + 0.005458 * t."OUT_4"  + 0.174005 * t."OUT_5"  + 0.146777 * t."OUT_6"  + 0.156761 * t."OUT_7"  + -0.247405 * t."OUT_8"  + -0.199790 * t."OUT_9" AS "OUT_65",
    0.259893 + -0.095397 * t."OUT_0"  + -0.077743 * t."OUT_1"  + 0.015092 * t."OUT_2"  + 0.125575 * t."OUT_3"  + 0.260171 * t."OUT_4"  + 0.007366 * t."OUT_5"  + 0.183444 * t."OUT_6"  + -0.015148 * t."OUT_7"  + 0.248107 * t."OUT_8"  + 0.192948 * t."OUT_9" AS "OUT_66",
    0.134583 + -0.183069 * t."OUT_0"  + 0.204430 * t."OUT_1"  + -0.128106 * t."OUT_2"  + -0.114897 * t."OUT_3"  + -0.033351 * t."OUT_4"  + -0.036319 * t."OUT_5"  + 0.126638 * t."OUT_6"  + 0.224064 * t."OUT_7"  + 0.259024 * t."OUT_8"  + -0.096632 * t."OUT_9" AS "OUT_67",
    -0.015607 + 0.199817 * t."OUT_0"  + -0.228260 * t."OUT_1"  + 0.055106 * t."OUT_2"  + 0.089412 * t."OUT_3"  + -0.138138 * t."OUT_4"  + 0.116204 * t."OUT_5"  + 0.174518 * t."OUT_6"  + 0.013286 * t."OUT_7"  + -0.023829 * t."OUT_8"  + 0.112755 * t."OUT_9" AS "OUT_68",
    -0.032950 + 0.192832 * t."OUT_0"  + 0.109622 * t."OUT_1"  + 0.023309 * t."OUT_2"  + -0.136113 * t."OUT_3"  + -0.187989 * t."OUT_4"  + -0.060172 * t."OUT_5"  + -0.043184 * t."OUT_6"  + 0.176454 * t."OUT_7"  + 0.178773 * t."OUT_8"  + -0.193484 * t."OUT_9" AS "OUT_69",
    0.096728 + -0.060771 * t."OUT_0"  + 0.018690 * t."OUT_1"  + 0.198593 * t."OUT_2"  + -0.172134 * t."OUT_3"  + -0.125984 * t."OUT_4"  + 0.058905 * t."OUT_5"  + -0.162799 * t."OUT_6"  + 0.145713 * t."OUT_7"  + -0.169773 * t."OUT_8"  + 0.087435 * t."OUT_9" AS "OUT_70",
    -0.138994 + -0.163093 * t."OUT_0"  + -0.130371 * t."OUT_1"  + 0.119854 * t."OUT_2"  + -0.119938 * t."OUT_3"  + -0.113373 * t."OUT_4"  + 0.034388 * t."OUT_5"  + -0.011847 * t."OUT_6"  + -0.153758 * t."OUT_7"  + 0.087434 * t."OUT_8"  + -0.048069 * t."OUT_9" AS "OUT_71",
    -0.178744 + 0.025817 * t."OUT_0"  + 0.143681 * t."OUT_1"  + 0.249216 * t."OUT_2"  + -0.181828 * t."OUT_3"  + -0.010749 * t."OUT_4"  + -0.107915 * t."OUT_5"  + 0.008382 * t."OUT_6"  + 0.147881 * t."OUT_7"  + 0.203004 * t."OUT_8"  + 0.024586 * t."OUT_9" AS "OUT_72",
    -0.110504 + 0.197250 * t."OUT_0"  + 0.081796 * t."OUT_1"  + -0.148656 * t."OUT_2"  + 0.036208 * t."OUT_3"  + -0.088534 * t."OUT_4"  + 0.036927 * t."OUT_5"  + 0.102798 * t."OUT_6"  + 0.012936 * t."OUT_7"  + -0.036673 * t."OUT_8"  + -0.119184 * t."OUT_9" AS "OUT_73",
    0.029022 + -0.168518 * t."OUT_0"  + 0.006557 * t."OUT_1"  + 0.051130 * t."OUT_2"  + -0.188335 * t."OUT_3"  + 0.158997 * t."OUT_4"  + 0.101116 * t."OUT_5"  + -0.076512 * t."OUT_6"  + -0.083010 * t."OUT_7"  + -0.155671 * t."OUT_8"  + -0.130190 * t."OUT_9" AS "OUT_74",
    0.174672 + 0.060778 * t."OUT_0"  + -0.132767 * t."OUT_1"  + 0.105950 * t."OUT_2"  + 0.168845 * t."OUT_3"  + -0.034135 * t."OUT_4"  + -0.031391 * t."OUT_5"  + 0.065242 * t."OUT_6"  + 0.003648 * t."OUT_7"  + 0.197806 * t."OUT_8"  + -0.038252 * t."OUT_9" AS "OUT_75",
    0.071208 + 0.137413 * t."OUT_0"  + 0.227675 * t."OUT_1"  + 0.117546 * t."OUT_2"  + -0.194701 * t."OUT_3"  + 0.084475 * t."OUT_4"  + 0.124710 * t."OUT_5"  + -0.098415 * t."OUT_6"  + 0.148770 * t."OUT_7"  + 0.075224 * t."OUT_8"  + 0.258547 * t."OUT_9" AS "OUT_76",
    0.082767 + 0.108030 * t."OUT_0"  + 0.168715 * t."OUT_1"  + 0.184341 * t."OUT_2"  + -0.037616 * t."OUT_3"  + -0.010855 * t."OUT_4"  + -0.035008 * t."OUT_5"  + 0.142736 * t."OUT_6"  + -0.156453 * t."OUT_7"  + -0.243548 * t."OUT_8"  + -0.248000 * t."OUT_9" AS "OUT_77",
    0.142352 + 0.175122 * t."OUT_0"  + -0.125183 * t."OUT_1"  + -0.150369 * t."OUT_2"  + 0.159586 * t."OUT_3"  + -0.010314 * t."OUT_4"  + -0.164780 * t."OUT_5"  + -0.169279 * t."OUT_6"  + 0.201476 * t."OUT_7"  + 0.202570 * t."OUT_8"  + 0.183103 * t."OUT_9" AS "OUT_78",
    -0.026200 + -0.082196 * t."OUT_0"  + 0.062212 * t."OUT_1"  + 0.189282 * t."OUT_2"  + 0.035240 * t."OUT_3"  + 0.044316 * t."OUT_4"  + 0.195315 * t."OUT_5"  + 0.169834 * t."OUT_6"  + -0.101405 * t."OUT_7"  + -0.147696 * t."OUT_8"  + -0.163834 * t."OUT_9" AS "OUT_79",
    0.183702 + 0.130439 * t."OUT_0"  + 0.159454 * t."OUT_1"  + 0.142017 * t."OUT_2"  + -0.012683 * t."OUT_3"  + -0.053772 * t."OUT_4"  + -0.091673 * t."OUT_5"  + 0.254476 * t."OUT_6"  + -0.029963 * t."OUT_7"  + -0.167901 * t."OUT_8"  + 0.053146 * t."OUT_9" AS "OUT_80",
    -0.049974 + 0.134754 * t."OUT_0"  + -0.001766 * t."OUT_1"  + 0.202887 * t."OUT_2"  + -0.111511 * t."OUT_3"  + 0.167385 * t."OUT_4"  + 0.014257 * t."OUT_5"  + -0.030742 * t."OUT_6"  + -0.193382 * t."OUT_7"  + 0.104733 * t."OUT_8"  + 0.180164 * t."OUT_9" AS "OUT_81",
    0.035140 + 0.204185 * t."OUT_0"  + 0.028396 * t."OUT_1"  + 0.024897 * t."OUT_2"  + 0.212810 * t."OUT_3"  + 0.265238 * t."OUT_4"  + -0.087436 * t."OUT_5"  + -0.198866 * t."OUT_6"  + -0.155543 * t."OUT_7"  + 0.022404 * t."OUT_8"  + 0.040402 * t."OUT_9" AS "OUT_82",
    0.228091 + 0.011260 * t."OUT_0"  + 0.245905 * t."OUT_1"  + 0.120065 * t."OUT_2"  + -0.085280 * t."OUT_3"  + 0.115969 * t."OUT_4"  + -0.070524 * t."OUT_5"  + 0.171229 * t."OUT_6"  + -0.182693 * t."OUT_7"  + -0.057849 * t."OUT_8"  + 0.083923 * t."OUT_9" AS "OUT_83",
    -0.182556 + -0.173383 * t."OUT_0"  + 0.117834 * t."OUT_1"  + 0.170004 * t."OUT_2"  + -0.116475 * t."OUT_3"  + 0.075176 * t."OUT_4"  + 0.109549 * t."OUT_5"  + -0.028219 * t."OUT_6"  + 0.044520 * t."OUT_7"  + 0.167627 * t."OUT_8"  + 0.263301 * t."OUT_9" AS "OUT_84",
    -0.235804 + 0.089474 * t."OUT_0"  + 0.070038 * t."OUT_1"  + 0.091976 * t."OUT_2"  + -0.121069 * t."OUT_3"  + 0.027240 * t."OUT_4"  + 0.174131 * t."OUT_5"  + -0.203185 * t."OUT_6"  + 0.012434 * t."OUT_7"  + 0.134407 * t."OUT_8"  + -0.255191 * t."OUT_9" AS "OUT_85",
    -0.068551 + 0.023658 * t."OUT_0"  + -0.143470 * t."OUT_1"  + 0.164270 * t."OUT_2"  + 0.029552 * t."OUT_3"  + -0.004293 * t."OUT_4"  + -0.187499 * t."OUT_5"  + -0.009632 * t."OUT_6"  + -0.095974 * t."OUT_7"  + 0.216772 * t."OUT_8"  + -0.094064 * t."OUT_9" AS "OUT_86",
    -0.168300 + -0.044251 * t."OUT_0"  + -0.031721 * t."OUT_1"  + -0.198366 * t."OUT_2"  + 0.165732 * t."OUT_3"  + 0.149809 * t."OUT_4"  + -0.115523 * t."OUT_5"  + -0.163597 * t."OUT_6"  + -0.039807 * t."OUT_7"  + -0.067107 * t."OUT_8"  + -0.106257 * t."OUT_9" AS "OUT_87",
    -0.242097 + -0.181646 * t."OUT_0"  + 0.180106 * t."OUT_1"  + 0.074463 * t."OUT_2"  + -0.036378 * t."OUT_3"  + 0.062063 * t."OUT_4"  + 0.020073 * t."OUT_5"  + 0.198039 * t."OUT_6"  + -0.171202 * t."OUT_7"  + -0.020943 * t."OUT_8"  + -0.176437 * t."OUT_9" AS "OUT_88",
    0.049079 + -0.224060 * t."OUT_0"  + 0.125467 * t."OUT_1"  + 0.201011 * t."OUT_2"  + 0.070808 * t."OUT_3"  + -0.038001 * t."OUT_4"  + -0.104536 * t."OUT_5"  + -0.040707 * t."OUT_6"  + -0.049940 * t."OUT_7"  + -0.212802 * t."OUT_8"  + 0.230999 * t."OUT_9" AS "OUT_89",
    -0.215062 + -0.085424 * t."OUT_0"  + -0.067709 * t."OUT_1"  + 0.048038 * t."OUT_2"  + 0.147427 * t."OUT_3"  + -0.053358 * t."OUT_4"  + -0.135900 * t."OUT_5"  + -0.079834 * t."OUT_6"  + 0.118014 * t."OUT_7"  + -0.119601 * t."OUT_8"  + -0.078309 * t."OUT_9" AS "OUT_90",
    0.201197 + 0.243387 * t."OUT_0"  + -0.028849 * t."OUT_1"  + 0.219177 * t."OUT_2"  + 0.157241 * t."OUT_3"  + -0.177770 * t."OUT_4"  + 0.164673 * t."OUT_5"  + -0.000986 * t."OUT_6"  + -0.061431 * t."OUT_7"  + -0.147454 * t."OUT_8"  + 0.248265 * t."OUT_9" AS "OUT_91",
    0.210035 + 0.042477 * t."OUT_0"  + 0.197239 * t."OUT_1"  + -0.044893 * t."OUT_2"  + -0.117624 * t."OUT_3"  + 0.261964 * t."OUT_4"  + -0.133327 * t."OUT_5"  + 0.197398 * t."OUT_6"  + -0.196707 * t."OUT_7"  + -0.111644 * t."OUT_8"  + 0.204648 * t."OUT_9" AS "OUT_92",
    -0.217911 + -0.047620 * t."OUT_0"  + -0.121128 * t."OUT_1"  + 0.077510 * t."OUT_2"  + 0.095838 * t."OUT_3"  + -0.165523 * t."OUT_4"  + -0.054815 * t."OUT_5"  + -0.084746 * t."OUT_6"  + -0.171287 * t."OUT_7"  + -0.146511 * t."OUT_8"  + -0.033468 * t."OUT_9" AS "OUT_93",
    -0.186320 + -0.054086 * t."OUT_0"  + 0.030465 * t."OUT_1"  + -0.164539 * t."OUT_2"  + -0.148391 * t."OUT_3"  + -0.118841 * t."OUT_4"  + 0.154174 * t."OUT_5"  + 0.042930 * t."OUT_6"  + -0.192081 * t."OUT_7"  + -0.082605 * t."OUT_8"  + -0.184789 * t."OUT_9" AS "OUT_94",
    -0.116297 + -0.187718 * t."OUT_0"  + 0.212084 * t."OUT_1"  + 0.083181 * t."OUT_2"  + 0.150290 * t."OUT_3"  + 0.234930 * t."OUT_4"  + 0.254355 * t."OUT_5"  + 0.014669 * t."OUT_6"  + 0.251540 * t."OUT_7"  + -0.050273 * t."OUT_8"  + -0.099252 * t."OUT_9" AS "OUT_95",
    0.149279 + 0.111409 * t."OUT_0"  + -0.180998 * t."OUT_1"  + -0.189868 * t."OUT_2"  + -0.136785 * t."OUT_3"  + -0.118507 * t."OUT_4"  + 0.001075 * t."OUT_5"  + -0.128825 * t."OUT_6"  + 0.232238 * t."OUT_7"  + 0.172349 * t."OUT_8"  + 0.218878 * t."OUT_9" AS "OUT_96",
    0.029713 + -0.096673 * t."OUT_0"  + -0.153583 * t."OUT_1"  + 0.105217 * t."OUT_2"  + -0.083097 * t."OUT_3"  + 0.183787 * t."OUT_4"  + 0.108992 * t."OUT_5"  + 0.113196 * t."OUT_6"  + 0.196512 * t."OUT_7"  + 0.045678 * t."OUT_8"  + 0.196930 * t."OUT_9" AS "OUT_97",
    0.184704 + -0.120096 * t."OUT_0"  + -0.160866 * t."OUT_1"  + -0.025453 * t."OUT_2"  + 0.164023 * t."OUT_3"  + -0.160867 * t."OUT_4"  + -0.114672 * t."OUT_5"  + -0.159203 * t."OUT_6"  + 0.185814 * t."OUT_7"  + 0.169104 * t."OUT_8"  + -0.087348 * t."OUT_9" AS "OUT_98",
    0.134732 + -0.015089 * t."OUT_0"  + -0.089423 * t."OUT_1"  + 0.039171 * t."OUT_2"  + -0.106347 * t."OUT_3"  + 0.245387 * t."OUT_4"  + -0.024374 * t."OUT_5"  + 0.212119 * t."OUT_6"  + 0.133291 * t."OUT_7"  + 0.085591 * t."OUT_8"  + -0.021999 * t."OUT_9" AS "OUT_99"
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
    0.015261 + 0.236514 * t."OUT_0"  + -0.015760 * t."OUT_1"  + -0.196387 * t."OUT_2"  + 0.106896 * t."OUT_3"  + -0.062387 * t."OUT_4"  + -0.154585 * t."OUT_5"  + -0.081953 * t."OUT_6"  + 0.238551 * t."OUT_7"  + -0.091607 * t."OUT_8"  + 0.170055 * t."OUT_9"  + -0.192479 * t."OUT_10"  + 0.271790 * t."OUT_11"  + -0.135947 * t."OUT_12"  + -0.019808 * t."OUT_13"  + 0.212207 * t."OUT_14"  + 0.068141 * t."OUT_15"  + 0.197415 * t."OUT_16"  + -0.187515 * t."OUT_17"  + -0.019708 * t."OUT_18"  + -0.081904 * t."OUT_19"  + 0.015925 * t."OUT_20"  + -0.172043 * t."OUT_21"  + 0.190150 * t."OUT_22"  + 0.097694 * t."OUT_23"  + -0.093098 * t."OUT_24"  + 0.004233 * t."OUT_25"  + -0.031856 * t."OUT_26"  + -0.164080 * t."OUT_27"  + 0.166548 * t."OUT_28"  + -0.211110 * t."OUT_29"  + -0.206383 * t."OUT_30"  + 0.170731 * t."OUT_31"  + -0.058141 * t."OUT_32"  + -0.143408 * t."OUT_33"  + -0.092135 * t."OUT_34"  + -0.041923 * t."OUT_35"  + 0.038002 * t."OUT_36"  + 0.041650 * t."OUT_37"  + -0.161000 * t."OUT_38"  + -0.120628 * t."OUT_39"  + -0.136425 * t."OUT_40"  + -0.206643 * t."OUT_41"  + -0.036475 * t."OUT_42"  + 0.172124 * t."OUT_43"  + -0.086666 * t."OUT_44"  + -0.033616 * t."OUT_45"  + -0.083858 * t."OUT_46"  + -0.076068 * t."OUT_47"  + 0.265096 * t."OUT_48"  + 0.249762 * t."OUT_49"  + -0.021047 * t."OUT_50"  + -0.015536 * t."OUT_51"  + 0.263641 * t."OUT_52"  + -0.137080 * t."OUT_53"  + 0.126452 * t."OUT_54"  + 0.009490 * t."OUT_55"  + 0.024459 * t."OUT_56"  + -0.063127 * t."OUT_57"  + 0.169361 * t."OUT_58"  + -0.090309 * t."OUT_59"  + -0.058723 * t."OUT_60"  + 0.058186 * t."OUT_61"  + -0.045185 * t."OUT_62"  + 0.129422 * t."OUT_63"  + -0.041670 * t."OUT_64"  + -0.054808 * t."OUT_65"  + 0.046258 * t."OUT_66"  + 0.219896 * t."OUT_67"  + -0.069526 * t."OUT_68"  + -0.085280 * t."OUT_69"  + -0.131798 * t."OUT_70"  + 0.149806 * t."OUT_71"  + 0.244180 * t."OUT_72"  + -0.091543 * t."OUT_73"  + 0.042454 * t."OUT_74"  + -0.180129 * t."OUT_75"  + 0.201980 * t."OUT_76"  + -0.052250 * t."OUT_77"  + -0.066102 * t."OUT_78"  + 0.042868 * t."OUT_79"  + 0.252539 * t."OUT_80"  + -0.029771 * t."OUT_81"  + 0.154536 * t."OUT_82"  + 0.229095 * t."OUT_83"  + 0.180375 * t."OUT_84"  + -0.167648 * t."OUT_85"  + 0.029739 * t."OUT_86"  + -0.073941 * t."OUT_87"  + -0.185356 * t."OUT_88"  + 0.018785 * t."OUT_89"  + 0.006499 * t."OUT_90"  + 0.103524 * t."OUT_91"  + 0.249044 * t."OUT_92"  + -0.039389 * t."OUT_93"  + -0.130068 * t."OUT_94"  + 0.029549 * t."OUT_95"  + 0.119369 * t."OUT_96"  + 0.002034 * t."OUT_97"  + -0.041012 * t."OUT_98"  + 0.237436 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t