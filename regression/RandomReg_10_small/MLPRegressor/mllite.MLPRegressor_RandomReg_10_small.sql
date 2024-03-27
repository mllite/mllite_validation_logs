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
    0.196718 + 0.012441 * t.OUT_0  + 0.128483 * t.OUT_1  + -0.061637 * t.OUT_2  + 0.119978 * t.OUT_3  + -0.151228 * t.OUT_4  + 0.061261 * t.OUT_5  + 0.174582 * t.OUT_6  + -0.143489 * t.OUT_7  + 0.184581 * t.OUT_8  + 0.094866 * t.OUT_9 AS OUT_0,
    0.116895 + 0.091161 * t.OUT_0  + -0.195515 * t.OUT_1  + -0.031084 * t.OUT_2  + -0.175649 * t.OUT_3  + 0.061676 * t.OUT_4  + 0.164749 * t.OUT_5  + -0.107510 * t.OUT_6  + -0.098160 * t.OUT_7  + -0.130952 * t.OUT_8  + 0.081413 * t.OUT_9 AS OUT_1,
    0.227089 + -0.127448 * t.OUT_0  + -0.109019 * t.OUT_1  + -0.223475 * t.OUT_2  + -0.131715 * t.OUT_3  + 0.150293 * t.OUT_4  + -0.118579 * t.OUT_5  + -0.217868 * t.OUT_6  + -0.201839 * t.OUT_7  + -0.133851 * t.OUT_8  + -0.107533 * t.OUT_9 AS OUT_2,
    0.080932 + 0.015209 * t.OUT_0  + 0.167116 * t.OUT_1  + 0.177138 * t.OUT_2  + -0.046908 * t.OUT_3  + 0.177779 * t.OUT_4  + 0.103519 * t.OUT_5  + 0.068054 * t.OUT_6  + 0.006667 * t.OUT_7  + -0.079427 * t.OUT_8  + -0.013131 * t.OUT_9 AS OUT_3,
    0.141263 + 0.012237 * t.OUT_0  + 0.122925 * t.OUT_1  + 0.191567 * t.OUT_2  + -0.194323 * t.OUT_3  + -0.080169 * t.OUT_4  + -0.198585 * t.OUT_5  + 0.075943 * t.OUT_6  + -0.098818 * t.OUT_7  + 0.188409 * t.OUT_8  + -0.197236 * t.OUT_9 AS OUT_4,
    0.123730 + -0.196213 * t.OUT_0  + 0.166748 * t.OUT_1  + 0.007081 * t.OUT_2  + 0.060569 * t.OUT_3  + 0.036659 * t.OUT_4  + 0.219187 * t.OUT_5  + -0.200642 * t.OUT_6  + -0.256542 * t.OUT_7  + -0.174562 * t.OUT_8  + -0.134952 * t.OUT_9 AS OUT_5,
    -0.094096 + 0.034575 * t.OUT_0  + 0.202507 * t.OUT_1  + -0.022952 * t.OUT_2  + -0.047745 * t.OUT_3  + 0.199021 * t.OUT_4  + -0.175550 * t.OUT_5  + -0.234895 * t.OUT_6  + -0.034928 * t.OUT_7  + -0.176338 * t.OUT_8  + 0.206687 * t.OUT_9 AS OUT_6,
    0.194618 + 0.039708 * t.OUT_0  + 0.164762 * t.OUT_1  + 0.123548 * t.OUT_2  + -0.048505 * t.OUT_3  + 0.194486 * t.OUT_4  + -0.141099 * t.OUT_5  + 0.061628 * t.OUT_6  + -0.109660 * t.OUT_7  + -0.006452 * t.OUT_8  + 0.174058 * t.OUT_9 AS OUT_7,
    -0.102936 + 0.168111 * t.OUT_0  + -0.125286 * t.OUT_1  + 0.005965 * t.OUT_2  + -0.022096 * t.OUT_3  + 0.179303 * t.OUT_4  + -0.169675 * t.OUT_5  + 0.003439 * t.OUT_6  + 0.048257 * t.OUT_7  + -0.082943 * t.OUT_8  + -0.080269 * t.OUT_9 AS OUT_8,
    0.128549 + 0.081867 * t.OUT_0  + 0.054681 * t.OUT_1  + 0.145022 * t.OUT_2  + 0.169755 * t.OUT_3  + -0.085089 * t.OUT_4  + -0.014724 * t.OUT_5  + -0.041431 * t.OUT_6  + 0.186563 * t.OUT_7  + 0.137551 * t.OUT_8  + 0.161261 * t.OUT_9 AS OUT_9,
    -0.158569 + 0.162704 * t.OUT_0  + 0.033722 * t.OUT_1  + -0.014157 * t.OUT_2  + 0.157759 * t.OUT_3  + -0.079970 * t.OUT_4  + 0.053615 * t.OUT_5  + 0.037576 * t.OUT_6  + 0.091279 * t.OUT_7  + -0.172218 * t.OUT_8  + 0.054511 * t.OUT_9 AS OUT_10,
    0.262351 + -0.004284 * t.OUT_0  + 0.189685 * t.OUT_1  + 0.172038 * t.OUT_2  + -0.131650 * t.OUT_3  + -0.133171 * t.OUT_4  + 0.183393 * t.OUT_5  + 0.182769 * t.OUT_6  + 0.100040 * t.OUT_7  + -0.089097 * t.OUT_8  + -0.034672 * t.OUT_9 AS OUT_11,
    -0.051682 + 0.202082 * t.OUT_0  + 0.084134 * t.OUT_1  + 0.074605 * t.OUT_2  + 0.129901 * t.OUT_3  + 0.068210 * t.OUT_4  + -0.079097 * t.OUT_5  + -0.032147 * t.OUT_6  + -0.053883 * t.OUT_7  + -0.160149 * t.OUT_8  + 0.044553 * t.OUT_9 AS OUT_12,
    -0.136446 + -0.240610 * t.OUT_0  + -0.035698 * t.OUT_1  + -0.133201 * t.OUT_2  + -0.165884 * t.OUT_3  + -0.165401 * t.OUT_4  + 0.172585 * t.OUT_5  + 0.068793 * t.OUT_6  + -0.260041 * t.OUT_7  + -0.131234 * t.OUT_8  + -0.133041 * t.OUT_9 AS OUT_13,
    -0.168770 + -0.065743 * t.OUT_0  + 0.166900 * t.OUT_1  + -0.034097 * t.OUT_2  + 0.226711 * t.OUT_3  + -0.056488 * t.OUT_4  + -0.118045 * t.OUT_5  + 0.092641 * t.OUT_6  + -0.188666 * t.OUT_7  + 0.219381 * t.OUT_8  + -0.035639 * t.OUT_9 AS OUT_14,
    0.226936 + 0.120614 * t.OUT_0  + 0.196257 * t.OUT_1  + -0.166837 * t.OUT_2  + -0.086272 * t.OUT_3  + -0.251332 * t.OUT_4  + -0.171292 * t.OUT_5  + 0.043720 * t.OUT_6  + 0.230641 * t.OUT_7  + 0.000468 * t.OUT_8  + 0.215677 * t.OUT_9 AS OUT_15,
    0.021313 + 0.155184 * t.OUT_0  + 0.069348 * t.OUT_1  + -0.093366 * t.OUT_2  + 0.087254 * t.OUT_3  + -0.077861 * t.OUT_4  + -0.073872 * t.OUT_5  + -0.015339 * t.OUT_6  + -0.041330 * t.OUT_7  + 0.163604 * t.OUT_8  + -0.147427 * t.OUT_9 AS OUT_16,
    -0.243531 + -0.144163 * t.OUT_0  + -0.112545 * t.OUT_1  + -0.171293 * t.OUT_2  + -0.111489 * t.OUT_3  + -0.041101 * t.OUT_4  + -0.049516 * t.OUT_5  + 0.175571 * t.OUT_6  + -0.002074 * t.OUT_7  + -0.138693 * t.OUT_8  + 0.160663 * t.OUT_9 AS OUT_17,
    -0.150060 + -0.153556 * t.OUT_0  + -0.098467 * t.OUT_1  + 0.029781 * t.OUT_2  + -0.171621 * t.OUT_3  + 0.020688 * t.OUT_4  + 0.065127 * t.OUT_5  + -0.180791 * t.OUT_6  + -0.161596 * t.OUT_7  + -0.102363 * t.OUT_8  + 0.101388 * t.OUT_9 AS OUT_18,
    -0.068664 + -0.214208 * t.OUT_0  + -0.148045 * t.OUT_1  + -0.066736 * t.OUT_2  + 0.018526 * t.OUT_3  + -0.008767 * t.OUT_4  + -0.211324 * t.OUT_5  + -0.185562 * t.OUT_6  + 0.196781 * t.OUT_7  + -0.115472 * t.OUT_8  + 0.092199 * t.OUT_9 AS OUT_19,
    0.137252 + 0.089001 * t.OUT_0  + 0.109929 * t.OUT_1  + -0.109690 * t.OUT_2  + -0.086658 * t.OUT_3  + 0.240943 * t.OUT_4  + 0.107060 * t.OUT_5  + -0.137402 * t.OUT_6  + -0.047769 * t.OUT_7  + 0.139700 * t.OUT_8  + -0.187378 * t.OUT_9 AS OUT_20,
    0.113116 + -0.263181 * t.OUT_0  + 0.097183 * t.OUT_1  + -0.228364 * t.OUT_2  + 0.174359 * t.OUT_3  + 0.181751 * t.OUT_4  + 0.089180 * t.OUT_5  + -0.240920 * t.OUT_6  + 0.009162 * t.OUT_7  + 0.106330 * t.OUT_8  + 0.046950 * t.OUT_9 AS OUT_21,
    0.083056 + -0.005604 * t.OUT_0  + -0.130373 * t.OUT_1  + 0.236307 * t.OUT_2  + -0.178679 * t.OUT_3  + -0.155926 * t.OUT_4  + -0.023989 * t.OUT_5  + -0.147058 * t.OUT_6  + -0.102946 * t.OUT_7  + -0.181623 * t.OUT_8  + 0.117490 * t.OUT_9 AS OUT_22,
    0.048561 + 0.042351 * t.OUT_0  + 0.107793 * t.OUT_1  + -0.059721 * t.OUT_2  + -0.150454 * t.OUT_3  + -0.031133 * t.OUT_4  + -0.133938 * t.OUT_5  + 0.133356 * t.OUT_6  + 0.022877 * t.OUT_7  + -0.020765 * t.OUT_8  + -0.257136 * t.OUT_9 AS OUT_23,
    0.251678 + -0.079367 * t.OUT_0  + -0.182379 * t.OUT_1  + -0.087453 * t.OUT_2  + 0.134927 * t.OUT_3  + 0.164707 * t.OUT_4  + 0.119018 * t.OUT_5  + -0.026738 * t.OUT_6  + -0.041127 * t.OUT_7  + -0.243367 * t.OUT_8  + 0.170699 * t.OUT_9 AS OUT_24,
    0.062412 + -0.230540 * t.OUT_0  + -0.018989 * t.OUT_1  + 0.062824 * t.OUT_2  + -0.002290 * t.OUT_3  + -0.192594 * t.OUT_4  + -0.194148 * t.OUT_5  + -0.093090 * t.OUT_6  + -0.188164 * t.OUT_7  + 0.167767 * t.OUT_8  + -0.124835 * t.OUT_9 AS OUT_25,
    -0.031704 + -0.149777 * t.OUT_0  + 0.012237 * t.OUT_1  + 0.078067 * t.OUT_2  + 0.128028 * t.OUT_3  + -0.092926 * t.OUT_4  + 0.172305 * t.OUT_5  + 0.032398 * t.OUT_6  + -0.212092 * t.OUT_7  + -0.002636 * t.OUT_8  + 0.081291 * t.OUT_9 AS OUT_26,
    -0.061530 + 0.159650 * t.OUT_0  + -0.125035 * t.OUT_1  + 0.070527 * t.OUT_2  + 0.117563 * t.OUT_3  + 0.041924 * t.OUT_4  + 0.128580 * t.OUT_5  + 0.067959 * t.OUT_6  + -0.105866 * t.OUT_7  + -0.042027 * t.OUT_8  + -0.194084 * t.OUT_9 AS OUT_27,
    -0.085725 + 0.016191 * t.OUT_0  + 0.123370 * t.OUT_1  + -0.176609 * t.OUT_2  + -0.174675 * t.OUT_3  + -0.146885 * t.OUT_4  + 0.056870 * t.OUT_5  + 0.087081 * t.OUT_6  + 0.199091 * t.OUT_7  + 0.175522 * t.OUT_8  + 0.108291 * t.OUT_9 AS OUT_28,
    -0.196572 + -0.030270 * t.OUT_0  + -0.252814 * t.OUT_1  + 0.142201 * t.OUT_2  + -0.192563 * t.OUT_3  + 0.033091 * t.OUT_4  + -0.220509 * t.OUT_5  + -0.101319 * t.OUT_6  + -0.221678 * t.OUT_7  + 0.086747 * t.OUT_8  + 0.133443 * t.OUT_9 AS OUT_29,
    0.224580 + -0.241490 * t.OUT_0  + -0.242824 * t.OUT_1  + 0.174585 * t.OUT_2  + -0.225581 * t.OUT_3  + -0.181440 * t.OUT_4  + -0.239483 * t.OUT_5  + -0.209141 * t.OUT_6  + -0.054307 * t.OUT_7  + 0.007228 * t.OUT_8  + 0.049499 * t.OUT_9 AS OUT_30,
    0.196299 + 0.046064 * t.OUT_0  + 0.206209 * t.OUT_1  + 0.207279 * t.OUT_2  + 0.021652 * t.OUT_3  + -0.078927 * t.OUT_4  + -0.100788 * t.OUT_5  + 0.048733 * t.OUT_6  + 0.126374 * t.OUT_7  + 0.187657 * t.OUT_8  + -0.014122 * t.OUT_9 AS OUT_31,
    0.144240 + -0.102289 * t.OUT_0  + 0.181842 * t.OUT_1  + -0.017829 * t.OUT_2  + 0.032179 * t.OUT_3  + -0.038927 * t.OUT_4  + 0.068184 * t.OUT_5  + 0.004837 * t.OUT_6  + -0.262019 * t.OUT_7  + 0.149055 * t.OUT_8  + 0.130057 * t.OUT_9 AS OUT_32,
    -0.103305 + 0.054846 * t.OUT_0  + -0.185345 * t.OUT_1  + 0.202420 * t.OUT_2  + 0.129632 * t.OUT_3  + 0.116515 * t.OUT_4  + -0.237571 * t.OUT_5  + 0.079834 * t.OUT_6  + 0.198351 * t.OUT_7  + -0.148439 * t.OUT_8  + 0.051786 * t.OUT_9 AS OUT_33,
    0.168525 + -0.079459 * t.OUT_0  + -0.120769 * t.OUT_1  + 0.113401 * t.OUT_2  + -0.100984 * t.OUT_3  + -0.015513 * t.OUT_4  + -0.098182 * t.OUT_5  + -0.223251 * t.OUT_6  + -0.234940 * t.OUT_7  + -0.079626 * t.OUT_8  + -0.067265 * t.OUT_9 AS OUT_34,
    0.018563 + 0.065489 * t.OUT_0  + -0.209240 * t.OUT_1  + 0.031020 * t.OUT_2  + -0.017634 * t.OUT_3  + 0.185741 * t.OUT_4  + -0.111125 * t.OUT_5  + -0.196026 * t.OUT_6  + -0.210820 * t.OUT_7  + 0.013249 * t.OUT_8  + 0.083811 * t.OUT_9 AS OUT_35,
    0.155999 + -0.175785 * t.OUT_0  + -0.198936 * t.OUT_1  + -0.099856 * t.OUT_2  + 0.199932 * t.OUT_3  + 0.002845 * t.OUT_4  + 0.126347 * t.OUT_5  + -0.007516 * t.OUT_6  + -0.015545 * t.OUT_7  + -0.037367 * t.OUT_8  + 0.016404 * t.OUT_9 AS OUT_36,
    0.001312 + 0.240079 * t.OUT_0  + -0.143601 * t.OUT_1  + 0.171289 * t.OUT_2  + -0.207423 * t.OUT_3  + -0.253198 * t.OUT_4  + 0.152547 * t.OUT_5  + -0.022780 * t.OUT_6  + 0.009417 * t.OUT_7  + 0.210812 * t.OUT_8  + -0.184923 * t.OUT_9 AS OUT_37,
    0.164663 + -0.203481 * t.OUT_0  + -0.107752 * t.OUT_1  + -0.264511 * t.OUT_2  + -0.098669 * t.OUT_3  + 0.195405 * t.OUT_4  + -0.179793 * t.OUT_5  + -0.166381 * t.OUT_6  + -0.068421 * t.OUT_7  + -0.168857 * t.OUT_8  + 0.079252 * t.OUT_9 AS OUT_38,
    -0.090838 + 0.094429 * t.OUT_0  + -0.084994 * t.OUT_1  + -0.247101 * t.OUT_2  + -0.041352 * t.OUT_3  + -0.184394 * t.OUT_4  + 0.055536 * t.OUT_5  + 0.201194 * t.OUT_6  + 0.143025 * t.OUT_7  + -0.161272 * t.OUT_8  + -0.071996 * t.OUT_9 AS OUT_39,
    0.109732 + -0.200173 * t.OUT_0  + -0.185006 * t.OUT_1  + -0.056795 * t.OUT_2  + -0.029072 * t.OUT_3  + 0.022666 * t.OUT_4  + 0.096399 * t.OUT_5  + -0.160564 * t.OUT_6  + -0.145621 * t.OUT_7  + 0.094045 * t.OUT_8  + 0.116454 * t.OUT_9 AS OUT_40,
    0.073356 + 0.096685 * t.OUT_0  + -0.200235 * t.OUT_1  + -0.036407 * t.OUT_2  + -0.048923 * t.OUT_3  + 0.022966 * t.OUT_4  + 0.011972 * t.OUT_5  + -0.180191 * t.OUT_6  + 0.074613 * t.OUT_7  + -0.211861 * t.OUT_8  + -0.196441 * t.OUT_9 AS OUT_41,
    -0.072520 + 0.024363 * t.OUT_0  + -0.234864 * t.OUT_1  + 0.059863 * t.OUT_2  + -0.045049 * t.OUT_3  + 0.117680 * t.OUT_4  + 0.211710 * t.OUT_5  + 0.178198 * t.OUT_6  + -0.030397 * t.OUT_7  + 0.093474 * t.OUT_8  + -0.122983 * t.OUT_9 AS OUT_42,
    0.234370 + 0.244658 * t.OUT_0  + 0.077766 * t.OUT_1  + 0.224162 * t.OUT_2  + -0.110922 * t.OUT_3  + -0.265821 * t.OUT_4  + -0.033656 * t.OUT_5  + 0.232367 * t.OUT_6  + -0.110013 * t.OUT_7  + 0.203509 * t.OUT_8  + -0.165953 * t.OUT_9 AS OUT_43,
    -0.126018 + -0.179534 * t.OUT_0  + -0.186366 * t.OUT_1  + 0.075371 * t.OUT_2  + -0.079462 * t.OUT_3  + -0.051097 * t.OUT_4  + -0.196135 * t.OUT_5  + 0.075049 * t.OUT_6  + -0.144695 * t.OUT_7  + 0.183142 * t.OUT_8  + 0.088792 * t.OUT_9 AS OUT_44,
    -0.012295 + -0.213485 * t.OUT_0  + -0.218638 * t.OUT_1  + -0.071009 * t.OUT_2  + 0.084940 * t.OUT_3  + 0.161324 * t.OUT_4  + -0.032686 * t.OUT_5  + -0.163654 * t.OUT_6  + -0.126286 * t.OUT_7  + -0.012968 * t.OUT_8  + 0.132021 * t.OUT_9 AS OUT_45,
    0.174530 + 0.047512 * t.OUT_0  + 0.016583 * t.OUT_1  + -0.183048 * t.OUT_2  + 0.029406 * t.OUT_3  + 0.168111 * t.OUT_4  + 0.166439 * t.OUT_5  + 0.128801 * t.OUT_6  + -0.151052 * t.OUT_7  + -0.123528 * t.OUT_8  + -0.165307 * t.OUT_9 AS OUT_46,
    -0.100184 + 0.053018 * t.OUT_0  + 0.051327 * t.OUT_1  + -0.166762 * t.OUT_2  + -0.077707 * t.OUT_3  + -0.081099 * t.OUT_4  + -0.202131 * t.OUT_5  + 0.153509 * t.OUT_6  + 0.018966 * t.OUT_7  + 0.189474 * t.OUT_8  + 0.180201 * t.OUT_9 AS OUT_47,
    0.195576 + 0.188915 * t.OUT_0  + -0.005105 * t.OUT_1  + 0.094689 * t.OUT_2  + -0.105273 * t.OUT_3  + 0.140462 * t.OUT_4  + -0.083746 * t.OUT_5  + 0.163819 * t.OUT_6  + -0.127939 * t.OUT_7  + -0.063297 * t.OUT_8  + -0.084942 * t.OUT_9 AS OUT_48,
    0.025967 + 0.232758 * t.OUT_0  + 0.095406 * t.OUT_1  + 0.117665 * t.OUT_2  + -0.019477 * t.OUT_3  + 0.019147 * t.OUT_4  + 0.187869 * t.OUT_5  + -0.029887 * t.OUT_6  + 0.216817 * t.OUT_7  + 0.000196 * t.OUT_8  + 0.200578 * t.OUT_9 AS OUT_49,
    0.199821 + 0.147019 * t.OUT_0  + -0.003253 * t.OUT_1  + -0.236772 * t.OUT_2  + 0.176247 * t.OUT_3  + 0.233340 * t.OUT_4  + -0.131146 * t.OUT_5  + -0.099149 * t.OUT_6  + 0.011693 * t.OUT_7  + -0.059180 * t.OUT_8  + 0.037353 * t.OUT_9 AS OUT_50,
    -0.101138 + -0.186685 * t.OUT_0  + -0.189688 * t.OUT_1  + -0.061384 * t.OUT_2  + -0.009530 * t.OUT_3  + 0.236170 * t.OUT_4  + 0.011123 * t.OUT_5  + 0.092803 * t.OUT_6  + -0.092641 * t.OUT_7  + -0.187976 * t.OUT_8  + 0.087748 * t.OUT_9 AS OUT_51,
    -0.190670 + 0.172569 * t.OUT_0  + -0.004962 * t.OUT_1  + 0.179035 * t.OUT_2  + -0.154552 * t.OUT_3  + -0.129027 * t.OUT_4  + -0.006791 * t.OUT_5  + -0.114863 * t.OUT_6  + -0.164089 * t.OUT_7  + 0.120125 * t.OUT_8  + 0.237780 * t.OUT_9 AS OUT_52,
    -0.064292 + 0.158917 * t.OUT_0  + 0.161818 * t.OUT_1  + -0.122724 * t.OUT_2  + -0.144292 * t.OUT_3  + 0.197649 * t.OUT_4  + 0.077721 * t.OUT_5  + -0.150100 * t.OUT_6  + -0.255798 * t.OUT_7  + 0.125420 * t.OUT_8  + -0.068263 * t.OUT_9 AS OUT_53,
    -0.000138 + -0.108260 * t.OUT_0  + 0.264812 * t.OUT_1  + 0.028057 * t.OUT_2  + -0.161649 * t.OUT_3  + 0.156239 * t.OUT_4  + -0.168763 * t.OUT_5  + 0.193487 * t.OUT_6  + -0.042057 * t.OUT_7  + -0.132661 * t.OUT_8  + -0.038425 * t.OUT_9 AS OUT_54,
    -0.037656 + 0.083340 * t.OUT_0  + -0.059266 * t.OUT_1  + -0.060104 * t.OUT_2  + 0.142705 * t.OUT_3  + 0.213748 * t.OUT_4  + 0.222959 * t.OUT_5  + 0.101450 * t.OUT_6  + 0.188307 * t.OUT_7  + 0.161322 * t.OUT_8  + 0.145144 * t.OUT_9 AS OUT_55,
    0.242022 + 0.078050 * t.OUT_0  + -0.191049 * t.OUT_1  + 0.092190 * t.OUT_2  + -0.119390 * t.OUT_3  + 0.144246 * t.OUT_4  + 0.019813 * t.OUT_5  + -0.138222 * t.OUT_6  + 0.216087 * t.OUT_7  + 0.023949 * t.OUT_8  + -0.053823 * t.OUT_9 AS OUT_56,
    -0.088730 + -0.013245 * t.OUT_0  + -0.144135 * t.OUT_1  + -0.147952 * t.OUT_2  + -0.014189 * t.OUT_3  + 0.064391 * t.OUT_4  + -0.181263 * t.OUT_5  + 0.133633 * t.OUT_6  + 0.033788 * t.OUT_7  + 0.077860 * t.OUT_8  + 0.140669 * t.OUT_9 AS OUT_57,
    0.086395 + 0.060798 * t.OUT_0  + 0.128832 * t.OUT_1  + 0.030224 * t.OUT_2  + -0.142389 * t.OUT_3  + -0.000162 * t.OUT_4  + -0.139218 * t.OUT_5  + -0.085581 * t.OUT_6  + -0.175863 * t.OUT_7  + 0.147875 * t.OUT_8  + -0.201882 * t.OUT_9 AS OUT_58,
    0.127909 + 0.101641 * t.OUT_0  + -0.224557 * t.OUT_1  + 0.127089 * t.OUT_2  + 0.001681 * t.OUT_3  + -0.004163 * t.OUT_4  + 0.120061 * t.OUT_5  + -0.188261 * t.OUT_6  + -0.105499 * t.OUT_7  + -0.206217 * t.OUT_8  + -0.066692 * t.OUT_9 AS OUT_59,
    0.142723 + -0.233532 * t.OUT_0  + 0.047659 * t.OUT_1  + 0.037382 * t.OUT_2  + -0.204913 * t.OUT_3  + 0.003507 * t.OUT_4  + 0.092178 * t.OUT_5  + 0.070653 * t.OUT_6  + -0.163455 * t.OUT_7  + -0.227282 * t.OUT_8  + -0.159523 * t.OUT_9 AS OUT_60,
    0.123348 + 0.063912 * t.OUT_0  + -0.090289 * t.OUT_1  + 0.182879 * t.OUT_2  + -0.111284 * t.OUT_3  + -0.023755 * t.OUT_4  + -0.057930 * t.OUT_5  + -0.081952 * t.OUT_6  + 0.009376 * t.OUT_7  + 0.243502 * t.OUT_8  + 0.110612 * t.OUT_9 AS OUT_61,
    -0.027888 + 0.067265 * t.OUT_0  + 0.184963 * t.OUT_1  + 0.133855 * t.OUT_2  + 0.180083 * t.OUT_3  + 0.052179 * t.OUT_4  + -0.031075 * t.OUT_5  + 0.187403 * t.OUT_6  + 0.033059 * t.OUT_7  + -0.096982 * t.OUT_8  + 0.054682 * t.OUT_9 AS OUT_62,
    0.172395 + 0.167049 * t.OUT_0  + 0.256873 * t.OUT_1  + 0.194700 * t.OUT_2  + -0.160954 * t.OUT_3  + -0.101713 * t.OUT_4  + -0.024233 * t.OUT_5  + 0.140945 * t.OUT_6  + -0.014476 * t.OUT_7  + -0.080416 * t.OUT_8  + 0.000139 * t.OUT_9 AS OUT_63,
    -0.138693 + -0.232966 * t.OUT_0  + -0.140206 * t.OUT_1  + 0.042695 * t.OUT_2  + 0.199544 * t.OUT_3  + -0.114452 * t.OUT_4  + 0.253013 * t.OUT_5  + -0.063367 * t.OUT_6  + 0.047428 * t.OUT_7  + -0.150814 * t.OUT_8  + -0.261647 * t.OUT_9 AS OUT_64,
    0.105029 + 0.131277 * t.OUT_0  + 0.093772 * t.OUT_1  + -0.188248 * t.OUT_2  + -0.102113 * t.OUT_3  + 0.064892 * t.OUT_4  + 0.229128 * t.OUT_5  + 0.144515 * t.OUT_6  + 0.154409 * t.OUT_7  + -0.250975 * t.OUT_8  + -0.196422 * t.OUT_9 AS OUT_65,
    0.260224 + -0.095128 * t.OUT_0  + -0.077576 * t.OUT_1  + 0.015349 * t.OUT_2  + 0.125958 * t.OUT_3  + 0.190598 * t.OUT_4  + -0.060692 * t.OUT_5  + 0.183748 * t.OUT_6  + -0.015122 * t.OUT_7  + 0.248076 * t.OUT_8  + 0.193453 * t.OUT_9 AS OUT_66,
    0.096533 + -0.183998 * t.OUT_0  + 0.201686 * t.OUT_1  + -0.127185 * t.OUT_2  + -0.181227 * t.OUT_3  + -0.100259 * t.OUT_4  + -0.035195 * t.OUT_5  + 0.125715 * t.OUT_6  + 0.223535 * t.OUT_7  + 0.258940 * t.OUT_8  + -0.145864 * t.OUT_9 AS OUT_67,
    -0.015983 + 0.199463 * t.OUT_0  + -0.229103 * t.OUT_1  + 0.054755 * t.OUT_2  + 0.150742 * t.OUT_3  + -0.076926 * t.OUT_4  + 0.115111 * t.OUT_5  + 0.174277 * t.OUT_6  + 0.012648 * t.OUT_7  + -0.023536 * t.OUT_8  + 0.112220 * t.OUT_9 AS OUT_68,
    -0.033941 + 0.191958 * t.OUT_0  + 0.110141 * t.OUT_1  + 0.025269 * t.OUT_2  + -0.074677 * t.OUT_3  + -0.126878 * t.OUT_4  + -0.061884 * t.OUT_5  + -0.043216 * t.OUT_6  + 0.174777 * t.OUT_7  + 0.177581 * t.OUT_8  + -0.141897 * t.OUT_9 AS OUT_69,
    0.095350 + -0.062210 * t.OUT_0  + 0.017441 * t.OUT_1  + 0.196956 * t.OUT_2  + -0.115733 * t.OUT_3  + -0.065308 * t.OUT_4  + 0.057680 * t.OUT_5  + -0.164498 * t.OUT_6  + 0.144805 * t.OUT_7  + -0.111827 * t.OUT_8  + 0.085925 * t.OUT_9 AS OUT_70,
    -0.168379 + -0.158462 * t.OUT_0  + -0.099098 * t.OUT_1  + 0.151957 * t.OUT_2  + -0.089430 * t.OUT_3  + -0.144904 * t.OUT_4  + 0.066090 * t.OUT_5  + 0.019414 * t.OUT_6  + -0.122620 * t.OUT_7  + 0.119400 * t.OUT_8  + -0.015649 * t.OUT_9 AS OUT_71,
    -0.180465 + 0.024704 * t.OUT_0  + 0.141242 * t.OUT_1  + 0.248356 * t.OUT_2  + -0.248976 * t.OUT_3  + -0.077606 * t.OUT_4  + -0.126251 * t.OUT_5  + 0.005895 * t.OUT_6  + 0.146789 * t.OUT_7  + 0.200942 * t.OUT_8  + 0.023452 * t.OUT_9 AS OUT_72,
    -0.115647 + 0.192244 * t.OUT_0  + 0.077393 * t.OUT_1  + -0.156251 * t.OUT_2  + 0.092995 * t.OUT_3  + -0.033861 * t.OUT_4  + 0.035049 * t.OUT_5  + 0.099278 * t.OUT_6  + 0.006651 * t.OUT_7  + -0.042684 * t.OUT_8  + -0.066211 * t.OUT_9 AS OUT_73,
    0.003843 + -0.139727 * t.OUT_0  + 0.036905 * t.OUT_1  + 0.081605 * t.OUT_2  + -0.189602 * t.OUT_3  + 0.157666 * t.OUT_4  + 0.095477 * t.OUT_5  + -0.046902 * t.OUT_6  + -0.060036 * t.OUT_7  + -0.126033 * t.OUT_8  + -0.159775 * t.OUT_9 AS OUT_74,
    0.174944 + 0.060850 * t.OUT_0  + -0.132806 * t.OUT_1  + 0.105487 * t.OUT_2  + 0.168929 * t.OUT_3  + 0.028582 * t.OUT_4  + -0.029383 * t.OUT_5  + 0.065252 * t.OUT_6  + 0.004101 * t.OUT_7  + 0.197338 * t.OUT_8  + -0.037766 * t.OUT_9 AS OUT_75,
    0.071507 + 0.137631 * t.OUT_0  + 0.227519 * t.OUT_1  + 0.117851 * t.OUT_2  + -0.259512 * t.OUT_3  + 0.019772 * t.OUT_4  + 0.124883 * t.OUT_5  + -0.098245 * t.OUT_6  + 0.148947 * t.OUT_7  + 0.075632 * t.OUT_8  + 0.258842 * t.OUT_9 AS OUT_76,
    0.083620 + 0.108043 * t.OUT_0  + 0.168563 * t.OUT_1  + 0.183367 * t.OUT_2  + -0.041064 * t.OUT_3  + 0.049417 * t.OUT_4  + -0.014467 * t.OUT_5  + 0.143915 * t.OUT_6  + -0.155442 * t.OUT_7  + -0.237305 * t.OUT_8  + -0.229672 * t.OUT_9 AS OUT_77,
    0.142957 + 0.174786 * t.OUT_0  + -0.124433 * t.OUT_1  + -0.149494 * t.OUT_2  + 0.220917 * t.OUT_3  + 0.044893 * t.OUT_4  + -0.164315 * t.OUT_5  + -0.169475 * t.OUT_6  + 0.201422 * t.OUT_7  + 0.202303 * t.OUT_8  + 0.183769 * t.OUT_9 AS OUT_78,
    -0.082741 + -0.082573 * t.OUT_0  + 0.062009 * t.OUT_1  + 0.189055 * t.OUT_2  + 0.035104 * t.OUT_3  + -0.025947 * t.OUT_4  + 0.124287 * t.OUT_5  + 0.169843 * t.OUT_6  + -0.101560 * t.OUT_7  + -0.147755 * t.OUT_8  + -0.234576 * t.OUT_9 AS OUT_79,
    0.183972 + 0.130566 * t.OUT_0  + 0.160119 * t.OUT_1  + 0.141165 * t.OUT_2  + -0.072889 * t.OUT_3  + -0.119468 * t.OUT_4  + -0.092645 * t.OUT_5  + 0.254144 * t.OUT_6  + -0.030695 * t.OUT_7  + -0.168161 * t.OUT_8  + 0.054426 * t.OUT_9 AS OUT_80,
    -0.048413 + 0.133737 * t.OUT_0  + -0.002386 * t.OUT_1  + 0.202563 * t.OUT_2  + -0.114852 * t.OUT_3  + 0.226945 * t.OUT_4  + 0.011514 * t.OUT_5  + -0.031451 * t.OUT_6  + -0.194828 * t.OUT_7  + 0.103367 * t.OUT_8  + 0.180499 * t.OUT_9 AS OUT_81,
    -0.028791 + 0.202620 * t.OUT_0  + 0.026567 * t.OUT_1  + 0.023455 * t.OUT_2  + 0.211601 * t.OUT_3  + 0.203352 * t.OUT_4  + -0.116034 * t.OUT_5  + -0.200275 * t.OUT_6  + -0.156881 * t.OUT_7  + 0.019313 * t.OUT_8  + -0.022600 * t.OUT_9 AS OUT_82,
    0.229557 + 0.011298 * t.OUT_0  + 0.246010 * t.OUT_1  + 0.120793 * t.OUT_2  + -0.084174 * t.OUT_3  + 0.051161 * t.OUT_4  + -0.069954 * t.OUT_5  + 0.171010 * t.OUT_6  + -0.182620 * t.OUT_7  + -0.057629 * t.OUT_8  + 0.073215 * t.OUT_9 AS OUT_83,
    -0.203108 + -0.177645 * t.OUT_0  + 0.113899 * t.OUT_1  + 0.158528 * t.OUT_2  + -0.151401 * t.OUT_3  + 0.010138 * t.OUT_4  + 0.106976 * t.OUT_5  + -0.030328 * t.OUT_6  + 0.041552 * t.OUT_7  + 0.159872 * t.OUT_8  + 0.261969 * t.OUT_9 AS OUT_84,
    -0.237879 + 0.085822 * t.OUT_0  + 0.064394 * t.OUT_1  + 0.152016 * t.OUT_2  + -0.128980 * t.OUT_3  + 0.083149 * t.OUT_4  + 0.171261 * t.OUT_5  + -0.206582 * t.OUT_6  + 0.008531 * t.OUT_7  + 0.135936 * t.OUT_8  + -0.233030 * t.OUT_9 AS OUT_85,
    -0.053911 + -0.033127 * t.OUT_0  + -0.200083 * t.OUT_1  + 0.107774 * t.OUT_2  + -0.027374 * t.OUT_3  + 0.009898 * t.OUT_4  + -0.242863 * t.OUT_5  + -0.066252 * t.OUT_6  + -0.152302 * t.OUT_7  + 0.160119 * t.OUT_8  + -0.093027 * t.OUT_9 AS OUT_86,
    -0.134977 + -0.077193 * t.OUT_0  + -0.018715 * t.OUT_1  + -0.261064 * t.OUT_2  + 0.156583 * t.OUT_3  + 0.182881 * t.OUT_4  + -0.137248 * t.OUT_5  + -0.199009 * t.OUT_6  + -0.074317 * t.OUT_7  + -0.100468 * t.OUT_8  + -0.120477 * t.OUT_9 AS OUT_87,
    -0.198812 + -0.203285 * t.OUT_0  + 0.159550 * t.OUT_1  + 0.052876 * t.OUT_2  + -0.057714 * t.OUT_3  + 0.100390 * t.OUT_4  + 0.057879 * t.OUT_5  + 0.178659 * t.OUT_6  + -0.187531 * t.OUT_7  + -0.042236 * t.OUT_8  + -0.133534 * t.OUT_9 AS OUT_88,
    0.088101 + -0.256262 * t.OUT_0  + 0.093541 * t.OUT_1  + 0.169949 * t.OUT_2  + 0.038653 * t.OUT_3  + -0.015606 * t.OUT_4  + -0.133564 * t.OUT_5  + -0.069402 * t.OUT_6  + -0.082499 * t.OUT_7  + -0.243224 * t.OUT_8  + 0.266874 * t.OUT_9 AS OUT_89,
    -0.204188 + -0.096549 * t.OUT_0  + -0.079024 * t.OUT_1  + 0.050132 * t.OUT_2  + 0.136051 * t.OUT_3  + -0.042532 * t.OUT_4  + -0.147061 * t.OUT_5  + -0.090987 * t.OUT_6  + 0.127560 * t.OUT_7  + -0.117267 * t.OUT_8  + -0.089443 * t.OUT_9 AS OUT_90,
    0.201190 + 0.243832 * t.OUT_0  + -0.029257 * t.OUT_1  + 0.219313 * t.OUT_2  + 0.157134 * t.OUT_3  + -0.242178 * t.OUT_4  + 0.165058 * t.OUT_5  + -0.000676 * t.OUT_6  + -0.061354 * t.OUT_7  + -0.147759 * t.OUT_8  + 0.247648 * t.OUT_9 AS OUT_91,
    0.208998 + 0.042617 * t.OUT_0  + 0.196188 * t.OUT_1  + -0.045477 * t.OUT_2  + -0.148014 * t.OUT_3  + 0.198029 * t.OUT_4  + -0.196742 * t.OUT_5  + 0.197151 * t.OUT_6  + -0.197697 * t.OUT_7  + -0.112179 * t.OUT_8  + 0.203205 * t.OUT_9 AS OUT_92,
    -0.183461 + -0.081093 * t.OUT_0  + -0.155839 * t.OUT_1  + 0.043655 * t.OUT_2  + 0.061938 * t.OUT_3  + -0.173623 * t.OUT_4  + -0.081900 * t.OUT_5  + -0.118015 * t.OUT_6  + -0.235211 * t.OUT_7  + -0.180075 * t.OUT_8  + -0.023753 * t.OUT_9 AS OUT_93,
    -0.153296 + -0.086633 * t.OUT_0  + -0.002262 * t.OUT_1  + -0.197391 * t.OUT_2  + -0.115686 * t.OUT_3  + -0.086420 * t.OUT_4  + 0.152130 * t.OUT_5  + 0.010385 * t.OUT_6  + -0.254291 * t.OUT_7  + -0.115368 * t.OUT_8  + -0.201183 * t.OUT_9 AS OUT_94,
    -0.156608 + -0.244780 * t.OUT_0  + 0.155590 * t.OUT_1  + 0.026203 * t.OUT_2  + 0.093607 * t.OUT_3  + 0.247950 * t.OUT_4  + 0.267382 * t.OUT_5  + -0.042001 * t.OUT_6  + 0.204966 * t.OUT_7  + -0.107419 * t.OUT_8  + -0.089295 * t.OUT_9 AS OUT_95,
    0.149230 + 0.110470 * t.OUT_0  + -0.184795 * t.OUT_1  + -0.191167 * t.OUT_2  + -0.203084 * t.OUT_3  + -0.184977 * t.OUT_4  + 0.000355 * t.OUT_5  + -0.130303 * t.OUT_6  + 0.231335 * t.OUT_7  + 0.171258 * t.OUT_8  + 0.216059 * t.OUT_9 AS OUT_96,
    0.030732 + -0.096879 * t.OUT_0  + -0.153956 * t.OUT_1  + 0.105019 * t.OUT_2  + -0.031352 * t.OUT_3  + 0.235184 * t.OUT_4  + 0.162671 * t.OUT_5  + 0.112839 * t.OUT_6  + 0.196106 * t.OUT_7  + 0.045239 * t.OUT_8  + 0.196609 * t.OUT_9 AS OUT_97,
    0.185213 + -0.123639 * t.OUT_0  + -0.164256 * t.OUT_1  + -0.027685 * t.OUT_2  + 0.160002 * t.OUT_3  + -0.099495 * t.OUT_4  + -0.118087 * t.OUT_5  + -0.162963 * t.OUT_6  + 0.182280 * t.OUT_7  + 0.165895 * t.OUT_8  + -0.085578 * t.OUT_9 AS OUT_98,
    0.135759 + -0.014893 * t.OUT_0  + -0.089197 * t.OUT_1  + 0.040124 * t.OUT_2  + -0.171418 * t.OUT_3  + 0.180312 * t.OUT_4  + -0.089264 * t.OUT_5  + 0.212357 * t.OUT_6  + 0.133615 * t.OUT_7  + 0.085242 * t.OUT_8  + -0.028794 * t.OUT_9 AS OUT_99
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
    0.015450 + 0.237076 * t.OUT_0  + -0.023137 * t.OUT_1  + -0.258736 * t.OUT_2  + 0.108027 * t.OUT_3  + -0.060714 * t.OUT_4  + -0.211807 * t.OUT_5  + -0.138708 * t.OUT_6  + 0.239610 * t.OUT_7  + -0.083396 * t.OUT_8  + 0.170575 * t.OUT_9  + -0.189077 * t.OUT_10  + 0.271758 * t.OUT_11  + -0.133702 * t.OUT_12  + -0.053179 * t.OUT_13  + 0.210470 * t.OUT_14  + 0.067277 * t.OUT_15  + 0.195640 * t.OUT_16  + -0.241266 * t.OUT_17  + -0.053577 * t.OUT_18  + -0.115289 * t.OUT_19  + 0.009261 * t.OUT_20  + -0.233864 * t.OUT_21  + 0.191135 * t.OUT_22  + 0.131503 * t.OUT_23  + -0.155466 * t.OUT_24  + -0.028838 * t.OUT_25  + -0.033762 * t.OUT_26  + -0.161840 * t.OUT_27  + 0.163969 * t.OUT_28  + -0.274855 * t.OUT_29  + -0.251255 * t.OUT_30  + 0.170979 * t.OUT_31  + -0.062525 * t.OUT_32  + -0.141396 * t.OUT_33  + -0.125294 * t.OUT_34  + -0.098431 * t.OUT_35  + -0.029269 * t.OUT_36  + 0.040103 * t.OUT_37  + -0.220418 * t.OUT_38  + -0.116810 * t.OUT_39  + -0.187300 * t.OUT_40  + -0.198152 * t.OUT_41  + -0.038812 * t.OUT_42  + 0.171729 * t.OUT_43  + -0.121506 * t.OUT_44  + -0.076644 * t.OUT_45  + -0.095950 * t.OUT_46  + -0.071600 * t.OUT_47  + 0.264793 * t.OUT_48  + 0.249823 * t.OUT_49  + -0.044927 * t.OUT_50  + -0.048842 * t.OUT_51  + 0.261795 * t.OUT_52  + -0.145368 * t.OUT_53  + 0.125913 * t.OUT_54  + 0.009280 * t.OUT_55  + 0.024500 * t.OUT_56  + -0.059505 * t.OUT_57  + 0.155333 * t.OUT_58  + -0.117802 * t.OUT_59  + -0.100450 * t.OUT_60  + 0.059887 * t.OUT_61  + -0.044463 * t.OUT_62  + 0.128806 * t.OUT_63  + -0.093809 * t.OUT_64  + -0.052784 * t.OUT_65  + 0.049046 * t.OUT_66  + 0.219172 * t.OUT_67  + -0.068336 * t.OUT_68  + -0.083016 * t.OUT_69  + -0.131140 * t.OUT_70  + 0.120433 * t.OUT_71  + 0.243029 * t.OUT_72  + -0.088180 * t.OUT_73  + 0.011899 * t.OUT_74  + -0.180560 * t.OUT_75  + 0.201794 * t.OUT_76  + -0.050199 * t.OUT_77  + -0.065980 * t.OUT_78  + 0.042334 * t.OUT_79  + 0.251707 * t.OUT_80  + -0.030216 * t.OUT_81  + 0.123705 * t.OUT_82  + 0.229231 * t.OUT_83  + 0.146722 * t.OUT_84  + -0.165651 * t.OUT_85  + -0.038659 * t.OUT_86  + -0.107177 * t.OUT_87  + -0.165640 * t.OUT_88  + -0.045838 * t.OUT_89  + -0.025565 * t.OUT_90  + 0.103305 * t.OUT_91  + 0.250456 * t.OUT_92  + -0.073396 * t.OUT_93  + -0.163699 * t.OUT_94  + -0.037939 * t.OUT_95  + 0.118866 * t.OUT_96  + 0.001629 * t.OUT_97  + -0.095851 * t.OUT_98  + 0.237655 * t.OUT_99 AS OUT_0
   FROM Hidden_Layer_1_Activation AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t