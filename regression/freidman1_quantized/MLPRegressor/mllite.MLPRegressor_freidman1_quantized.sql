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
    0.193240 + 0.009680 * t.OUT_0  + 0.125913 * t.OUT_1  + -0.064562 * t.OUT_2  + 0.141207 * t.OUT_3  + -0.088364 * t.OUT_4  + 0.116205 * t.OUT_5  + 0.171317 * t.OUT_6  + -0.145929 * t.OUT_7  + 0.181175 * t.OUT_8  + 0.157376 * t.OUT_9 AS OUT_0,
    0.119049 + 0.102033 * t.OUT_0  + -0.185408 * t.OUT_1  + -0.021872 * t.OUT_2  + -0.224083 * t.OUT_3  + 0.011343 * t.OUT_4  + 0.172746 * t.OUT_5  + -0.095050 * t.OUT_6  + -0.088821 * t.OUT_7  + -0.120351 * t.OUT_8  + 0.092305 * t.OUT_9 AS OUT_1,
    0.194378 + -0.095324 * t.OUT_0  + -0.076759 * t.OUT_1  + -0.191204 * t.OUT_2  + -0.161817 * t.OUT_3  + 0.118825 * t.OUT_4  + -0.152833 * t.OUT_5  + -0.185415 * t.OUT_6  + -0.169759 * t.OUT_7  + -0.100858 * t.OUT_8  + -0.139033 * t.OUT_9 AS OUT_2,
    0.076697 + 0.012991 * t.OUT_0  + 0.164452 * t.OUT_1  + 0.174217 * t.OUT_2  + -0.038142 * t.OUT_3  + 0.241412 * t.OUT_4  + 0.165366 * t.OUT_5  + 0.064496 * t.OUT_6  + 0.003925 * t.OUT_7  + -0.079063 * t.OUT_8  + -0.015421 * t.OUT_9 AS OUT_3,
    0.145690 + 0.017684 * t.OUT_0  + 0.128729 * t.OUT_1  + 0.195871 * t.OUT_2  + -0.187103 * t.OUT_3  + -0.134339 * t.OUT_4  + -0.204627 * t.OUT_5  + 0.081757 * t.OUT_6  + -0.092783 * t.OUT_7  + 0.195306 * t.OUT_8  + -0.190807 * t.OUT_9 AS OUT_4,
    0.065220 + -0.188990 * t.OUT_0  + 0.173586 * t.OUT_1  + 0.014387 * t.OUT_2  + 0.068431 * t.OUT_3  + -0.019720 * t.OUT_4  + 0.200137 * t.OUT_5  + -0.192318 * t.OUT_6  + -0.249198 * t.OUT_7  + -0.167578 * t.OUT_8  + -0.190122 * t.OUT_9 AS OUT_5,
    -0.153079 + 0.041324 * t.OUT_0  + 0.142871 * t.OUT_1  + -0.016819 * t.OUT_2  + -0.041696 * t.OUT_3  + 0.205358 * t.OUT_4  + -0.168382 * t.OUT_5  + -0.226580 * t.OUT_6  + -0.028191 * t.OUT_7  + -0.169294 * t.OUT_8  + 0.148553 * t.OUT_9 AS OUT_6,
    0.190087 + 0.037226 * t.OUT_0  + 0.162406 * t.OUT_1  + 0.120996 * t.OUT_2  + -0.039284 * t.OUT_3  + 0.220518 * t.OUT_4  + -0.138314 * t.OUT_5  + 0.058852 * t.OUT_6  + -0.111601 * t.OUT_7  + -0.009682 * t.OUT_8  + 0.171733 * t.OUT_9 AS OUT_7,
    -0.099375 + 0.173888 * t.OUT_0  + -0.123993 * t.OUT_1  + -0.000961 * t.OUT_2  + -0.079423 * t.OUT_3  + 0.151748 * t.OUT_4  + -0.163706 * t.OUT_5  + 0.006974 * t.OUT_6  + 0.056502 * t.OUT_7  + -0.076455 * t.OUT_8  + -0.111633 * t.OUT_9 AS OUT_8,
    0.124467 + 0.079014 * t.OUT_0  + 0.051594 * t.OUT_1  + 0.141939 * t.OUT_2  + 0.176189 * t.OUT_3  + -0.022320 * t.OUT_4  + -0.015092 * t.OUT_5  + -0.044830 * t.OUT_6  + 0.183707 * t.OUT_7  + 0.133809 * t.OUT_8  + 0.159065 * t.OUT_9 AS OUT_9,
    -0.155131 + 0.165982 * t.OUT_0  + 0.037379 * t.OUT_1  + -0.010595 * t.OUT_2  + 0.097843 * t.OUT_3  + -0.139014 * t.OUT_4  + 0.056523 * t.OUT_5  + 0.041887 * t.OUT_6  + 0.094781 * t.OUT_7  + -0.231710 * t.OUT_8  + 0.058101 * t.OUT_9 AS OUT_10,
    0.259202 + -0.006928 * t.OUT_0  + 0.187849 * t.OUT_1  + 0.168828 * t.OUT_2  + -0.067226 * t.OUT_3  + -0.071882 * t.OUT_4  + 0.179314 * t.OUT_5  + 0.179276 * t.OUT_6  + 0.097906 * t.OUT_7  + -0.091993 * t.OUT_8  + -0.035395 * t.OUT_9 AS OUT_11,
    -0.052393 + 0.204007 * t.OUT_0  + 0.086591 * t.OUT_1  + 0.078016 * t.OUT_2  + 0.094730 * t.OUT_3  + 0.016398 * t.OUT_4  + -0.082676 * t.OUT_5  + -0.029692 * t.OUT_6  + -0.049337 * t.OUT_7  + -0.164535 * t.OUT_8  + 0.042150 * t.OUT_9 AS OUT_12,
    -0.188104 + -0.223386 * t.OUT_0  + -0.017444 * t.OUT_1  + -0.115068 * t.OUT_2  + -0.199022 * t.OUT_3  + -0.215645 * t.OUT_4  + 0.180621 * t.OUT_5  + 0.086673 * t.OUT_6  + -0.225788 * t.OUT_7  + -0.113862 * t.OUT_8  + -0.161775 * t.OUT_9 AS OUT_13,
    -0.170530 + -0.066156 * t.OUT_0  + 0.165138 * t.OUT_1  + -0.035301 * t.OUT_2  + 0.225177 * t.OUT_3  + -0.058742 * t.OUT_4  + -0.056627 * t.OUT_5  + 0.090816 * t.OUT_6  + -0.188920 * t.OUT_7  + 0.217671 * t.OUT_8  + 0.027822 * t.OUT_9 AS OUT_14,
    0.225491 + 0.119337 * t.OUT_0  + 0.194679 * t.OUT_1  + -0.168036 * t.OUT_2  + -0.019681 * t.OUT_3  + -0.184492 * t.OUT_4  + -0.172361 * t.OUT_5  + 0.042077 * t.OUT_6  + 0.228990 * t.OUT_7  + -0.000336 * t.OUT_8  + 0.213598 * t.OUT_9 AS OUT_15,
    0.021244 + 0.155707 * t.OUT_0  + 0.072502 * t.OUT_1  + -0.091783 * t.OUT_2  + 0.091380 * t.OUT_3  + -0.016743 * t.OUT_4  + -0.071940 * t.OUT_5  + -0.013500 * t.OUT_6  + -0.038267 * t.OUT_7  + 0.164371 * t.OUT_8  + -0.080527 * t.OUT_9 AS OUT_16,
    -0.235118 + -0.133836 * t.OUT_0  + -0.102738 * t.OUT_1  + -0.160612 * t.OUT_2  + -0.166072 * t.OUT_3  + -0.093753 * t.OUT_4  + -0.038657 * t.OUT_5  + 0.185493 * t.OUT_6  + 0.006997 * t.OUT_7  + -0.129061 * t.OUT_8  + 0.168443 * t.OUT_9 AS OUT_17,
    -0.197450 + -0.131637 * t.OUT_0  + -0.075391 * t.OUT_1  + 0.052432 * t.OUT_2  + -0.149263 * t.OUT_3  + -0.024373 * t.OUT_4  + 0.035804 * t.OUT_5  + -0.147090 * t.OUT_6  + -0.127053 * t.OUT_7  + -0.083462 * t.OUT_8  + 0.121094 * t.OUT_9 AS OUT_18,
    -0.123986 + -0.206782 * t.OUT_0  + -0.133141 * t.OUT_1  + -0.051268 * t.OUT_2  + 0.028594 * t.OUT_3  + -0.058721 * t.OUT_4  + -0.199087 * t.OUT_5  + -0.172961 * t.OUT_6  + 0.207300 * t.OUT_7  + -0.101892 * t.OUT_8  + 0.101479 * t.OUT_9 AS OUT_19,
    0.138897 + 0.087003 * t.OUT_0  + 0.108856 * t.OUT_1  + -0.113593 * t.OUT_2  + -0.086955 * t.OUT_3  + 0.215669 * t.OUT_4  + 0.109496 * t.OUT_5  + -0.137872 * t.OUT_6  + -0.048443 * t.OUT_7  + 0.137216 * t.OUT_8  + -0.213366 * t.OUT_9 AS OUT_20,
    0.052574 + -0.257332 * t.OUT_0  + 0.102251 * t.OUT_1  + -0.222892 * t.OUT_2  + 0.179899 * t.OUT_3  + 0.125326 * t.OUT_4  + 0.095440 * t.OUT_5  + -0.234373 * t.OUT_6  + 0.015436 * t.OUT_7  + 0.111823 * t.OUT_8  + -0.014201 * t.OUT_9 AS OUT_21,
    0.112672 + -0.037238 * t.OUT_0  + -0.161557 * t.OUT_1  + 0.205178 * t.OUT_2  + -0.210600 * t.OUT_3  + -0.124535 * t.OUT_4  + -0.056533 * t.OUT_5  + -0.178617 * t.OUT_6  + -0.134306 * t.OUT_7  + -0.211930 * t.OUT_8  + 0.086139 * t.OUT_9 AS OUT_22,
    0.049387 + 0.046229 * t.OUT_0  + 0.111180 * t.OUT_1  + -0.055655 * t.OUT_2  + -0.082263 * t.OUT_3  + 0.035730 * t.OUT_4  + -0.078170 * t.OUT_5  + 0.135596 * t.OUT_6  + 0.024284 * t.OUT_7  + -0.015776 * t.OUT_8  + -0.189384 * t.OUT_9 AS OUT_23,
    0.191903 + -0.072650 * t.OUT_0  + -0.174922 * t.OUT_1  + -0.081278 * t.OUT_2  + 0.075788 * t.OUT_3  + 0.105408 * t.OUT_4  + 0.124980 * t.OUT_5  + -0.019167 * t.OUT_6  + -0.034673 * t.OUT_7  + -0.239023 * t.OUT_8  + 0.177672 * t.OUT_9 AS OUT_24,
    0.044130 + -0.212177 * t.OUT_0  + -0.000617 * t.OUT_1  + 0.081062 * t.OUT_2  + 0.016046 * t.OUT_3  + -0.210833 * t.OUT_4  + -0.176427 * t.OUT_5  + -0.074756 * t.OUT_6  + -0.169813 * t.OUT_7  + 0.186102 * t.OUT_8  + -0.142199 * t.OUT_9 AS OUT_25,
    -0.091323 + -0.144876 * t.OUT_0  + 0.018194 * t.OUT_1  + 0.082883 * t.OUT_2  + 0.133142 * t.OUT_3  + -0.149769 * t.OUT_4  + 0.167346 * t.OUT_5  + 0.037149 * t.OUT_6  + -0.204759 * t.OUT_7  + 0.000558 * t.OUT_8  + 0.074803 * t.OUT_9 AS OUT_26,
    -0.057794 + 0.163846 * t.OUT_0  + -0.120896 * t.OUT_1  + 0.074472 * t.OUT_2  + 0.118814 * t.OUT_3  + -0.012369 * t.OUT_4  + 0.121299 * t.OUT_5  + 0.072149 * t.OUT_6  + -0.100979 * t.OUT_7  + -0.037369 * t.OUT_8  + -0.253358 * t.OUT_9 AS OUT_27,
    -0.088994 + 0.013744 * t.OUT_0  + 0.137739 * t.OUT_1  + -0.177638 * t.OUT_2  + -0.108857 * t.OUT_3  + -0.084254 * t.OUT_4  + 0.055633 * t.OUT_5  + 0.085892 * t.OUT_6  + 0.195950 * t.OUT_7  + 0.174913 * t.OUT_8  + 0.110711 * t.OUT_9 AS OUT_28,
    -0.248328 + -0.017744 * t.OUT_0  + -0.240750 * t.OUT_1  + 0.155971 * t.OUT_2  + -0.175751 * t.OUT_3  + -0.014717 * t.OUT_4  + -0.207429 * t.OUT_5  + -0.087842 * t.OUT_6  + -0.206956 * t.OUT_7  + 0.100001 * t.OUT_8  + 0.146473 * t.OUT_9 AS OUT_29,
    0.180863 + -0.220552 * t.OUT_0  + -0.221396 * t.OUT_1  + 0.195497 * t.OUT_2  + -0.205065 * t.OUT_3  + -0.225131 * t.OUT_4  + -0.207837 * t.OUT_5  + -0.188072 * t.OUT_6  + -0.033367 * t.OUT_7  + 0.028106 * t.OUT_8  + 0.070616 * t.OUT_9 AS OUT_30,
    0.192835 + 0.042792 * t.OUT_0  + 0.203720 * t.OUT_1  + 0.204051 * t.OUT_2  + 0.085512 * t.OUT_3  + -0.015583 * t.OUT_4  + -0.105327 * t.OUT_5  + 0.045417 * t.OUT_6  + 0.123058 * t.OUT_7  + 0.184256 * t.OUT_8  + -0.016531 * t.OUT_9 AS OUT_31,
    0.127092 + -0.098063 * t.OUT_0  + 0.184536 * t.OUT_1  + -0.013311 * t.OUT_2  + 0.036193 * t.OUT_3  + -0.095156 * t.OUT_4  + 0.014473 * t.OUT_5  + 0.009368 * t.OUT_6  + -0.258776 * t.OUT_7  + 0.153086 * t.OUT_8  + 0.073812 * t.OUT_9 AS OUT_32,
    -0.100252 + 0.058920 * t.OUT_0  + -0.181577 * t.OUT_1  + 0.205453 * t.OUT_2  + 0.072864 * t.OUT_3  + 0.073210 * t.OUT_4  + -0.249661 * t.OUT_5  + 0.084022 * t.OUT_6  + 0.200753 * t.OUT_7  + -0.203708 * t.OUT_8  + 0.054691 * t.OUT_9 AS OUT_33,
    0.134222 + -0.046993 * t.OUT_0  + -0.087730 * t.OUT_1  + 0.146008 * t.OUT_2  + -0.067900 * t.OUT_3  + -0.045041 * t.OUT_4  + -0.064904 * t.OUT_5  + -0.190779 * t.OUT_6  + -0.202856 * t.OUT_7  + -0.048241 * t.OUT_8  + -0.084309 * t.OUT_9 AS OUT_34,
    -0.038955 + 0.075812 * t.OUT_0  + -0.200107 * t.OUT_1  + 0.040135 * t.OUT_2  + -0.008881 * t.OUT_3  + 0.133061 * t.OUT_4  + -0.102336 * t.OUT_5  + -0.182857 * t.OUT_6  + -0.198389 * t.OUT_7  + 0.025665 * t.OUT_8  + 0.093607 * t.OUT_9 AS OUT_35,
    0.170879 + -0.120343 * t.OUT_0  + -0.143426 * t.OUT_1  + -0.044605 * t.OUT_2  + 0.255002 * t.OUT_3  + 0.016968 * t.OUT_4  + 0.181935 * t.OUT_5  + 0.047554 * t.OUT_6  + 0.039556 * t.OUT_7  + 0.017956 * t.OUT_8  + 0.059316 * t.OUT_9 AS OUT_36,
    0.000659 + 0.239289 * t.OUT_0  + -0.144115 * t.OUT_1  + 0.241513 * t.OUT_2  + -0.136170 * t.OUT_3  + -0.182317 * t.OUT_4  + 0.152485 * t.OUT_5  + -0.023708 * t.OUT_6  + 0.008469 * t.OUT_7  + 0.210223 * t.OUT_8  + -0.185612 * t.OUT_9 AS OUT_37,
    0.131822 + -0.171000 * t.OUT_0  + -0.077547 * t.OUT_1  + -0.231892 * t.OUT_2  + -0.064788 * t.OUT_3  + 0.184582 * t.OUT_4  + -0.175775 * t.OUT_5  + -0.134861 * t.OUT_6  + -0.036575 * t.OUT_7  + -0.137172 * t.OUT_8  + 0.081814 * t.OUT_9 AS OUT_38,
    -0.085498 + 0.100161 * t.OUT_0  + -0.077750 * t.OUT_1  + -0.239038 * t.OUT_2  + -0.097360 * t.OUT_3  + -0.240234 * t.OUT_4  + 0.061687 * t.OUT_5  + 0.207234 * t.OUT_6  + 0.148920 * t.OUT_7  + -0.155762 * t.OUT_8  + -0.080836 * t.OUT_9 AS OUT_39,
    0.053131 + -0.188928 * t.OUT_0  + -0.174622 * t.OUT_1  + -0.047671 * t.OUT_2  + -0.019268 * t.OUT_3  + -0.033541 * t.OUT_4  + 0.104192 * t.OUT_5  + -0.150961 * t.OUT_6  + -0.136437 * t.OUT_7  + 0.103416 * t.OUT_8  + 0.124083 * t.OUT_9 AS OUT_40,
    0.037050 + 0.107799 * t.OUT_0  + -0.185266 * t.OUT_1  + -0.029170 * t.OUT_2  + -0.100108 * t.OUT_3  + -0.028130 * t.OUT_4  + 0.026836 * t.OUT_5  + -0.167091 * t.OUT_6  + 0.085912 * t.OUT_7  + -0.197500 * t.OUT_8  + -0.214026 * t.OUT_9 AS OUT_41,
    -0.073317 + 0.028685 * t.OUT_0  + -0.232883 * t.OUT_1  + 0.062974 * t.OUT_2  + -0.100810 * t.OUT_3  + 0.059626 * t.OUT_4  + 0.171844 * t.OUT_5  + 0.179215 * t.OUT_6  + -0.026600 * t.OUT_7  + 0.097369 * t.OUT_8  + -0.131716 * t.OUT_9 AS OUT_42,
    0.232275 + 0.242389 * t.OUT_0  + 0.075846 * t.OUT_1  + 0.222192 * t.OUT_2  + -0.048394 * t.OUT_3  + -0.201813 * t.OUT_4  + -0.033810 * t.OUT_5  + 0.229787 * t.OUT_6  + -0.112121 * t.OUT_7  + 0.201598 * t.OUT_8  + -0.166854 * t.OUT_9 AS OUT_43,
    -0.180617 + -0.168965 * t.OUT_0  + -0.173561 * t.OUT_1  + 0.020973 * t.OUT_2  + -0.069702 * t.OUT_3  + -0.100675 * t.OUT_4  + -0.183724 * t.OUT_5  + 0.086616 * t.OUT_6  + -0.133299 * t.OUT_7  + 0.193796 * t.OUT_8  + 0.038052 * t.OUT_9 AS OUT_44,
    -0.069046 + -0.201874 * t.OUT_0  + -0.208159 * t.OUT_1  + -0.062365 * t.OUT_2  + 0.095229 * t.OUT_3  + 0.167261 * t.OUT_4  + -0.021419 * t.OUT_5  + -0.153002 * t.OUT_6  + -0.115061 * t.OUT_7  + -0.002913 * t.OUT_8  + 0.075429 * t.OUT_9 AS OUT_45,
    0.175759 + 0.052230 * t.OUT_0  + 0.020896 * t.OUT_1  + -0.176698 * t.OUT_2  + 0.005558 * t.OUT_3  + 0.114809 * t.OUT_4  + 0.112684 * t.OUT_5  + 0.131978 * t.OUT_6  + -0.146936 * t.OUT_7  + -0.116397 * t.OUT_8  + -0.223545 * t.OUT_9 AS OUT_46,
    -0.096641 + 0.057717 * t.OUT_0  + 0.054633 * t.OUT_1  + -0.162004 * t.OUT_2  + -0.135249 * t.OUT_3  + -0.137951 * t.OUT_4  + -0.194882 * t.OUT_5  + 0.158306 * t.OUT_6  + 0.023236 * t.OUT_7  + 0.195154 * t.OUT_8  + 0.184609 * t.OUT_9 AS OUT_47,
    0.192922 + 0.187662 * t.OUT_0  + -0.005842 * t.OUT_1  + 0.091316 * t.OUT_2  + -0.040163 * t.OUT_3  + 0.204205 * t.OUT_4  + -0.046225 * t.OUT_5  + 0.162379 * t.OUT_6  + -0.128592 * t.OUT_7  + -0.065818 * t.OUT_8  + -0.084027 * t.OUT_9 AS OUT_48,
    0.022704 + 0.229571 * t.OUT_0  + 0.092021 * t.OUT_1  + 0.115820 * t.OUT_2  + 0.042914 * t.OUT_3  + 0.081051 * t.OUT_4  + 0.184530 * t.OUT_5  + -0.033611 * t.OUT_6  + 0.213587 * t.OUT_7  + -0.003585 * t.OUT_8  + 0.197537 * t.OUT_9 AS OUT_49,
    0.201710 + 0.151827 * t.OUT_0  + 0.001865 * t.OUT_1  + -0.230926 * t.OUT_2  + 0.175548 * t.OUT_3  + 0.178365 * t.OUT_4  + -0.181415 * t.OUT_5  + -0.093712 * t.OUT_6  + 0.017216 * t.OUT_7  + -0.052470 * t.OUT_8  + -0.014752 * t.OUT_9 AS OUT_50,
    -0.153173 + -0.168813 * t.OUT_0  + -0.171279 * t.OUT_1  + -0.043689 * t.OUT_2  + 0.006925 * t.OUT_3  + 0.184536 * t.OUT_4  + -0.039080 * t.OUT_5  + 0.110944 * t.OUT_6  + -0.074365 * t.OUT_7  + -0.170419 * t.OUT_8  + 0.105902 * t.OUT_9 AS OUT_51,
    -0.139486 + 0.170871 * t.OUT_0  + -0.006134 * t.OUT_1  + 0.178391 * t.OUT_2  + -0.150311 * t.OUT_3  + -0.064447 * t.OUT_4  + -0.006545 * t.OUT_5  + -0.116466 * t.OUT_6  + -0.164999 * t.OUT_7  + 0.120229 * t.OUT_8  + 0.235955 * t.OUT_9 AS OUT_52,
    -0.060258 + 0.163489 * t.OUT_0  + 0.166394 * t.OUT_1  + -0.117372 * t.OUT_2  + -0.139405 * t.OUT_3  + 0.139077 * t.OUT_4  + 0.078628 * t.OUT_5  + -0.145048 * t.OUT_6  + -0.250217 * t.OUT_7  + 0.130008 * t.OUT_8  + -0.126927 * t.OUT_9 AS OUT_53,
    -0.002153 + -0.108463 * t.OUT_0  + 0.264869 * t.OUT_1  + 0.027142 * t.OUT_2  + -0.160840 * t.OUT_3  + 0.218885 * t.OUT_4  + -0.103920 * t.OUT_5  + 0.192469 * t.OUT_6  + -0.042321 * t.OUT_7  + -0.132854 * t.OUT_8  + 0.028125 * t.OUT_9 AS OUT_54,
    -0.038149 + 0.083341 * t.OUT_0  + -0.058216 * t.OUT_1  + -0.060274 * t.OUT_2  + 0.101115 * t.OUT_3  + 0.172398 * t.OUT_4  + 0.201504 * t.OUT_5  + 0.101854 * t.OUT_6  + 0.189181 * t.OUT_7  + 0.161669 * t.OUT_8  + 0.144945 * t.OUT_9 AS OUT_55,
    0.237812 + 0.073082 * t.OUT_0  + -0.194532 * t.OUT_1  + 0.086574 * t.OUT_2  + -0.107178 * t.OUT_3  + 0.157899 * t.OUT_4  + 0.015169 * t.OUT_5  + -0.143802 * t.OUT_6  + 0.211569 * t.OUT_7  + 0.018270 * t.OUT_8  + -0.059313 * t.OUT_9 AS OUT_56,
    -0.083030 + -0.006531 * t.OUT_0  + -0.136339 * t.OUT_1  + -0.140823 * t.OUT_2  + -0.069718 * t.OUT_3  + 0.010969 * t.OUT_4  + -0.231983 * t.OUT_5  + 0.140425 * t.OUT_6  + 0.040347 * t.OUT_7  + 0.086507 * t.OUT_8  + 0.142991 * t.OUT_9 AS OUT_57,
    0.116379 + 0.063788 * t.OUT_0  + 0.131791 * t.OUT_1  + 0.033787 * t.OUT_2  + -0.138416 * t.OUT_3  + 0.066136 * t.OUT_4  + -0.134239 * t.OUT_5  + -0.082334 * t.OUT_6  + -0.178312 * t.OUT_7  + 0.151417 * t.OUT_8  + -0.138340 * t.OUT_9 AS OUT_58,
    0.130449 + 0.110395 * t.OUT_0  + -0.217109 * t.OUT_1  + 0.134813 * t.OUT_2  + 0.008008 * t.OUT_3  + -0.058724 * t.OUT_4  + 0.127670 * t.OUT_5  + -0.176372 * t.OUT_6  + -0.096734 * t.OUT_7  + -0.224350 * t.OUT_8  + -0.061492 * t.OUT_9 AS OUT_59,
    0.099348 + -0.211268 * t.OUT_0  + 0.072214 * t.OUT_1  + 0.061138 * t.OUT_2  + -0.179505 * t.OUT_3  + -0.037447 * t.OUT_4  + 0.053573 * t.OUT_5  + 0.093898 * t.OUT_6  + -0.138403 * t.OUT_7  + -0.204285 * t.OUT_8  + -0.202577 * t.OUT_9 AS OUT_60,
    0.121217 + 0.062723 * t.OUT_0  + -0.090305 * t.OUT_1  + 0.182885 * t.OUT_2  + -0.043805 * t.OUT_3  + 0.043437 * t.OUT_4  + -0.059331 * t.OUT_5  + -0.083619 * t.OUT_6  + 0.008650 * t.OUT_7  + 0.241651 * t.OUT_8  + 0.108901 * t.OUT_9 AS OUT_61,
    -0.025730 + 0.068277 * t.OUT_0  + 0.187566 * t.OUT_1  + 0.137367 * t.OUT_2  + 0.158110 * t.OUT_3  + -0.001208 * t.OUT_4  + -0.033565 * t.OUT_5  + 0.190405 * t.OUT_6  + 0.035609 * t.OUT_7  + -0.105272 * t.OUT_8  + 0.057553 * t.OUT_9 AS OUT_62,
    0.170127 + 0.164732 * t.OUT_0  + 0.254956 * t.OUT_1  + 0.192011 * t.OUT_2  + -0.108315 * t.OUT_3  + -0.038401 * t.OUT_4  + -0.025588 * t.OUT_5  + 0.138171 * t.OUT_6  + -0.015188 * t.OUT_7  + -0.082356 * t.OUT_8  + 0.001042 * t.OUT_9 AS OUT_63,
    -0.183201 + -0.223240 * t.OUT_0  + -0.130612 * t.OUT_1  + 0.051285 * t.OUT_2  + 0.205624 * t.OUT_3  + -0.170744 * t.OUT_4  + 0.193971 * t.OUT_5  + -0.054124 * t.OUT_6  + 0.057213 * t.OUT_7  + -0.141278 * t.OUT_8  + -0.256985 * t.OUT_9 AS OUT_64,
    0.108758 + 0.135760 * t.OUT_0  + 0.095237 * t.OUT_1  + -0.186459 * t.OUT_2  + -0.158939 * t.OUT_3  + 0.007699 * t.OUT_4  + 0.177461 * t.OUT_5  + 0.148240 * t.OUT_6  + 0.159492 * t.OUT_7  + -0.245203 * t.OUT_8  + -0.197724 * t.OUT_9 AS OUT_65,
    0.257773 + -0.097492 * t.OUT_0  + -0.079777 * t.OUT_1  + 0.012801 * t.OUT_2  + 0.123840 * t.OUT_3  + 0.258139 * t.OUT_4  + 0.005333 * t.OUT_5  + 0.181049 * t.OUT_6  + -0.017244 * t.OUT_7  + 0.245727 * t.OUT_8  + 0.190709 * t.OUT_9 AS OUT_66,
    0.133877 + -0.183269 * t.OUT_0  + 0.203211 * t.OUT_1  + -0.128468 * t.OUT_2  + -0.114947 * t.OUT_3  + -0.033797 * t.OUT_4  + -0.036575 * t.OUT_5  + 0.125558 * t.OUT_6  + 0.223675 * t.OUT_7  + 0.257871 * t.OUT_8  + -0.097575 * t.OUT_9 AS OUT_67,
    -0.012759 + 0.202691 * t.OUT_0  + -0.225656 * t.OUT_1  + 0.058204 * t.OUT_2  + 0.091660 * t.OUT_3  + -0.135467 * t.OUT_4  + 0.118936 * t.OUT_5  + 0.177768 * t.OUT_6  + 0.015935 * t.OUT_7  + -0.020599 * t.OUT_8  + 0.115685 * t.OUT_9 AS OUT_68,
    -0.030052 + 0.195814 * t.OUT_0  + 0.112565 * t.OUT_1  + 0.026728 * t.OUT_2  + -0.133975 * t.OUT_3  + -0.185070 * t.OUT_4  + -0.056945 * t.OUT_5  + -0.039519 * t.OUT_6  + 0.179651 * t.OUT_7  + 0.181950 * t.OUT_8  + -0.191153 * t.OUT_9 AS OUT_69,
    0.100819 + -0.056170 * t.OUT_0  + 0.023010 * t.OUT_1  + 0.202010 * t.OUT_2  + -0.168864 * t.OUT_3  + -0.122680 * t.OUT_4  + 0.063557 * t.OUT_5  + -0.158025 * t.OUT_6  + 0.150439 * t.OUT_7  + -0.164893 * t.OUT_8  + 0.091798 * t.OUT_9 AS OUT_70,
    -0.105435 + -0.157621 * t.OUT_0  + -0.100044 * t.OUT_1  + 0.153230 * t.OUT_2  + -0.086469 * t.OUT_3  + -0.082899 * t.OUT_4  + 0.067343 * t.OUT_5  + 0.020033 * t.OUT_6  + -0.141386 * t.OUT_7  + 0.120676 * t.OUT_8  + -0.016163 * t.OUT_9 AS OUT_71,
    -0.183068 + 0.021886 * t.OUT_0  + 0.139154 * t.OUT_1  + 0.244542 * t.OUT_2  + -0.185778 * t.OUT_3  + -0.014763 * t.OUT_4  + -0.112195 * t.OUT_5  + 0.003587 * t.OUT_6  + 0.143125 * t.OUT_7  + 0.198777 * t.OUT_8  + 0.021375 * t.OUT_9 AS OUT_72,
    -0.111952 + 0.195662 * t.OUT_0  + 0.081201 * t.OUT_1  + -0.151449 * t.OUT_2  + 0.034830 * t.OUT_3  + -0.091307 * t.OUT_4  + 0.037340 * t.OUT_5  + 0.103444 * t.OUT_6  + 0.010562 * t.OUT_7  + -0.038303 * t.OUT_8  + -0.124899 * t.OUT_9 AS OUT_73,
    0.064177 + -0.133440 * t.OUT_0  + 0.041756 * t.OUT_1  + 0.086343 * t.OUT_2  + -0.182619 * t.OUT_3  + 0.220650 * t.OUT_4  + 0.136013 * t.OUT_5  + -0.041020 * t.OUT_6  + -0.048073 * t.OUT_7  + -0.120456 * t.OUT_8  + -0.094722 * t.OUT_9 AS OUT_74,
    0.177631 + 0.063727 * t.OUT_0  + -0.129889 * t.OUT_1  + 0.109099 * t.OUT_2  + 0.171321 * t.OUT_3  + -0.031313 * t.OUT_4  + -0.028508 * t.OUT_5  + 0.068534 * t.OUT_6  + 0.006596 * t.OUT_7  + 0.200995 * t.OUT_8  + -0.035194 * t.OUT_9 AS OUT_75,
    0.068353 + 0.134542 * t.OUT_0  + 0.224862 * t.OUT_1  + 0.114455 * t.OUT_2  + -0.197046 * t.OUT_3  + 0.081710 * t.OUT_4  + 0.121987 * t.OUT_5  + -0.101649 * t.OUT_6  + 0.145877 * t.OUT_7  + 0.072158 * t.OUT_8  + 0.255551 * t.OUT_9 AS OUT_76,
    0.086492 + 0.111747 * t.OUT_0  + 0.172285 * t.OUT_1  + 0.187945 * t.OUT_2  + -0.034669 * t.OUT_3  + -0.007443 * t.OUT_4  + -0.031254 * t.OUT_5  + 0.146811 * t.OUT_6  + -0.152266 * t.OUT_7  + -0.239132 * t.OUT_8  + -0.244414 * t.OUT_9 AS OUT_77,
    0.145536 + 0.178246 * t.OUT_0  + -0.122023 * t.OUT_1  + -0.146746 * t.OUT_2  + 0.162245 * t.OUT_3  + -0.007086 * t.OUT_4  + -0.161658 * t.OUT_5  + -0.165809 * t.OUT_6  + 0.204645 * t.OUT_7  + 0.205821 * t.OUT_8  + 0.186108 * t.OUT_9 AS OUT_78,
    -0.026958 + -0.082982 * t.OUT_0  + 0.061468 * t.OUT_1  + 0.188355 * t.OUT_2  + 0.034857 * t.OUT_3  + 0.044348 * t.OUT_4  + 0.194504 * t.OUT_5  + 0.168982 * t.OUT_6  + -0.102125 * t.OUT_7  + -0.147905 * t.OUT_8  + -0.163792 * t.OUT_9 AS OUT_79,
    0.181582 + 0.128407 * t.OUT_0  + 0.157118 * t.OUT_1  + 0.139435 * t.OUT_2  + -0.014527 * t.OUT_3  + -0.055750 * t.OUT_4  + -0.093784 * t.OUT_5  + 0.251580 * t.OUT_6  + -0.031885 * t.OUT_7  + -0.170177 * t.OUT_8  + 0.051296 * t.OUT_9 AS OUT_80,
    -0.047250 + 0.137595 * t.OUT_0  + 0.000427 * t.OUT_1  + 0.205833 * t.OUT_2  + -0.109268 * t.OUT_3  + 0.170155 * t.OUT_4  + 0.016461 * t.OUT_5  + -0.027855 * t.OUT_6  + -0.190680 * t.OUT_7  + 0.107677 * t.OUT_8  + 0.183180 * t.OUT_9 AS OUT_81,
    0.033090 + 0.201971 * t.OUT_0  + 0.026283 * t.OUT_1  + 0.022909 * t.OUT_2  + 0.211198 * t.OUT_3  + 0.263003 * t.OUT_4  + -0.089532 * t.OUT_5  + -0.200976 * t.OUT_6  + -0.156916 * t.OUT_7  + 0.020322 * t.OUT_8  + 0.038638 * t.OUT_9 AS OUT_82,
    0.226193 + 0.009495 * t.OUT_0  + 0.243825 * t.OUT_1  + 0.117972 * t.OUT_2  + -0.086712 * t.OUT_3  + 0.114113 * t.OUT_4  + -0.071905 * t.OUT_5  + 0.168792 * t.OUT_6  + -0.183723 * t.OUT_7  + -0.059855 * t.OUT_8  + 0.081700 * t.OUT_9 AS OUT_83,
    -0.187433 + -0.177128 * t.OUT_0  + 0.112699 * t.OUT_1  + 0.165071 * t.OUT_2  + -0.121194 * t.OUT_3  + 0.070281 * t.OUT_4  + 0.104764 * t.OUT_5  + -0.032816 * t.OUT_6  + 0.039675 * t.OUT_7  + 0.162630 * t.OUT_8  + 0.258685 * t.OUT_9 AS OUT_84,
    -0.235484 + 0.089954 * t.OUT_0  + 0.068934 * t.OUT_1  + 0.093075 * t.OUT_2  + -0.122173 * t.OUT_3  + 0.028054 * t.OUT_4  + 0.174147 * t.OUT_5  + -0.204151 * t.OUT_6  + 0.012936 * t.OUT_7  + 0.134635 * t.OUT_8  + -0.253708 * t.OUT_9 AS OUT_85,
    -0.069458 + 0.022680 * t.OUT_0  + -0.144350 * t.OUT_1  + 0.163085 * t.OUT_2  + 0.028874 * t.OUT_3  + -0.005976 * t.OUT_4  + -0.187012 * t.OUT_5  + -0.010241 * t.OUT_6  + -0.097684 * t.OUT_7  + 0.216158 * t.OUT_8  + -0.094736 * t.OUT_9 AS OUT_86,
    -0.168300 + -0.044251 * t.OUT_0  + -0.031721 * t.OUT_1  + -0.228076 * t.OUT_2  + 0.165732 * t.OUT_3  + 0.149809 * t.OUT_4  + -0.115523 * t.OUT_5  + -0.163597 * t.OUT_6  + -0.039807 * t.OUT_7  + -0.067107 * t.OUT_8  + -0.106257 * t.OUT_9 AS OUT_87,
    -0.257211 + -0.196555 * t.OUT_0  + 0.164715 * t.OUT_1  + 0.059212 * t.OUT_2  + -0.051755 * t.OUT_3  + 0.046265 * t.OUT_4  + 0.004635 * t.OUT_5  + 0.182831 * t.OUT_6  + -0.185845 * t.OUT_7  + -0.036035 * t.OUT_8  + -0.190520 * t.OUT_9 AS OUT_88,
    0.046131 + -0.227476 * t.OUT_0  + 0.122733 * t.OUT_1  + 0.198815 * t.OUT_2  + 0.067803 * t.OUT_3  + -0.041350 * t.OUT_4  + -0.106140 * t.OUT_5  + -0.042025 * t.OUT_6  + -0.053863 * t.OUT_7  + -0.215868 * t.OUT_8  + 0.226815 * t.OUT_9 AS OUT_89,
    -0.179161 + -0.049457 * t.OUT_0  + -0.032060 * t.OUT_1  + 0.083429 * t.OUT_2  + 0.183328 * t.OUT_3  + -0.017572 * t.OUT_4  + -0.100226 * t.OUT_5  + -0.044340 * t.OUT_6  + 0.153913 * t.OUT_7  + -0.084957 * t.OUT_8  + -0.042402 * t.OUT_9 AS OUT_90,
    0.198616 + 0.240646 * t.OUT_0  + -0.031257 * t.OUT_1  + 0.216295 * t.OUT_2  + 0.155062 * t.OUT_3  + -0.180119 * t.OUT_4  + 0.162162 * t.OUT_5  + -0.003973 * t.OUT_6  + -0.063983 * t.OUT_7  + -0.150164 * t.OUT_8  + 0.245616 * t.OUT_9 AS OUT_91,
    0.207642 + 0.040483 * t.OUT_0  + 0.194683 * t.OUT_1  + -0.047413 * t.OUT_2  + -0.119412 * t.OUT_3  + 0.259577 * t.OUT_4  + -0.135923 * t.OUT_5  + 0.194663 * t.OUT_6  + -0.198341 * t.OUT_7  + -0.113952 * t.OUT_8  + 0.202728 * t.OUT_9 AS OUT_92,
    -0.217911 + -0.047620 * t.OUT_0  + -0.121128 * t.OUT_1  + 0.077510 * t.OUT_2  + 0.095838 * t.OUT_3  + -0.194857 * t.OUT_4  + -0.054815 * t.OUT_5  + -0.084746 * t.OUT_6  + -0.200696 * t.OUT_7  + -0.146511 * t.OUT_8  + -0.033468 * t.OUT_9 AS OUT_93,
    -0.203186 + -0.070952 * t.OUT_0  + 0.013599 * t.OUT_1  + -0.181405 * t.OUT_2  + -0.148391 * t.OUT_3  + -0.135706 * t.OUT_4  + 0.164035 * t.OUT_5  + 0.026064 * t.OUT_6  + -0.221727 * t.OUT_7  + -0.099471 * t.OUT_8  + -0.214357 * t.OUT_9 AS OUT_94,
    -0.117510 + -0.188919 * t.OUT_0  + 0.210918 * t.OUT_1  + 0.081830 * t.OUT_2  + 0.149382 * t.OUT_3  + 0.233797 * t.OUT_4  + 0.253189 * t.OUT_5  + 0.013168 * t.OUT_6  + 0.250359 * t.OUT_7  + -0.051688 * t.OUT_8  + -0.100568 * t.OUT_9 AS OUT_95,
    0.147819 + 0.109696 * t.OUT_0  + -0.182308 * t.OUT_1  + -0.191527 * t.OUT_2  + -0.137244 * t.OUT_3  + -0.119934 * t.OUT_4  + -0.000423 * t.OUT_5  + -0.130698 * t.OUT_6  + 0.230450 * t.OUT_7  + 0.170999 * t.OUT_8  + 0.217867 * t.OUT_9 AS OUT_96,
    0.031609 + -0.094749 * t.OUT_0  + -0.151682 * t.OUT_1  + 0.107190 * t.OUT_2  + -0.081493 * t.OUT_3  + 0.185557 * t.OUT_4  + 0.110779 * t.OUT_5  + 0.115304 * t.OUT_6  + 0.198363 * t.OUT_7  + 0.047721 * t.OUT_8  + 0.198839 * t.OUT_9 AS OUT_97,
    0.189306 + -0.115347 * t.OUT_0  + -0.155843 * t.OUT_1  + -0.020536 * t.OUT_2  + 0.168026 * t.OUT_3  + -0.155909 * t.OUT_4  + -0.111139 * t.OUT_5  + -0.154704 * t.OUT_6  + 0.189795 * t.OUT_7  + 0.173742 * t.OUT_8  + -0.081863 * t.OUT_9 AS OUT_98,
    0.132857 + -0.016993 * t.OUT_0  + -0.090783 * t.OUT_1  + 0.037155 * t.OUT_2  + -0.107424 * t.OUT_3  + 0.243349 * t.OUT_4  + -0.025860 * t.OUT_5  + 0.209608 * t.OUT_6  + 0.131046 * t.OUT_7  + 0.083554 * t.OUT_8  + -0.024034 * t.OUT_9 AS OUT_99
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
    0.012322 + 0.234120 * t.OUT_0  + -0.017907 * t.OUT_1  + -0.226077 * t.OUT_2  + 0.104197 * t.OUT_3  + -0.066695 * t.OUT_4  + -0.155219 * t.OUT_5  + -0.078920 * t.OUT_6  + 0.236470 * t.OUT_7  + -0.088419 * t.OUT_8  + 0.167452 * t.OUT_9  + -0.193032 * t.OUT_10  + 0.269786 * t.OUT_11  + -0.137567 * t.OUT_12  + -0.005519 * t.OUT_13  + 0.208783 * t.OUT_14  + 0.066239 * t.OUT_15  + 0.196547 * t.OUT_16  + -0.197250 * t.OUT_17  + -0.007014 * t.OUT_18  + -0.058061 * t.OUT_19  + 0.012433 * t.OUT_20  + -0.174268 * t.OUT_21  + 0.219776 * t.OUT_22  + 0.133697 * t.OUT_23  + -0.095972 * t.OUT_24  + 0.004233 * t.OUT_25  + -0.032162 * t.OUT_26  + -0.166196 * t.OUT_27  + 0.162626 * t.OUT_28  + -0.224019 * t.OUT_29  + -0.207918 * t.OUT_30  + 0.168320 * t.OUT_31  + -0.061287 * t.OUT_32  + -0.145394 * t.OUT_33  + -0.092135 * t.OUT_34  + -0.041418 * t.OUT_35  + 0.036708 * t.OUT_36  + 0.039128 * t.OUT_37  + -0.187813 * t.OUT_38  + -0.122819 * t.OUT_39  + -0.132137 * t.OUT_40  + -0.202531 * t.OUT_41  + -0.038721 * t.OUT_42  + 0.169746 * t.OUT_43  + -0.066479 * t.OUT_44  + -0.021919 * t.OUT_45  + -0.087488 * t.OUT_46  + -0.077398 * t.OUT_47  + 0.263644 * t.OUT_48  + 0.246776 * t.OUT_49  + -0.024338 * t.OUT_50  + 0.007854 * t.OUT_51  + 0.260231 * t.OUT_52  + -0.138325 * t.OUT_53  + 0.123357 * t.OUT_54  + 0.006748 * t.OUT_55  + 0.020039 * t.OUT_56  + -0.065463 * t.OUT_57  + 0.205101 * t.OUT_58  + -0.093328 * t.OUT_59  + -0.057699 * t.OUT_60  + 0.056802 * t.OUT_61  + -0.047837 * t.OUT_62  + 0.127262 * t.OUT_63  + -0.034225 * t.OUT_64  + -0.057467 * t.OUT_65  + 0.043765 * t.OUT_66  + 0.217742 * t.OUT_67  + -0.072148 * t.OUT_68  + -0.088363 * t.OUT_69  + -0.136054 * t.OUT_70  + 0.183913 * t.OUT_71  + 0.239930 * t.OUT_72  + -0.092746 * t.OUT_73  + 0.077444 * t.OUT_74  + -0.183572 * t.OUT_75  + 0.198921 * t.OUT_76  + -0.055195 * t.OUT_77  + -0.069204 * t.OUT_78  + 0.040733 * t.OUT_79  + 0.250554 * t.OUT_80  + -0.032522 * t.OUT_81  + 0.152512 * t.OUT_82  + 0.227047 * t.OUT_83  + 0.175984 * t.OUT_84  + -0.166832 * t.OUT_85  + 0.028457 * t.OUT_86  + -0.073941 * t.OUT_87  + -0.171252 * t.OUT_88  + 0.016504 * t.OUT_89  + 0.042584 * t.OUT_90  + 0.101353 * t.OUT_91  + 0.246503 * t.OUT_92  + -0.039389 * t.OUT_93  + -0.116352 * t.OUT_94  + 0.026477 * t.OUT_95  + 0.118243 * t.OUT_96  + -0.000881 * t.OUT_97  + -0.044835 * t.OUT_98  + 0.235229 * t.OUT_99 AS OUT_0
   FROM Hidden_Layer_1_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
