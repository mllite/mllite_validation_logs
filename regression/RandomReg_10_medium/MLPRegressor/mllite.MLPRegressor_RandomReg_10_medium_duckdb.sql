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
    0.279505 + 0.083676 * t."OUT_0"  + 0.195612 * t."OUT_1"  + 0.007106 * t."OUT_2"  + 0.183217 * t."OUT_3"  + -0.015338 * t."OUT_4"  + 0.177412 * t."OUT_5"  + 0.240468 * t."OUT_6"  + -0.079981 * t."OUT_7"  + 0.249795 * t."OUT_8"  + 0.185384 * t."OUT_9" AS "OUT_0",
    0.263386 + 0.006006 * t."OUT_0"  + -0.277946 * t."OUT_1"  + -0.120807 * t."OUT_2"  + -0.212729 * t."OUT_3"  + 0.027885 * t."OUT_4"  + 0.080613 * t."OUT_5"  + -0.191385 * t."OUT_6"  + -0.176989 * t."OUT_7"  + -0.194180 * t."OUT_8"  + 0.015066 * t."OUT_9" AS "OUT_1",
    0.295771 + -0.194159 * t."OUT_0"  + -0.176485 * t."OUT_1"  + -0.292015 * t."OUT_2"  + -0.155313 * t."OUT_3"  + 0.031310 * t."OUT_4"  + -0.235082 * t."OUT_5"  + -0.284080 * t."OUT_6"  + -0.260277 * t."OUT_7"  + -0.178189 * t."OUT_8"  + -0.155020 * t."OUT_9" AS "OUT_2",
    0.163866 + 0.093058 * t."OUT_0"  + 0.238257 * t."OUT_1"  + 0.251287 * t."OUT_2"  + 0.033794 * t."OUT_3"  + 0.315820 * t."OUT_4"  + 0.235804 * t."OUT_5"  + 0.144371 * t."OUT_6"  + 0.077950 * t."OUT_7"  + -0.003163 * t."OUT_8"  + 0.057495 * t."OUT_9" AS "OUT_3",
    0.111929 + -0.028784 * t."OUT_0"  + 0.076666 * t."OUT_1"  + 0.152892 * t."OUT_2"  + -0.233462 * t."OUT_3"  + -0.165426 * t."OUT_4"  + -0.250854 * t."OUT_5"  + 0.034823 * t."OUT_6"  + -0.131791 * t."OUT_7"  + 0.146455 * t."OUT_8"  + -0.221930 * t."OUT_9" AS "OUT_4",
    0.197775 + -0.265089 * t."OUT_0"  + 0.094424 * t."OUT_1"  + -0.060075 * t."OUT_2"  + 0.041596 * t."OUT_3"  + -0.073089 * t."OUT_4"  + 0.133564 * t."OUT_5"  + -0.269594 * t."OUT_6"  + -0.307963 * t."OUT_7"  + -0.233085 * t."OUT_8"  + -0.177646 * t."OUT_9" AS "OUT_5",
    -0.010132 + -0.036657 * t."OUT_0"  + 0.061562 * t."OUT_1"  + -0.093413 * t."OUT_2"  + -0.059572 * t."OUT_3"  + 0.216397 * t."OUT_4"  + -0.237585 * t."OUT_5"  + -0.306439 * t."OUT_6"  + -0.104144 * t."OUT_7"  + -0.236309 * t."OUT_8"  + 0.104944 * t."OUT_9" AS "OUT_6",
    0.280468 + 0.111588 * t."OUT_0"  + 0.232666 * t."OUT_1"  + 0.187178 * t."OUT_2"  + 0.032790 * t."OUT_3"  + 0.256994 * t."OUT_4"  + -0.068529 * t."OUT_5"  + 0.131060 * t."OUT_6"  + -0.044049 * t."OUT_7"  + 0.054525 * t."OUT_8"  + 0.201959 * t."OUT_9" AS "OUT_7",
    -0.089095 + 0.111900 * t."OUT_0"  + -0.192868 * t."OUT_1"  + -0.063628 * t."OUT_2"  + -0.146276 * t."OUT_3"  + 0.112072 * t."OUT_4"  + -0.231307 * t."OUT_5"  + -0.056101 * t."OUT_6"  + -0.009223 * t."OUT_7"  + -0.134388 * t."OUT_8"  + -0.154385 * t."OUT_9" AS "OUT_8",
    0.206951 + 0.154044 * t."OUT_0"  + 0.126104 * t."OUT_1"  + 0.213065 * t."OUT_2"  + 0.229292 * t."OUT_3"  + 0.040068 * t."OUT_4"  + 0.039282 * t."OUT_5"  + 0.032674 * t."OUT_6"  + 0.255087 * t."OUT_7"  + 0.199652 * t."OUT_8"  + 0.198077 * t."OUT_9" AS "OUT_9",
    -0.189488 + 0.117823 * t."OUT_0"  + -0.013599 * t."OUT_1"  + -0.051629 * t."OUT_2"  + 0.068842 * t."OUT_3"  + -0.093670 * t."OUT_4"  + 0.004312 * t."OUT_5"  + -0.011206 * t."OUT_6"  + 0.040804 * t."OUT_7"  + -0.250083 * t."OUT_8"  + 0.026196 * t."OUT_9" AS "OUT_10",
    0.337782 + 0.066086 * t."OUT_0"  + 0.254102 * t."OUT_1"  + 0.233911 * t."OUT_2"  + -0.004024 * t."OUT_3"  + -0.016655 * t."OUT_4"  + 0.231289 * t."OUT_5"  + 0.251400 * t."OUT_6"  + 0.165909 * t."OUT_7"  + -0.020359 * t."OUT_8"  + 0.020770 * t."OUT_9" AS "OUT_11",
    -0.086088 + 0.151575 * t."OUT_0"  + 0.038617 * t."OUT_1"  + 0.033035 * t."OUT_2"  + 0.044531 * t."OUT_3"  + -0.005485 * t."OUT_4"  + -0.127518 * t."OUT_5"  + -0.078505 * t."OUT_6"  + -0.090345 * t."OUT_7"  + -0.202136 * t."OUT_8"  + 0.019522 * t."OUT_9" AS "OUT_12",
    -0.046710 + -0.327638 * t."OUT_0"  + -0.123411 * t."OUT_1"  + -0.221181 * t."OUT_2"  + -0.275388 * t."OUT_3"  + -0.283415 * t."OUT_4"  + 0.079686 * t."OUT_5"  + -0.009180 * t."OUT_6"  + -0.326907 * t."OUT_7"  + -0.198816 * t."OUT_8"  + -0.213915 * t."OUT_9" AS "OUT_13",
    -0.093275 + 0.011380 * t."OUT_0"  + 0.240320 * t."OUT_1"  + 0.035230 * t."OUT_2"  + 0.276104 * t."OUT_3"  + 0.001465 * t."OUT_4"  + -0.040620 * t."OUT_5"  + 0.161471 * t."OUT_6"  + -0.145797 * t."OUT_7"  + 0.286225 * t."OUT_8"  + 0.067750 * t."OUT_9" AS "OUT_14",
    0.322693 + 0.205601 * t."OUT_0"  + 0.277076 * t."OUT_1"  + -0.083720 * t."OUT_2"  + 0.056268 * t."OUT_3"  + -0.107089 * t."OUT_4"  + -0.090146 * t."OUT_5"  + 0.127862 * t."OUT_6"  + 0.305225 * t."OUT_7"  + 0.076441 * t."OUT_8"  + 0.263286 * t."OUT_9" AS "OUT_15",
    0.107267 + 0.226619 * t."OUT_0"  + 0.140830 * t."OUT_1"  + -0.016900 * t."OUT_2"  + 0.148852 * t."OUT_3"  + 0.043332 * t."OUT_4"  + -0.020849 * t."OUT_5"  + 0.062265 * t."OUT_6"  + 0.028784 * t."OUT_7"  + 0.231842 * t."OUT_8"  + -0.075384 * t."OUT_9" AS "OUT_16",
    -0.092296 + -0.217643 * t."OUT_0"  + -0.186856 * t."OUT_1"  + -0.239262 * t."OUT_2"  + -0.241324 * t."OUT_3"  + -0.073483 * t."OUT_4"  + -0.122089 * t."OUT_5"  + 0.106522 * t."OUT_6"  + -0.047907 * t."OUT_7"  + -0.175371 * t."OUT_8"  + 0.191310 * t."OUT_9" AS "OUT_17",
    -0.058662 + -0.239767 * t."OUT_0"  + -0.186514 * t."OUT_1"  + -0.058608 * t."OUT_2"  + -0.221702 * t."OUT_3"  + 0.038777 * t."OUT_4"  + -0.074895 * t."OUT_5"  + -0.268827 * t."OUT_6"  + -0.236983 * t."OUT_7"  + -0.163795 * t."OUT_8"  + 0.188479 * t."OUT_9" AS "OUT_18",
    0.014553 + -0.289683 * t."OUT_0"  + -0.224900 * t."OUT_1"  + -0.141935 * t."OUT_2"  + -0.028926 * t."OUT_3"  + -0.068094 * t."OUT_4"  + -0.282602 * t."OUT_5"  + -0.262048 * t."OUT_6"  + 0.123659 * t."OUT_7"  + -0.170693 * t."OUT_8"  + 0.086846 * t."OUT_9" AS "OUT_19",
    0.220451 + 0.178670 * t."OUT_0"  + 0.202238 * t."OUT_1"  + -0.022530 * t."OUT_2"  + -0.020650 * t."OUT_3"  + 0.297921 * t."OUT_4"  + 0.193160 * t."OUT_5"  + -0.044935 * t."OUT_6"  + 0.041498 * t."OUT_7"  + 0.229059 * t."OUT_8"  + -0.155665 * t."OUT_9" AS "OUT_20",
    0.188809 + -0.330694 * t."OUT_0"  + 0.028078 * t."OUT_1"  + -0.294784 * t."OUT_2"  + 0.141502 * t."OUT_3"  + 0.070012 * t."OUT_4"  + 0.026425 * t."OUT_5"  + -0.306929 * t."OUT_6"  + -0.052406 * t."OUT_7"  + 0.049644 * t."OUT_8"  + -0.013137 * t."OUT_9" AS "OUT_21",
    0.069720 + 0.051514 * t."OUT_0"  + -0.068976 * t."OUT_1"  + 0.296319 * t."OUT_2"  + -0.126924 * t."OUT_3"  + -0.124126 * t."OUT_4"  + 0.030836 * t."OUT_5"  + -0.087242 * t."OUT_6"  + -0.048323 * t."OUT_7"  + -0.133429 * t."OUT_8"  + 0.165173 * t."OUT_9" AS "OUT_22",
    0.136060 + 0.120155 * t."OUT_0"  + 0.183543 * t."OUT_1"  + 0.012524 * t."OUT_2"  + -0.013945 * t."OUT_3"  + 0.089183 * t."OUT_4"  + -0.006053 * t."OUT_5"  + 0.209410 * t."OUT_6"  + 0.106984 * t."OUT_7"  + 0.053087 * t."OUT_8"  + -0.142476 * t."OUT_9" AS "OUT_23",
    0.330661 + -0.149428 * t."OUT_0"  + -0.250127 * t."OUT_1"  + -0.159676 * t."OUT_2"  + 0.007187 * t."OUT_3"  + 0.071983 * t."OUT_4"  + 0.040987 * t."OUT_5"  + -0.096661 * t."OUT_6"  + -0.112409 * t."OUT_7"  + -0.274653 * t."OUT_8"  + 0.112547 * t."OUT_9" AS "OUT_24",
    0.157396 + -0.323021 * t."OUT_0"  + -0.113553 * t."OUT_1"  + -0.028757 * t."OUT_2"  + -0.052032 * t."OUT_3"  + -0.264266 * t."OUT_4"  + -0.278346 * t."OUT_5"  + -0.185493 * t."OUT_6"  + -0.264368 * t."OUT_7"  + 0.092192 * t."OUT_8"  + -0.193023 * t."OUT_9" AS "OUT_25",
    0.015904 + -0.230044 * t."OUT_0"  + -0.068114 * t."OUT_1"  + 0.004361 * t."OUT_2"  + 0.093427 * t."OUT_3"  + -0.217015 * t."OUT_4"  + 0.094115 * t."OUT_5"  + -0.041026 * t."OUT_6"  + -0.274905 * t."OUT_7"  + -0.066808 * t."OUT_8"  + 0.051621 * t."OUT_9" AS "OUT_26",
    -0.086041 + 0.105747 * t."OUT_0"  + -0.181058 * t."OUT_1"  + 0.024380 * t."OUT_2"  + 0.073050 * t."OUT_3"  + -0.055401 * t."OUT_4"  + 0.060059 * t."OUT_5"  + 0.018618 * t."OUT_6"  + -0.146044 * t."OUT_7"  + -0.091295 * t."OUT_8"  + -0.253658 * t."OUT_9" AS "OUT_27",
    0.004515 + 0.093555 * t."OUT_0"  + 0.213361 * t."OUT_1"  + -0.098780 * t."OUT_2"  + -0.081970 * t."OUT_3"  + -0.050634 * t."OUT_4"  + 0.122090 * t."OUT_5"  + 0.166376 * t."OUT_6"  + 0.270617 * t."OUT_7"  + 0.244416 * t."OUT_8"  + 0.160776 * t."OUT_9" AS "OUT_28",
    -0.110045 + -0.102072 * t."OUT_0"  + -0.321496 * t."OUT_1"  + 0.070952 * t."OUT_2"  + -0.214934 * t."OUT_3"  + -0.032872 * t."OUT_4"  + -0.296268 * t."OUT_5"  + -0.173672 * t."OUT_6"  + -0.276201 * t."OUT_7"  + 0.036168 * t."OUT_8"  + 0.130796 * t."OUT_9" AS "OUT_29",
    0.291514 + -0.307300 * t."OUT_0"  + -0.308336 * t."OUT_1"  + 0.107073 * t."OUT_2"  + -0.215994 * t."OUT_3"  + -0.181627 * t."OUT_4"  + -0.297251 * t."OUT_5"  + -0.276984 * t."OUT_6"  + -0.114522 * t."OUT_7"  + -0.043774 * t."OUT_8"  + 0.023275 * t."OUT_9" AS "OUT_30",
    0.273038 + 0.116065 * t."OUT_0"  + 0.277043 * t."OUT_1"  + 0.270730 * t."OUT_2"  + 0.150414 * t."OUT_3"  + 0.046236 * t."OUT_4"  + -0.034535 * t."OUT_5"  + 0.117908 * t."OUT_6"  + 0.192442 * t."OUT_7"  + 0.253458 * t."OUT_8"  + 0.047745 * t."OUT_9" AS "OUT_31",
    0.179498 + -0.171617 * t."OUT_0"  + 0.109852 * t."OUT_1"  + -0.082051 * t."OUT_2"  + 0.013296 * t."OUT_3"  + -0.142038 * t."OUT_4"  + -0.053107 * t."OUT_5"  + -0.059554 * t."OUT_6"  + -0.321312 * t."OUT_7"  + 0.077827 * t."OUT_8"  + 0.037846 * t."OUT_9" AS "OUT_32",
    -0.133682 + 0.003984 * t."OUT_0"  + -0.237212 * t."OUT_1"  + 0.153911 * t."OUT_2"  + 0.024698 * t."OUT_3"  + 0.039065 * t."OUT_4"  + -0.297588 * t."OUT_5"  + 0.031946 * t."OUT_6"  + 0.147469 * t."OUT_7"  + -0.257703 * t."OUT_8"  + 0.000086 * t."OUT_9" AS "OUT_33",
    0.245239 + -0.151037 * t."OUT_0"  + -0.191782 * t."OUT_1"  + 0.045419 * t."OUT_2"  + -0.117002 * t."OUT_3"  + -0.095835 * t."OUT_4"  + -0.159496 * t."OUT_5"  + -0.294967 * t."OUT_6"  + -0.291937 * t."OUT_7"  + -0.144274 * t."OUT_8"  + -0.118085 * t."OUT_9" AS "OUT_34",
    0.105899 + -0.010054 * t."OUT_0"  + -0.288504 * t."OUT_1"  + -0.044377 * t."OUT_2"  + -0.053793 * t."OUT_3"  + 0.087723 * t."OUT_4"  + -0.188451 * t."OUT_5"  + -0.267085 * t."OUT_6"  + -0.272224 * t."OUT_7"  + -0.051821 * t."OUT_8"  + 0.062041 * t."OUT_9" AS "OUT_35",
    0.251668 + -0.270015 * t."OUT_0"  + -0.292393 * t."OUT_1"  + -0.192519 * t."OUT_2"  + 0.112002 * t."OUT_3"  + -0.086926 * t."OUT_4"  + 0.034151 * t."OUT_5"  + -0.099179 * t."OUT_6"  + -0.105934 * t."OUT_7"  + -0.108131 * t."OUT_8"  + -0.033724 * t."OUT_9" AS "OUT_36",
    0.099879 + 0.331100 * t."OUT_0"  + -0.053827 * t."OUT_1"  + 0.330081 * t."OUT_2"  + -0.066221 * t."OUT_3"  + -0.118531 * t."OUT_4"  + 0.211385 * t."OUT_5"  + 0.071800 * t."OUT_6"  + 0.101318 * t."OUT_7"  + 0.303105 * t."OUT_8"  + -0.091093 * t."OUT_9" AS "OUT_37",
    0.235469 + -0.270858 * t."OUT_0"  + -0.179441 * t."OUT_1"  + -0.331887 * t."OUT_2"  + -0.107903 * t."OUT_3"  + 0.106490 * t."OUT_4"  + -0.259061 * t."OUT_5"  + -0.235056 * t."OUT_6"  + -0.132245 * t."OUT_7"  + -0.211271 * t."OUT_8"  + 0.025279 * t."OUT_9" AS "OUT_38",
    -0.097936 + 0.038141 * t."OUT_0"  + -0.141064 * t."OUT_1"  + -0.302075 * t."OUT_2"  + -0.150605 * t."OUT_3"  + -0.185525 * t."OUT_4"  + 0.002953 * t."OUT_5"  + 0.145666 * t."OUT_6"  + 0.101256 * t."OUT_7"  + -0.202989 * t."OUT_8"  + -0.088288 * t."OUT_9" AS "OUT_39",
    0.185719 + -0.271332 * t."OUT_0"  + -0.256641 * t."OUT_1"  + -0.125900 * t."OUT_2"  + -0.036856 * t."OUT_3"  + -0.020949 * t."OUT_4"  + 0.019809 * t."OUT_5"  + -0.231323 * t."OUT_6"  + -0.203427 * t."OUT_7"  + 0.025833 * t."OUT_8"  + 0.084759 * t."OUT_9" AS "OUT_40",
    0.159238 + 0.030523 * t."OUT_0"  + -0.269061 * t."OUT_1"  + -0.113423 * t."OUT_2"  + -0.119374 * t."OUT_3"  + -0.023507 * t."OUT_4"  + -0.052735 * t."OUT_5"  + -0.249678 * t."OUT_6"  + 0.008730 * t."OUT_7"  + -0.256371 * t."OUT_8"  + -0.198131 * t."OUT_9" AS "OUT_41",
    -0.091510 + -0.003994 * t."OUT_0"  + -0.265188 * t."OUT_1"  + 0.037557 * t."OUT_2"  + -0.116226 * t."OUT_3"  + 0.045047 * t."OUT_4"  + 0.150008 * t."OUT_5"  + 0.147403 * t."OUT_6"  + -0.055987 * t."OUT_7"  + 0.062643 * t."OUT_8"  + -0.139954 * t."OUT_9" AS "OUT_42",
    0.311966 + 0.315460 * t."OUT_0"  + 0.145806 * t."OUT_1"  + 0.286843 * t."OUT_2"  + 0.017065 * t."OUT_3"  + -0.142210 * t."OUT_4"  + 0.029376 * t."OUT_5"  + 0.301351 * t."OUT_6"  + -0.045424 * t."OUT_7"  + 0.262242 * t."OUT_8"  + -0.104680 * t."OUT_9" AS "OUT_43",
    -0.037278 + -0.258482 * t."OUT_0"  + -0.261036 * t."OUT_1"  + -0.065098 * t."OUT_2"  + -0.112340 * t."OUT_3"  + -0.164432 * t."OUT_4"  + -0.273744 * t."OUT_5"  + 0.004313 * t."OUT_6"  + -0.205657 * t."OUT_7"  + 0.130518 * t."OUT_8"  + 0.010271 * t."OUT_9" AS "OUT_44",
    0.073766 + -0.291259 * t."OUT_0"  + -0.299106 * t."OUT_1"  + -0.149915 * t."OUT_2"  + 0.073669 * t."OUT_3"  + 0.159679 * t."OUT_4"  + -0.096366 * t."OUT_5"  + -0.241053 * t."OUT_6"  + -0.198681 * t."OUT_7"  + -0.072909 * t."OUT_8"  + 0.075275 * t."OUT_9" AS "OUT_45",
    0.224699 + -0.017712 * t."OUT_0"  + -0.051586 * t."OUT_1"  + -0.241633 * t."OUT_2"  + -0.043051 * t."OUT_3"  + 0.056600 * t."OUT_4"  + 0.045569 * t."OUT_5"  + 0.064487 * t."OUT_6"  + -0.210484 * t."OUT_7"  + -0.173842 * t."OUT_8"  + -0.197797 * t."OUT_9" AS "OUT_46",
    -0.124234 + 0.004848 * t."OUT_0"  + 0.005504 * t."OUT_1"  + -0.212759 * t."OUT_2"  + -0.178665 * t."OUT_3"  + -0.174247 * t."OUT_4"  + -0.225894 * t."OUT_5"  + 0.109537 * t."OUT_6"  + -0.015076 * t."OUT_7"  + 0.147641 * t."OUT_8"  + 0.150084 * t."OUT_9" AS "OUT_47",
    0.271573 + 0.256587 * t."OUT_0"  + 0.063599 * t."OUT_1"  + 0.156563 * t."OUT_2"  + 0.026655 * t."OUT_3"  + 0.226157 * t."OUT_4"  + 0.019229 * t."OUT_5"  + 0.230322 * t."OUT_6"  + -0.064053 * t."OUT_7"  + -0.005560 * t."OUT_8"  + -0.016689 * t."OUT_9" AS "OUT_48",
    0.100827 + 0.304520 * t."OUT_0"  + 0.165705 * t."OUT_1"  + 0.184934 * t."OUT_2"  + 0.101551 * t."OUT_3"  + 0.115840 * t."OUT_4"  + 0.239149 * t."OUT_5"  + 0.044042 * t."OUT_6"  + 0.281268 * t."OUT_7"  + 0.071138 * t."OUT_8"  + 0.229341 * t."OUT_9" AS "OUT_49",
    0.294107 + 0.064339 * t."OUT_0"  + -0.082993 * t."OUT_1"  + -0.311983 * t."OUT_2"  + 0.088094 * t."OUT_3"  + 0.104774 * t."OUT_4"  + -0.257202 * t."OUT_5"  + -0.178109 * t."OUT_6"  + -0.064279 * t."OUT_7"  + -0.124137 * t."OUT_8"  + -0.032811 * t."OUT_9" AS "OUT_50",
    -0.005837 + -0.274360 * t."OUT_0"  + -0.278756 * t."OUT_1"  + -0.149349 * t."OUT_2"  + -0.082603 * t."OUT_3"  + 0.153046 * t."OUT_4"  + -0.145900 * t."OUT_5"  + 0.010657 * t."OUT_6"  + -0.177289 * t."OUT_7"  + -0.249682 * t."OUT_8"  + 0.078393 * t."OUT_9" AS "OUT_51",
    -0.055189 + 0.249065 * t."OUT_0"  + 0.068937 * t."OUT_1"  + 0.252796 * t."OUT_2"  + -0.144168 * t."OUT_3"  + -0.048332 * t."OUT_4"  + 0.034446 * t."OUT_5"  + -0.039995 * t."OUT_6"  + -0.100540 * t."OUT_7"  + 0.184837 * t."OUT_8"  + 0.304757 * t."OUT_9" AS "OUT_52",
    -0.000724 + 0.095231 * t."OUT_0"  + 0.098849 * t."OUT_1"  + -0.179470 * t."OUT_2"  + -0.111075 * t."OUT_3"  + 0.088537 * t."OUT_4"  + 0.025483 * t."OUT_5"  + -0.214006 * t."OUT_6"  + -0.315032 * t."OUT_7"  + 0.075117 * t."OUT_8"  + -0.093133 * t."OUT_9" AS "OUT_53",
    0.090640 + -0.032279 * t."OUT_0"  + 0.341305 * t."OUT_1"  + 0.099047 * t."OUT_2"  + -0.087946 * t."OUT_3"  + 0.283227 * t."OUT_4"  + -0.037261 * t."OUT_5"  + 0.267491 * t."OUT_6"  + 0.038941 * t."OUT_7"  + -0.065984 * t."OUT_8"  + 0.090007 * t."OUT_9" AS "OUT_54",
    0.049125 + 0.170256 * t."OUT_0"  + 0.030301 * t."OUT_1"  + 0.025705 * t."OUT_2"  + 0.179665 * t."OUT_3"  + 0.254731 * t."OUT_4"  + 0.265993 * t."OUT_5"  + 0.189134 * t."OUT_6"  + 0.274008 * t."OUT_7"  + 0.243375 * t."OUT_8"  + 0.206845 * t."OUT_9" AS "OUT_55",
    0.325090 + -0.054959 * t."OUT_0"  + -0.325756 * t."OUT_1"  + -0.041516 * t."OUT_2"  + -0.189902 * t."OUT_3"  + 0.067255 * t."OUT_4"  + -0.112019 * t."OUT_5"  + -0.270985 * t."OUT_6"  + 0.080405 * t."OUT_7"  + -0.094888 * t."OUT_8"  + -0.121752 * t."OUT_9" AS "OUT_56",
    0.019311 + -0.086088 * t."OUT_0"  + -0.216220 * t."OUT_1"  + -0.218061 * t."OUT_2"  + -0.116041 * t."OUT_3"  + -0.014900 * t."OUT_4"  + -0.314520 * t."OUT_5"  + 0.062793 * t."OUT_6"  + -0.032866 * t."OUT_7"  + 0.022638 * t."OUT_8"  + 0.102193 * t."OUT_9" AS "OUT_57",
    0.129552 + 0.122310 * t."OUT_0"  + 0.193795 * t."OUT_1"  + 0.092315 * t."OUT_2"  + -0.116874 * t."OUT_3"  + 0.133592 * t."OUT_4"  + -0.084691 * t."OUT_5"  + -0.020664 * t."OUT_6"  + -0.118939 * t."OUT_7"  + 0.205265 * t."OUT_8"  + -0.136766 * t."OUT_9" AS "OUT_58",
    0.255915 + 0.026410 * t."OUT_0"  + -0.297005 * t."OUT_1"  + 0.055046 * t."OUT_2"  + -0.058507 * t."OUT_3"  + -0.069786 * t."OUT_4"  + 0.043562 * t."OUT_5"  + -0.259911 * t."OUT_6"  + -0.173068 * t."OUT_7"  + -0.290710 * t."OUT_8"  + -0.100069 * t."OUT_9" AS "OUT_59",
    0.195740 + -0.308265 * t."OUT_0"  + -0.029721 * t."OUT_1"  + -0.035768 * t."OUT_2"  + -0.254612 * t."OUT_3"  + -0.115406 * t."OUT_4"  + -0.033523 * t."OUT_5"  + -0.004131 * t."OUT_6"  + -0.223294 * t."OUT_7"  + -0.292178 * t."OUT_8"  + -0.225492 * t."OUT_9" AS "OUT_60",
    0.221863 + 0.149700 * t."OUT_0"  + -0.001745 * t."OUT_1"  + 0.269267 * t."OUT_2"  + 0.042522 * t."OUT_3"  + 0.127342 * t."OUT_4"  + 0.005842 * t."OUT_5"  + 0.004157 * t."OUT_6"  + 0.089779 * t."OUT_7"  + 0.315725 * t."OUT_8"  + 0.163614 * t."OUT_9" AS "OUT_61",
    -0.057867 + 0.034061 * t."OUT_0"  + 0.152495 * t."OUT_1"  + 0.105889 * t."OUT_2"  + 0.132239 * t."OUT_3"  + -0.033850 * t."OUT_4"  + -0.060902 * t."OUT_5"  + 0.155240 * t."OUT_6"  + 0.003351 * t."OUT_7"  + -0.136200 * t."OUT_8"  + 0.033607 * t."OUT_9" AS "OUT_62",
    0.252030 + 0.239990 * t."OUT_0"  + 0.326810 * t."OUT_1"  + 0.261628 * t."OUT_2"  + -0.042460 * t."OUT_3"  + 0.006885 * t."OUT_4"  + 0.040657 * t."OUT_5"  + 0.214881 * t."OUT_6"  + 0.060449 * t."OUT_7"  + -0.007815 * t."OUT_8"  + 0.060257 * t."OUT_9" AS "OUT_63",
    -0.048262 + -0.312902 * t."OUT_0"  + -0.219198 * t."OUT_1"  + -0.037299 * t."OUT_2"  + 0.234926 * t."OUT_3"  + -0.258196 * t."OUT_4"  + 0.115938 * t."OUT_5"  + -0.138200 * t."OUT_6"  + -0.029558 * t."OUT_7"  + -0.215452 * t."OUT_8"  + -0.279195 * t."OUT_9" AS "OUT_64",
    0.077103 + 0.090578 * t."OUT_0"  + 0.052792 * t."OUT_1"  + -0.225349 * t."OUT_2"  + -0.197323 * t."OUT_3"  + 0.007137 * t."OUT_4"  + 0.126283 * t."OUT_5"  + 0.105008 * t."OUT_6"  + 0.127601 * t."OUT_7"  + -0.283735 * t."OUT_8"  + -0.235093 * t."OUT_9" AS "OUT_65",
    0.357954 + -0.005487 * t."OUT_0"  + 0.009730 * t."OUT_1"  + 0.102722 * t."OUT_2"  + 0.208167 * t."OUT_3"  + 0.306023 * t."OUT_4"  + 0.088935 * t."OUT_5"  + 0.270126 * t."OUT_6"  + 0.070496 * t."OUT_7"  + 0.321288 * t."OUT_8"  + 0.161593 * t."OUT_9" AS "OUT_66",
    0.219241 + -0.109210 * t."OUT_0"  + 0.276735 * t."OUT_1"  + -0.055542 * t."OUT_2"  + -0.038168 * t."OUT_3"  + 0.030486 * t."OUT_4"  + 0.032444 * t."OUT_5"  + 0.198407 * t."OUT_6"  + 0.292609 * t."OUT_7"  + 0.315449 * t."OUT_8"  + -0.074696 * t."OUT_9" AS "OUT_67",
    -0.050488 + 0.155839 * t."OUT_0"  + -0.266608 * t."OUT_1"  + 0.016623 * t."OUT_2"  + 0.056129 * t."OUT_3"  + -0.164975 * t."OUT_4"  + 0.106700 * t."OUT_5"  + 0.133545 * t."OUT_6"  + -0.028133 * t."OUT_7"  + -0.064830 * t."OUT_8"  + 0.081355 * t."OUT_9" AS "OUT_68",
    -0.060343 + 0.145901 * t."OUT_0"  + 0.066409 * t."OUT_1"  + -0.011651 * t."OUT_2"  + -0.141267 * t."OUT_3"  + -0.203844 * t."OUT_4"  + -0.117250 * t."OUT_5"  + -0.086085 * t."OUT_6"  + 0.127957 * t."OUT_7"  + 0.136453 * t."OUT_8"  + -0.212944 * t."OUT_9" AS "OUT_69",
    0.167109 + -0.124928 * t."OUT_0"  + -0.044551 * t."OUT_1"  + 0.137751 * t."OUT_2"  + -0.228152 * t."OUT_3"  + -0.136138 * t."OUT_4"  + -0.009135 * t."OUT_5"  + -0.224677 * t."OUT_6"  + 0.080492 * t."OUT_7"  + -0.230157 * t."OUT_8"  + 0.025143 * t."OUT_9" AS "OUT_70",
    -0.173614 + -0.112084 * t."OUT_0"  + -0.048656 * t."OUT_1"  + 0.201914 * t."OUT_2"  + -0.061385 * t."OUT_3"  + -0.030816 * t."OUT_4"  + 0.099335 * t."OUT_5"  + 0.070499 * t."OUT_6"  + -0.092786 * t."OUT_7"  + 0.165023 * t."OUT_8"  + -0.007162 * t."OUT_9" AS "OUT_71",
    -0.100814 + 0.097940 * t."OUT_0"  + 0.215583 * t."OUT_1"  + 0.313187 * t."OUT_2"  + -0.124004 * t."OUT_3"  + 0.041642 * t."OUT_4"  + -0.071127 * t."OUT_5"  + 0.082504 * t."OUT_6"  + 0.224780 * t."OUT_7"  + 0.265896 * t."OUT_8"  + 0.077796 * t."OUT_9" AS "OUT_72",
    -0.145958 + 0.149494 * t."OUT_0"  + 0.041424 * t."OUT_1"  + -0.182173 * t."OUT_2"  + 0.005169 * t."OUT_3"  + -0.105893 * t."OUT_4"  + -0.020790 * t."OUT_5"  + 0.056861 * t."OUT_6"  + -0.039085 * t."OUT_7"  + -0.080403 * t."OUT_8"  + -0.104799 * t."OUT_9" AS "OUT_73",
    0.003012 + -0.147242 * t."OUT_0"  + 0.029144 * t."OUT_1"  + 0.073440 * t."OUT_2"  + -0.201023 * t."OUT_3"  + 0.203905 * t."OUT_4"  + 0.121373 * t."OUT_5"  + -0.054775 * t."OUT_6"  + -0.062860 * t."OUT_7"  + -0.133599 * t."OUT_8"  + -0.122314 * t."OUT_9" AS "OUT_74",
    0.136828 + 0.005108 * t."OUT_0"  + -0.186888 * t."OUT_1"  + 0.052023 * t."OUT_2"  + 0.108190 * t."OUT_3"  + -0.085451 * t."OUT_4"  + -0.085256 * t."OUT_5"  + 0.009858 * t."OUT_6"  + -0.047944 * t."OUT_7"  + 0.136530 * t."OUT_8"  + -0.078104 * t."OUT_9" AS "OUT_75",
    0.150484 + 0.210295 * t."OUT_0"  + 0.294115 * t."OUT_1"  + 0.187937 * t."OUT_2"  + -0.134783 * t."OUT_3"  + 0.137993 * t."OUT_4"  + 0.188632 * t."OUT_5"  + -0.025877 * t."OUT_6"  + 0.218228 * t."OUT_7"  + 0.142431 * t."OUT_8"  + 0.281104 * t."OUT_9" AS "OUT_76",
    0.058165 + 0.074726 * t."OUT_0"  + 0.131725 * t."OUT_1"  + 0.152258 * t."OUT_2"  + -0.071796 * t."OUT_3"  + -0.032852 * t."OUT_4"  + -0.075391 * t."OUT_5"  + 0.108392 * t."OUT_6"  + -0.179937 * t."OUT_7"  + -0.271334 * t."OUT_8"  + -0.273202 * t."OUT_9" AS "OUT_77",
    0.165471 + 0.116238 * t."OUT_0"  + -0.180683 * t."OUT_1"  + -0.200610 * t."OUT_2"  + 0.106127 * t."OUT_3"  + -0.040613 * t."OUT_4"  + -0.214699 * t."OUT_5"  + -0.225813 * t."OUT_6"  + 0.143916 * t."OUT_7"  + 0.150683 * t."OUT_8"  + 0.142427 * t."OUT_9" AS "OUT_78",
    0.073126 + 0.011453 * t."OUT_0"  + 0.151038 * t."OUT_1"  + 0.278055 * t."OUT_2"  + 0.123292 * t."OUT_3"  + 0.119723 * t."OUT_4"  + 0.274740 * t."OUT_5"  + 0.261410 * t."OUT_6"  + -0.021588 * t."OUT_7"  + -0.061542 * t."OUT_8"  + -0.100677 * t."OUT_9" AS "OUT_79",
    0.258741 + 0.198176 * t."OUT_0"  + 0.225520 * t."OUT_1"  + 0.203391 * t."OUT_2"  + 0.051556 * t."OUT_3"  + -0.002594 * t."OUT_4"  + -0.026205 * t."OUT_5"  + 0.321699 * t."OUT_6"  + 0.039392 * t."OUT_7"  + -0.102327 * t."OUT_8"  + 0.101935 * t."OUT_9" AS "OUT_80",
    -0.067929 + 0.112374 * t."OUT_0"  + -0.023716 * t."OUT_1"  + 0.182498 * t."OUT_2"  + -0.132932 * t."OUT_3"  + 0.146607 * t."OUT_4"  + -0.004319 * t."OUT_5"  + -0.052905 * t."OUT_6"  + -0.212388 * t."OUT_7"  + 0.083895 * t."OUT_8"  + 0.166511 * t."OUT_9" AS "OUT_81",
    0.060959 + 0.265944 * t."OUT_0"  + 0.094385 * t."OUT_1"  + 0.089336 * t."OUT_2"  + 0.267355 * t."OUT_3"  + 0.327790 * t."OUT_4"  + -0.043565 * t."OUT_5"  + -0.134927 * t."OUT_6"  + -0.106925 * t."OUT_7"  + 0.089584 * t."OUT_8"  + 0.044614 * t."OUT_9" AS "OUT_82",
    0.309962 + 0.081991 * t."OUT_0"  + 0.314035 * t."OUT_1"  + 0.184237 * t."OUT_2"  + -0.011301 * t."OUT_3"  + 0.156560 * t."OUT_4"  + -0.007424 * t."OUT_5"  + 0.237119 * t."OUT_6"  + -0.116137 * t."OUT_7"  + 0.010542 * t."OUT_8"  + 0.120668 * t."OUT_9" AS "OUT_83",
    -0.109540 + -0.096877 * t."OUT_0"  + 0.182697 * t."OUT_1"  + 0.238160 * t."OUT_2"  + -0.059289 * t."OUT_3"  + 0.145242 * t."OUT_4"  + 0.176615 * t."OUT_5"  + 0.041853 * t."OUT_6"  + 0.116147 * t."OUT_7"  + 0.229474 * t."OUT_8"  + 0.338264 * t."OUT_9" AS "OUT_84",
    -0.239582 + 0.036402 * t."OUT_0"  + 0.013042 * t."OUT_1"  + 0.041785 * t."OUT_2"  + -0.121446 * t."OUT_3"  + 0.002196 * t."OUT_4"  + 0.121696 * t."OUT_5"  + -0.271840 * t."OUT_6"  + -0.043446 * t."OUT_7"  + 0.104733 * t."OUT_8"  + -0.292732 * t."OUT_9" AS "OUT_85",
    0.035327 + -0.123157 * t."OUT_0"  + -0.288760 * t."OUT_1"  + 0.019749 * t."OUT_2"  + -0.059510 * t."OUT_3"  + -0.120312 * t."OUT_4"  + -0.334437 * t."OUT_5"  + -0.156285 * t."OUT_6"  + -0.223572 * t."OUT_7"  + 0.095852 * t."OUT_8"  + -0.174750 * t."OUT_9" AS "OUT_86",
    -0.055358 + -0.150791 * t."OUT_0"  + -0.142689 * t."OUT_1"  + -0.338057 * t."OUT_2"  + 0.141300 * t."OUT_3"  + 0.175861 * t."OUT_4"  + -0.203496 * t."OUT_5"  + -0.270913 * t."OUT_6"  + -0.140082 * t."OUT_7"  + -0.160267 * t."OUT_8"  + -0.161584 * t."OUT_9" AS "OUT_87",
    -0.224683 + -0.268304 * t."OUT_0"  + 0.108430 * t."OUT_1"  + 0.004926 * t."OUT_2"  + -0.101599 * t."OUT_3"  + -0.001879 * t."OUT_4"  + -0.056050 * t."OUT_5"  + 0.126253 * t."OUT_6"  + -0.231395 * t."OUT_7"  + -0.076419 * t."OUT_8"  + -0.219179 * t."OUT_9" AS "OUT_88",
    0.177372 + -0.347264 * t."OUT_0"  + 0.002062 * t."OUT_1"  + 0.084142 * t."OUT_2"  + -0.040138 * t."OUT_3"  + -0.121700 * t."OUT_4"  + -0.216876 * t."OUT_5"  + -0.154591 * t."OUT_6"  + -0.160785 * t."OUT_7"  + -0.303154 * t."OUT_8"  + 0.131440 * t."OUT_9" AS "OUT_89",
    -0.106794 + -0.192594 * t."OUT_0"  + -0.179979 * t."OUT_1"  + -0.050282 * t."OUT_2"  + 0.143172 * t."OUT_3"  + -0.140503 * t."OUT_4"  + -0.239170 * t."OUT_5"  + -0.177555 * t."OUT_6"  + 0.023727 * t."OUT_7"  + -0.212790 * t."OUT_8"  + -0.138180 * t."OUT_9" AS "OUT_90",
    0.288092 + 0.319791 * t."OUT_0"  + 0.043173 * t."OUT_1"  + 0.290539 * t."OUT_2"  + 0.223432 * t."OUT_3"  + -0.101604 * t."OUT_4"  + 0.217612 * t."OUT_5"  + 0.075757 * t."OUT_6"  + 0.007538 * t."OUT_7"  + -0.071791 * t."OUT_8"  + 0.266297 * t."OUT_9" AS "OUT_91",
    0.296414 + 0.114114 * t."OUT_0"  + 0.265026 * t."OUT_1"  + 0.022022 * t."OUT_2"  + -0.044962 * t."OUT_3"  + 0.314752 * t."OUT_4"  + -0.067359 * t."OUT_5"  + 0.265469 * t."OUT_6"  + -0.128009 * t."OUT_7"  + -0.043823 * t."OUT_8"  + 0.235034 * t."OUT_9" AS "OUT_92",
    -0.098516 + -0.161198 * t."OUT_0"  + -0.243740 * t."OUT_1"  + -0.031717 * t."OUT_2"  + 0.138665 * t."OUT_3"  + -0.286984 * t."OUT_4"  + -0.161738 * t."OUT_5"  + -0.194656 * t."OUT_6"  + -0.297164 * t."OUT_7"  + -0.245889 * t."OUT_8"  + -0.089131 * t."OUT_9" AS "OUT_93",
    -0.070205 + -0.159070 * t."OUT_0"  + -0.078832 * t."OUT_1"  + -0.272839 * t."OUT_2"  + -0.197497 * t."OUT_3"  + -0.170277 * t."OUT_4"  + 0.084401 * t."OUT_5"  + -0.058802 * t."OUT_6"  + -0.315601 * t."OUT_7"  + -0.155737 * t."OUT_8"  + -0.271154 * t."OUT_9" AS "OUT_94",
    -0.014757 + -0.092413 * t."OUT_0"  + 0.306662 * t."OUT_1"  + 0.173219 * t."OUT_2"  + 0.238550 * t."OUT_3"  + 0.327626 * t."OUT_4"  + 0.350599 * t."OUT_5"  + 0.108417 * t."OUT_6"  + 0.342937 * t."OUT_7"  + 0.043630 * t."OUT_8"  + -0.030708 * t."OUT_9" AS "OUT_95",
    0.093737 + 0.157079 * t."OUT_0"  + -0.134103 * t."OUT_1"  + -0.143550 * t."OUT_2"  + -0.095386 * t."OUT_3"  + -0.155604 * t."OUT_4"  + 0.036565 * t."OUT_5"  + -0.079867 * t."OUT_6"  + 0.278666 * t."OUT_7"  + 0.204713 * t."OUT_8"  + 0.223594 * t."OUT_9" AS "OUT_96",
    0.095901 + -0.030434 * t."OUT_0"  + -0.087279 * t."OUT_1"  + 0.170632 * t."OUT_2"  + -0.018162 * t."OUT_3"  + 0.244419 * t."OUT_4"  + 0.168076 * t."OUT_5"  + 0.179465 * t."OUT_6"  + 0.263052 * t."OUT_7"  + 0.107842 * t."OUT_8"  + 0.238992 * t."OUT_9" AS "OUT_97",
    0.324776 + -0.199872 * t."OUT_0"  + -0.238891 * t."OUT_1"  + -0.100668 * t."OUT_2"  + 0.087120 * t."OUT_3"  + -0.119693 * t."OUT_4"  + -0.184420 * t."OUT_5"  + -0.235442 * t."OUT_6"  + 0.105027 * t."OUT_7"  + 0.102205 * t."OUT_8"  + -0.096761 * t."OUT_9" AS "OUT_98",
    0.216633 + 0.055888 * t."OUT_0"  + -0.018263 * t."OUT_1"  + 0.106815 * t."OUT_2"  + -0.038479 * t."OUT_3"  + 0.286029 * t."OUT_4"  + 0.042995 * t."OUT_5"  + 0.281922 * t."OUT_6"  + 0.198568 * t."OUT_7"  + 0.146266 * t."OUT_8"  + 0.045551 * t."OUT_9" AS "OUT_99"
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
    0.062507 + 0.321184 * t."OUT_0"  + -0.163457 * t."OUT_1"  + -0.327067 * t."OUT_2"  + 0.186026 * t."OUT_3"  + -0.026820 * t."OUT_4"  + -0.280689 * t."OUT_5"  + -0.216616 * t."OUT_6"  + 0.322678 * t."OUT_7"  + -0.125059 * t."OUT_8"  + 0.248972 * t."OUT_9"  + -0.157032 * t."OUT_10"  + 0.348320 * t."OUT_11"  + -0.105456 * t."OUT_12"  + -0.130302 * t."OUT_13"  + 0.263913 * t."OUT_14"  + 0.152442 * t."OUT_15"  + 0.276779 * t."OUT_16"  + -0.338436 * t."OUT_17"  + -0.135523 * t."OUT_18"  + -0.192954 * t."OUT_19"  + 0.091641 * t."OUT_20"  + -0.308147 * t."OUT_21"  + 0.169508 * t."OUT_22"  + 0.211500 * t."OUT_23"  + -0.236253 * t."OUT_24"  + -0.103291 * t."OUT_25"  + -0.137538 * t."OUT_26"  + -0.135103 * t."OUT_27"  + 0.253228 * t."OUT_28"  + -0.358436 * t."OUT_29"  + -0.324519 * t."OUT_30"  + 0.245994 * t."OUT_31"  + -0.142681 * t."OUT_32"  + -0.118066 * t."OUT_33"  + -0.197634 * t."OUT_34"  + -0.178351 * t."OUT_35"  + -0.113401 * t."OUT_36"  + 0.125436 * t."OUT_37"  + -0.290965 * t."OUT_38"  + -0.129335 * t."OUT_39"  + -0.262687 * t."OUT_40"  + -0.332276 * t."OUT_41"  + -0.004496 * t."OUT_42"  + 0.245814 * t."OUT_43"  + -0.203416 * t."OUT_44"  + -0.152222 * t."OUT_45"  + -0.138308 * t."OUT_46"  + -0.048372 * t."OUT_47"  + 0.344647 * t."OUT_48"  + 0.327197 * t."OUT_49"  + -0.141874 * t."OUT_50"  + -0.135468 * t."OUT_51"  + 0.352640 * t."OUT_52"  + -0.223831 * t."OUT_53"  + 0.214660 * t."OUT_54"  + 0.082504 * t."OUT_55"  + -0.135454 * t."OUT_56"  + -0.155298 * t."OUT_57"  + 0.196188 * t."OUT_58"  + -0.228024 * t."OUT_59"  + -0.176621 * t."OUT_60"  + 0.138340 * t."OUT_61"  + 0.005020 * t."OUT_62"  + 0.203822 * t."OUT_63"  + -0.170347 * t."OUT_64"  + -0.020878 * t."OUT_65"  + 0.133029 * t."OUT_66"  + 0.285888 * t."OUT_67"  + -0.024213 * t."OUT_68"  + -0.040106 * t."OUT_69"  + -0.206334 * t."OUT_70"  + 0.108273 * t."OUT_71"  + 0.321979 * t."OUT_72"  + -0.054656 * t."OUT_73"  + -0.027285 * t."OUT_74"  + -0.147805 * t."OUT_75"  + 0.281408 * t."OUT_76"  + -0.006249 * t."OUT_77"  + -0.106384 * t."OUT_78"  + 0.129691 * t."OUT_79"  + 0.327457 * t."OUT_80"  + 0.010433 * t."OUT_81"  + 0.156910 * t."OUT_82"  + 0.309408 * t."OUT_83"  + 0.254911 * t."OUT_84"  + -0.173208 * t."OUT_85"  + -0.123699 * t."OUT_86"  + -0.179010 * t."OUT_87"  + -0.189454 * t."OUT_88"  + -0.130568 * t."OUT_89"  + -0.110551 * t."OUT_90"  + 0.183385 * t."OUT_91"  + 0.335763 * t."OUT_92"  + -0.147200 * t."OUT_93"  + -0.235707 * t."OUT_94"  + 0.118594 * t."OUT_95"  + 0.053175 * t."OUT_96"  + 0.069289 * t."OUT_97"  + -0.187935 * t."OUT_98"  + 0.322241 * t."OUT_99" AS "OUT_0"
   FROM "Hidden_Layer_1_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t