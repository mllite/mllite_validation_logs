WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3",
   CAST("Values"."sv_4" AS FLOAT) AS "sv_4",
   CAST("Values"."sv_5" AS FLOAT) AS "sv_5",
   CAST("Values"."sv_6" AS FLOAT) AS "sv_6",
   CAST("Values"."sv_7" AS FLOAT) AS "sv_7",
   CAST("Values"."sv_8" AS FLOAT) AS "sv_8",
   CAST("Values"."sv_9" AS FLOAT) AS "sv_9",
   CAST("Values"."sv_10" AS FLOAT) AS "sv_10",
   CAST("Values"."sv_11" AS FLOAT) AS "sv_11",
   CAST("Values"."sv_12" AS FLOAT) AS "sv_12",
   CAST("Values"."sv_13" AS FLOAT) AS "sv_13",
   CAST("Values"."sv_14" AS FLOAT) AS "sv_14",
   CAST("Values"."sv_15" AS FLOAT) AS "sv_15",
   CAST("Values"."sv_16" AS FLOAT) AS "sv_16",
   CAST("Values"."sv_17" AS FLOAT) AS "sv_17",
   CAST("Values"."sv_18" AS FLOAT) AS "sv_18",
   CAST("Values"."sv_19" AS FLOAT) AS "sv_19",
   CAST("Values"."sv_20" AS FLOAT) AS "sv_20",
   CAST("Values"."sv_21" AS FLOAT) AS "sv_21",
   CAST("Values"."sv_22" AS FLOAT) AS "sv_22",
   CAST("Values"."sv_23" AS FLOAT) AS "sv_23",
   CAST("Values"."sv_24" AS FLOAT) AS "sv_24",
   CAST("Values"."sv_25" AS FLOAT) AS "sv_25",
   CAST("Values"."sv_26" AS FLOAT) AS "sv_26",
   CAST("Values"."sv_27" AS FLOAT) AS "sv_27",
   CAST("Values"."sv_28" AS FLOAT) AS "sv_28",
   CAST("Values"."sv_29" AS FLOAT) AS "sv_29",
   CAST("Values"."sv_30" AS FLOAT) AS "sv_30",
   CAST("Values"."sv_31" AS FLOAT) AS "sv_31",
   CAST("Values"."sv_32" AS FLOAT) AS "sv_32",
   CAST("Values"."sv_33" AS FLOAT) AS "sv_33",
   CAST("Values"."sv_34" AS FLOAT) AS "sv_34",
   CAST("Values"."sv_35" AS FLOAT) AS "sv_35",
   CAST("Values"."sv_36" AS FLOAT) AS "sv_36",
   CAST("Values"."sv_37" AS FLOAT) AS "sv_37",
   CAST("Values"."sv_38" AS FLOAT) AS "sv_38",
   CAST("Values"."sv_39" AS FLOAT) AS "sv_39",
   CAST("Values"."sv_40" AS FLOAT) AS "sv_40",
   CAST("Values"."sv_41" AS FLOAT) AS "sv_41",
   CAST("Values"."sv_42" AS FLOAT) AS "sv_42",
   CAST("Values"."sv_43" AS FLOAT) AS "sv_43",
   CAST("Values"."sv_44" AS FLOAT) AS "sv_44",
   CAST("Values"."sv_45" AS FLOAT) AS "sv_45",
   CAST("Values"."sv_46" AS FLOAT) AS "sv_46",
   CAST("Values"."sv_47" AS FLOAT) AS "sv_47",
   CAST("Values"."sv_48" AS FLOAT) AS "sv_48",
   CAST("Values"."sv_49" AS FLOAT) AS "sv_49",
   CAST("Values"."sv_50" AS FLOAT) AS "sv_50",
   CAST("Values"."sv_51" AS FLOAT) AS "sv_51",
   CAST("Values"."sv_52" AS FLOAT) AS "sv_52",
   CAST("Values"."sv_53" AS FLOAT) AS "sv_53",
   CAST("Values"."sv_54" AS FLOAT) AS "sv_54",
   CAST("Values"."sv_55" AS FLOAT) AS "sv_55",
   CAST("Values"."sv_56" AS FLOAT) AS "sv_56",
   CAST("Values"."sv_57" AS FLOAT) AS "sv_57",
   CAST("Values"."sv_58" AS FLOAT) AS "sv_58",
   CAST("Values"."sv_59" AS FLOAT) AS "sv_59",
   CAST("Values"."sv_60" AS FLOAT) AS "sv_60",
   CAST("Values"."sv_61" AS FLOAT) AS "sv_61",
   CAST("Values"."sv_62" AS FLOAT) AS "sv_62",
   CAST("Values"."sv_63" AS FLOAT) AS "sv_63",
   CAST("Values"."sv_64" AS FLOAT) AS "sv_64",
   CAST("Values"."sv_65" AS FLOAT) AS "sv_65",
   CAST("Values"."sv_66" AS FLOAT) AS "sv_66",
   CAST("Values"."sv_67" AS FLOAT) AS "sv_67",
   CAST("Values"."sv_68" AS FLOAT) AS "sv_68",
   CAST("Values"."sv_69" AS FLOAT) AS "sv_69",
   CAST("Values"."sv_70" AS FLOAT) AS "sv_70",
   CAST("Values"."sv_71" AS FLOAT) AS "sv_71",
   CAST("Values"."sv_72" AS FLOAT) AS "sv_72",
   CAST("Values"."sv_73" AS FLOAT) AS "sv_73",
   CAST("Values"."sv_74" AS FLOAT) AS "sv_74",
   CAST("Values"."sv_75" AS FLOAT) AS "sv_75",
   CAST("Values"."sv_76" AS FLOAT) AS "sv_76",
   CAST("Values"."sv_77" AS FLOAT) AS "sv_77",
   CAST("Values"."sv_78" AS FLOAT) AS "sv_78",
   CAST("Values"."sv_79" AS FLOAT) AS "sv_79",
   CAST("Values"."sv_80" AS FLOAT) AS "sv_80",
   CAST("Values"."sv_81" AS FLOAT) AS "sv_81",
   CAST("Values"."sv_82" AS FLOAT) AS "sv_82",
   CAST("Values"."sv_83" AS FLOAT) AS "sv_83",
   CAST("Values"."sv_84" AS FLOAT) AS "sv_84",
   CAST("Values"."sv_85" AS FLOAT) AS "sv_85",
   CAST("Values"."sv_86" AS FLOAT) AS "sv_86",
   CAST("Values"."sv_87" AS FLOAT) AS "sv_87",
   CAST("Values"."sv_88" AS FLOAT) AS "sv_88",
   CAST("Values"."sv_89" AS FLOAT) AS "sv_89",
   CAST("Values"."sv_90" AS FLOAT) AS "sv_90",
   CAST("Values"."sv_91" AS FLOAT) AS "sv_91",
   CAST("Values"."sv_92" AS FLOAT) AS "sv_92",
   CAST("Values"."sv_93" AS FLOAT) AS "sv_93",
   CAST("Values"."sv_94" AS FLOAT) AS "sv_94",
   CAST("Values"."sv_95" AS FLOAT) AS "sv_95",
   CAST("Values"."sv_96" AS FLOAT) AS "sv_96",
   CAST("Values"."sv_97" AS FLOAT) AS "sv_97",
   CAST("Values"."sv_98" AS FLOAT) AS "sv_98",
   CAST("Values"."sv_99" AS FLOAT) AS "sv_99"
  FROM
  (
     SELECT 0 AS "sv_idx", 0.596661 AS "sv_0", 1.589408 AS "sv_1", -0.810968 AS "sv_2", -0.473920 AS "sv_3", -0.917869 AS "sv_4", -1.616176 AS "sv_5", -0.678639 AS "sv_6", 0.103319 AS "sv_7", -0.500028 AS "sv_8", 1.780579 AS "sv_9", -1.345538 AS "sv_10", -5.282485 AS "sv_11", 0.720736 AS "sv_12", 0.179547 AS "sv_13", -1.758095 AS "sv_14", -0.859388 AS "sv_15", -0.022726 AS "sv_16", -1.870258 AS "sv_17", 1.670222 AS "sv_18", -0.289479 AS "sv_19", 0.837068 AS "sv_20", 0.659623 AS "sv_21", 0.042969 AS "sv_22", -0.946970 AS "sv_23", 0.430729 AS "sv_24", -0.775743 AS "sv_25", 0.341510 AS "sv_26", -2.020115 AS "sv_27", -1.027789 AS "sv_28", -1.696678 AS "sv_29", -0.171013 AS "sv_30", 0.423167 AS "sv_31", -1.791827 AS "sv_32", -0.575773 AS "sv_33", -1.712462 AS "sv_34", 0.568344 AS "sv_35", -0.681340 AS "sv_36", 0.323087 AS "sv_37", -1.447405 AS "sv_38", -1.383657 AS "sv_39", 0.377986 AS "sv_40", -0.637483 AS "sv_41", 0.776763 AS "sv_42", 0.555374 AS "sv_43", 1.112854 AS "sv_44", -1.270887 AS "sv_45", 2.942078 AS "sv_46", 0.438418 AS "sv_47", 0.777928 AS "sv_48", 0.814675 AS "sv_49", -0.388955 AS "sv_50", -1.278542 AS "sv_51", 0.387139 AS "sv_52", -0.547252 AS "sv_53", 0.768055 AS "sv_54", 1.481584 AS "sv_55", -0.530029 AS "sv_56", 0.871521 AS "sv_57", 0.220103 AS "sv_58", -1.802678 AS "sv_59", 1.627076 AS "sv_60", 0.293988 AS "sv_61", 4.040365 AS "sv_62", -1.380345 AS "sv_63", -0.825688 AS "sv_64", 0.704826 AS "sv_65", 8.153955 AS "sv_66", 1.225011 AS "sv_67", 1.667886 AS "sv_68", 2.721471 AS "sv_69", 0.649031 AS "sv_70", -0.960101 AS "sv_71", -1.055953 AS "sv_72", -0.049077 AS "sv_73", -1.564899 AS "sv_74", 0.393039 AS "sv_75", 0.880326 AS "sv_76", 1.468467 AS "sv_77", 0.243021 AS "sv_78", -1.330814 AS "sv_79", 2.294137 AS "sv_80", 0.748560 AS "sv_81", 0.110301 AS "sv_82", 1.115302 AS "sv_83", -0.307022 AS "sv_84", -0.343551 AS "sv_85", 0.795006 AS "sv_86", 0.263236 AS "sv_87", 0.799355 AS "sv_88", -0.057373 AS "sv_89", 0.756435 AS "sv_90", -0.364445 AS "sv_91", 1.299078 AS "sv_92", -0.038201 AS "sv_93", 0.776138 AS "sv_94", -0.831592 AS "sv_95", 1.534428 AS "sv_96", -1.275388 AS "sv_97", 0.026429 AS "sv_98", -0.565740 AS "sv_99"
     UNION ALL
     SELECT 1 AS "sv_idx", -0.566579 AS "sv_0", 0.216205 AS "sv_1", 0.537669 AS "sv_2", 0.371285 AS "sv_3", 1.329841 AS "sv_4", -0.414725 AS "sv_5", 1.815420 AS "sv_6", 1.137457 AS "sv_7", 0.652926 AS "sv_8", -0.091289 AS "sv_9", 0.080014 AS "sv_10", 0.349031 AS "sv_11", -0.286257 AS "sv_12", -0.839074 AS "sv_13", 0.168124 AS "sv_14", 0.935056 AS "sv_15", -1.335562 AS "sv_16", -0.410951 AS "sv_17", 1.332242 AS "sv_18", -1.001772 AS "sv_19", -1.173071 AS "sv_20", -0.447525 AS "sv_21", -1.494787 AS "sv_22", 1.584423 AS "sv_23", 1.152077 AS "sv_24", -1.795830 AS "sv_25", 0.663867 AS "sv_26", -1.592576 AS "sv_27", 1.683157 AS "sv_28", 1.933681 AS "sv_29", 1.425821 AS "sv_30", 0.280041 AS "sv_31", 0.171797 AS "sv_32", -1.082713 AS "sv_33", -1.664520 AS "sv_34", 1.880818 AS "sv_35", 1.236904 AS "sv_36", -1.028451 AS "sv_37", 0.683933 AS "sv_38", -0.412657 AS "sv_39", -0.470151 AS "sv_40", 0.919698 AS "sv_41", 0.258952 AS "sv_42", 0.883624 AS "sv_43", 0.195592 AS "sv_44", -0.821956 AS "sv_45", 1.723859 AS "sv_46", 0.217660 AS "sv_47", -0.247360 AS "sv_48", -1.836210 AS "sv_49", -1.816284 AS "sv_50", -0.393131 AS "sv_51", -0.086848 AS "sv_52", -0.067549 AS "sv_53", -1.667988 AS "sv_54", -0.548992 AS "sv_55", -0.402794 AS "sv_56", 0.979388 AS "sv_57", -1.323941 AS "sv_58", 0.500902 AS "sv_59", -0.905455 AS "sv_60", 1.808816 AS "sv_61", -0.782586 AS "sv_62", -0.234994 AS "sv_63", -0.172693 AS "sv_64", 0.209332 AS "sv_65", 5.082252 AS "sv_66", -0.417415 AS "sv_67", -0.689044 AS "sv_68", -0.611643 AS "sv_69", 0.293094 AS "sv_70", 1.197280 AS "sv_71", -0.262918 AS "sv_72", 0.227226 AS "sv_73", -0.026987 AS "sv_74", 1.241932 AS "sv_75", 0.568339 AS "sv_76", 0.734147 AS "sv_77", -0.137837 AS "sv_78", 3.534813 AS "sv_79", 0.513637 AS "sv_80", -2.111391 AS "sv_81", -0.065138 AS "sv_82", 0.912285 AS "sv_83", -0.434891 AS "sv_84", -0.433916 AS "sv_85", -1.493237 AS "sv_86", -1.686212 AS "sv_87", 1.644367 AS "sv_88", -0.146778 AS "sv_89", 0.050027 AS "sv_90", 0.930473 AS "sv_91", -0.586294 AS "sv_92", 0.244455 AS "sv_93", 1.568542 AS "sv_94", -0.046167 AS "sv_95", -0.754223 AS "sv_96", -0.327327 AS "sv_97", 0.253076 AS "sv_98", -0.257734 AS "sv_99"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.035038 AS "sv_0", 0.028587 AS "sv_1", 2.388027 AS "sv_2", -0.213290 AS "sv_3", -0.491753 AS "sv_4", 0.533990 AS "sv_5", -0.091762 AS "sv_6", 0.806087 AS "sv_7", 0.151687 AS "sv_8", -0.645960 AS "sv_9", 0.756218 AS "sv_10", 3.158590 AS "sv_11", -0.100097 AS "sv_12", -0.870002 AS "sv_13", 1.021059 AS "sv_14", -0.905691 AS "sv_15", -0.964218 AS "sv_16", -2.061862 AS "sv_17", -1.228821 AS "sv_18", -0.092615 AS "sv_19", 0.749257 AS "sv_20", 0.863246 AS "sv_21", 1.072357 AS "sv_22", 0.640052 AS "sv_23", 0.128563 AS "sv_24", 0.655087 AS "sv_25", -0.564965 AS "sv_26", 2.181375 AS "sv_27", 0.919003 AS "sv_28", -0.780065 AS "sv_29", 0.058656 AS "sv_30", 1.944000 AS "sv_31", -0.994533 AS "sv_32", -0.414049 AS "sv_33", -1.140179 AS "sv_34", 0.881006 AS "sv_35", 0.041109 AS "sv_36", 0.680273 AS "sv_37", 0.396604 AS "sv_38", -2.003292 AS "sv_39", -1.898334 AS "sv_40", 0.865762 AS "sv_41", -0.062161 AS "sv_42", -0.794905 AS "sv_43", 1.258282 AS "sv_44", 0.797186 AS "sv_45", 1.729918 AS "sv_46", -0.442333 AS "sv_47", -1.400726 AS "sv_48", -4.826232 AS "sv_49", 0.648407 AS "sv_50", 0.406856 AS "sv_51", -0.620512 AS "sv_52", -0.494995 AS "sv_53", -0.069512 AS "sv_54", 1.606689 AS "sv_55", -1.002909 AS "sv_56", -0.104506 AS "sv_57", 1.242895 AS "sv_58", -1.084269 AS "sv_59", -1.364647 AS "sv_60", -0.002749 AS "sv_61", 0.894434 AS "sv_62", 0.026663 AS "sv_63", -0.606600 AS "sv_64", -2.720311 AS "sv_65", 2.605181 AS "sv_66", -0.981741 AS "sv_67", 1.667308 AS "sv_68", -0.475451 AS "sv_69", -0.642914 AS "sv_70", 0.904440 AS "sv_71", 0.665998 AS "sv_72", -0.280490 AS "sv_73", -0.451867 AS "sv_74", -1.516248 AS "sv_75", -1.757635 AS "sv_76", -1.228179 AS "sv_77", -0.782634 AS "sv_78", 1.895574 AS "sv_79", 0.078328 AS "sv_80", 0.506608 AS "sv_81", 0.948124 AS "sv_82", -0.675907 AS "sv_83", -1.463734 AS "sv_84", 0.227451 AS "sv_85", -1.604011 AS "sv_86", 0.826359 AS "sv_87", 1.811594 AS "sv_88", -0.415324 AS "sv_89", -1.182648 AS "sv_90", 0.779717 AS "sv_91", -0.436057 AS "sv_92", -0.392205 AS "sv_93", -1.745709 AS "sv_94", 0.435880 AS "sv_95", 0.710608 AS "sv_96", 0.137861 AS "sv_97", -0.100060 AS "sv_98", 0.578063 AS "sv_99"
     UNION ALL
     SELECT 3 AS "sv_idx", 0.104933 AS "sv_0", 1.209696 AS "sv_1", 0.297718 AS "sv_2", 0.680433 AS "sv_3", -0.809348 AS "sv_4", 0.030410 AS "sv_5", 0.479161 AS "sv_6", -0.928328 AS "sv_7", 0.573322 AS "sv_8", 0.156223 AS "sv_9", 1.182968 AS "sv_10", -2.535207 AS "sv_11", -0.377767 AS "sv_12", 1.390661 AS "sv_13", 0.340767 AS "sv_14", -0.629903 AS "sv_15", -0.912629 AS "sv_16", -1.135082 AS "sv_17", -0.277823 AS "sv_18", 0.836115 AS "sv_19", 1.471972 AS "sv_20", 0.642251 AS "sv_21", 0.875901 AS "sv_22", 1.581113 AS "sv_23", 0.891153 AS "sv_24", -1.302272 AS "sv_25", 0.106094 AS "sv_26", -1.727774 AS "sv_27", -1.802275 AS "sv_28", -0.040346 AS "sv_29", 1.426655 AS "sv_30", 0.901840 AS "sv_31", -0.181274 AS "sv_32", 0.013792 AS "sv_33", 0.339896 AS "sv_34", 1.703139 AS "sv_35", 0.486727 AS "sv_36", 0.930572 AS "sv_37", 0.971650 AS "sv_38", -0.573844 AS "sv_39", -1.266918 AS "sv_40", 1.528027 AS "sv_41", 1.093941 AS "sv_42", -1.580303 AS "sv_43", 0.348747 AS "sv_44", 0.096475 AS "sv_45", -0.355786 AS "sv_46", 1.597877 AS "sv_47", 0.208611 AS "sv_48", -0.397533 AS "sv_49", 0.417084 AS "sv_50", -0.230337 AS "sv_51", -1.753619 AS "sv_52", -0.630522 AS "sv_53", 1.378005 AS "sv_54", 1.283194 AS "sv_55", 0.855014 AS "sv_56", -1.073799 AS "sv_57", 1.909834 AS "sv_58", -0.382241 AS "sv_59", 1.018427 AS "sv_60", -0.151575 AS "sv_61", 2.932307 AS "sv_62", 0.208728 AS "sv_63", -0.830692 AS "sv_64", 1.717951 AS "sv_65", 5.419224 AS "sv_66", -1.330368 AS "sv_67", -0.353601 AS "sv_68", 1.296132 AS "sv_69", 0.157955 AS "sv_70", 0.889257 AS "sv_71", -1.519489 AS "sv_72", 0.009622 AS "sv_73", 0.468000 AS "sv_74", -1.755556 AS "sv_75", 0.320798 AS "sv_76", 0.573668 AS "sv_77", -0.381127 AS "sv_78", -0.490587 AS "sv_79", 2.454354 AS "sv_80", 0.990727 AS "sv_81", 1.418665 AS "sv_82", 0.199213 AS "sv_83", -1.793429 AS "sv_84", 0.818447 AS "sv_85", 0.750481 AS "sv_86", 0.726301 AS "sv_87", 0.232469 AS "sv_88", 0.629894 AS "sv_89", 0.885501 AS "sv_90", -0.628301 AS "sv_91", 0.098510 AS "sv_92", 1.441891 AS "sv_93", 1.094458 AS "sv_94", 0.195035 AS "sv_95", -0.699828 AS "sv_96", -0.028398 AS "sv_97", 0.305889 AS "sv_98", 1.176062 AS "sv_99"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.833314 AS "sv_0", 0.023464 AS "sv_1", -1.279124 AS "sv_2", -1.066078 AS "sv_3", -0.192583 AS "sv_4", 0.412034 AS "sv_5", -0.459538 AS "sv_6", -0.631508 AS "sv_7", 0.476303 AS "sv_8", 0.372421 AS "sv_9", -0.199670 AS "sv_10", 0.524594 AS "sv_11", 0.330653 AS "sv_12", -1.420437 AS "sv_13", 0.922489 AS "sv_14", 0.312726 AS "sv_15", 1.468574 AS "sv_16", 0.086996 AS "sv_17", -1.837555 AS "sv_18", -0.474636 AS "sv_19", 0.558018 AS "sv_20", -0.583155 AS "sv_21", -1.121919 AS "sv_22", -0.651755 AS "sv_23", -0.075883 AS "sv_24", -1.741206 AS "sv_25", -0.649317 AS "sv_26", 0.176151 AS "sv_27", -0.881231 AS "sv_28", 0.388473 AS "sv_29", -1.425129 AS "sv_30", -2.765493 AS "sv_31", -1.221202 AS "sv_32", -0.994146 AS "sv_33", -0.271464 AS "sv_34", 2.343177 AS "sv_35", 1.332705 AS "sv_36", -1.394188 AS "sv_37", -0.162216 AS "sv_38", -0.381393 AS "sv_39", 0.434553 AS "sv_40", -1.606096 AS "sv_41", 0.803705 AS "sv_42", -0.007121 AS "sv_43", -0.538337 AS "sv_44", 0.958776 AS "sv_45", 1.472130 AS "sv_46", -1.837992 AS "sv_47", -1.442488 AS "sv_48", -2.560280 AS "sv_49", 0.210935 AS "sv_50", 0.600681 AS "sv_51", 0.453700 AS "sv_52", -2.182597 AS "sv_53", 0.520062 AS "sv_54", -0.277847 AS "sv_55", -1.690963 AS "sv_56", 0.441917 AS "sv_57", 0.673304 AS "sv_58", 0.391637 AS "sv_59", -3.149032 AS "sv_60", -1.680185 AS "sv_61", -3.923177 AS "sv_62", -0.054965 AS "sv_63", 1.957180 AS "sv_64", 3.814790 AS "sv_65", 4.163351 AS "sv_66", -0.635292 AS "sv_67", 1.402165 AS "sv_68", -0.426587 AS "sv_69", 0.619720 AS "sv_70", 0.148662 AS "sv_71", -0.433505 AS "sv_72", -0.022074 AS "sv_73", -0.967232 AS "sv_74", -0.516467 AS "sv_75", -0.343009 AS "sv_76", -1.423354 AS "sv_77", -0.113187 AS "sv_78", -2.451632 AS "sv_79", 0.038315 AS "sv_80", -1.984446 AS "sv_81", -1.138428 AS "sv_82", -0.403418 AS "sv_83", 0.325825 AS "sv_84", 0.544179 AS "sv_85", 1.705864 AS "sv_86", -1.032581 AS "sv_87", -0.011133 AS "sv_88", 0.321766 AS "sv_89", 0.775843 AS "sv_90", 1.314384 AS "sv_91", -0.303159 AS "sv_92", 2.338021 AS "sv_93", -0.502609 AS "sv_94", 0.374363 AS "sv_95", -0.157021 AS "sv_96", 0.708903 AS "sv_97", -0.350409 AS "sv_98", -0.664509 AS "sv_99"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.456436 AS "sv_0", -2.080544 AS "sv_1", 0.694122 AS "sv_2", -0.521966 AS "sv_3", -0.232918 AS "sv_4", 1.529936 AS "sv_5", -0.181003 AS "sv_6", -0.900279 AS "sv_7", -0.317071 AS "sv_8", 0.405129 AS "sv_9", -0.913354 AS "sv_10", 1.522385 AS "sv_11", 1.750474 AS "sv_12", -0.730362 AS "sv_13", 1.550859 AS "sv_14", 0.142706 AS "sv_15", 0.045920 AS "sv_16", 0.407628 AS "sv_17", -0.326506 AS "sv_18", -0.481859 AS "sv_19", 0.093920 AS "sv_20", -0.245961 AS "sv_21", -1.964915 AS "sv_22", 0.507483 AS "sv_23", 1.156832 AS "sv_24", -0.367392 AS "sv_25", -0.973287 AS "sv_26", -3.104798 AS "sv_27", -0.273890 AS "sv_28", 1.665046 AS "sv_29", -1.514010 AS "sv_30", -0.955534 AS "sv_31", 0.207411 AS "sv_32", 1.529237 AS "sv_33", -1.698651 AS "sv_34", 1.744174 AS "sv_35", -1.266102 AS "sv_36", -0.580420 AS "sv_37", -0.855364 AS "sv_38", 0.104408 AS "sv_39", 0.593954 AS "sv_40", -1.416219 AS "sv_41", 0.108123 AS "sv_42", -0.484068 AS "sv_43", 1.695815 AS "sv_44", 1.387225 AS "sv_45", -3.996199 AS "sv_46", 1.273015 AS "sv_47", 0.638230 AS "sv_48", 2.153546 AS "sv_49", -0.088663 AS "sv_50", 0.906282 AS "sv_51", 1.316463 AS "sv_52", 1.801319 AS "sv_53", 0.543840 AS "sv_54", -1.203081 AS "sv_55", 1.039969 AS "sv_56", 0.047494 AS "sv_57", -0.278282 AS "sv_58", -1.011000 AS "sv_59", 1.636053 AS "sv_60", -0.630009 AS "sv_61", 2.869581 AS "sv_62", 1.296968 AS "sv_63", 0.189161 AS "sv_64", 2.857475 AS "sv_65", -4.187274 AS "sv_66", -0.744389 AS "sv_67", 0.298898 AS "sv_68", 1.361169 AS "sv_69", 1.384167 AS "sv_70", -0.211131 AS "sv_71", 1.188498 AS "sv_72", 0.196934 AS "sv_73", -1.470646 AS "sv_74", -0.363176 AS "sv_75", 0.784732 AS "sv_76", -0.132636 AS "sv_77", 0.100253 AS "sv_78", 2.386881 AS "sv_79", -0.233117 AS "sv_80", 0.448122 AS "sv_81", 2.280704 AS "sv_82", -1.269934 AS "sv_83", -0.367891 AS "sv_84", -0.816320 AS "sv_85", -0.908942 AS "sv_86", -0.701004 AS "sv_87", 1.058568 AS "sv_88", -0.364899 AS "sv_89", -2.010568 AS "sv_90", -1.067693 AS "sv_91", 1.606984 AS "sv_92", -0.291991 AS "sv_93", 2.264734 AS "sv_94", -0.449903 AS "sv_95", 0.462933 AS "sv_96", 0.753116 AS "sv_97", 1.059889 AS "sv_98", 0.328791 AS "sv_99"
     UNION ALL
     SELECT 6 AS "sv_idx", 0.236087 AS "sv_0", 1.340066 AS "sv_1", -0.531894 AS "sv_2", 0.378599 AS "sv_3", 1.636443 AS "sv_4", -0.451022 AS "sv_5", 1.389416 AS "sv_6", -1.189252 AS "sv_7", -0.095460 AS "sv_8", -0.980590 AS "sv_9", 0.399748 AS "sv_10", 1.092914 AS "sv_11", -0.439079 AS "sv_12", 0.498282 AS "sv_13", -0.658157 AS "sv_14", 1.011585 AS "sv_15", -0.441144 AS "sv_16", -2.963158 AS "sv_17", -0.656651 AS "sv_18", -1.181313 AS "sv_19", -0.490645 AS "sv_20", 0.942491 AS "sv_21", -1.489098 AS "sv_22", 1.235798 AS "sv_23", -0.459810 AS "sv_24", -0.715092 AS "sv_25", 0.720429 AS "sv_26", -1.203713 AS "sv_27", 0.592981 AS "sv_28", 0.270580 AS "sv_29", -2.985342 AS "sv_30", -0.224418 AS "sv_31", 1.731065 AS "sv_32", -0.168038 AS "sv_33", -0.169717 AS "sv_34", 0.980873 AS "sv_35", -0.373651 AS "sv_36", 1.281672 AS "sv_37", 1.335167 AS "sv_38", 0.728423 AS "sv_39", 0.436699 AS "sv_40", 0.319789 AS "sv_41", 0.629772 AS "sv_42", -0.928043 AS "sv_43", 2.604417 AS "sv_44", -0.741402 AS "sv_45", -1.743345 AS "sv_46", -0.481413 AS "sv_47", -0.866235 AS "sv_48", 3.984405 AS "sv_49", 0.138963 AS "sv_50", -1.694215 AS "sv_51", 1.085348 AS "sv_52", 2.036262 AS "sv_53", -1.459596 AS "sv_54", -0.830533 AS "sv_55", 0.759065 AS "sv_56", -0.150306 AS "sv_57", -0.338694 AS "sv_58", -1.073556 AS "sv_59", -0.789428 AS "sv_60", 0.177401 AS "sv_61", 0.675807 AS "sv_62", -1.046087 AS "sv_63", -0.036922 AS "sv_64", 1.878343 AS "sv_65", -5.103667 AS "sv_66", 3.940336 AS "sv_67", 0.157641 AS "sv_68", -1.449877 AS "sv_69", -0.269815 AS "sv_70", 0.450701 AS "sv_71", 0.149591 AS "sv_72", 0.759280 AS "sv_73", -1.450596 AS "sv_74", -1.039145 AS "sv_75", 1.336271 AS "sv_76", 0.261726 AS "sv_77", 0.683709 AS "sv_78", 2.504624 AS "sv_79", 0.658197 AS "sv_80", 0.708049 AS "sv_81", 0.672007 AS "sv_82", -0.329617 AS "sv_83", 0.095917 AS "sv_84", -0.423836 AS "sv_85", 1.352312 AS "sv_86", 1.139587 AS "sv_87", -0.417047 AS "sv_88", -1.897272 AS "sv_89", -0.019460 AS "sv_90", -0.641111 AS "sv_91", -0.580962 AS "sv_92", -0.512896 AS "sv_93", -0.679581 AS "sv_94", -2.131067 AS "sv_95", 2.036765 AS "sv_96", 1.625548 AS "sv_97", 0.078043 AS "sv_98", -0.185077 AS "sv_99"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.760033 AS "sv_0", -1.403882 AS "sv_1", -1.183618 AS "sv_2", -0.639897 AS "sv_3", -0.092661 AS "sv_4", 0.371745 AS "sv_5", 0.971832 AS "sv_6", 0.073448 AS "sv_7", -0.755394 AS "sv_8", -0.500002 AS "sv_9", 0.631553 AS "sv_10", 3.597770 AS "sv_11", -0.029410 AS "sv_12", 0.844006 AS "sv_13", 0.412178 AS "sv_14", 0.186640 AS "sv_15", 2.130161 AS "sv_16", 0.874569 AS "sv_17", -0.723600 AS "sv_18", -1.455660 AS "sv_19", -0.647961 AS "sv_20", 0.363999 AS "sv_21", -0.511544 AS "sv_22", 1.940668 AS "sv_23", -0.923595 AS "sv_24", -1.413022 AS "sv_25", 1.403124 AS "sv_26", -0.453628 AS "sv_27", 0.377092 AS "sv_28", -0.874094 AS "sv_29", -2.111469 AS "sv_30", 1.042510 AS "sv_31", 0.298338 AS "sv_32", -0.430522 AS "sv_33", -1.216332 AS "sv_34", 0.329464 AS "sv_35", -1.016415 AS "sv_36", -0.433286 AS "sv_37", 1.173320 AS "sv_38", 0.671097 AS "sv_39", 0.121935 AS "sv_40", 0.415082 AS "sv_41", 0.065933 AS "sv_42", 0.066854 AS "sv_43", 0.211468 AS "sv_44", 0.326653 AS "sv_45", -2.135624 AS "sv_46", -0.036084 AS "sv_47", 0.454741 AS "sv_48", 3.671871 AS "sv_49", 0.372209 AS "sv_50", 0.420766 AS "sv_51", 1.268078 AS "sv_52", 1.895575 AS "sv_53", 1.375664 AS "sv_54", 1.055043 AS "sv_55", -0.156881 AS "sv_56", 0.484925 AS "sv_57", 1.789876 AS "sv_58", 2.396978 AS "sv_59", 0.222209 AS "sv_60", 0.228093 AS "sv_61", 1.288845 AS "sv_62", -0.009373 AS "sv_63", -1.474730 AS "sv_64", 2.356022 AS "sv_65", -8.572356 AS "sv_66", 0.248238 AS "sv_67", -1.332146 AS "sv_68", 0.978793 AS "sv_69", -1.689875 AS "sv_70", -0.363385 AS "sv_71", 0.300923 AS "sv_72", 0.098356 AS "sv_73", 2.030975 AS "sv_74", -0.074428 AS "sv_75", 0.255343 AS "sv_76", 2.654546 AS "sv_77", 0.844945 AS "sv_78", 2.247911 AS "sv_79", 1.322651 AS "sv_80", 0.076024 AS "sv_81", 0.125368 AS "sv_82", -0.170128 AS "sv_83", -0.525633 AS "sv_84", 0.618758 AS "sv_85", -0.371105 AS "sv_86", 0.443084 AS "sv_87", -0.246330 AS "sv_88", -2.033567 AS "sv_89", -2.146146 AS "sv_90", 1.073507 AS "sv_91", -0.701861 AS "sv_92", -0.504748 AS "sv_93", -1.985036 AS "sv_94", -0.797787 AS "sv_95", -2.344741 AS "sv_96", 0.997268 AS "sv_97", -2.253838 AS "sv_98", -1.221147 AS "sv_99"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.293314 AS "sv_0", -1.260450 AS "sv_1", -3.448018 AS "sv_2", 0.269382 AS "sv_3", 1.544218 AS "sv_4", -0.060080 AS "sv_5", 0.280082 AS "sv_6", -0.349374 AS "sv_7", -1.710040 AS "sv_8", 0.822555 AS "sv_9", 0.007016 AS "sv_10", 0.773456 AS "sv_11", -1.021324 AS "sv_12", -0.134429 AS "sv_13", -0.203461 AS "sv_14", 1.284766 AS "sv_15", -1.164964 AS "sv_16", -0.053507 AS "sv_17", 0.857035 AS "sv_18", 1.382567 AS "sv_19", 0.090393 AS "sv_20", 0.008640 AS "sv_21", -0.540079 AS "sv_22", -0.488575 AS "sv_23", 0.452569 AS "sv_24", 0.542306 AS "sv_25", 1.075689 AS "sv_26", 3.461402 AS "sv_27", 3.283596 AS "sv_28", -0.320053 AS "sv_29", -1.148043 AS "sv_30", -2.760979 AS "sv_31", 0.015563 AS "sv_32", 0.874092 AS "sv_33", -0.798801 AS "sv_34", -2.429596 AS "sv_35", -0.676248 AS "sv_36", -1.149957 AS "sv_37", 0.439849 AS "sv_38", -0.187727 AS "sv_39", 1.345956 AS "sv_40", -0.983104 AS "sv_41", -0.830254 AS "sv_42", -0.139652 AS "sv_43", 0.203547 AS "sv_44", 0.451490 AS "sv_45", -3.959701 AS "sv_46", -0.351788 AS "sv_47", 0.784380 AS "sv_48", -0.429442 AS "sv_49", 0.105397 AS "sv_50", 0.779594 AS "sv_51", -0.113828 AS "sv_52", -0.540005 AS "sv_53", -1.168471 AS "sv_54", -0.336891 AS "sv_55", 0.990479 AS "sv_56", 0.500426 AS "sv_57", -2.409168 AS "sv_58", -0.840187 AS "sv_59", -0.207494 AS "sv_60", -0.410497 AS "sv_61", 4.086329 AS "sv_62", 0.931320 AS "sv_63", 0.954049 AS "sv_64", -0.091196 AS "sv_65", -7.516724 AS "sv_66", 0.723851 AS "sv_67", -0.039638 AS "sv_68", 1.771013 AS "sv_69", -1.176008 AS "sv_70", 0.122992 AS "sv_71", -0.037435 AS "sv_72", 0.172770 AS "sv_73", -0.408644 AS "sv_74", 0.494355 AS "sv_75", 1.749942 AS "sv_76", 0.989654 AS "sv_77", 0.174723 AS "sv_78", -9.376652 AS "sv_79", -0.004316 AS "sv_80", -1.701451 AS "sv_81", -1.749925 AS "sv_82", -0.172721 AS "sv_83", 0.582682 AS "sv_84", -0.526583 AS "sv_85", 1.913241 AS "sv_86", -0.240156 AS "sv_87", -1.351124 AS "sv_88", -0.365208 AS "sv_89", -0.135533 AS "sv_90", 1.086724 AS "sv_91", 0.704294 AS "sv_92", -0.871233 AS "sv_93", 1.041840 AS "sv_94", -0.646792 AS "sv_95", 0.374141 AS "sv_96", 0.327620 AS "sv_97", 0.164190 AS "sv_98", 2.205145 AS "sv_99"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.193096 AS "sv_0", -0.499944 AS "sv_1", 0.528137 AS "sv_2", 0.185365 AS "sv_3", -0.710496 AS "sv_4", -0.088534 AS "sv_5", -0.638042 AS "sv_6", 0.881742 AS "sv_7", 1.257524 AS "sv_8", -0.873580 AS "sv_9", -0.955400 AS "sv_10", -0.135604 AS "sv_11", 0.483998 AS "sv_12", -0.996603 AS "sv_13", 0.937519 AS "sv_14", -0.058986 AS "sv_15", -1.139899 AS "sv_16", -1.258182 AS "sv_17", 0.526024 AS "sv_18", -0.701516 AS "sv_19", 1.329732 AS "sv_20", 2.445268 AS "sv_21", -0.772713 AS "sv_22", 0.513767 AS "sv_23", 0.498695 AS "sv_24", 1.143760 AS "sv_25", -0.654240 AS "sv_26", -0.061780 AS "sv_27", -1.032052 AS "sv_28", 0.277230 AS "sv_29", -0.969139 AS "sv_30", 0.110735 AS "sv_31", -0.505988 AS "sv_32", 1.028739 AS "sv_33", 1.029713 AS "sv_34", -2.580904 AS "sv_35", -0.999438 AS "sv_36", 2.124228 AS "sv_37", -0.389199 AS "sv_38", -0.932601 AS "sv_39", -0.693674 AS "sv_40", -0.407995 AS "sv_41", -1.902502 AS "sv_42", -0.623406 AS "sv_43", -1.666509 AS "sv_44", -2.140107 AS "sv_45", -0.313505 AS "sv_46", 0.916596 AS "sv_47", -1.298099 AS "sv_48", 1.013244 AS "sv_49", 1.433642 AS "sv_50", -1.013526 AS "sv_51", -1.491189 AS "sv_52", -2.458116 AS "sv_53", 1.119385 AS "sv_54", 0.471532 AS "sv_55", 0.287434 AS "sv_56", 0.617101 AS "sv_57", 0.558946 AS "sv_58", -0.908717 AS "sv_59", 2.146880 AS "sv_60", -1.058334 AS "sv_61", -0.824341 AS "sv_62", 0.151691 AS "sv_63", 1.607716 AS "sv_64", 0.955082 AS "sv_65", -1.608977 AS "sv_66", -1.663039 AS "sv_67", 0.757983 AS "sv_68", 0.317574 AS "sv_69", 0.393135 AS "sv_70", 0.126543 AS "sv_71", 0.014847 AS "sv_72", -1.588602 AS "sv_73", -0.591679 AS "sv_74", 0.342316 AS "sv_75", -0.210360 AS "sv_76", -1.423557 AS "sv_77", -0.223384 AS "sv_78", -4.082691 AS "sv_79", 0.926247 AS "sv_80", 0.584457 AS "sv_81", -0.501929 AS "sv_82", -0.545637 AS "sv_83", 0.672930 AS "sv_84", -1.349696 AS "sv_85", 1.734989 AS "sv_86", -0.295029 AS "sv_87", 0.798497 AS "sv_88", 0.177033 AS "sv_89", -2.692066 AS "sv_90", 0.126748 AS "sv_91", -0.517131 AS "sv_92", 0.958465 AS "sv_93", -0.524761 AS "sv_94", 0.300142 AS "sv_95", 0.092774 AS "sv_96", -0.506615 AS "sv_97", 1.236806 AS "sv_98", 1.097111 AS "sv_99"
     UNION ALL
     SELECT 10 AS "sv_idx", 0.004588 AS "sv_0", 0.415182 AS "sv_1", 1.122491 AS "sv_2", 0.681550 AS "sv_3", -1.793412 AS "sv_4", -0.854154 AS "sv_5", -0.405173 AS "sv_6", -0.590479 AS "sv_7", -1.342304 AS "sv_8", -0.389479 AS "sv_9", -0.516830 AS "sv_10", -1.826425 AS "sv_11", 1.219320 AS "sv_12", -0.636517 AS "sv_13", -0.041786 AS "sv_14", 1.686792 AS "sv_15", 0.198111 AS "sv_16", -0.533407 AS "sv_17", -0.187098 AS "sv_18", 0.570602 AS "sv_19", -0.346433 AS "sv_20", 1.226422 AS "sv_21", 0.898647 AS "sv_22", 0.275498 AS "sv_23", -0.760179 AS "sv_24", 2.469146 AS "sv_25", 1.635426 AS "sv_26", 0.418450 AS "sv_27", -0.663799 AS "sv_28", 0.705009 AS "sv_29", 0.732988 AS "sv_30", -1.992475 AS "sv_31", 0.835608 AS "sv_32", 0.031383 AS "sv_33", 2.524236 AS "sv_34", 0.785175 AS "sv_35", -1.466741 AS "sv_36", -0.052801 AS "sv_37", 0.766325 AS "sv_38", -0.207439 AS "sv_39", 2.968668 AS "sv_40", 0.055649 AS "sv_41", -1.237978 AS "sv_42", 0.762978 AS "sv_43", 0.507351 AS "sv_44", 0.567499 AS "sv_45", 0.062366 AS "sv_46", 0.889868 AS "sv_47", 0.763436 AS "sv_48", -1.550883 AS "sv_49", -0.016057 AS "sv_50", -1.721677 AS "sv_51", -1.288354 AS "sv_52", 2.384490 AS "sv_53", -0.568026 AS "sv_54", 0.674640 AS "sv_55", -0.743151 AS "sv_56", 0.416456 AS "sv_57", 1.200453 AS "sv_58", 0.947420 AS "sv_59", -0.010791 AS "sv_60", 0.388544 AS "sv_61", -4.015753 AS "sv_62", 0.323573 AS "sv_63", -1.153626 AS "sv_64", -0.483897 AS "sv_65", 0.200695 AS "sv_66", -0.556413 AS "sv_67", -0.447544 AS "sv_68", -0.913344 AS "sv_69", 0.156762 AS "sv_70", 1.151437 AS "sv_71", 0.720509 AS "sv_72", 0.314258 AS "sv_73", 0.313811 AS "sv_74", 0.289509 AS "sv_75", 0.378053 AS "sv_76", 2.003535 AS "sv_77", -0.951197 AS "sv_78", 1.665566 AS "sv_79", -0.871809 AS "sv_80", -1.239586 AS "sv_81", -0.751989 AS "sv_82", 0.581552 AS "sv_83", 1.018482 AS "sv_84", 0.016252 AS "sv_85", -2.053792 AS "sv_86", -1.102779 AS "sv_87", -0.131384 AS "sv_88", 0.447545 AS "sv_89", 0.746116 AS "sv_90", -0.438900 AS "sv_91", -1.104818 AS "sv_92", -0.016477 AS "sv_93", -1.229095 AS "sv_94", -1.605557 AS "sv_95", 1.929055 AS "sv_96", 0.469463 AS "sv_97", -1.470150 AS "sv_98", -1.415749 AS "sv_99"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.879904 AS "sv_0", -0.295988 AS "sv_1", 0.027052 AS "sv_2", 1.003348 AS "sv_3", -1.750623 AS "sv_4", 0.665136 AS "sv_5", 0.193248 AS "sv_6", -0.329571 AS "sv_7", 0.270577 AS "sv_8", 1.145257 AS "sv_9", -1.360153 AS "sv_10", -0.449912 AS "sv_11", 1.355256 AS "sv_12", 1.099926 AS "sv_13", -1.231688 AS "sv_14", -0.253683 AS "sv_15", 0.676529 AS "sv_16", -0.423234 AS "sv_17", -1.069669 AS "sv_18", 0.138242 AS "sv_19", 0.795314 AS "sv_20", -0.578401 AS "sv_21", 0.071512 AS "sv_22", 0.041597 AS "sv_23", 1.716748 AS "sv_24", 0.674459 AS "sv_25", 1.920119 AS "sv_26", -0.685199 AS "sv_27", 0.844704 AS "sv_28", -0.317995 AS "sv_29", -0.026976 AS "sv_30", -0.036606 AS "sv_31", 0.910707 AS "sv_32", -0.161095 AS "sv_33", -1.767603 AS "sv_34", -2.928566 AS "sv_35", 0.636673 AS "sv_36", -0.001607 AS "sv_37", 0.141077 AS "sv_38", 0.691537 AS "sv_39", 0.548330 AS "sv_40", 0.124204 AS "sv_41", 0.724704 AS "sv_42", -0.396448 AS "sv_43", -0.065292 AS "sv_44", -0.221697 AS "sv_45", -0.239287 AS "sv_46", -0.490331 AS "sv_47", -2.134197 AS "sv_48", 0.851965 AS "sv_49", -0.926725 AS "sv_50", -0.469652 AS "sv_51", -0.774522 AS "sv_52", -1.290695 AS "sv_53", 0.441277 AS "sv_54", -0.748425 AS "sv_55", 0.128095 AS "sv_56", 0.435403 AS "sv_57", -0.636415 AS "sv_58", -2.499141 AS "sv_59", 0.512145 AS "sv_60", 1.265953 AS "sv_61", 0.901684 AS "sv_62", 1.415233 AS "sv_63", -0.360014 AS "sv_64", -0.276479 AS "sv_65", -0.700612 AS "sv_66", 0.466738 AS "sv_67", -0.103894 AS "sv_68", -0.677161 AS "sv_69", 0.535360 AS "sv_70", 1.376800 AS "sv_71", 1.501911 AS "sv_72", -1.327692 AS "sv_73", -2.150942 AS "sv_74", 0.833557 AS "sv_75", -0.290556 AS "sv_76", -1.574892 AS "sv_77", 0.343992 AS "sv_78", -3.276470 AS "sv_79", 0.235273 AS "sv_80", -0.269752 AS "sv_81", -0.502029 AS "sv_82", 0.774786 AS "sv_83", 0.730670 AS "sv_84", 1.437167 AS "sv_85", 0.066693 AS "sv_86", 0.094191 AS "sv_87", 0.925313 AS "sv_88", 0.702440 AS "sv_89", 2.078864 AS "sv_90", -0.256489 AS "sv_91", -0.476713 AS "sv_92", 0.364843 AS "sv_93", -0.656551 AS "sv_94", -0.438953 AS "sv_95", 1.669093 AS "sv_96", 0.519573 AS "sv_97", -0.809065 AS "sv_98", 0.313258 AS "sv_99"
     UNION ALL
     SELECT 12 AS "sv_idx", 0.935563 AS "sv_0", 2.247500 AS "sv_1", -1.070940 AS "sv_2", 0.508270 AS "sv_3", 0.143986 AS "sv_4", -0.433900 AS "sv_5", 0.220938 AS "sv_6", -0.605713 AS "sv_7", 1.046236 AS "sv_8", -0.511191 AS "sv_9", -1.492172 AS "sv_10", 0.578793 AS "sv_11", -0.520726 AS "sv_12", 0.871260 AS "sv_13", -1.556194 AS "sv_14", 1.525185 AS "sv_15", -0.073653 AS "sv_16", -1.172650 AS "sv_17", -0.690030 AS "sv_18", -1.000716 AS "sv_19", 0.337273 AS "sv_20", -0.552995 AS "sv_21", 0.475280 AS "sv_22", -1.403080 AS "sv_23", 0.960446 AS "sv_24", -0.487095 AS "sv_25", -0.787124 AS "sv_26", 4.547302 AS "sv_27", 1.168339 AS "sv_28", -0.516704 AS "sv_29", 0.126905 AS "sv_30", -2.690203 AS "sv_31", -1.607150 AS "sv_32", -1.601944 AS "sv_33", 1.459407 AS "sv_34", -0.207470 AS "sv_35", -0.790603 AS "sv_36", -0.027849 AS "sv_37", -1.210243 AS "sv_38", 0.558430 AS "sv_39", -0.163654 AS "sv_40", 0.632869 AS "sv_41", -0.125207 AS "sv_42", -0.334408 AS "sv_43", 0.630640 AS "sv_44", 1.335640 AS "sv_45", 3.526025 AS "sv_46", 0.706133 AS "sv_47", 1.954254 AS "sv_48", -0.252463 AS "sv_49", -0.460087 AS "sv_50", -1.199244 AS "sv_51", 0.641360 AS "sv_52", -2.274165 AS "sv_53", -1.086631 AS "sv_54", -1.794556 AS "sv_55", -0.453342 AS "sv_56", -0.569206 AS "sv_57", -0.271142 AS "sv_58", 0.619320 AS "sv_59", -2.589246 AS "sv_60", 0.984493 AS "sv_61", 0.216142 AS "sv_62", 0.848047 AS "sv_63", -0.220010 AS "sv_64", -3.312276 AS "sv_65", 0.116690 AS "sv_66", 1.422598 AS "sv_67", 1.794065 AS "sv_68", -0.190514 AS "sv_69", 0.755192 AS "sv_70", 0.154059 AS "sv_71", 0.711079 AS "sv_72", -1.326990 AS "sv_73", -2.070938 AS "sv_74", 0.934238 AS "sv_75", -0.460940 AS "sv_76", -0.804052 AS "sv_77", -0.050237 AS "sv_78", -3.752018 AS "sv_79", 0.060923 AS "sv_80", -1.000794 AS "sv_81", -0.943619 AS "sv_82", 0.228104 AS "sv_83", -0.098454 AS "sv_84", -0.085112 AS "sv_85", 0.086981 AS "sv_86", -1.417656 AS "sv_87", 0.271681 AS "sv_88", -0.874418 AS "sv_89", -2.532578 AS "sv_90", -0.578378 AS "sv_91", -0.753983 AS "sv_92", 0.952363 AS "sv_93", -0.963835 AS "sv_94", -0.648602 AS "sv_95", -1.774994 AS "sv_96", 0.677246 AS "sv_97", -0.177791 AS "sv_98", -0.249523 AS "sv_99"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.094549 AS "sv_0", -0.840780 AS "sv_1", -0.040313 AS "sv_2", 0.586013 AS "sv_3", -1.809827 AS "sv_4", -0.851373 AS "sv_5", -0.636549 AS "sv_6", -1.309639 AS "sv_7", -0.031229 AS "sv_8", 0.743041 AS "sv_9", -1.486970 AS "sv_10", -0.330307 AS "sv_11", 0.908960 AS "sv_12", 0.706600 AS "sv_13", -0.861733 AS "sv_14", 1.332491 AS "sv_15", 0.964084 AS "sv_16", -0.983749 AS "sv_17", 2.040563 AS "sv_18", 0.597238 AS "sv_19", 0.036661 AS "sv_20", 0.368359 AS "sv_21", -0.942652 AS "sv_22", 0.456403 AS "sv_23", -1.392774 AS "sv_24", -0.118574 AS "sv_25", -2.111535 AS "sv_26", -0.474058 AS "sv_27", -1.022458 AS "sv_28", 0.505896 AS "sv_29", 0.955996 AS "sv_30", -1.220703 AS "sv_31", -1.161475 AS "sv_32", 0.875763 AS "sv_33", 0.273817 AS "sv_34", -0.594484 AS "sv_35", -0.007347 AS "sv_36", -1.011400 AS "sv_37", -1.116718 AS "sv_38", 0.880314 AS "sv_39", -0.547036 AS "sv_40", -0.146736 AS "sv_41", -0.210033 AS "sv_42", 0.231951 AS "sv_43", 1.963220 AS "sv_44", 1.044065 AS "sv_45", 0.779500 AS "sv_46", 0.395783 AS "sv_47", 0.448653 AS "sv_48", -1.611999 AS "sv_49", 0.989189 AS "sv_50", -0.705743 AS "sv_51", 0.150712 AS "sv_52", 1.211326 AS "sv_53", 1.611407 AS "sv_54", -0.356100 AS "sv_55", -1.701727 AS "sv_56", -0.710289 AS "sv_57", 0.218022 AS "sv_58", -0.450722 AS "sv_59", -0.273687 AS "sv_60", -0.373965 AS "sv_61", -2.270452 AS "sv_62", 0.317032 AS "sv_63", 0.383641 AS "sv_64", 2.933745 AS "sv_65", -0.656875 AS "sv_66", 0.662119 AS "sv_67", -1.742956 AS "sv_68", 1.851753 AS "sv_69", 0.675284 AS "sv_70", 2.369509 AS "sv_71", -0.261403 AS "sv_72", 0.505135 AS "sv_73", -0.487525 AS "sv_74", 1.378412 AS "sv_75", -0.220488 AS "sv_76", 1.475645 AS "sv_77", 1.213123 AS "sv_78", -1.823234 AS "sv_79", 0.440795 AS "sv_80", 0.717952 AS "sv_81", -1.814633 AS "sv_82", -0.647857 AS "sv_83", 0.341896 AS "sv_84", -2.029837 AS "sv_85", -0.755326 AS "sv_86", 0.688913 AS "sv_87", -0.432393 AS "sv_88", -1.637126 AS "sv_89", -1.500265 AS "sv_90", -0.438690 AS "sv_91", 1.125916 AS "sv_92", 0.605856 AS "sv_93", 0.193848 AS "sv_94", 0.372333 AS "sv_95", -0.036311 AS "sv_96", -1.588936 AS "sv_97", -2.097391 AS "sv_98", -1.175138 AS "sv_99"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.684619 AS "sv_0", -0.394139 AS "sv_1", 0.273230 AS "sv_2", 0.018631 AS "sv_3", 0.430340 AS "sv_4", -0.750516 AS "sv_5", -0.570309 AS "sv_6", 0.869059 AS "sv_7", -0.209476 AS "sv_8", 1.845088 AS "sv_9", -0.585239 AS "sv_10", -0.599210 AS "sv_11", -2.014643 AS "sv_12", 0.083174 AS "sv_13", -0.680345 AS "sv_14", 0.114455 AS "sv_15", 0.503521 AS "sv_16", 0.004654 AS "sv_17", 1.094299 AS "sv_18", -0.570771 AS "sv_19", -1.495540 AS "sv_20", 0.323424 AS "sv_21", -0.457201 AS "sv_22", -0.106307 AS "sv_23", 0.233557 AS "sv_24", 1.006068 AS "sv_25", -1.345548 AS "sv_26", -3.648842 AS "sv_27", -0.308394 AS "sv_28", 0.115537 AS "sv_29", -0.565964 AS "sv_30", 2.013806 AS "sv_31", 3.696644 AS "sv_32", 0.395053 AS "sv_33", -0.481797 AS "sv_34", -2.029526 AS "sv_35", -0.222416 AS "sv_36", 0.867161 AS "sv_37", 1.336559 AS "sv_38", 1.198184 AS "sv_39", -0.441471 AS "sv_40", 1.138894 AS "sv_41", 2.304727 AS "sv_42", -0.963893 AS "sv_43", 1.429951 AS "sv_44", 0.471444 AS "sv_45", 2.423498 AS "sv_46", -0.428138 AS "sv_47", 0.264871 AS "sv_48", -2.116237 AS "sv_49", -0.360843 AS "sv_50", -2.230887 AS "sv_51", 2.287718 AS "sv_52", -0.017298 AS "sv_53", 0.195521 AS "sv_54", 1.450340 AS "sv_55", 0.799357 AS "sv_56", -0.100206 AS "sv_57", -1.109551 AS "sv_58", -0.561457 AS "sv_59", -3.042294 AS "sv_60", -0.551578 AS "sv_61", -1.790081 AS "sv_62", -1.302086 AS "sv_63", -1.363133 AS "sv_64", 1.777418 AS "sv_65", 6.508978 AS "sv_66", -1.031136 AS "sv_67", 1.271239 AS "sv_68", 0.249547 AS "sv_69", -1.187490 AS "sv_70", -0.979661 AS "sv_71", -1.759412 AS "sv_72", -0.702947 AS "sv_73", -0.572502 AS "sv_74", -1.267796 AS "sv_75", -0.284518 AS "sv_76", -0.047004 AS "sv_77", -0.572631 AS "sv_78", 0.839245 AS "sv_79", 0.156317 AS "sv_80", -0.287965 AS "sv_81", 1.760884 AS "sv_82", -1.615263 AS "sv_83", -0.746386 AS "sv_84", -1.578260 AS "sv_85", 0.336001 AS "sv_86", -0.075842 AS "sv_87", -0.293281 AS "sv_88", -3.190134 AS "sv_89", 0.861346 AS "sv_90", 0.218040 AS "sv_91", -1.180538 AS "sv_92", -0.588420 AS "sv_93", 0.824973 AS "sv_94", -1.319764 AS "sv_95", -0.355820 AS "sv_96", -0.067597 AS "sv_97", 0.335744 AS "sv_98", -0.537372 AS "sv_99"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.152497 AS "sv_0", -1.187080 AS "sv_1", -1.877030 AS "sv_2", -1.577560 AS "sv_3", -0.354472 AS "sv_4", 1.308594 AS "sv_5", 0.063603 AS "sv_6", -0.466513 AS "sv_7", -0.518751 AS "sv_8", 0.834841 AS "sv_9", 1.046222 AS "sv_10", 0.910318 AS "sv_11", 0.150007 AS "sv_12", 1.040108 AS "sv_13", -1.114367 AS "sv_14", 0.795211 AS "sv_15", 1.017676 AS "sv_16", -1.411337 AS "sv_17", 0.460866 AS "sv_18", 0.553425 AS "sv_19", -0.100346 AS "sv_20", 2.064265 AS "sv_21", 0.273158 AS "sv_22", -0.084077 AS "sv_23", -0.807687 AS "sv_24", -2.009448 AS "sv_25", 0.881569 AS "sv_26", 0.455955 AS "sv_27", 1.269088 AS "sv_28", -1.830596 AS "sv_29", -0.422027 AS "sv_30", 0.847445 AS "sv_31", -1.103354 AS "sv_32", -0.719630 AS "sv_33", -1.729853 AS "sv_34", 0.084372 AS "sv_35", 0.639721 AS "sv_36", 0.385089 AS "sv_37", 0.115700 AS "sv_38", -1.267681 AS "sv_39", -1.315924 AS "sv_40", -0.564985 AS "sv_41", 2.140460 AS "sv_42", -0.978692 AS "sv_43", -0.367229 AS "sv_44", 0.456969 AS "sv_45", -0.132053 AS "sv_46", -0.070801 AS "sv_47", 1.711856 AS "sv_48", -1.727446 AS "sv_49", 1.099612 AS "sv_50", -0.583187 AS "sv_51", 0.474459 AS "sv_52", -1.482547 AS "sv_53", -0.943585 AS "sv_54", 0.983337 AS "sv_55", 0.861810 AS "sv_56", 1.583673 AS "sv_57", 0.917763 AS "sv_58", 0.663885 AS "sv_59", -1.339187 AS "sv_60", 0.532934 AS "sv_61", -3.777786 AS "sv_62", 0.111562 AS "sv_63", -1.753057 AS "sv_64", 0.626127 AS "sv_65", 1.642787 AS "sv_66", -1.475694 AS "sv_67", 0.126094 AS "sv_68", -0.567302 AS "sv_69", 0.309086 AS "sv_70", -1.620057 AS "sv_71", -0.609607 AS "sv_72", 1.774330 AS "sv_73", -0.689671 AS "sv_74", 0.539048 AS "sv_75", 2.163938 AS "sv_76", -0.503568 AS "sv_77", -0.284404 AS "sv_78", -0.095236 AS "sv_79", -1.711312 AS "sv_80", -0.250659 AS "sv_81", -1.528773 AS "sv_82", -0.445015 AS "sv_83", 1.512393 AS "sv_84", -1.676881 AS "sv_85", 1.425238 AS "sv_86", 1.568413 AS "sv_87", -1.558846 AS "sv_88", -1.693496 AS "sv_89", -1.192803 AS "sv_90", 0.496323 AS "sv_91", 0.006298 AS "sv_92", 0.934179 AS "sv_93", -1.152307 AS "sv_94", 0.570286 AS "sv_95", 0.667198 AS "sv_96", -0.309107 AS "sv_97", 0.388650 AS "sv_98", -0.153948 AS "sv_99"
   ) AS "Values"
 ),
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.006068 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2) + power(model_input."X_10" - "SV_data"."sv_10", 2) + power(model_input."X_11" - "SV_data"."sv_11", 2) + power(model_input."X_12" - "SV_data"."sv_12", 2) + power(model_input."X_13" - "SV_data"."sv_13", 2) + power(model_input."X_14" - "SV_data"."sv_14", 2) + power(model_input."X_15" - "SV_data"."sv_15", 2) + power(model_input."X_16" - "SV_data"."sv_16", 2) + power(model_input."X_17" - "SV_data"."sv_17", 2) + power(model_input."X_18" - "SV_data"."sv_18", 2) + power(model_input."X_19" - "SV_data"."sv_19", 2) + power(model_input."X_20" - "SV_data"."sv_20", 2) + power(model_input."X_21" - "SV_data"."sv_21", 2) + power(model_input."X_22" - "SV_data"."sv_22", 2) + power(model_input."X_23" - "SV_data"."sv_23", 2) + power(model_input."X_24" - "SV_data"."sv_24", 2) + power(model_input."X_25" - "SV_data"."sv_25", 2) + power(model_input."X_26" - "SV_data"."sv_26", 2) + power(model_input."X_27" - "SV_data"."sv_27", 2) + power(model_input."X_28" - "SV_data"."sv_28", 2) + power(model_input."X_29" - "SV_data"."sv_29", 2) + power(model_input."X_30" - "SV_data"."sv_30", 2) + power(model_input."X_31" - "SV_data"."sv_31", 2) + power(model_input."X_32" - "SV_data"."sv_32", 2) + power(model_input."X_33" - "SV_data"."sv_33", 2) + power(model_input."X_34" - "SV_data"."sv_34", 2) + power(model_input."X_35" - "SV_data"."sv_35", 2) + power(model_input."X_36" - "SV_data"."sv_36", 2) + power(model_input."X_37" - "SV_data"."sv_37", 2) + power(model_input."X_38" - "SV_data"."sv_38", 2) + power(model_input."X_39" - "SV_data"."sv_39", 2) + power(model_input."X_40" - "SV_data"."sv_40", 2) + power(model_input."X_41" - "SV_data"."sv_41", 2) + power(model_input."X_42" - "SV_data"."sv_42", 2) + power(model_input."X_43" - "SV_data"."sv_43", 2) + power(model_input."X_44" - "SV_data"."sv_44", 2) + power(model_input."X_45" - "SV_data"."sv_45", 2) + power(model_input."X_46" - "SV_data"."sv_46", 2) + power(model_input."X_47" - "SV_data"."sv_47", 2) + power(model_input."X_48" - "SV_data"."sv_48", 2) + power(model_input."X_49" - "SV_data"."sv_49", 2) + power(model_input."X_50" - "SV_data"."sv_50", 2) + power(model_input."X_51" - "SV_data"."sv_51", 2) + power(model_input."X_52" - "SV_data"."sv_52", 2) + power(model_input."X_53" - "SV_data"."sv_53", 2) + power(model_input."X_54" - "SV_data"."sv_54", 2) + power(model_input."X_55" - "SV_data"."sv_55", 2) + power(model_input."X_56" - "SV_data"."sv_56", 2) + power(model_input."X_57" - "SV_data"."sv_57", 2) + power(model_input."X_58" - "SV_data"."sv_58", 2) + power(model_input."X_59" - "SV_data"."sv_59", 2) + power(model_input."X_60" - "SV_data"."sv_60", 2) + power(model_input."X_61" - "SV_data"."sv_61", 2) + power(model_input."X_62" - "SV_data"."sv_62", 2) + power(model_input."X_63" - "SV_data"."sv_63", 2) + power(model_input."X_64" - "SV_data"."sv_64", 2) + power(model_input."X_65" - "SV_data"."sv_65", 2) + power(model_input."X_66" - "SV_data"."sv_66", 2) + power(model_input."X_67" - "SV_data"."sv_67", 2) + power(model_input."X_68" - "SV_data"."sv_68", 2) + power(model_input."X_69" - "SV_data"."sv_69", 2) + power(model_input."X_70" - "SV_data"."sv_70", 2) + power(model_input."X_71" - "SV_data"."sv_71", 2) + power(model_input."X_72" - "SV_data"."sv_72", 2) + power(model_input."X_73" - "SV_data"."sv_73", 2) + power(model_input."X_74" - "SV_data"."sv_74", 2) + power(model_input."X_75" - "SV_data"."sv_75", 2) + power(model_input."X_76" - "SV_data"."sv_76", 2) + power(model_input."X_77" - "SV_data"."sv_77", 2) + power(model_input."X_78" - "SV_data"."sv_78", 2) + power(model_input."X_79" - "SV_data"."sv_79", 2) + power(model_input."X_80" - "SV_data"."sv_80", 2) + power(model_input."X_81" - "SV_data"."sv_81", 2) + power(model_input."X_82" - "SV_data"."sv_82", 2) + power(model_input."X_83" - "SV_data"."sv_83", 2) + power(model_input."X_84" - "SV_data"."sv_84", 2) + power(model_input."X_85" - "SV_data"."sv_85", 2) + power(model_input."X_86" - "SV_data"."sv_86", 2) + power(model_input."X_87" - "SV_data"."sv_87", 2) + power(model_input."X_88" - "SV_data"."sv_88", 2) + power(model_input."X_89" - "SV_data"."sv_89", 2) + power(model_input."X_90" - "SV_data"."sv_90", 2) + power(model_input."X_91" - "SV_data"."sv_91", 2) + power(model_input."X_92" - "SV_data"."sv_92", 2) + power(model_input."X_93" - "SV_data"."sv_93", 2) + power(model_input."X_94" - "SV_data"."sv_94", 2) + power(model_input."X_95" - "SV_data"."sv_95", 2) + power(model_input."X_96" - "SV_data"."sv_96", 2) + power(model_input."X_97" - "SV_data"."sv_97", 2) + power(model_input."X_98" - "SV_data"."sv_98", 2) + power(model_input."X_99" - "SV_data"."sv_99", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 0.522269 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 0.588611 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 0.605457 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 0.509847 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.621059 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 0.522269 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 0.588611 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 0.605457 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 0 AS "sv_idx", 0.777124 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 1 AS "sv_idx", 0.799916 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 2 AS "sv_idx", 0.966693 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 3 AS "sv_idx", 0.766517 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 4 AS "sv_idx", 1.045851 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 0.522269 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 0.588611 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", 0.605457 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 11 AS "sv_idx", 0.509847 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 0 AS "sv_idx", 0.954534 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 1 AS "sv_idx", 1.089950 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 2 AS "sv_idx", 1.109887 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 3 AS "sv_idx", 0.784031 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 4 AS "sv_idx", 1.436738 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 0.522269 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 0.588611 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", 0.605457 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 15 AS "sv_idx", 0.509847 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 0.777124 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 6 AS "sv_idx", 0.799916 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 7 AS "sv_idx", 0.966693 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 0.777124 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 0.799916 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", 0.966693 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 11 AS "sv_idx", 0.766517 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 5 AS "sv_idx", 0.954534 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 6 AS "sv_idx", 1.089950 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 7 AS "sv_idx", 1.109887 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 0.777124 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 0.799916 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", 0.966693 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 15 AS "sv_idx", 0.766517 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 8 AS "sv_idx", 0.954534 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 9 AS "sv_idx", 1.089950 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 10 AS "sv_idx", 1.109887 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 11 AS "sv_idx", 0.784031 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 0.954534 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 1.089950 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", 1.109887 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 15 AS "sv_idx", 0.784031 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.207215 AS "rho", -5.063866 AS "probA", 0.472497 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", -0.065466 AS "rho", -4.647929 AS "probA", 0.511728 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", -0.072083 AS "rho", 3.410058 AS "probA", -0.835731 AS "probB"
     UNION ALL
     SELECT 3 AS "prob_idx", 0.203989 AS "rho", -6.405997 AS "probA", -0.382889 AS "probB"
     UNION ALL
     SELECT 4 AS "prob_idx", 0.166097 AS "rho", -6.040263 AS "probA", -0.462813 AS "probB"
     UNION ALL
     SELECT 5 AS "prob_idx", -0.022001 AS "rho", 3.853352 AS "probA", -0.065611 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   SUM( CASE WHEN (t1."c_1" == 2 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 2 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   SUM( CASE WHEN (t1."c_1" == 3 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 3 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
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
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
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
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte