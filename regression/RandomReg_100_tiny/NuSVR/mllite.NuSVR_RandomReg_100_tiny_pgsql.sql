WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3",
   "Values"."sv_4" AS "sv_4",
   "Values"."sv_5" AS "sv_5",
   "Values"."sv_6" AS "sv_6",
   "Values"."sv_7" AS "sv_7",
   "Values"."sv_8" AS "sv_8",
   "Values"."sv_9" AS "sv_9",
   "Values"."sv_10" AS "sv_10",
   "Values"."sv_11" AS "sv_11",
   "Values"."sv_12" AS "sv_12",
   "Values"."sv_13" AS "sv_13",
   "Values"."sv_14" AS "sv_14",
   "Values"."sv_15" AS "sv_15",
   "Values"."sv_16" AS "sv_16",
   "Values"."sv_17" AS "sv_17",
   "Values"."sv_18" AS "sv_18",
   "Values"."sv_19" AS "sv_19",
   "Values"."sv_20" AS "sv_20",
   "Values"."sv_21" AS "sv_21",
   "Values"."sv_22" AS "sv_22",
   "Values"."sv_23" AS "sv_23",
   "Values"."sv_24" AS "sv_24",
   "Values"."sv_25" AS "sv_25",
   "Values"."sv_26" AS "sv_26",
   "Values"."sv_27" AS "sv_27",
   "Values"."sv_28" AS "sv_28",
   "Values"."sv_29" AS "sv_29",
   "Values"."sv_30" AS "sv_30",
   "Values"."sv_31" AS "sv_31",
   "Values"."sv_32" AS "sv_32",
   "Values"."sv_33" AS "sv_33",
   "Values"."sv_34" AS "sv_34",
   "Values"."sv_35" AS "sv_35",
   "Values"."sv_36" AS "sv_36",
   "Values"."sv_37" AS "sv_37",
   "Values"."sv_38" AS "sv_38",
   "Values"."sv_39" AS "sv_39",
   "Values"."sv_40" AS "sv_40",
   "Values"."sv_41" AS "sv_41",
   "Values"."sv_42" AS "sv_42",
   "Values"."sv_43" AS "sv_43",
   "Values"."sv_44" AS "sv_44",
   "Values"."sv_45" AS "sv_45",
   "Values"."sv_46" AS "sv_46",
   "Values"."sv_47" AS "sv_47",
   "Values"."sv_48" AS "sv_48",
   "Values"."sv_49" AS "sv_49",
   "Values"."sv_50" AS "sv_50",
   "Values"."sv_51" AS "sv_51",
   "Values"."sv_52" AS "sv_52",
   "Values"."sv_53" AS "sv_53",
   "Values"."sv_54" AS "sv_54",
   "Values"."sv_55" AS "sv_55",
   "Values"."sv_56" AS "sv_56",
   "Values"."sv_57" AS "sv_57",
   "Values"."sv_58" AS "sv_58",
   "Values"."sv_59" AS "sv_59",
   "Values"."sv_60" AS "sv_60",
   "Values"."sv_61" AS "sv_61",
   "Values"."sv_62" AS "sv_62",
   "Values"."sv_63" AS "sv_63",
   "Values"."sv_64" AS "sv_64",
   "Values"."sv_65" AS "sv_65",
   "Values"."sv_66" AS "sv_66",
   "Values"."sv_67" AS "sv_67",
   "Values"."sv_68" AS "sv_68",
   "Values"."sv_69" AS "sv_69",
   "Values"."sv_70" AS "sv_70",
   "Values"."sv_71" AS "sv_71",
   "Values"."sv_72" AS "sv_72",
   "Values"."sv_73" AS "sv_73",
   "Values"."sv_74" AS "sv_74",
   "Values"."sv_75" AS "sv_75",
   "Values"."sv_76" AS "sv_76",
   "Values"."sv_77" AS "sv_77",
   "Values"."sv_78" AS "sv_78",
   "Values"."sv_79" AS "sv_79",
   "Values"."sv_80" AS "sv_80",
   "Values"."sv_81" AS "sv_81",
   "Values"."sv_82" AS "sv_82",
   "Values"."sv_83" AS "sv_83",
   "Values"."sv_84" AS "sv_84",
   "Values"."sv_85" AS "sv_85",
   "Values"."sv_86" AS "sv_86",
   "Values"."sv_87" AS "sv_87",
   "Values"."sv_88" AS "sv_88",
   "Values"."sv_89" AS "sv_89",
   "Values"."sv_90" AS "sv_90",
   "Values"."sv_91" AS "sv_91",
   "Values"."sv_92" AS "sv_92",
   "Values"."sv_93" AS "sv_93",
   "Values"."sv_94" AS "sv_94",
   "Values"."sv_95" AS "sv_95",
   "Values"."sv_96" AS "sv_96",
   "Values"."sv_97" AS "sv_97",
   "Values"."sv_98" AS "sv_98",
   "Values"."sv_99" AS "sv_99"
  FROM
  (
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", -0.301125 AS "sv_0", 1.387725 AS "sv_1", 1.263659 AS "sv_2", -0.682733 AS "sv_3", -1.346831 AS "sv_4", 0.514777 AS "sv_5", 0.162561 AS "sv_6", -1.087747 AS "sv_7", 0.271218 AS "sv_8", 1.010939 AS "sv_9", -0.249382 AS "sv_10", -1.650619 AS "sv_11", -0.993424 AS "sv_12", 0.109921 AS "sv_13", -0.543386 AS "sv_14", 1.325297 AS "sv_15", 1.884960 AS "sv_16", 0.749242 AS "sv_17", 1.605944 AS "sv_18", 1.608417 AS "sv_19", 0.963200 AS "sv_20", -0.033293 AS "sv_21", 1.827302 AS "sv_22", -0.088904 AS "sv_23", 0.103327 AS "sv_24", 1.232027 AS "sv_25", -1.629398 AS "sv_26", 0.868012 AS "sv_27", 0.437752 AS "sv_28", 0.541353 AS "sv_29", 0.458517 AS "sv_30", -0.181859 AS "sv_31", -0.124956 AS "sv_32", -0.049060 AS "sv_33", 1.275408 AS "sv_34", 0.360171 AS "sv_35", 0.901617 AS "sv_36", -0.270373 AS "sv_37", 0.528253 AS "sv_38", 0.162673 AS "sv_39", -0.075916 AS "sv_40", -1.014597 AS "sv_41", -0.011520 AS "sv_42", 1.092134 AS "sv_43", 1.629216 AS "sv_44", -0.438634 AS "sv_45", -1.369512 AS "sv_46", -0.369844 AS "sv_47", -0.860606 AS "sv_48", -0.575633 AS "sv_49", 1.274698 AS "sv_50", 0.484667 AS "sv_51", -1.515425 AS "sv_52", 0.116384 AS "sv_53", -0.854174 AS "sv_54", -0.789358 AS "sv_55", -0.320155 AS "sv_56", 0.683035 AS "sv_57", -0.490488 AS "sv_58", -1.721528 AS "sv_59", -0.588556 AS "sv_60", 0.226808 AS "sv_61", 1.357707 AS "sv_62", -0.794542 AS "sv_63", -2.149676 AS "sv_64", -0.236073 AS "sv_65", -0.844687 AS "sv_66", -1.261113 AS "sv_67", -0.860300 AS "sv_68", 1.045351 AS "sv_69", 0.155022 AS "sv_70", 0.335658 AS "sv_71", -1.933931 AS "sv_72", -0.361083 AS "sv_73", 0.109404 AS "sv_74", -0.199066 AS "sv_75", 0.423870 AS "sv_76", 0.172599 AS "sv_77", 0.843244 AS "sv_78", 0.328669 AS "sv_79", 0.597396 AS "sv_80", -3.461473 AS "sv_81", -1.118535 AS "sv_82", 0.195145 AS "sv_83", 1.274754 AS "sv_84", -0.644127 AS "sv_85", 0.199323 AS "sv_86", -0.313881 AS "sv_87", 0.867388 AS "sv_88", 1.605378 AS "sv_89", -0.046932 AS "sv_90", 2.434326 AS "sv_91", 1.976707 AS "sv_92", -2.164164 AS "sv_93", -0.369843 AS "sv_94", -0.387633 AS "sv_95", -1.220070 AS "sv_96", -1.981716 AS "sv_97", -0.345798 AS "sv_98", 0.839573 AS "sv_99"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", -0.155583 AS "sv_0", -1.181091 AS "sv_1", 2.934304 AS "sv_2", -0.694847 AS "sv_3", 0.765347 AS "sv_4", -0.138266 AS "sv_5", -1.871978 AS "sv_6", -0.547256 AS "sv_7", -1.021963 AS "sv_8", -0.240618 AS "sv_9", 0.001536 AS "sv_10", -1.306972 AS "sv_11", 1.125717 AS "sv_12", -0.609563 AS "sv_13", 1.842505 AS "sv_14", 0.526185 AS "sv_15", -0.134199 AS "sv_16", -0.464436 AS "sv_17", -0.208943 AS "sv_18", -0.725073 AS "sv_19", -0.343274 AS "sv_20", -0.416673 AS "sv_21", -0.143185 AS "sv_22", -1.582279 AS "sv_23", 0.583838 AS "sv_24", -0.671795 AS "sv_25", 1.482075 AS "sv_26", 0.087998 AS "sv_27", -1.444967 AS "sv_28", -1.047191 AS "sv_29", -0.073363 AS "sv_30", 0.797347 AS "sv_31", -1.494339 AS "sv_32", -0.477036 AS "sv_33", 0.196963 AS "sv_34", 0.963585 AS "sv_35", -1.068938 AS "sv_36", 0.063568 AS "sv_37", -0.222822 AS "sv_38", 2.682296 AS "sv_39", -1.224322 AS "sv_40", 0.233571 AS "sv_41", 0.337047 AS "sv_42", -0.880938 AS "sv_43", 0.374312 AS "sv_44", 0.475478 AS "sv_45", -0.431406 AS "sv_46", -1.492779 AS "sv_47", -0.705679 AS "sv_48", 0.841879 AS "sv_49", -0.939537 AS "sv_50", -0.132262 AS "sv_51", 1.274740 AS "sv_52", -0.245601 AS "sv_53", -1.095005 AS "sv_54", -1.124514 AS "sv_55", -1.688313 AS "sv_56", -1.660382 AS "sv_57", 0.883513 AS "sv_58", -2.127996 AS "sv_59", 1.853016 AS "sv_60", 1.063518 AS "sv_61", -1.559323 AS "sv_62", -0.331428 AS "sv_63", -0.471284 AS "sv_64", -0.842893 AS "sv_65", 0.266878 AS "sv_66", -2.195654 AS "sv_67", -1.286103 AS "sv_68", 0.207864 AS "sv_69", 0.021272 AS "sv_70", -0.187917 AS "sv_71", 0.203329 AS "sv_72", -1.136586 AS "sv_73", 0.713959 AS "sv_74", 0.034840 AS "sv_75", 0.087523 AS "sv_76", -0.198538 AS "sv_77", 0.898727 AS "sv_78", -1.003550 AS "sv_79", 0.302104 AS "sv_80", 0.583664 AS "sv_81", -1.106319 AS "sv_82", -0.753618 AS "sv_83", 0.025474 AS "sv_84", -0.573982 AS "sv_85", 0.641987 AS "sv_86", 1.076644 AS "sv_87", 0.875027 AS "sv_88", -0.493790 AS "sv_89", 0.725374 AS "sv_90", 0.876517 AS "sv_91", 1.121960 AS "sv_92", 2.010630 AS "sv_93", 0.710270 AS "sv_94", 0.398255 AS "sv_95", -0.109352 AS "sv_96", -0.649000 AS "sv_97", -1.884572 AS "sv_98", -0.938959 AS "sv_99"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", -1.027789 AS "sv_0", -0.022726 AS "sv_1", 0.110301 AS "sv_2", 0.179547 AS "sv_3", -0.049077 AS "sv_4", 0.596661 AS "sv_5", 1.158108 AS "sv_6", 0.627954 AS "sv_7", 0.170029 AS "sv_8", -1.791827 AS "sv_9", 1.670222 AS "sv_10", -0.681340 AS "sv_11", -1.447405 AS "sv_12", 0.185647 AS "sv_13", 0.388607 AS "sv_14", -1.278542 AS "sv_15", -1.108376 AS "sv_16", -0.775743 AS "sv_17", 0.263236 AS "sv_18", 1.528360 AS "sv_19", -0.364445 AS "sv_20", -0.731039 AS "sv_21", 1.158231 AS "sv_22", 0.490438 AS "sv_23", -0.565740 AS "sv_24", -0.917869 AS "sv_25", 0.485316 AS "sv_26", -0.530029 AS "sv_27", -0.388955 AS "sv_28", -0.946970 AS "sv_29", 2.027920 AS "sv_30", -1.984177 AS "sv_31", 0.203697 AS "sv_32", 0.272669 AS "sv_33", 0.871521 AS "sv_34", 0.161162 AS "sv_35", -0.535239 AS "sv_36", 0.795006 AS "sv_37", -1.758095 AS "sv_38", -1.275388 AS "sv_39", 0.649031 AS "sv_40", 0.776763 AS "sv_41", -1.383657 AS "sv_42", 0.220103 AS "sv_43", -0.678639 AS "sv_44", 0.055647 AS "sv_45", -0.288347 AS "sv_46", -0.960101 AS "sv_47", 0.668293 AS "sv_48", 0.341510 AS "sv_49", 1.589408 AS "sv_50", 0.842410 AS "sv_51", -0.810968 AS "sv_52", 0.720736 AS "sv_53", 0.103319 AS "sv_54", -1.997747 AS "sv_55", -0.500028 AS "sv_56", -0.831592 AS "sv_57", 0.586176 AS "sv_58", 1.269943 AS "sv_59", 1.112854 AS "sv_60", -2.345080 AS "sv_61", 1.845253 AS "sv_62", -0.289479 AS "sv_63", 2.724528 AS "sv_64", -0.185729 AS "sv_65", -0.057373 AS "sv_66", 0.377986 AS "sv_67", 0.777928 AS "sv_68", 0.163456 AS "sv_69", -0.848518 AS "sv_70", -1.211945 AS "sv_71", 0.950056 AS "sv_72", 0.642497 AS "sv_73", 0.555374 AS "sv_74", -0.859388 AS "sv_75", 1.780579 AS "sv_76", 0.359947 AS "sv_77", 1.225011 AS "sv_78", 0.428558 AS "sv_79", -0.943535 AS "sv_80", 1.481584 AS "sv_81", 2.294137 AS "sv_82", -1.712462 AS "sv_83", -0.768941 AS "sv_84", -1.055953 AS "sv_85", -0.825688 AS "sv_86", 0.438418 AS "sv_87", -1.345538 AS "sv_88", -0.307022 AS "sv_89", -0.285520 AS "sv_90", 1.299078 AS "sv_91", 0.293988 AS "sv_92", 0.837068 AS "sv_93", 0.393039 AS "sv_94", -0.351285 AS "sv_95", 0.880326 AS "sv_96", 0.799355 AS "sv_97", 2.721471 AS "sv_98", -0.697773 AS "sv_99"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", 0.155319 AS "sv_0", 0.126152 AS "sv_1", 0.905780 AS "sv_2", 0.081899 AS "sv_3", -0.129864 AS "sv_4", 0.224428 AS "sv_5", -0.133974 AS "sv_6", 0.419007 AS "sv_7", 1.312964 AS "sv_8", -0.132973 AS "sv_9", -0.044727 AS "sv_10", -0.172328 AS "sv_11", -0.781215 AS "sv_12", 1.237400 AS "sv_13", -0.191514 AS "sv_14", -0.137163 AS "sv_15", -0.032786 AS "sv_16", 0.796586 AS "sv_17", -1.013321 AS "sv_18", 0.938049 AS "sv_19", -0.992036 AS "sv_20", -1.934101 AS "sv_21", 0.583720 AS "sv_22", -0.121998 AS "sv_23", -0.761241 AS "sv_24", 0.007485 AS "sv_25", -1.035347 AS "sv_26", -0.308910 AS "sv_27", 0.518409 AS "sv_28", -0.392305 AS "sv_29", -2.049703 AS "sv_30", 1.691213 AS "sv_31", -0.920890 AS "sv_32", -0.347138 AS "sv_33", -1.206137 AS "sv_34", 0.300528 AS "sv_35", 0.943905 AS "sv_36", -1.598083 AS "sv_37", 1.407884 AS "sv_38", 1.417244 AS "sv_39", 0.880907 AS "sv_40", -0.056852 AS "sv_41", -1.040514 AS "sv_42", 0.945278 AS "sv_43", 0.077642 AS "sv_44", 0.656549 AS "sv_45", -0.662872 AS "sv_46", -0.630390 AS "sv_47", -0.890351 AS "sv_48", -0.324518 AS "sv_49", -0.822051 AS "sv_50", -0.751261 AS "sv_51", 0.196293 AS "sv_52", 0.701369 AS "sv_53", -1.392381 AS "sv_54", -0.668632 AS "sv_55", 1.553450 AS "sv_56", 0.497449 AS "sv_57", 0.980282 AS "sv_58", 0.571125 AS "sv_59", -0.232236 AS "sv_60", 0.078423 AS "sv_61", -0.850019 AS "sv_62", 0.546521 AS "sv_63", -0.393892 AS "sv_64", 1.124046 AS "sv_65", -0.427607 AS "sv_66", -0.023318 AS "sv_67", -0.929678 AS "sv_68", -1.256601 AS "sv_69", -0.716506 AS "sv_70", -0.150908 AS "sv_71", -1.593496 AS "sv_72", -1.106068 AS "sv_73", -0.274965 AS "sv_74", -0.146610 AS "sv_75", -2.047840 AS "sv_76", 0.057825 AS "sv_77", 1.452062 AS "sv_78", -0.906187 AS "sv_79", -0.490492 AS "sv_80", 0.579008 AS "sv_81", 2.222338 AS "sv_82", 0.266923 AS "sv_83", -0.162423 AS "sv_84", -0.291490 AS "sv_85", -0.597359 AS "sv_86", 0.306709 AS "sv_87", -1.825582 AS "sv_88", 0.138705 AS "sv_89", -1.577237 AS "sv_90", -0.551333 AS "sv_91", -0.292213 AS "sv_92", -0.008046 AS "sv_93", -0.076546 AS "sv_94", 0.814916 AS "sv_95", -1.610399 AS "sv_96", -0.735563 AS "sv_97", 1.218228 AS "sv_98", 0.672223 AS "sv_99"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -1.133144 AS "sv_0", -1.651195 AS "sv_1", -0.342055 AS "sv_2", -0.689277 AS "sv_3", -0.655278 AS "sv_4", 1.294175 AS "sv_5", -1.287940 AS "sv_6", 0.934605 AS "sv_7", 0.739369 AS "sv_8", -0.229221 AS "sv_9", 0.753582 AS "sv_10", 2.125253 AS "sv_11", -0.338444 AS "sv_12", -0.213734 AS "sv_13", 0.798616 AS "sv_14", -0.569449 AS "sv_15", -0.895222 AS "sv_16", -1.416174 AS "sv_17", -1.075825 AS "sv_18", 1.214864 AS "sv_19", 0.648015 AS "sv_20", 0.946268 AS "sv_21", -0.180459 AS "sv_22", 0.534869 AS "sv_23", -0.029672 AS "sv_24", 0.221046 AS "sv_25", -0.570902 AS "sv_26", 0.085198 AS "sv_27", 0.071136 AS "sv_28", -0.308474 AS "sv_29", -1.461540 AS "sv_30", 1.029051 AS "sv_31", -0.093567 AS "sv_32", 0.357279 AS "sv_33", 0.765478 AS "sv_34", 0.949225 AS "sv_35", 2.360126 AS "sv_36", 0.561924 AS "sv_37", 0.428436 AS "sv_38", -0.283161 AS "sv_39", 2.166735 AS "sv_40", -2.139877 AS "sv_41", -0.487314 AS "sv_42", -1.059566 AS "sv_43", 0.793578 AS "sv_44", -0.295330 AS "sv_45", 1.630725 AS "sv_46", 0.464210 AS "sv_47", -0.804990 AS "sv_48", 1.258824 AS "sv_49", -0.626441 AS "sv_50", -0.284660 AS "sv_51", -0.274104 AS "sv_52", 0.380656 AS "sv_53", -0.811111 AS "sv_54", -0.205179 AS "sv_55", 0.440265 AS "sv_56", 0.249119 AS "sv_57", -1.653892 AS "sv_58", 0.686944 AS "sv_59", -0.712150 AS "sv_60", 0.627505 AS "sv_61", -0.154004 AS "sv_62", -0.806436 AS "sv_63", 1.031674 AS "sv_64", -0.164087 AS "sv_65", 0.513889 AS "sv_66", -0.841227 AS "sv_67", 1.764650 AS "sv_68", -0.312744 AS "sv_69", -1.801053 AS "sv_70", -0.011023 AS "sv_71", 0.428372 AS "sv_72", -1.179228 AS "sv_73", 0.974831 AS "sv_74", 0.071374 AS "sv_75", 1.332869 AS "sv_76", -1.332362 AS "sv_77", 0.583835 AS "sv_78", 0.163777 AS "sv_79", 1.879927 AS "sv_80", -2.227422 AS "sv_81", -1.362146 AS "sv_82", 0.965548 AS "sv_83", -0.165010 AS "sv_84", -0.249767 AS "sv_85", -1.152295 AS "sv_86", -0.388149 AS "sv_87", 0.973737 AS "sv_88", 0.166219 AS "sv_89", 2.439873 AS "sv_90", 0.922142 AS "sv_91", -0.086390 AS "sv_92", -1.268280 AS "sv_93", -0.399640 AS "sv_94", 1.149888 AS "sv_95", 0.448919 AS "sv_96", -0.719715 AS "sv_97", -2.102751 AS "sv_98", 0.912526 AS "sv_99"
     UNION ALL
     SELECT 5 AS "sv_idx", 1.000000 AS "coeff", 0.652203 AS "sv_0", 0.436045 AS "sv_1", -0.138883 AS "sv_2", -0.625626 AS "sv_3", -1.052697 AS "sv_4", 0.681542 AS "sv_5", -0.938536 AS "sv_6", 0.946532 AS "sv_7", 0.423996 AS "sv_8", -0.031088 AS "sv_9", -1.727926 AS "sv_10", 1.619766 AS "sv_11", 1.061490 AS "sv_12", -1.602632 AS "sv_13", 0.775221 AS "sv_14", 0.747878 AS "sv_15", 0.543018 AS "sv_16", 1.949929 AS "sv_17", -0.390970 AS "sv_18", -1.283426 AS "sv_19", -1.193047 AS "sv_20", 0.809933 AS "sv_21", 1.838850 AS "sv_22", -0.689319 AS "sv_23", -0.992610 AS "sv_24", 1.657792 AS "sv_25", 0.705457 AS "sv_26", -1.009920 AS "sv_27", 0.537567 AS "sv_28", 0.197217 AS "sv_29", 0.774661 AS "sv_30", 0.600213 AS "sv_31", 1.250723 AS "sv_32", -0.004769 AS "sv_33", 0.879051 AS "sv_34", -1.091502 AS "sv_35", -0.567888 AS "sv_36", -0.870715 AS "sv_37", 0.797927 AS "sv_38", -0.228577 AS "sv_39", 1.046873 AS "sv_40", -1.456435 AS "sv_41", -1.760875 AS "sv_42", -0.190029 AS "sv_43", -0.428558 AS "sv_44", 0.136273 AS "sv_45", 2.166094 AS "sv_46", 0.707097 AS "sv_47", 0.136510 AS "sv_48", -1.140066 AS "sv_49", -0.649436 AS "sv_50", -0.394823 AS "sv_51", -1.051403 AS "sv_52", 1.562724 AS "sv_53", -0.434697 AS "sv_54", -0.922369 AS "sv_55", 0.174495 AS "sv_56", 0.583298 AS "sv_57", -0.225387 AS "sv_58", 0.840166 AS "sv_59", 0.633278 AS "sv_60", 0.409356 AS "sv_61", 0.811317 AS "sv_62", 0.442499 AS "sv_63", 1.060244 AS "sv_64", 0.125624 AS "sv_65", 0.748346 AS "sv_66", -0.296961 AS "sv_67", -0.784845 AS "sv_68", -0.522191 AS "sv_69", 1.101961 AS "sv_70", -0.816511 AS "sv_71", 0.646203 AS "sv_72", 2.240576 AS "sv_73", -0.864095 AS "sv_74", 0.441238 AS "sv_75", 0.236171 AS "sv_76", 1.744468 AS "sv_77", 0.308703 AS "sv_78", 0.277589 AS "sv_79", -1.059889 AS "sv_80", -0.917680 AS "sv_81", 0.749258 AS "sv_82", 0.005080 AS "sv_83", -1.013675 AS "sv_84", -0.563921 AS "sv_85", -0.145915 AS "sv_86", -0.779168 AS "sv_87", -1.108434 AS "sv_88", 0.444275 AS "sv_89", -0.859430 AS "sv_90", 0.591170 AS "sv_91", 0.075764 AS "sv_92", 0.594485 AS "sv_93", 0.335600 AS "sv_94", -0.893353 AS "sv_95", -1.488198 AS "sv_96", 0.620222 AS "sv_97", -0.172713 AS "sv_98", 0.919309 AS "sv_99"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", 1.188539 AS "sv_0", -1.250136 AS "sv_1", -1.027288 AS "sv_2", 0.918846 AS "sv_3", -0.954316 AS "sv_4", 0.548053 AS "sv_5", -0.281864 AS "sv_6", 0.961725 AS "sv_7", 0.130901 AS "sv_8", -0.002005 AS "sv_9", 1.620184 AS "sv_10", 0.552014 AS "sv_11", 0.958100 AS "sv_12", 1.148207 AS "sv_13", -0.388085 AS "sv_14", 0.033469 AS "sv_15", 0.348906 AS "sv_16", 1.667911 AS "sv_17", -0.517155 AS "sv_18", 1.500237 AS "sv_19", -0.721696 AS "sv_20", 0.757986 AS "sv_21", 0.142960 AS "sv_22", 0.978339 AS "sv_23", 0.375944 AS "sv_24", -2.155619 AS "sv_25", 1.056578 AS "sv_26", 1.498774 AS "sv_27", 0.083207 AS "sv_28", 0.092960 AS "sv_29", 1.434398 AS "sv_30", -0.882482 AS "sv_31", 2.725686 AS "sv_32", -1.150549 AS "sv_33", -1.409628 AS "sv_34", -0.134606 AS "sv_35", -0.185542 AS "sv_36", -0.050296 AS "sv_37", 1.132250 AS "sv_38", -0.616449 AS "sv_39", -1.295441 AS "sv_40", -0.200460 AS "sv_41", 1.161690 AS "sv_42", -0.116769 AS "sv_43", -0.381539 AS "sv_44", -0.690765 AS "sv_45", 1.507999 AS "sv_46", -1.394765 AS "sv_47", -0.565123 AS "sv_48", 0.132223 AS "sv_49", -0.661427 AS "sv_50", -0.066379 AS "sv_51", -0.043534 AS "sv_52", 1.535401 AS "sv_53", 0.216322 AS "sv_54", -0.512967 AS "sv_55", -0.211845 AS "sv_56", -0.406935 AS "sv_57", 1.487546 AS "sv_58", -0.231149 AS "sv_59", -1.349181 AS "sv_60", 0.075628 AS "sv_61", 1.157210 AS "sv_62", -1.687230 AS "sv_63", 0.011681 AS "sv_64", 0.144008 AS "sv_65", -0.027436 AS "sv_66", -0.101655 AS "sv_67", 0.505094 AS "sv_68", -0.491673 AS "sv_69", -1.628911 AS "sv_70", -0.945251 AS "sv_71", -2.098376 AS "sv_72", -1.270595 AS "sv_73", 0.876920 AS "sv_74", -0.927536 AS "sv_75", 1.650905 AS "sv_76", -0.293083 AS "sv_77", -1.702209 AS "sv_78", 1.012037 AS "sv_79", -1.901319 AS "sv_80", -0.465234 AS "sv_81", -0.264693 AS "sv_82", 0.455037 AS "sv_83", -1.586466 AS "sv_84", -0.302469 AS "sv_85", -1.146767 AS "sv_86", -2.078484 AS "sv_87", -0.098387 AS "sv_88", 0.254454 AS "sv_89", 1.692565 AS "sv_90", 1.066601 AS "sv_91", 0.765892 AS "sv_92", 0.447516 AS "sv_93", 1.219288 AS "sv_94", -0.342645 AS "sv_95", 0.976481 AS "sv_96", -1.316489 AS "sv_97", 0.531235 AS "sv_98", -1.526836 AS "sv_99"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", 0.227229 AS "sv_0", 0.619283 AS "sv_1", -1.530483 AS "sv_2", 1.117399 AS "sv_3", -1.230746 AS "sv_4", -0.267614 AS "sv_5", 0.098912 AS "sv_6", 1.046321 AS "sv_7", 1.384057 AS "sv_8", 0.164512 AS "sv_9", 0.011020 AS "sv_10", 0.008753 AS "sv_11", 0.782580 AS "sv_12", 0.263430 AS "sv_13", 0.211820 AS "sv_14", 0.224609 AS "sv_15", -1.088856 AS "sv_16", -0.212307 AS "sv_17", -2.468281 AS "sv_18", 1.177639 AS "sv_19", -1.047089 AS "sv_20", -1.562237 AS "sv_21", 0.430697 AS "sv_22", 1.727034 AS "sv_23", -0.318139 AS "sv_24", 0.277186 AS "sv_25", -1.417681 AS "sv_26", 0.115912 AS "sv_27", 0.259662 AS "sv_28", -1.011158 AS "sv_29", -0.294974 AS "sv_30", -1.118650 AS "sv_31", -0.641240 AS "sv_32", 0.406200 AS "sv_33", 0.025289 AS "sv_34", 0.087982 AS "sv_35", -0.557500 AS "sv_36", -1.224349 AS "sv_37", -0.629299 AS "sv_38", -0.406764 AS "sv_39", -0.894421 AS "sv_40", 0.119186 AS "sv_41", 0.258308 AS "sv_42", 1.303569 AS "sv_43", 0.822825 AS "sv_44", 0.323978 AS "sv_45", -0.551682 AS "sv_46", 0.147020 AS "sv_47", -0.283909 AS "sv_48", -1.034709 AS "sv_49", -0.560570 AS "sv_50", -0.593558 AS "sv_51", -1.143792 AS "sv_52", 1.620158 AS "sv_53", -0.557268 AS "sv_54", 2.079926 AS "sv_55", 0.309083 AS "sv_56", -1.283040 AS "sv_57", -0.372982 AS "sv_58", -0.796039 AS "sv_59", 1.166811 AS "sv_60", 0.407533 AS "sv_61", 0.349832 AS "sv_62", 1.756536 AS "sv_63", -1.669877 AS "sv_64", -0.925409 AS "sv_65", -0.370098 AS "sv_66", 0.642586 AS "sv_67", -0.198093 AS "sv_68", -1.344454 AS "sv_69", -0.990696 AS "sv_70", 0.053168 AS "sv_71", -0.188361 AS "sv_72", -1.298512 AS "sv_73", 1.421034 AS "sv_74", -1.752003 AS "sv_75", -2.827557 AS "sv_76", 1.143990 AS "sv_77", -0.404425 AS "sv_78", 1.892952 AS "sv_79", 0.464722 AS "sv_80", 0.437277 AS "sv_81", -2.724085 AS "sv_82", -1.043487 AS "sv_83", 0.227736 AS "sv_84", 0.233882 AS "sv_85", 0.177279 AS "sv_86", 1.471903 AS "sv_87", -0.163273 AS "sv_88", 0.232726 AS "sv_89", -1.408624 AS "sv_90", -1.038278 AS "sv_91", 0.422518 AS "sv_92", 2.529275 AS "sv_93", 0.569926 AS "sv_94", 0.980379 AS "sv_95", -0.314387 AS "sv_96", -0.827112 AS "sv_97", -1.305061 AS "sv_98", 0.904966 AS "sv_99"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -45.784943 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.010529 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2) + power(model_input."X_10" - "SV_data".sv_10, 2) + power(model_input."X_11" - "SV_data".sv_11, 2) + power(model_input."X_12" - "SV_data".sv_12, 2) + power(model_input."X_13" - "SV_data".sv_13, 2) + power(model_input."X_14" - "SV_data".sv_14, 2) + power(model_input."X_15" - "SV_data".sv_15, 2) + power(model_input."X_16" - "SV_data".sv_16, 2) + power(model_input."X_17" - "SV_data".sv_17, 2) + power(model_input."X_18" - "SV_data".sv_18, 2) + power(model_input."X_19" - "SV_data".sv_19, 2) + power(model_input."X_20" - "SV_data".sv_20, 2) + power(model_input."X_21" - "SV_data".sv_21, 2) + power(model_input."X_22" - "SV_data".sv_22, 2) + power(model_input."X_23" - "SV_data".sv_23, 2) + power(model_input."X_24" - "SV_data".sv_24, 2) + power(model_input."X_25" - "SV_data".sv_25, 2) + power(model_input."X_26" - "SV_data".sv_26, 2) + power(model_input."X_27" - "SV_data".sv_27, 2) + power(model_input."X_28" - "SV_data".sv_28, 2) + power(model_input."X_29" - "SV_data".sv_29, 2) + power(model_input."X_30" - "SV_data".sv_30, 2) + power(model_input."X_31" - "SV_data".sv_31, 2) + power(model_input."X_32" - "SV_data".sv_32, 2) + power(model_input."X_33" - "SV_data".sv_33, 2) + power(model_input."X_34" - "SV_data".sv_34, 2) + power(model_input."X_35" - "SV_data".sv_35, 2) + power(model_input."X_36" - "SV_data".sv_36, 2) + power(model_input."X_37" - "SV_data".sv_37, 2) + power(model_input."X_38" - "SV_data".sv_38, 2) + power(model_input."X_39" - "SV_data".sv_39, 2) + power(model_input."X_40" - "SV_data".sv_40, 2) + power(model_input."X_41" - "SV_data".sv_41, 2) + power(model_input."X_42" - "SV_data".sv_42, 2) + power(model_input."X_43" - "SV_data".sv_43, 2) + power(model_input."X_44" - "SV_data".sv_44, 2) + power(model_input."X_45" - "SV_data".sv_45, 2) + power(model_input."X_46" - "SV_data".sv_46, 2) + power(model_input."X_47" - "SV_data".sv_47, 2) + power(model_input."X_48" - "SV_data".sv_48, 2) + power(model_input."X_49" - "SV_data".sv_49, 2) + power(model_input."X_50" - "SV_data".sv_50, 2) + power(model_input."X_51" - "SV_data".sv_51, 2) + power(model_input."X_52" - "SV_data".sv_52, 2) + power(model_input."X_53" - "SV_data".sv_53, 2) + power(model_input."X_54" - "SV_data".sv_54, 2) + power(model_input."X_55" - "SV_data".sv_55, 2) + power(model_input."X_56" - "SV_data".sv_56, 2) + power(model_input."X_57" - "SV_data".sv_57, 2) + power(model_input."X_58" - "SV_data".sv_58, 2) + power(model_input."X_59" - "SV_data".sv_59, 2) + power(model_input."X_60" - "SV_data".sv_60, 2) + power(model_input."X_61" - "SV_data".sv_61, 2) + power(model_input."X_62" - "SV_data".sv_62, 2) + power(model_input."X_63" - "SV_data".sv_63, 2) + power(model_input."X_64" - "SV_data".sv_64, 2) + power(model_input."X_65" - "SV_data".sv_65, 2) + power(model_input."X_66" - "SV_data".sv_66, 2) + power(model_input."X_67" - "SV_data".sv_67, 2) + power(model_input."X_68" - "SV_data".sv_68, 2) + power(model_input."X_69" - "SV_data".sv_69, 2) + power(model_input."X_70" - "SV_data".sv_70, 2) + power(model_input."X_71" - "SV_data".sv_71, 2) + power(model_input."X_72" - "SV_data".sv_72, 2) + power(model_input."X_73" - "SV_data".sv_73, 2) + power(model_input."X_74" - "SV_data".sv_74, 2) + power(model_input."X_75" - "SV_data".sv_75, 2) + power(model_input."X_76" - "SV_data".sv_76, 2) + power(model_input."X_77" - "SV_data".sv_77, 2) + power(model_input."X_78" - "SV_data".sv_78, 2) + power(model_input."X_79" - "SV_data".sv_79, 2) + power(model_input."X_80" - "SV_data".sv_80, 2) + power(model_input."X_81" - "SV_data".sv_81, 2) + power(model_input."X_82" - "SV_data".sv_82, 2) + power(model_input."X_83" - "SV_data".sv_83, 2) + power(model_input."X_84" - "SV_data".sv_84, 2) + power(model_input."X_85" - "SV_data".sv_85, 2) + power(model_input."X_86" - "SV_data".sv_86, 2) + power(model_input."X_87" - "SV_data".sv_87, 2) + power(model_input."X_88" - "SV_data".sv_88, 2) + power(model_input."X_89" - "SV_data".sv_89, 2) + power(model_input."X_90" - "SV_data".sv_90, 2) + power(model_input."X_91" - "SV_data".sv_91, 2) + power(model_input."X_92" - "SV_data".sv_92, 2) + power(model_input."X_93" - "SV_data".sv_93, 2) + power(model_input."X_94" - "SV_data".sv_94, 2) + power(model_input."X_95" - "SV_data".sv_95, 2) + power(model_input."X_96" - "SV_data".sv_96, 2) + power(model_input."X_97" - "SV_data".sv_97, 2) + power(model_input."X_98" - "SV_data".sv_98, 2) + power(model_input."X_99" - "SV_data".sv_99, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t