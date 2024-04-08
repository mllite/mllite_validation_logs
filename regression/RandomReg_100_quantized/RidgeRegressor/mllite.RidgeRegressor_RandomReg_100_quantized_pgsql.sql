WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   -668.378479 + -0.078713 * t."X_0" + 0.086588 * t."X_1" + -0.676092 * t."X_2" + 0.555497 * t."X_3" + 0.347451 * t."X_4" + -0.493245 * t."X_5" + 0.314440 * t."X_6" + 0.438934 * t."X_7" + -0.096685 * t."X_8" + 0.159912 * t."X_9" + -0.156794 * t."X_10" + 0.187775 * t."X_11" + 0.629432 * t."X_12" + -0.500916 * t."X_13" + -0.846193 * t."X_14" + 0.331221 * t."X_15" + 0.265400 * t."X_16" + 0.506747 * t."X_17" + 0.168720 * t."X_18" + 0.277583 * t."X_19" + 0.256140 * t."X_20" + 0.135988 * t."X_21" + 11.971586 * t."X_22" + -0.041184 * t."X_23" + 0.183541 * t."X_24" + -0.423762 * t."X_25" + 0.014256 * t."X_26" + -0.005049 * t."X_27" + -0.552353 * t."X_28" + 0.269088 * t."X_29" + 23.004957 * t."X_30" + -0.029019 * t."X_31" + 15.739861 * t."X_32" + 1.966847 * t."X_33" + 0.888789 * t."X_34" + 0.213037 * t."X_35" + 15.902720 * t."X_36" + 0.002314 * t."X_37" + 0.445636 * t."X_38" + -0.347104 * t."X_39" + 0.494141 * t."X_40" + 0.683962 * t."X_41" + -0.748420 * t."X_42" + -0.212409 * t."X_43" + 0.089990 * t."X_44" + 0.064273 * t."X_45" + 24.979704 * t."X_46" + 0.455842 * t."X_47" + 0.232593 * t."X_48" + 0.193287 * t."X_49" + 0.475200 * t."X_50" + 0.255372 * t."X_51" + 0.213245 * t."X_52" + 0.534037 * t."X_53" + 0.203879 * t."X_54" + -0.252722 * t."X_55" + 0.121583 * t."X_56" + 0.113469 * t."X_57" + -0.159504 * t."X_58" + 15.545528 * t."X_59" + 0.365732 * t."X_60" + -0.076228 * t."X_61" + -0.523185 * t."X_62" + -0.347108 * t."X_63" + 0.920392 * t."X_64" + -0.752478 * t."X_65" + -0.412524 * t."X_66" + 0.229449 * t."X_67" + 0.031197 * t."X_68" + 0.281639 * t."X_69" + -0.172828 * t."X_70" + 0.351048 * t."X_71" + -0.163875 * t."X_72" + -0.096128 * t."X_73" + 0.039248 * t."X_74" + -0.326168 * t."X_75" + 0.699713 * t."X_76" + 22.588339 * t."X_77" + 0.194101 * t."X_78" + -0.486634 * t."X_79" + -0.510988 * t."X_80" + 0.339360 * t."X_81" + -0.967879 * t."X_82" + -0.652277 * t."X_83" + -0.964884 * t."X_84" + -1.144642 * t."X_85" + 0.573725 * t."X_86" + -0.572551 * t."X_87" + -0.256333 * t."X_88" + -0.266536 * t."X_89" + 6.052763 * t."X_90" + 0.222931 * t."X_91" + -0.250058 * t."X_92" + -0.127776 * t."X_93" + 0.184474 * t."X_94" + 10.775831 * t."X_95" + 0.411953 * t."X_96" + -0.671759 * t."X_97" + 0.142684 * t."X_98" + -0.232916 * t."X_99" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte