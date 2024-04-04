WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -36.987644 + 0.000000 * t."X_0" + 3.860751 * t."X_1" + 0.401071 * t."X_2" + -6.770305 * t."X_3" + 0.899931 * t."X_4" + -0.159043 * t."X_5" + 1.354230 * t."X_6" + 0.444152 * t."X_7" + -6.376829 * t."X_8" + -1.759248 * t."X_9" + -2.448761 * t."X_10" + -1.924706 * t."X_11" + 1.370575 * t."X_12" + -0.551907 * t."X_13" + 0.190362 * t."X_14" + -1.397838 * t."X_15" + 35.081207 * t."X_16" + 0.379235 * t."X_17" + -0.238731 * t."X_18" + 0.490090 * t."X_19" + 1.329500 * t."X_20" + -0.299650 * t."X_21" + 0.121832 * t."X_22" + 1.160586 * t."X_23" + -71.214272 * t."X_24" + 6.710927 * t."X_25" + -2.345322 * t."X_26" + 0.956190 * t."X_27" + -0.286361 * t."X_28" + 1.660212 * t."X_29" + -0.807609 * t."X_30" + -31.632599 * t."X_31" + 0.000000 * t."X_32" + 12.817764 * t."X_33" + -3.106855 * t."X_34" + 2.754260 * t."X_35" + -0.757971 * t."X_36" + 0.048552 * t."X_37" + -2.369484 * t."X_38" + 0.000000 * t."X_39" + 7.071799 * t."X_40" + -6.636298 * t."X_41" + 1.796025 * t."X_42" + -3.375967 * t."X_43" + 1.748199 * t."X_44" + -0.062553 * t."X_45" + 1.350472 * t."X_46" + 7.602018 * t."X_47" + 10.416359 * t."X_48" + -0.171427 * t."X_49" + 2.122612 * t."X_50" + 1.788619 * t."X_51" + -1.768564 * t."X_52" + 0.087727 * t."X_53" + 0.485332 * t."X_54" + 1.393724 * t."X_55" + 17.489645 * t."X_56" + 0.640951 * t."X_57" + -0.364865 * t."X_58" + 9.799593 * t."X_59" + -2.633640 * t."X_60" + 0.798306 * t."X_61" + 0.426206 * t."X_62" + -0.955876 * t."X_63" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   54.698711 + 0.000000 * t."X_0" + 5.133045 * t."X_1" + -0.188537 * t."X_2" + 12.827849 * t."X_3" + -1.939579 * t."X_4" + 0.283836 * t."X_5" + -0.847730 * t."X_6" + 1.785814 * t."X_7" + 35.304398 * t."X_8" + -2.105556 * t."X_9" + 6.044786 * t."X_10" + 1.944992 * t."X_11" + -1.989356 * t."X_12" + 1.612604 * t."X_13" + 0.101354 * t."X_14" + 3.068810 * t."X_15" + -10.481716 * t."X_16" + -3.136345 * t."X_17" + -1.063393 * t."X_18" + -0.724848 * t."X_19" + -1.648384 * t."X_20" + 0.128455 * t."X_21" + 0.513082 * t."X_22" + -5.786546 * t."X_23" + -3.914007 * t."X_24" + 2.643899 * t."X_25" + -0.014914 * t."X_26" + 0.731089 * t."X_27" + -0.026547 * t."X_28" + -1.376344 * t."X_29" + -1.047009 * t."X_30" + 49.084366 * t."X_31" + 0.000000 * t."X_32" + -5.220175 * t."X_33" + -0.820122 * t."X_34" + -0.476049 * t."X_35" + -0.659068 * t."X_36" + 0.290115 * t."X_37" + 1.251941 * t."X_38" + 0.000000 * t."X_39" + -3.300244 * t."X_40" + 2.456412 * t."X_41" + 0.071635 * t."X_42" + 0.459912 * t."X_43" + 0.301646 * t."X_44" + -0.501052 * t."X_45" + 0.017970 * t."X_46" + -2.984018 * t."X_47" + -2.938389 * t."X_48" + 2.240135 * t."X_49" + -2.778806 * t."X_50" + 1.284631 * t."X_51" + 0.797925 * t."X_52" + -0.263218 * t."X_53" + 1.222426 * t."X_54" + -2.020990 * t."X_55" + -10.962286 * t."X_56" + -8.135533 * t."X_57" + 1.783396 * t."X_58" + -22.483160 * t."X_59" + 6.728076 * t."X_60" + -4.086452 * t."X_61" + -0.043674 * t."X_62" + 2.128641 * t."X_63" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -48.291885 + 0.000000 * t."X_0" + -7.812525 * t."X_1" + 0.601940 * t."X_2" + -8.319206 * t."X_3" + 0.994512 * t."X_4" + -0.181679 * t."X_5" + 0.046231 * t."X_6" + -2.734180 * t."X_7" + -34.062904 * t."X_8" + 2.910252 * t."X_9" + -4.711136 * t."X_10" + -1.282884 * t."X_11" + 0.585328 * t."X_12" + -1.191763 * t."X_13" + -0.377711 * t."X_14" + -0.348812 * t."X_15" + -19.552603 * t."X_16" + 4.440536 * t."X_17" + 1.217586 * t."X_18" + 0.533345 * t."X_19" + 0.421285 * t."X_20" + 0.552453 * t."X_21" + -0.547158 * t."X_22" + 6.221912 * t."X_23" + 31.070969 * t."X_24" + -5.929578 * t."X_25" + 1.191690 * t."X_26" + -1.090378 * t."X_27" + 0.056449 * t."X_28" + -0.096664 * t."X_29" + 2.112748 * t."X_30" + -37.298222 * t."X_31" + 0.000000 * t."X_32" + -8.437358 * t."X_33" + 4.326187 * t."X_34" + -2.540432 * t."X_35" + 1.858623 * t."X_36" + 0.211756 * t."X_37" + 1.111109 * t."X_38" + 0.000000 * t."X_39" + -2.537080 * t."X_40" + 4.208304 * t."X_41" + -2.505293 * t."X_42" + 3.825182 * t."X_43" + -2.256073 * t."X_44" + 1.112815 * t."X_45" + -1.073340 * t."X_46" + -4.010627 * t."X_47" + -7.574642 * t."X_48" + -3.518759 * t."X_49" + 2.478321 * t."X_50" + -1.353708 * t."X_51" + 0.738916 * t."X_52" + -0.086357 * t."X_53" + -2.058305 * t."X_54" + 1.696159 * t."X_55" + -5.119648 * t."X_56" + 7.807826 * t."X_57" + -1.768739 * t."X_58" + 15.081223 * t."X_59" + -3.714950 * t."X_60" + 3.235526 * t."X_61" + -0.671976 * t."X_62" + -0.894100 * t."X_63" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -15.712386 + 0.000000 * t."X_0" + -10.751398 * t."X_1" + -0.422240 * t."X_2" + -10.654829 * t."X_3" + 1.866174 * t."X_4" + -0.128934 * t."X_5" + -0.343611 * t."X_6" + -2.982237 * t."X_7" + -31.740746 * t."X_8" + 4.700069 * t."X_9" + -5.296927 * t."X_10" + -1.487523 * t."X_11" + 1.489896 * t."X_12" + -2.346207 * t."X_13" + -0.337029 * t."X_14" + -2.903296 * t."X_15" + -2.750119 * t."X_16" + 1.131420 * t."X_17" + 1.466124 * t."X_18" + 0.967522 * t."X_19" + 1.811533 * t."X_20" + -0.418725 * t."X_21" + -1.458547 * t."X_22" + 4.319975 * t."X_23" + 74.125359 * t."X_24" + -8.833755 * t."X_25" + 3.506082 * t."X_26" + -3.510015 * t."X_27" + 0.159962 * t."X_28" + 0.842715 * t."X_29" + 2.639025 * t."X_30" + -33.502720 * t."X_31" + 0.000000 * t."X_32" + -7.717361 * t."X_33" + 1.867429 * t."X_34" + 0.854327 * t."X_35" + 1.034258 * t."X_36" + -0.416479 * t."X_37" + 0.609298 * t."X_38" + 0.000000 * t."X_39" + 8.586581 * t."X_40" + 5.360595 * t."X_41" + 0.222472 * t."X_42" + -3.649247 * t."X_43" + -0.295260 * t."X_44" + -0.105678 * t."X_45" + -1.987518 * t."X_46" + -1.427073 * t."X_47" + -6.778192 * t."X_48" + -5.304724 * t."X_49" + 1.093593 * t."X_50" + -0.467511 * t."X_51" + -0.422636 * t."X_52" + -0.149821 * t."X_53" + -1.527393 * t."X_54" + 1.347860 * t."X_55" + 41.591793 * t."X_56" + 12.764166 * t."X_57" + -1.256644 * t."X_58" + 19.346127 * t."X_59" + -4.975121 * t."X_60" + 3.624672 * t."X_61" + -0.429701 * t."X_62" + -3.516475 * t."X_63" AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   55.604214 + 0.000000 * t."X_0" + 6.788124 * t."X_1" + 0.142061 * t."X_2" + 18.285276 * t."X_3" + -3.255663 * t."X_4" + 1.133573 * t."X_5" + 1.057158 * t."X_6" + 6.327574 * t."X_7" + 33.617725 * t."X_8" + -1.337263 * t."X_9" + 9.333271 * t."X_10" + 3.744930 * t."X_11" + -1.832330 * t."X_12" + 4.052439 * t."X_13" + -0.287579 * t."X_14" + 0.703968 * t."X_15" + 13.323513 * t."X_16" + -5.603190 * t."X_17" + -2.348903 * t."X_18" + -1.895342 * t."X_19" + -2.815019 * t."X_20" + -0.157731 * t."X_21" + 2.706657 * t."X_22" + -9.351563 * t."X_23" + -14.262749 * t."X_24" + 4.755561 * t."X_25" + -3.364028 * t."X_26" + 4.399168 * t."X_27" + 0.300687 * t."X_28" + -0.723720 * t."X_29" + -5.602705 * t."X_30" + 98.507256 * t."X_31" + 0.000000 * t."X_32" + 28.496887 * t."X_33" + -7.541247 * t."X_34" + 1.497808 * t."X_35" + -3.503242 * t."X_36" + -0.360741 * t."X_37" + -2.574205 * t."X_38" + 0.000000 * t."X_39" + -16.923447 * t."X_40" + -15.515315 * t."X_41" + 1.469767 * t."X_42" + 1.591854 * t."X_43" + 2.254930 * t."X_44" + -0.530781 * t."X_45" + 3.881693 * t."X_46" + 7.144463 * t."X_47" + 14.260453 * t."X_48" + 11.713148 * t."X_49" + -3.753181 * t."X_50" + 1.131171 * t."X_51" + -0.294825 * t."X_52" + 0.311606 * t."X_53" + 2.496088 * t."X_54" + -2.072358 * t."X_55" + -101.677872 * t."X_56" + -18.371658 * t."X_57" + 2.059244 * t."X_58" + -33.215759 * t."X_59" + 8.301123 * t."X_60" + -6.177245 * t."X_61" + 1.295888 * t."X_62" + 4.466901 * t."X_63" AS "Score_4",
   CAST(NULL AS FLOAT) AS "Proba_4",
   CAST(NULL AS FLOAT) AS "LogProba_4",
   -57.098522 + 0.000000 * t."X_0" + -4.494911 * t."X_1" + 0.729877 * t."X_2" + -10.900904 * t."X_3" + 1.715926 * t."X_4" + -1.466008 * t."X_5" + -0.236712 * t."X_6" + -2.104828 * t."X_7" + -33.180878 * t."X_8" + 2.759243 * t."X_9" + -6.442224 * t."X_10" + -2.015309 * t."X_11" + 1.415110 * t."X_12" + -1.246180 * t."X_13" + 1.495696 * t."X_14" + 0.224988 * t."X_15" + 14.469610 * t."X_16" + 0.106060 * t."X_17" + 1.251650 * t."X_18" + 0.723875 * t."X_19" + 1.555081 * t."X_20" + 0.152265 * t."X_21" + -1.093448 * t."X_22" + 2.744293 * t."X_23" + -102.970322 * t."X_24" + 13.014235 * t."X_25" + -2.772155 * t."X_26" + 0.680306 * t."X_27" + -0.711767 * t."X_28" + 1.124451 * t."X_29" + 2.007714 * t."X_30" + -84.313705 * t."X_31" + 0.000000 * t."X_32" + -8.646276 * t."X_33" + 2.546469 * t."X_34" + -0.142069 * t."X_35" + 1.270872 * t."X_36" + 0.223145 * t."X_37" + -0.483100 * t."X_38" + 0.000000 * t."X_39" + 7.091163 * t."X_40" + 3.866053 * t."X_41" + 0.369959 * t."X_42" + 0.229172 * t."X_43" + -0.829113 * t."X_44" + 0.562175 * t."X_45" + -0.090722 * t."X_46" + 0.719187 * t."X_47" + 4.122143 * t."X_48" + -3.212842 * t."X_49" + 1.904438 * t."X_50" + -1.243445 * t."X_51" + -0.295897 * t."X_52" + 0.174884 * t."X_53" + -0.831840 * t."X_54" + 1.770223 * t."X_55" + 34.767323 * t."X_56" + 8.161566 * t."X_57" + -1.356939 * t."X_58" + 19.940903 * t."X_59" + -6.227137 * t."X_60" + 3.765923 * t."X_61" + -0.067268 * t."X_62" + -1.494788 * t."X_63" AS "Score_5",
   CAST(NULL AS FLOAT) AS "Proba_5",
   CAST(NULL AS FLOAT) AS "LogProba_5",
   9.331075 + 0.000000 * t."X_0" + 5.521992 * t."X_1" + -0.191320 * t."X_2" + 5.281173 * t."X_3" + -1.098413 * t."X_4" + 0.770381 * t."X_5" + 0.387816 * t."X_6" + 1.485880 * t."X_7" + 21.609083 * t."X_8" + -1.798636 * t."X_9" + 3.715436 * t."X_10" + 0.442367 * t."X_11" + -0.616606 * t."X_12" + 0.952059 * t."X_13" + -0.555474 * t."X_14" + 0.912656 * t."X_15" + 9.410070 * t."X_16" + -2.552875 * t."X_17" + -0.601035 * t."X_18" + -0.642867 * t."X_19" + -0.901962 * t."X_20" + 0.169506 * t."X_21" + 0.948668 * t."X_22" + -1.381564 * t."X_23" + 11.387647 * t."X_24" + -0.314644 * t."X_25" + -0.395622 * t."X_26" + 0.961628 * t."X_27" + 0.269860 * t."X_28" + -0.559983 * t."X_29" + -1.545302 * t."X_30" + 27.182394 * t."X_31" + 0.000000 * t."X_32" + 6.305039 * t."X_33" + -1.281528 * t."X_34" + -0.168710 * t."X_35" + -0.833096 * t."X_36" + 0.118762 * t."X_37" + -0.201649 * t."X_38" + 0.000000 * t."X_39" + -3.515586 * t."X_40" + -3.772679 * t."X_41" + -0.359343 * t."X_42" + 1.189662 * t."X_43" + 0.415127 * t."X_44" + -0.070419 * t."X_45" + 0.632898 * t."X_46" + 0.540279 * t."X_47" + 2.478535 * t."X_48" + 2.144785 * t."X_49" + -0.416583 * t."X_50" + 1.217334 * t."X_51" + -0.154083 * t."X_52" + 0.009643 * t."X_53" + 0.793724 * t."X_54" + -0.911563 * t."X_55" + -29.293915 * t."X_56" + -5.689725 * t."X_57" + 0.712236 * t."X_58" + -10.602820 * t."X_59" + 3.736139 * t."X_60" + -2.383697 * t."X_61" + 0.331130 * t."X_62" + 1.627848 * t."X_63" AS "Score_6",
   CAST(NULL AS FLOAT) AS "Proba_6",
   CAST(NULL AS FLOAT) AS "LogProba_6",
   12.139811 + 0.000000 * t."X_0" + 1.764141 * t."X_1" + -0.207908 * t."X_2" + 1.277067 * t."X_3" + -0.174745 * t."X_4" + 0.175818 * t."X_5" + -0.211906 * t."X_6" + -0.438582 * t."X_7" + 17.144575 * t."X_8" + -1.221796 * t."X_9" + 1.675183 * t."X_10" + 0.341706 * t."X_11" + -0.440085 * t."X_12" + 0.361713 * t."X_13" + -0.690998 * t."X_14" + 0.212696 * t."X_15" + -16.294563 * t."X_16" + -0.381577 * t."X_17" + 0.196834 * t."X_18" + -0.459897 * t."X_19" + -0.504027 * t."X_20" + 0.118131 * t."X_21" + 0.443729 * t."X_22" + 2.050517 * t."X_23" + 63.211018 * t."X_24" + -6.293834 * t."X_25" + 1.481200 * t."X_26" + -0.390088 * t."X_27" + 0.392376 * t."X_28" + -0.788721 * t."X_29" + 0.026876 * t."X_30" + 12.485581 * t."X_31" + 0.000000 * t."X_32" + -1.101384 * t."X_33" + 1.136181 * t."X_34" + -1.501297 * t."X_35" + -0.019902 * t."X_36" + -0.367032 * t."X_37" + 0.585717 * t."X_38" + 0.000000 * t."X_39" + -6.038455 * t."X_40" + 0.561401 * t."X_41" + -0.905443 * t."X_42" + 2.445121 * t."X_43" + -1.237607 * t."X_44" + 0.292819 * t."X_45" + -0.414875 * t."X_46" + -2.642956 * t."X_47" + -4.647305 * t."X_48" + 1.643214 * t."X_49" + -1.874579 * t."X_50" + -0.131543 * t."X_51" + 0.875655 * t."X_52" + 0.250783 * t."X_53" + -0.197186 * t."X_54" + -0.537272 * t."X_55" + -22.772631 * t."X_56" + -2.312898 * t."X_57" + 0.476839 * t."X_58" + -2.416385 * t."X_59" + 0.397909 * t."X_60" + 0.287970 * t."X_61" + -0.166395 * t."X_62" + 0.213543 * t."X_63" AS "Score_7",
   CAST(NULL AS FLOAT) AS "Proba_7",
   CAST(NULL AS FLOAT) AS "LogProba_7",
   -12.089852 + 0.000000 * t."X_0" + 1.750256 * t."X_1" + -0.383856 * t."X_2" + -2.145375 * t."X_3" + 0.612163 * t."X_4" + 0.000408 * t."X_5" + -0.399883 * t."X_6" + -1.080434 * t."X_7" + -2.062099 * t."X_8" + -1.655044 * t."X_9" + -1.228724 * t."X_10" + -0.141620 * t."X_11" + 0.228189 * t."X_12" + -0.787187 * t."X_13" + -0.048494 * t."X_14" + -0.438587 * t."X_15" + -10.548678 * t."X_16" + 3.066578 * t."X_17" + 0.250538 * t."X_18" + 0.208562 * t."X_19" + 0.173569 * t."X_20" + 0.156442 * t."X_21" + -0.558867 * t."X_22" + 2.648237 * t."X_23" + 18.610760 * t."X_24" + -4.108664 * t."X_25" + 1.188752 * t."X_26" + -0.858976 * t."X_27" + 0.085336 * t."X_28" + -0.326789 * t."X_29" + 1.139257 * t."X_30" + -7.107018 * t."X_31" + 0.000000 * t."X_32" + -7.232533 * t."X_33" + 2.562870 * t."X_34" + -1.518407 * t."X_35" + 1.140923 * t."X_36" + 0.177605 * t."X_37" + 1.098072 * t."X_38" + 0.000000 * t."X_39" + 1.014365 * t."X_40" + 3.596440 * t."X_41" + -1.261969 * t."X_42" + 1.813122 * t."X_43" + -0.952906 * t."X_44" + 0.090267 * t."X_45" + -0.967900 * t."X_46" + -3.421414 * t."X_47" + -3.856544 * t."X_48" + -2.844476 * t."X_49" + 1.731826 * t."X_50" + -2.431707 * t."X_51" + 0.877629 * t."X_52" + -0.015460 * t."X_53" + -0.525607 * t."X_54" + -0.338937 * t."X_55" + 19.216080 * t."X_56" + 2.312829 * t."X_57" + -0.856581 * t."X_58" + 5.335842 * t."X_59" + -1.833363 * t."X_60" + 1.238770 * t."X_61" + -0.258867 * t."X_62" + -0.171686 * t."X_63" AS "Score_8",
   CAST(NULL AS FLOAT) AS "Proba_8",
   CAST(NULL AS FLOAT) AS "LogProba_8",
   30.406532 + 0.000000 * t."X_0" + -1.759165 * t."X_1" + -0.481076 * t."X_2" + 1.119323 * t."X_3" + 0.379698 * t."X_4" + -0.428392 * t."X_5" + -0.805639 * t."X_6" + -0.703166 * t."X_7" + -0.251474 * t."X_8" + -0.492134 * t."X_9" + -0.640882 * t."X_10" + 0.378035 * t."X_11" + -0.210739 * t."X_12" + -0.855568 * t."X_13" + 0.509937 * t."X_14" + -0.034460 * t."X_15" + -12.656135 * t."X_16" + 2.550010 * t."X_17" + -0.130671 * t."X_18" + 0.799549 * t."X_19" + 0.578424 * t."X_20" + -0.401133 * t."X_21" + -1.075979 * t."X_22" + -2.625908 * t."X_23" + -6.048487 * t."X_24" + -1.643524 * t."X_25" + 1.524215 * t."X_26" + -1.878867 * t."X_27" + -0.240027 * t."X_28" + 0.244832 * t."X_29" + 1.077042 * t."X_30" + 6.593253 * t."X_31" + 0.000000 * t."X_32" + -9.265127 * t."X_33" + 0.310661 * t."X_34" + 1.240541 * t."X_35" + 0.468628 * t."X_36" + 0.074343 * t."X_37" + 0.972333 * t."X_38" + 0.000000 * t."X_39" + 8.551099 * t."X_40" + 5.875319 * t."X_41" + 1.102206 * t."X_42" + -4.528760 * t."X_43" + 0.851035 * t."X_44" + -0.787597 * t."X_45" + -1.348692 * t."X_46" + -1.519937 * t."X_47" + -5.482260 * t."X_48" + -2.689140 * t."X_49" + -0.507637 * t."X_50" + 0.206134 * t."X_51" + -0.354093 * t."X_52" + -0.319789 * t."X_53" + 0.142804 * t."X_54" + -0.326885 * t."X_55" + 56.762749 * t."X_56" + 2.822391 * t."X_57" + 0.572070 * t."X_58" + -0.785664 * t."X_59" + 0.220979 * t."X_60" + -0.303797 * t."X_61" + -0.415344 * t."X_62" + -1.403969 * t."X_63" AS "Score_9",
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
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Greatest_Score"
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
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Max_Score"
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