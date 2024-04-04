WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9",
    t."X_10" AS "OUT_10",
    t."X_11" AS "OUT_11",
    t."X_12" AS "OUT_12",
    t."X_13" AS "OUT_13",
    t."X_14" AS "OUT_14",
    t."X_15" AS "OUT_15",
    t."X_16" AS "OUT_16",
    t."X_17" AS "OUT_17",
    t."X_18" AS "OUT_18",
    t."X_19" AS "OUT_19",
    t."X_20" AS "OUT_20",
    t."X_21" AS "OUT_21",
    t."X_22" AS "OUT_22",
    t."X_23" AS "OUT_23",
    t."X_24" AS "OUT_24",
    t."X_25" AS "OUT_25",
    t."X_26" AS "OUT_26",
    t."X_27" AS "OUT_27",
    t."X_28" AS "OUT_28",
    t."X_29" AS "OUT_29",
    t."X_30" AS "OUT_30",
    t."X_31" AS "OUT_31",
    t."X_32" AS "OUT_32",
    t."X_33" AS "OUT_33",
    t."X_34" AS "OUT_34",
    t."X_35" AS "OUT_35",
    t."X_36" AS "OUT_36",
    t."X_37" AS "OUT_37",
    t."X_38" AS "OUT_38",
    t."X_39" AS "OUT_39",
    t."X_40" AS "OUT_40",
    t."X_41" AS "OUT_41",
    t."X_42" AS "OUT_42",
    t."X_43" AS "OUT_43",
    t."X_44" AS "OUT_44",
    t."X_45" AS "OUT_45",
    t."X_46" AS "OUT_46",
    t."X_47" AS "OUT_47",
    t."X_48" AS "OUT_48",
    t."X_49" AS "OUT_49",
    t."X_50" AS "OUT_50",
    t."X_51" AS "OUT_51",
    t."X_52" AS "OUT_52"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.147075 + -0.027975 * t."OUT_0"  + 0.059677 * t."OUT_1"  + 0.246519 * t."OUT_2"  + 0.292187 * t."OUT_3"  + 0.169565 * t."OUT_4"  + 0.140561 * t."OUT_5"  + -0.064454 * t."OUT_6"  + -0.023846 * t."OUT_7"  + -0.099109 * t."OUT_8"  + -0.186334 * t."OUT_9"  + -0.203300 * t."OUT_10"  + -0.174237 * t."OUT_11"  + 0.188604 * t."OUT_12"  + 0.164659 * t."OUT_13"  + 0.096078 * t."OUT_14"  + -0.248130 * t."OUT_15"  + -0.246825 * t."OUT_16"  + 0.289746 * t."OUT_17"  + -0.011693 * t."OUT_18"  + 0.146092 * t."OUT_19"  + 0.136532 * t."OUT_20"  + -0.257860 * t."OUT_21"  + -0.208461 * t."OUT_22"  + 0.013506 * t."OUT_23"  + 0.108101 * t."OUT_24"  + 0.133618 * t."OUT_25"  + 0.184078 * t."OUT_26"  + -0.137864 * t."OUT_27"  + 0.159477 * t."OUT_28"  + 0.053480 * t."OUT_29"  + 0.170687 * t."OUT_30"  + -0.177278 * t."OUT_31"  + 0.148238 * t."OUT_32"  + 0.263804 * t."OUT_33"  + -0.218165 * t."OUT_34"  + -0.182797 * t."OUT_35"  + -0.183493 * t."OUT_36"  + -0.051014 * t."OUT_37"  + -0.053462 * t."OUT_38"  + -0.245871 * t."OUT_39"  + 0.111946 * t."OUT_40"  + -0.148562 * t."OUT_41"  + -0.244992 * t."OUT_42"  + 0.151035 * t."OUT_43"  + 0.241376 * t."OUT_44"  + 0.176380 * t."OUT_45"  + 0.114931 * t."OUT_46"  + 0.234257 * t."OUT_47"  + 0.198215 * t."OUT_48"  + -0.268803 * t."OUT_49"  + -0.130996 * t."OUT_50"  + 0.275857 * t."OUT_51"  + 0.033213 * t."OUT_52" AS "OUT_0",
    -0.140621 + 0.164775 * t."OUT_0"  + -0.234252 * t."OUT_1"  + 0.062963 * t."OUT_2"  + -0.295941 * t."OUT_3"  + -0.145871 * t."OUT_4"  + -0.296658 * t."OUT_5"  + -0.264532 * t."OUT_6"  + 0.002676 * t."OUT_7"  + 0.116978 * t."OUT_8"  + 0.253993 * t."OUT_9"  + 0.178506 * t."OUT_10"  + -0.256665 * t."OUT_11"  + 0.276387 * t."OUT_12"  + 0.255357 * t."OUT_13"  + 0.022412 * t."OUT_14"  + 0.050459 * t."OUT_15"  + 0.220238 * t."OUT_16"  + 0.304672 * t."OUT_17"  + 0.303135 * t."OUT_18"  + 0.162363 * t."OUT_19"  + 0.223684 * t."OUT_20"  + 0.162128 * t."OUT_21"  + -0.276662 * t."OUT_22"  + -0.066153 * t."OUT_23"  + -0.098691 * t."OUT_24"  + -0.204491 * t."OUT_25"  + 0.269576 * t."OUT_26"  + 0.040632 * t."OUT_27"  + -0.007432 * t."OUT_28"  + -0.111541 * t."OUT_29"  + 0.179346 * t."OUT_30"  + -0.007480 * t."OUT_31"  + -0.281564 * t."OUT_32"  + -0.185125 * t."OUT_33"  + -0.224261 * t."OUT_34"  + -0.209154 * t."OUT_35"  + -0.266003 * t."OUT_36"  + 0.097111 * t."OUT_37"  + 0.264414 * t."OUT_38"  + -0.157646 * t."OUT_39"  + -0.171985 * t."OUT_40"  + 0.163386 * t."OUT_41"  + 0.189064 * t."OUT_42"  + 0.141494 * t."OUT_43"  + 0.269670 * t."OUT_44"  + 0.033396 * t."OUT_45"  + 0.133158 * t."OUT_46"  + 0.154614 * t."OUT_47"  + -0.168269 * t."OUT_48"  + -0.177715 * t."OUT_49"  + -0.008578 * t."OUT_50"  + 0.055201 * t."OUT_51"  + 0.149893 * t."OUT_52" AS "OUT_1",
    -0.092751 + -0.132422 * t."OUT_0"  + 0.094041 * t."OUT_1"  + 0.239703 * t."OUT_2"  + -0.135918 * t."OUT_3"  + -0.165113 * t."OUT_4"  + -0.051730 * t."OUT_5"  + -0.166123 * t."OUT_6"  + -0.260318 * t."OUT_7"  + -0.065281 * t."OUT_8"  + -0.207751 * t."OUT_9"  + 0.076419 * t."OUT_10"  + 0.108536 * t."OUT_11"  + 0.217031 * t."OUT_12"  + -0.166564 * t."OUT_13"  + 0.041178 * t."OUT_14"  + 0.132895 * t."OUT_15"  + -0.153895 * t."OUT_16"  + -0.042764 * t."OUT_17"  + -0.204335 * t."OUT_18"  + 0.255702 * t."OUT_19"  + 0.207888 * t."OUT_20"  + 0.003598 * t."OUT_21"  + -0.118669 * t."OUT_22"  + -0.075136 * t."OUT_23"  + -0.125914 * t."OUT_24"  + -0.106632 * t."OUT_25"  + 0.205967 * t."OUT_26"  + 0.090639 * t."OUT_27"  + 0.159794 * t."OUT_28"  + -0.088699 * t."OUT_29"  + -0.194758 * t."OUT_30"  + 0.060937 * t."OUT_31"  + -0.261484 * t."OUT_32"  + -0.121873 * t."OUT_33"  + -0.107727 * t."OUT_34"  + -0.257041 * t."OUT_35"  + 0.064418 * t."OUT_36"  + 0.038349 * t."OUT_37"  + 0.292939 * t."OUT_38"  + 0.135249 * t."OUT_39"  + 0.268518 * t."OUT_40"  + -0.156116 * t."OUT_41"  + 0.067425 * t."OUT_42"  + 0.009109 * t."OUT_43"  + -0.131268 * t."OUT_44"  + -0.006668 * t."OUT_45"  + -0.198741 * t."OUT_46"  + -0.094060 * t."OUT_47"  + 0.042322 * t."OUT_48"  + -0.155790 * t."OUT_49"  + -0.235590 * t."OUT_50"  + 0.013469 * t."OUT_51"  + 0.023677 * t."OUT_52" AS "OUT_2",
    -0.280352 + -0.026167 * t."OUT_0"  + 0.011025 * t."OUT_1"  + -0.050955 * t."OUT_2"  + 0.124288 * t."OUT_3"  + -0.247306 * t."OUT_4"  + 0.005611 * t."OUT_5"  + 0.235373 * t."OUT_6"  + 0.018501 * t."OUT_7"  + 0.134479 * t."OUT_8"  + 0.174359 * t."OUT_9"  + 0.264498 * t."OUT_10"  + 0.117691 * t."OUT_11"  + -0.214205 * t."OUT_12"  + 0.148500 * t."OUT_13"  + 0.181870 * t."OUT_14"  + 0.165917 * t."OUT_15"  + -0.301345 * t."OUT_16"  + -0.259021 * t."OUT_17"  + 0.129125 * t."OUT_18"  + -0.163860 * t."OUT_19"  + -0.039108 * t."OUT_20"  + -0.061473 * t."OUT_21"  + 0.262326 * t."OUT_22"  + -0.260423 * t."OUT_23"  + -0.065925 * t."OUT_24"  + 0.164438 * t."OUT_25"  + 0.184904 * t."OUT_26"  + 0.195251 * t."OUT_27"  + 0.225952 * t."OUT_28"  + -0.160767 * t."OUT_29"  + 0.101282 * t."OUT_30"  + -0.129854 * t."OUT_31"  + 0.217096 * t."OUT_32"  + -0.215386 * t."OUT_33"  + -0.084322 * t."OUT_34"  + 0.052587 * t."OUT_35"  + 0.116215 * t."OUT_36"  + -0.210081 * t."OUT_37"  + -0.061158 * t."OUT_38"  + -0.238596 * t."OUT_39"  + 0.281515 * t."OUT_40"  + 0.237240 * t."OUT_41"  + -0.182068 * t."OUT_42"  + -0.137339 * t."OUT_43"  + 0.037619 * t."OUT_44"  + 0.295451 * t."OUT_45"  + -0.044066 * t."OUT_46"  + -0.085688 * t."OUT_47"  + 0.234802 * t."OUT_48"  + -0.168998 * t."OUT_49"  + 0.198434 * t."OUT_50"  + 0.126897 * t."OUT_51"  + 0.194682 * t."OUT_52" AS "OUT_3"
 FROM "Input_Layer_BA" AS t
),
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3"
 FROM "Hidden_Layer_1_BA" AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    0.183992 + -0.351688 * t."OUT_0"  + -0.168455 * t."OUT_1"  + 0.039384 * t."OUT_2"  + -0.074066 * t."OUT_3" AS "OUT_0",
    0.280832 + -0.392183 * t."OUT_0"  + 0.260542 * t."OUT_1"  + 0.674141 * t."OUT_2"  + -0.023479 * t."OUT_3" AS "OUT_1",
    -0.606234 + 0.166213 * t."OUT_0"  + 0.343026 * t."OUT_1"  + 0.411246 * t."OUT_2"  + 0.285810 * t."OUT_3" AS "OUT_2",
    -0.101567 + -0.102255 * t."OUT_0"  + 0.292391 * t."OUT_1"  + 0.162313 * t."OUT_2"  + 0.565390 * t."OUT_3" AS "OUT_3",
    0.444955 + -0.270127 * t."OUT_0"  + -0.601053 * t."OUT_1"  + -0.211124 * t."OUT_2"  + 0.129466 * t."OUT_3" AS "OUT_4",
    -0.258091 + -0.562434 * t."OUT_0"  + 0.543116 * t."OUT_1"  + 0.595168 * t."OUT_2"  + -0.099088 * t."OUT_3" AS "OUT_5",
    -0.026852 + 0.590039 * t."OUT_0"  + 0.616443 * t."OUT_1"  + -0.670817 * t."OUT_2"  + -0.468854 * t."OUT_3" AS "OUT_6",
    -0.101051 + -0.242095 * t."OUT_0"  + 0.544352 * t."OUT_1"  + -0.625498 * t."OUT_2"  + -0.398339 * t."OUT_3" AS "OUT_7"
 FROM "Hidden_Layer_1_Activation" AS t
),
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7"
 FROM "Hidden_Layer_2_BA" AS t
),
"Hidden_Layer_3_BA" AS
 ( SELECT t."index" as "index",
    -0.438827 + 0.201575 * t."OUT_0"  + 0.476255 * t."OUT_1"  + 0.254880 * t."OUT_2"  + 0.158567 * t."OUT_3"  + 0.276717 * t."OUT_4"  + 0.416897 * t."OUT_5"  + -0.202018 * t."OUT_6"  + 0.023621 * t."OUT_7" AS "OUT_0",
    0.243817 + -0.303150 * t."OUT_0"  + 0.438572 * t."OUT_1"  + 0.134518 * t."OUT_2"  + 0.369380 * t."OUT_3"  + 0.620426 * t."OUT_4"  + -0.654460 * t."OUT_5"  + 0.200987 * t."OUT_6"  + 0.007884 * t."OUT_7" AS "OUT_1",
    -0.024492 + -0.003050 * t."OUT_0"  + 0.226148 * t."OUT_1"  + 0.655269 * t."OUT_2"  + 0.254314 * t."OUT_3"  + -0.023497 * t."OUT_4"  + 0.252176 * t."OUT_5"  + -0.444940 * t."OUT_6"  + 0.322998 * t."OUT_7" AS "OUT_2",
    -0.213543 + 0.413553 * t."OUT_0"  + -0.467200 * t."OUT_1"  + 0.320763 * t."OUT_2"  + 0.585842 * t."OUT_3"  + 0.216418 * t."OUT_4"  + 0.559911 * t."OUT_5"  + 0.156667 * t."OUT_6"  + -0.586252 * t."OUT_7" AS "OUT_3",
    -0.135443 + 0.169687 * t."OUT_0"  + -0.039779 * t."OUT_1"  + 0.617411 * t."OUT_2"  + -0.320265 * t."OUT_3"  + 0.348860 * t."OUT_4"  + 0.149718 * t."OUT_5"  + -0.611274 * t."OUT_6"  + -0.442030 * t."OUT_7" AS "OUT_4",
    0.391567 + 0.390926 * t."OUT_0"  + -0.466472 * t."OUT_1"  + -0.365505 * t."OUT_2"  + 0.415490 * t."OUT_3"  + 0.305875 * t."OUT_4"  + 0.507181 * t."OUT_5"  + 0.350524 * t."OUT_6"  + -0.204419 * t."OUT_7" AS "OUT_5"
 FROM "Hidden_Layer_2_Activation" AS t
),
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5"
 FROM "Hidden_Layer_3_BA" AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    0.244772 + 0.515106 * t."OUT_0"  + -0.370475 * t."OUT_1"  + 0.503377 * t."OUT_2"  + -0.773598 * t."OUT_3"  + 0.781754 * t."OUT_4"  + -0.193322 * t."OUT_5" AS "OUT_0"
 FROM "Hidden_Layer_3_Activation" AS t
),
model_scores_cte AS 
( SELECT t."index" AS "index",
   -0.5 * t."OUT_0" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.5 * t."OUT_0" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "Output_Layer_BA" AS t ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte