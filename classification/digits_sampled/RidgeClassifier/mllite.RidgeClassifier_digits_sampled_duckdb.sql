WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "digits_sampled" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -11.761555 + 0.000000 * t."X_0" + 17.038073 * t."X_1" + 0.063308 * t."X_2" + 1.676873 * t."X_3" + -1.001708 * t."X_4" + 0.298619 * t."X_5" + 0.592740 * t."X_6" + 2.880158 * t."X_7" + -2.398916 * t."X_8" + -4.229966 * t."X_9" + -1.155847 * t."X_10" + -1.500979 * t."X_11" + -0.062713 * t."X_12" + 0.392044 * t."X_13" + -1.403713 * t."X_14" + 8.636227 * t."X_15" + 70.488998 * t."X_16" + 6.494555 * t."X_17" + 0.856118 * t."X_18" + 0.966528 * t."X_19" + -0.649252 * t."X_20" + 2.443914 * t."X_21" + 2.244230 * t."X_22" + -15.333779 * t."X_23" + 0.000000 * t."X_24" + 0.546852 * t."X_25" + -4.542064 * t."X_26" + 0.401638 * t."X_27" + 0.245521 * t."X_28" + -0.916263 * t."X_29" + -4.021573 * t."X_30" + -29.210783 * t."X_31" + 0.000000 * t."X_32" + -6.599211 * t."X_33" + 11.365876 * t."X_34" + -5.107734 * t."X_35" + 3.908751 * t."X_36" + -0.546067 * t."X_37" + 1.929004 * t."X_38" + 0.000000 * t."X_39" + 10.593268 * t."X_40" + 2.115614 * t."X_41" + -4.537715 * t."X_42" + 3.823381 * t."X_43" + -6.755991 * t."X_44" + -0.431621 * t."X_45" + -2.453101 * t."X_46" + 8.210224 * t."X_47" + -4.692532 * t."X_48" + 2.345902 * t."X_49" + 0.701565 * t."X_50" + -1.500054 * t."X_51" + 2.674489 * t."X_52" + -1.847247 * t."X_53" + 1.166294 * t."X_54" + -3.311156 * t."X_55" + -22.890915 * t."X_56" + -10.424700 * t."X_57" + 0.051276 * t."X_58" + -0.436860 * t."X_59" + 4.435598 * t."X_60" + -2.355052 * t."X_61" + 0.714094 * t."X_62" + 1.691264 * t."X_63" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -33.240685 + 0.000000 * t."X_0" + 1.006953 * t."X_1" + -0.459814 * t."X_2" + 0.065981 * t."X_3" + -0.230058 * t."X_4" + 0.281213 * t."X_5" + 0.402907 * t."X_6" + -0.576131 * t."X_7" + 4.797276 * t."X_8" + 0.384862 * t."X_9" + 0.771761 * t."X_10" + -0.527813 * t."X_11" + 0.246871 * t."X_12" + -0.050954 * t."X_13" + -0.968276 * t."X_14" + 4.611667 * t."X_15" + -15.347345 * t."X_16" + -1.179402 * t."X_17" + 0.175458 * t."X_18" + -0.116616 * t."X_19" + -0.216184 * t."X_20" + 0.470508 * t."X_21" + 1.107756 * t."X_22" + -7.217177 * t."X_23" + 0.000000 * t."X_24" + 0.750389 * t."X_25" + -0.853148 * t."X_26" + -0.000788 * t."X_27" + 0.631254 * t."X_28" + -0.517574 * t."X_29" + -0.335932 * t."X_30" + 1.738208 * t."X_31" + 0.000000 * t."X_32" + -0.994249 * t."X_33" + 2.363883 * t."X_34" + -0.297628 * t."X_35" + -0.667228 * t."X_36" + 0.483138 * t."X_37" + 0.193717 * t."X_38" + 0.000000 * t."X_39" + -6.782173 * t."X_40" + 0.815381 * t."X_41" + -1.096139 * t."X_42" + 0.097366 * t."X_43" + 1.832005 * t."X_44" + -0.471401 * t."X_45" + 0.836183 * t."X_46" + -2.314542 * t."X_47" + 0.179265 * t."X_48" + -0.696414 * t."X_49" + 0.500692 * t."X_50" + 0.450281 * t."X_51" + -0.552560 * t."X_52" + 0.533426 * t."X_53" + -0.513960 * t."X_54" + -1.602365 * t."X_55" + 10.712519 * t."X_56" + 1.963787 * t."X_57" + 0.524640 * t."X_58" + -0.468487 * t."X_59" + 1.171697 * t."X_60" + -0.227835 * t."X_61" + 0.495458 * t."X_62" + 0.139042 * t."X_63" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -12.417062 + 0.000000 * t."X_0" + -28.687155 * t."X_1" + -0.519140 * t."X_2" + -4.258023 * t."X_3" + -0.354594 * t."X_4" + 1.831677 * t."X_5" + 0.012288 * t."X_6" + -1.678334 * t."X_7" + -19.717110 * t."X_8" + 2.325695 * t."X_9" + 0.749230 * t."X_10" + 1.464521 * t."X_11" + -1.624213 * t."X_12" + -0.291738 * t."X_13" + -0.150507 * t."X_14" + -4.930980 * t."X_15" + -1.015934 * t."X_16" + -6.273962 * t."X_17" + -1.930240 * t."X_18" + -1.771082 * t."X_19" + 2.405421 * t."X_20" + -4.073661 * t."X_21" + -6.183238 * t."X_22" + 23.825720 * t."X_23" + 0.000000 * t."X_24" + -2.440668 * t."X_25" + 8.154740 * t."X_26" + -1.042446 * t."X_27" + -1.509246 * t."X_28" + 2.513980 * t."X_29" + 8.171317 * t."X_30" + 54.693497 * t."X_31" + 0.000000 * t."X_32" + 14.230623 * t."X_33" + -23.536432 * t."X_34" + 9.314583 * t."X_35" + -3.529241 * t."X_36" + -0.484624 * t."X_37" + -2.011210 * t."X_38" + 0.000000 * t."X_39" + 4.749253 * t."X_40" + -8.988228 * t."X_41" + 11.968040 * t."X_42" + -8.657941 * t."X_43" + 5.777393 * t."X_44" + 3.280016 * t."X_45" + 0.089471 * t."X_46" + -6.321944 * t."X_47" + 7.742690 * t."X_48" + -2.945636 * t."X_49" + -6.380808 * t."X_50" + 10.037385 * t."X_51" + -3.570540 * t."X_52" + -2.217142 * t."X_53" + -0.645291 * t."X_54" + 13.764523 * t."X_55" + 21.718227 * t."X_56" + -1.126478 * t."X_57" + 7.377069 * t."X_58" + -1.832630 * t."X_59" + 4.818498 * t."X_60" + 2.157287 * t."X_61" + -2.897522 * t."X_62" + -8.359485 * t."X_63" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -1.657901 + 0.000000 * t."X_0" + -10.803262 * t."X_1" + -0.327484 * t."X_2" + -1.138711 * t."X_3" + -0.174581 * t."X_4" + 0.881736 * t."X_5" + -0.210084 * t."X_6" + -1.069656 * t."X_7" + -7.635476 * t."X_8" + 1.390726 * t."X_9" + 0.424048 * t."X_10" + 1.097500 * t."X_11" + -0.454192 * t."X_12" + 0.071898 * t."X_13" + -0.146408 * t."X_14" + -1.475029 * t."X_15" + 5.177028 * t."X_16" + -3.489472 * t."X_17" + -0.852929 * t."X_18" + -0.798841 * t."X_19" + 1.043743 * t."X_20" + -1.648406 * t."X_21" + -2.569228 * t."X_22" + 8.052110 * t."X_23" + 0.000000 * t."X_24" + -0.394401 * t."X_25" + 3.275383 * t."X_26" + -0.151793 * t."X_27" + -1.020674 * t."X_28" + 0.996977 * t."X_29" + 3.216336 * t."X_30" + 34.016392 * t."X_31" + 0.000000 * t."X_32" + 4.955078 * t."X_33" + -9.353994 * t."X_34" + 3.638122 * t."X_35" + -1.044934 * t."X_36" + -0.249940 * t."X_37" + -0.841256 * t."X_38" + 0.000000 * t."X_39" + 0.594385 * t."X_40" + -2.952076 * t."X_41" + 4.536323 * t."X_42" + -3.178093 * t."X_43" + 2.111053 * t."X_44" + 1.045099 * t."X_45" + -0.020551 * t."X_46" + -1.133453 * t."X_47" + 3.948652 * t."X_48" + -1.824976 * t."X_49" + -2.252609 * t."X_50" + 2.669362 * t."X_51" + -1.488969 * t."X_52" + -0.666928 * t."X_53" + 0.106644 * t."X_54" + 4.364180 * t."X_55" + 11.326234 * t."X_56" + 0.677046 * t."X_57" + 2.551341 * t."X_58" + -1.017562 * t."X_59" + 2.155800 * t."X_60" + -0.072274 * t."X_61" + -0.631608 * t."X_62" + -2.573679 * t."X_63" AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   -81.557693 + 0.000000 * t."X_0" + 24.779814 * t."X_1" + 0.006676 * t."X_2" + 3.845978 * t."X_3" + -1.347022 * t."X_4" + 0.105229 * t."X_5" + 1.192432 * t."X_6" + -0.288692 * t."X_7" + -0.686600 * t."X_8" + 2.051065 * t."X_9" + 0.238165 * t."X_10" + -2.059499 * t."X_11" + 1.348638 * t."X_12" + 1.130605 * t."X_13" + -3.292881 * t."X_14" + 21.888699 * t."X_15" + 26.601248 * t."X_16" + 1.520073 * t."X_17" + 2.226675 * t."X_18" + 0.980782 * t."X_19" + -2.165892 * t."X_20" + 4.468010 * t."X_21" + 6.895844 * t."X_22" + -41.662663 * t."X_23" + 0.000000 * t."X_24" + 5.438670 * t."X_25" + -9.226850 * t."X_26" + 1.127552 * t."X_27" + 2.127948 * t."X_28" + -2.891215 * t."X_29" + -7.251714 * t."X_30" + -48.945679 * t."X_31" + 0.000000 * t."X_32" + -13.927600 * t."X_33" + 23.822283 * t."X_34" + -8.369513 * t."X_35" + 2.714122 * t."X_36" + 1.158548 * t."X_37" + 2.440271 * t."X_38" + 0.000000 * t."X_39" + -13.268591 * t."X_40" + 8.151030 * t."X_41" + -11.294948 * t."X_42" + 7.692587 * t."X_43" + -2.443985 * t."X_44" + -3.296395 * t."X_45" + 1.356898 * t."X_46" + 5.447518 * t."X_47" + -2.789897 * t."X_48" + 1.287252 * t."X_49" + 5.081385 * t."X_50" + -6.088082 * t."X_51" + 1.685440 * t."X_52" + 1.812840 * t."X_53" + -0.367895 * t."X_54" + -13.757484 * t."X_55" + -19.080008 * t."X_56" + -0.268459 * t."X_57" + -3.725063 * t."X_58" + -1.171561 * t."X_59" + 3.844713 * t."X_60" + -5.369618 * t."X_61" + 4.974285 * t."X_62" + 6.122820 * t."X_63" AS "Score_4",
   CAST(NULL AS FLOAT) AS "Proba_4",
   CAST(NULL AS FLOAT) AS "LogProba_4",
   47.615223 + 0.000000 * t."X_0" + 11.777486 * t."X_1" + 3.728154 * t."X_2" + 1.657614 * t."X_3" + 1.603735 * t."X_4" + -2.270703 * t."X_5" + -1.548146 * t."X_6" + 1.785358 * t."X_7" + -0.756620 * t."X_8" + -4.617629 * t."X_9" + -1.605088 * t."X_10" + 0.645490 * t."X_11" + 0.292282 * t."X_12" + -0.493537 * t."X_13" + 4.245262 * t."X_14" + -9.998311 * t."X_15" + -24.580072 * t."X_16" + 10.218519 * t."X_17" + -0.035968 * t."X_18" + 0.927086 * t."X_19" + -1.409690 * t."X_20" + 0.343847 * t."X_21" + -0.110986 * t."X_22" + 10.376035 * t."X_23" + 0.000000 * t."X_24" + -3.446873 * t."X_25" + -2.187566 * t."X_26" + -0.384463 * t."X_27" + 1.345681 * t."X_28" + -0.100809 * t."X_29" + -2.770942 * t."X_30" + -46.754356 * t."X_31" + 0.000000 * t."X_32" + -2.655576 * t."X_33" + 6.928764 * t."X_34" + -3.208200 * t."X_35" + 0.239458 * t."X_36" + 0.431949 * t."X_37" + -0.152568 * t."X_38" + 0.000000 * t."X_39" + 9.002711 * t."X_40" + 1.454252 * t."X_41" + -3.679439 * t."X_42" + 3.162922 * t."X_43" + -1.303652 * t."X_44" + -1.164899 * t."X_45" + 0.982777 * t."X_46" + -3.488394 * t."X_47" + -5.750924 * t."X_48" + 4.018114 * t."X_49" + 3.929543 * t."X_50" + -5.941720 * t."X_51" + 2.234072 * t."X_52" + 1.459684 * t."X_53" + -0.766627 * t."X_54" + -3.124164 * t."X_55" + 1.139865 * t."X_56" + -1.981503 * t."X_57" + -8.176326 * t."X_58" + 3.086993 * t."X_59" + -9.212226 * t."X_60" + 2.729766 * t."X_61" + -0.070929 * t."X_62" + 1.755529 * t."X_63" AS "Score_5",
   CAST(NULL AS FLOAT) AS "Proba_5",
   CAST(NULL AS FLOAT) AS "LogProba_5",
   -85.516075 + 0.000000 * t."X_0" + 20.525831 * t."X_1" + 0.768483 * t."X_2" + 1.675705 * t."X_3" + -1.928370 * t."X_4" + 0.671914 * t."X_5" + 2.405414 * t."X_6" + 1.106210 * t."X_7" + -1.255381 * t."X_8" + 1.478502 * t."X_9" + -0.749592 * t."X_10" + -3.517805 * t."X_11" + 0.485218 * t."X_12" + 1.020954 * t."X_13" + -4.722132 * t."X_14" + 23.637751 * t."X_15" + 64.808891 * t."X_16" + 1.585745 * t."X_17" + 2.836415 * t."X_18" + 1.383852 * t."X_19" + -1.235314 * t."X_20" + 4.768442 * t."X_21" + 6.902974 * t."X_22" + -42.629665 * t."X_23" + 0.000000 * t."X_24" + 4.403095 * t."X_25" + -8.819465 * t."X_26" + 0.896894 * t."X_27" + 1.228590 * t."X_28" + -2.431298 * t."X_29" + -6.873996 * t."X_30" + -44.134483 * t."X_31" + 0.000000 * t."X_32" + -12.902884 * t."X_33" + 22.414904 * t."X_34" + -7.521366 * t."X_35" + 4.481180 * t."X_36" + -0.097136 * t."X_37" + 3.512037 * t."X_38" + 0.000000 * t."X_39" + -7.284813 * t."X_40" + 7.546561 * t."X_41" + -9.991037 * t."X_42" + 6.076154 * t."X_43" + -6.765594 * t."X_44" + -1.404158 * t."X_45" + -1.735516 * t."X_46" + 8.841200 * t."X_47" + -5.780652 * t."X_48" + 0.914317 * t."X_49" + 1.891516 * t."X_50" + -0.700444 * t."X_51" + 1.841138 * t."X_52" + -0.923344 * t."X_53" + 0.227644 * t."X_54" + -9.578220 * t."X_55" + -10.183450 * t."X_56" + -7.066875 * t."X_57" + -0.529255 * t."X_58" + -0.836026 * t."X_59" + 8.324411 * t."X_60" + -4.498354 * t."X_61" + 2.996915 * t."X_62" + 4.081480 * t."X_63" AS "Score_6",
   CAST(NULL AS FLOAT) AS "Proba_6",
   CAST(NULL AS FLOAT) AS "LogProba_6",
   183.602814 + 0.000000 * t."X_0" + -15.143602 * t."X_1" + 2.820621 * t."X_2" + -1.908832 * t."X_3" + 5.096653 * t."X_4" + -5.857762 * t."X_5" + -0.435551 * t."X_6" + -1.278881 * t."X_7" + 73.405052 * t."X_8" + 7.023146 * t."X_9" + -1.208290 * t."X_10" + 0.132410 * t."X_11" + 0.741568 * t."X_12" + -1.794101 * t."X_13" + 5.319598 * t."X_14" + -36.181320 * t."X_15" + -180.511963 * t."X_16" + -10.591359 * t."X_17" + 2.100835 * t."X_18" + -0.597754 * t."X_19" + -0.282597 * t."X_20" + -1.011393 * t."X_21" + 2.596508 * t."X_22" + 29.270275 * t."X_23" + 0.000000 * t."X_24" + 3.188286 * t."X_25" + 2.751214 * t."X_26" + 1.765209 * t."X_27" + -0.458885 * t."X_28" + -1.097616 * t."X_29" + 0.226291 * t."X_30" + -40.977295 * t."X_31" + 0.000000 * t."X_32" + 0.876751 * t."X_33" + -4.491921 * t."X_34" + 0.062216 * t."X_35" + -3.573064 * t."X_36" + -0.070755 * t."X_37" + -1.626753 * t."X_38" + 0.000000 * t."X_39" + -7.957535 * t."X_40" + 4.198847 * t."X_41" + -0.152504 * t."X_42" + -0.096555 * t."X_43" + 1.915820 * t."X_44" + -0.540423 * t."X_45" + 1.205609 * t."X_46" + -9.190059 * t."X_47" + -4.965666 * t."X_48" + 0.498512 * t."X_49" + 2.238774 * t."X_50" + -4.693928 * t."X_51" + 1.539379 * t."X_52" + 5.299373 * t."X_53" + -0.010189 * t."X_54" + -3.777447 * t."X_55" + 1.815915 * t."X_56" + 25.844706 * t."X_57" + -9.922654 * t."X_58" + 6.874674 * t."X_59" + -25.784569 * t."X_60" + 9.377006 * t."X_61" + -2.840093 * t."X_62" + 5.322987 * t."X_63" AS "Score_7",
   CAST(NULL AS FLOAT) AS "Proba_7",
   CAST(NULL AS FLOAT) AS "LogProba_7",
   -21.139656 + 0.000000 * t."X_0" + -4.846126 * t."X_1" + -1.451196 * t."X_2" + -0.666102 * t."X_3" + -0.568624 * t."X_4" + 1.144732 * t."X_5" + -0.654498 * t."X_6" + -1.066250 * t."X_7" + -19.741827 * t."X_8" + -1.464196 * t."X_9" + 0.966434 * t."X_10" + 1.093127 * t."X_11" + -0.122945 * t."X_12" + 0.237683 * t."X_13" + 0.228705 * t."X_14" + 0.953537 * t."X_15" + 9.477331 * t."X_16" + 1.598686 * t."X_17" + -1.534882 * t."X_18" + -0.011762 * t."X_19" + 0.423216 * t."X_20" + -1.707415 * t."X_21" + -2.929615 * t."X_22" + 8.844467 * t."X_23" + 0.000000 * t."X_24" + -2.854732 * t."X_25" + 2.572268 * t."X_26" + -1.047158 * t."X_27" + -0.213594 * t."X_28" + 1.416742 * t."X_29" + 2.372361 * t."X_30" + 33.400314 * t."X_31" + 0.000000 * t."X_32" + 5.123003 * t."X_33" + -7.332716 * t."X_34" + 3.650550 * t."X_35" + -1.397751 * t."X_36" + 0.261840 * t."X_37" + -1.151097 * t."X_38" + 0.000000 * t."X_39" + -0.415306 * t."X_40" + -3.185157 * t."X_41" + 3.431582 * t."X_42" + -2.423020 * t."X_43" + 3.069843 * t."X_44" + 0.485793 * t."X_45" + 0.841904 * t."X_46" + -1.001828 * t."X_47" + 3.400329 * t."X_48" + -1.016114 * t."X_49" + -0.839361 * t."X_50" + 1.619077 * t."X_51" + -2.080258 * t."X_52" + -0.164002 * t."X_53" + -0.322753 * t."X_54" + 4.427230 * t."X_55" + 7.301881 * t."X_56" + -1.550036 * t."X_57" + 2.619192 * t."X_58" + -1.024332 * t."X_59" + 3.091218 * t."X_60" + -1.295403 * t."X_61" + 0.017018 * t."X_62" + -2.330773 * t."X_63" AS "Score_8",
   CAST(NULL AS FLOAT) AS "Proba_8",
   CAST(NULL AS FLOAT) AS "LogProba_8",
   8.072469 + 0.000000 * t."X_0" + -15.647980 * t."X_1" + -4.629609 * t."X_2" + -0.950482 * t."X_3" + -1.095429 * t."X_4" + 2.913346 * t."X_5" + -1.757502 * t."X_6" + 0.186220 * t."X_7" + -26.010435 * t."X_8" + -4.342220 * t."X_9" + 1.569179 * t."X_10" + 3.173050 * t."X_11" + -0.850513 * t."X_12" + -0.222856 * t."X_13" + 0.890354 * t."X_14" + -7.142252 * t."X_15" + 44.901867 * t."X_16" + 0.116643 * t."X_17" + -3.841485 * t."X_18" + -0.962192 * t."X_19" + 2.086547 * t."X_20" + -4.053846 * t."X_21" + -7.954248 * t."X_22" + 26.474699 * t."X_23" + 0.000000 * t."X_24" + -5.190635 * t."X_25" + 8.875486 * t."X_26" + -1.564647 * t."X_27" + -2.376592 * t."X_28" + 3.027078 * t."X_29" + 7.267848 * t."X_30" + 86.174187 * t."X_31" + 0.000000 * t."X_32" + 11.894078 * t."X_33" + -22.180641 * t."X_34" + 7.838970 * t."X_35" + -1.131292 * t."X_36" + -0.886953 * t."X_37" + -2.292147 * t."X_38" + 0.000000 * t."X_39" + 10.768824 * t."X_40" + -9.156236 * t."X_41" + 10.815844 * t."X_42" + -6.496803 * t."X_43" + 2.563114 * t."X_44" + 2.497988 * t."X_45" + -1.103671 * t."X_46" + 0.951270 * t."X_47" + 8.708738 * t."X_48" + -2.580953 * t."X_49" + -4.870695 * t."X_50" + 4.148122 * t."X_51" + -2.282194 * t."X_52" + -3.286660 * t."X_53" + 1.126132 * t."X_54" + 12.594910 * t."X_55" + -1.860259 * t."X_56" + -6.067505 * t."X_57" + 9.229781 * t."X_58" + -3.174211 * t."X_59" + 7.154866 * t."X_60" + -0.445525 * t."X_61" + -2.757620 * t."X_62" + -5.849192 * t."X_63" AS "Score_9",
   CAST(NULL AS FLOAT) AS "Proba_9",
   CAST(NULL AS FLOAT) AS "LogProba_9"
  FROM model_input AS t
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   t."Score_4" AS "Score_4",
   t."Proba_4" AS "Proba_4",
   t."LogProba_4" AS "LogProba_4",
   t."Score_5" AS "Score_5",
   t."Proba_5" AS "Proba_5",
   t."LogProba_5" AS "LogProba_5",
   t."Score_6" AS "Score_6",
   t."Proba_6" AS "Proba_6",
   t."LogProba_6" AS "LogProba_6",
   t."Score_7" AS "Score_7",
   t."Proba_7" AS "Proba_7",
   t."LogProba_7" AS "LogProba_7",
   t."Score_8" AS "Score_8",
   t."Proba_8" AS "Proba_8",
   t."LogProba_8" AS "LogProba_8",
   t."Score_9" AS "Score_9",
   t."Proba_9" AS "Proba_9",
   t."LogProba_9" AS "LogProba_9",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Greatest_Score"
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
    t1."Proba_2" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_2" AS "Exp_Score_2",
    t1."Proba_3" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_3" AS "Exp_Score_3",
    t1."Proba_4" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    t1."Exp_Score_4" AS "Exp_Score_4",
    t1."Proba_5" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    t1."Exp_Score_5" AS "Exp_Score_5",
    t1."Proba_6" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    t1."Exp_Score_6" AS "Exp_Score_6",
    t1."Proba_7" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    t1."Exp_Score_7" AS "Exp_Score_7",
    t1."Proba_8" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    t1."Exp_Score_8" AS "Exp_Score_8",
    t1."Proba_9" AS "Proba_9",
    t1."Score_9" AS "Score_9",
    t1."Exp_Score_9" AS "Exp_Score_9",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" + t1."Exp_Score_8" + t1."Exp_Score_9" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        t."Proba_3" AS "Proba_3",
        t."Score_3" AS "Score_3",
        t."Proba_4" AS "Proba_4",
        t."Score_4" AS "Score_4",
        t."Proba_5" AS "Proba_5",
        t."Score_5" AS "Score_5",
        t."Proba_6" AS "Proba_6",
        t."Score_6" AS "Score_6",
        t."Proba_7" AS "Proba_7",
        t."Score_7" AS "Score_7",
        t."Proba_8" AS "Proba_8",
        t."Score_8" AS "Score_8",
        t."Proba_9" AS "Proba_9",
        t."Score_9" AS "Score_9",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7",
        EXP(t."Score_8" - t."Greatest_Score") as "Exp_Score_8",
        EXP(t."Score_9" - t."Greatest_Score") as "Exp_Score_9"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_4" / t1."Sum_Exp" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    t1."Exp_Score_5" / t1."Sum_Exp" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    t1."Exp_Score_6" / t1."Sum_Exp" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    t1."Exp_Score_7" / t1."Sum_Exp" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    t1."Exp_Score_8" / t1."Sum_Exp" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    t1."Exp_Score_9" / t1."Sum_Exp" AS "Proba_9",
    t1."Score_9" AS "Score_9"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    t."Proba_8" AS "Proba_8",
    t."Score_8" AS "Score_8",
    t."Proba_9" AS "Proba_9",
    t."Score_9" AS "Score_9",
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    t."Proba_8" AS "Proba_8",
    t."Score_8" AS "Score_8",
    t."Proba_9" AS "Proba_9",
    t."Score_9" AS "Score_9",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
    CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
    CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
    CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
    CASE WHEN(t."Proba_8" = t."Max_Proba") THEN 8 else NULL END AS "max_idx_8",
    CASE WHEN(t."Proba_9" = t."Max_Proba") THEN 9 else NULL END AS "max_idx_9",
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
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Proba_4" AS "Proba_4",
     t."Score_4" AS "Score_4",
     t."Proba_5" AS "Proba_5",
     t."Score_5" AS "Score_5",
     t."Proba_6" AS "Proba_6",
     t."Score_6" AS "Score_6",
     t."Proba_7" AS "Proba_7",
     t."Score_7" AS "Score_7",
     t."Proba_8" AS "Proba_8",
     t."Score_8" AS "Score_8",
     t."Proba_9" AS "Proba_9",
     t."Score_9" AS "Score_9",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7", t."max_idx_8", t."max_idx_9" ) AS argmax_class_idx
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."Score_4" AS "Score_4",
  arg_max_cte."Proba_4" AS "Proba_4",
  CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN LN( arg_max_cte."Proba_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
  arg_max_cte."Score_5" AS "Score_5",
  arg_max_cte."Proba_5" AS "Proba_5",
  CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN LN( arg_max_cte."Proba_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
  arg_max_cte."Score_6" AS "Score_6",
  arg_max_cte."Proba_6" AS "Proba_6",
  CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN LN( arg_max_cte."Proba_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
  arg_max_cte."Score_7" AS "Score_7",
  arg_max_cte."Proba_7" AS "Proba_7",
  CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN LN( arg_max_cte."Proba_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
  arg_max_cte."Score_8" AS "Score_8",
  arg_max_cte."Proba_8" AS "Proba_8",
  CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN LN( arg_max_cte."Proba_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
  arg_max_cte."Score_9" AS "Score_9",
  arg_max_cte."Proba_9" AS "Proba_9",
  CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN LN( arg_max_cte."Proba_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte