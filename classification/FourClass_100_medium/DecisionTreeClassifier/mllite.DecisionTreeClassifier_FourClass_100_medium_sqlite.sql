WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_medium" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_64", t1."Leaf_67", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_78", t1."Leaf_79", t1."Leaf_81", t1."Leaf_82", t1."Leaf_86", t1."Leaf_87", t1."Leaf_88", t1."Leaf_89", t1."Leaf_92", t1."Leaf_93", t1."Leaf_94", t1."Leaf_98", t1."Leaf_102", t1."Leaf_103", t1."Leaf_105", t1."Leaf_106", t1."Leaf_107", t1."Leaf_109", t1."Leaf_111", t1."Leaf_112", t1."Leaf_118", t1."Leaf_120", t1."Leaf_121", t1."Leaf_122", t1."Leaf_123", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" <= -1.275651) AND (t."X_62" > -1.598170)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" <= -1.275651) AND (t."X_62" <= -1.598170) AND (t."X_53" <= 0.455248)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" <= -1.275651) AND (t."X_62" <= -1.598170) AND (t."X_53" > 0.455248) AND (t."X_57" <= 1.573227)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" <= -1.275651) AND (t."X_62" <= -1.598170) AND (t."X_53" > 0.455248) AND (t."X_57" > 1.573227)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" <= -1.994156) AND (t."X_53" <= 1.246296)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" <= -1.994156) AND (t."X_53" > 1.246296) AND (t."X_65" <= 1.919116)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" <= -1.994156) AND (t."X_53" > 1.246296) AND (t."X_65" > 1.919116) AND (t."X_21" <= 0.221177)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" <= -1.994156) AND (t."X_53" > 1.246296) AND (t."X_65" > 1.919116) AND (t."X_21" > 0.221177)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" <= -0.705231)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" > -0.705231) AND (t."X_31" > -1.157577) AND (t."X_93" <= -0.126269) AND (t."X_42" <= 0.845499)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" > -0.705231) AND (t."X_31" > -1.157577) AND (t."X_93" <= -0.126269) AND (t."X_42" > 0.845499)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" > -0.705231) AND (t."X_31" <= -1.157577) AND (t."X_53" <= -1.819060)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" > -0.705231) AND (t."X_31" <= -1.157577) AND (t."X_53" > -1.819060) AND (t."X_55" <= 0.541670)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" > -0.705231) AND (t."X_31" <= -1.157577) AND (t."X_53" > -1.819060) AND (t."X_55" > 0.541670)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" > -0.705231) AND (t."X_31" > -1.157577) AND (t."X_93" > -0.126269) AND (t."X_18" <= -0.692813)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" <= -0.201112) AND (t."X_67" > -0.705231) AND (t."X_31" > -1.157577) AND (t."X_93" > -0.126269) AND (t."X_18" > -0.692813)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" > -0.336812) AND (t."X_65" > -0.793182)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" > -0.336812) AND (t."X_65" <= -0.793182) AND (t."X_34" <= 1.591051)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" > -0.336812) AND (t."X_65" <= -0.793182) AND (t."X_34" > 1.591051) AND (t."X_79" <= 4.349321)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" > -0.336812) AND (t."X_65" <= -0.793182) AND (t."X_34" > 1.591051) AND (t."X_79" > 4.349321)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" <= -0.336812) AND (t."X_35" <= 2.518105)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" <= -0.336812) AND (t."X_35" > 2.518105) AND (t."X_40" <= -0.467976)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" <= -0.336812) AND (t."X_35" > 2.518105) AND (t."X_40" > -0.467976) AND (t."X_70" <= 0.727921)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" > 0.237531) AND (t."X_66" > -1.994156) AND (t."X_60" > -0.201112) AND (t."X_49" <= -0.336812) AND (t."X_35" > 2.518105) AND (t."X_40" > -0.467976) AND (t."X_70" > 0.727921)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" > 3.856129) AND (t."X_60" <= -2.646319) AND (t."X_30" <= 1.251116)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" > 3.856129) AND (t."X_60" <= -2.646319) AND (t."X_30" > 1.251116)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" > 3.856129) AND (t."X_60" > -2.646319) AND (t."X_51" <= 1.678375)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" > 3.856129) AND (t."X_60" > -2.646319) AND (t."X_51" > 1.678375)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" > -0.737107) AND (t."X_3" > 0.909574)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" <= -0.737107) AND (t."X_44" <= -1.224980) AND (t."X_49" <= -0.959913)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" <= -0.737107) AND (t."X_44" <= -1.224980) AND (t."X_49" > -0.959913)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" > -0.737107) AND (t."X_3" <= 0.909574) AND (t."X_72" <= -1.344349)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" <= -0.737107) AND (t."X_44" > -1.224980) AND (t."X_1" <= 0.800213)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" <= -0.737107) AND (t."X_44" > -1.224980) AND (t."X_1" > 0.800213) AND (t."X_77" <= -0.712680)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" <= -0.737107) AND (t."X_44" > -1.224980) AND (t."X_1" > 0.800213) AND (t."X_77" > -0.712680)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" > -0.737107) AND (t."X_3" <= 0.909574) AND (t."X_72" > -1.344349) AND (t."X_78" <= 1.137606)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" > -0.737107) AND (t."X_3" <= 0.909574) AND (t."X_72" > -1.344349) AND (t."X_78" > 1.137606) AND (t."X_75" > -0.301655)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" > -0.737107) AND (t."X_3" <= 0.909574) AND (t."X_72" > -1.344349) AND (t."X_78" > 1.137606) AND (t."X_75" <= -0.301655) AND (t."X_1" <= -0.905650)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" > -0.737107) AND (t."X_3" <= 0.909574) AND (t."X_72" > -1.344349) AND (t."X_78" > 1.137606) AND (t."X_75" <= -0.301655) AND (t."X_1" > -0.905650) AND (t."X_27" <= 0.091943)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" > -0.148928) AND (t."X_49" > -0.737107) AND (t."X_3" <= 0.909574) AND (t."X_72" > -1.344349) AND (t."X_78" > 1.137606) AND (t."X_75" <= -0.301655) AND (t."X_1" > -0.905650) AND (t."X_27" > 0.091943)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" <= -0.148928) AND (t."X_46" <= -0.920689) AND (t."X_99" > -0.309522)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" <= -0.148928) AND (t."X_46" <= -0.920689) AND (t."X_99" <= -0.309522) AND (t."X_53" <= 0.030100)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" <= -0.148928) AND (t."X_46" <= -0.920689) AND (t."X_99" <= -0.309522) AND (t."X_53" > 0.030100)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" <= -0.148928) AND (t."X_46" > -0.920689) AND (t."X_35" <= 2.013682)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" <= -0.148928) AND (t."X_46" > -0.920689) AND (t."X_35" > 2.013682) AND (t."X_11" > 0.841518)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" <= -0.148928) AND (t."X_46" > -0.920689) AND (t."X_35" > 2.013682) AND (t."X_11" <= 0.841518) AND (t."X_97" <= 0.810066)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_31" <= -0.010579) AND (t."X_62" <= 0.237531) AND (t."X_60" <= -0.148928) AND (t."X_46" > -0.920689) AND (t."X_35" > 2.013682) AND (t."X_11" <= 0.841518) AND (t."X_97" > 0.810066)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" > 2.303003)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" <= -0.485035) AND (t."X_41" > 0.350227)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" <= -0.485035) AND (t."X_41" <= 0.350227) AND (t."X_16" <= -0.872493)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" <= -0.485035) AND (t."X_41" <= 0.350227) AND (t."X_16" > -0.872493) AND (t."X_71" <= -0.827054)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" <= -0.485035) AND (t."X_41" <= 0.350227) AND (t."X_16" > -0.872493) AND (t."X_71" > -0.827054)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" > -0.485035) AND (t."X_25" <= 1.116687)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" > -0.485035) AND (t."X_25" > 1.116687) AND (t."X_98" <= -0.006687)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" > -0.485035) AND (t."X_25" > 1.116687) AND (t."X_98" > -0.006687) AND (t."X_4" <= -0.202654)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" > 1.606531) AND (t."X_49" <= 2.303003) AND (t."X_62" > -0.485035) AND (t."X_25" > 1.116687) AND (t."X_98" > -0.006687) AND (t."X_4" > -0.202654)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" <= -0.597044) AND (t."X_67" > 0.421759) AND (t."X_91" > 0.307699)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" <= -0.597044) AND (t."X_67" > 0.421759) AND (t."X_91" <= 0.307699) AND (t."X_98" > -0.026782)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" <= -0.597044) AND (t."X_67" > 0.421759) AND (t."X_91" <= 0.307699) AND (t."X_98" <= -0.026782) AND (t."X_41" <= 0.584080)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" <= -0.597044) AND (t."X_67" > 0.421759) AND (t."X_91" <= 0.307699) AND (t."X_98" <= -0.026782) AND (t."X_41" > 0.584080)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" <= -0.597044) AND (t."X_67" <= 0.421759) AND (t."X_34" <= -1.551800)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" <= -0.597044) AND (t."X_67" <= 0.421759) AND (t."X_34" > -1.551800)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" > -0.597044) AND (t."X_62" <= -0.782833)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_31" > -0.010579) AND (t."X_49" > -1.275651) AND (t."X_66" <= 3.856129) AND (t."X_53" <= 1.606531) AND (t."X_95" > -0.597044) AND (t."X_62" > -0.782833)) THEN 126 ELSE NULL END AS "Leaf_126"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.279297 AS "P_0", 0.244141 AS "P_1", 0.224609 AS "P_2", 0.251953 AS "P_3", 0 AS "D", 0.279297 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.102941 AS "P_0", 0.242647 AS "P_1", 0.294118 AS "P_2", 0.360294 AS "P_3", 3 AS "D", 0.360294 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.479167 AS "P_0", 0.245833 AS "P_1", 0.145833 AS "P_2", 0.129167 AS "P_3", 0 AS "D", 0.479167 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.780488 AS "P_0", 0.036585 AS "P_1", 0.036585 AS "P_2", 0.146341 AS "P_3", 0 AS "D", 0.780488 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.322785 AS "P_0", 0.354430 AS "P_1", 0.202532 AS "P_2", 0.120253 AS "P_3", 1 AS "D", 0.354430 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.857143 AS "P_0", 0.042857 AS "P_1", 0.042857 AS "P_2", 0.057143 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.083969 AS "P_0", 0.083969 AS "P_1", 0.244275 AS "P_2", 0.587786 AS "P_3", 3 AS "D", 0.587786 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.120567 AS "P_0", 0.390071 AS "P_1", 0.340426 AS "P_2", 0.148936 AS "P_3", 1 AS "D", 0.390071 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.152174 AS "P_0", 0.086957 AS "P_1", 0.739130 AS "P_2", 0.021739 AS "P_3", 2 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.105263 AS "P_0", 0.536842 AS "P_1", 0.147368 AS "P_2", 0.210526 AS "P_3", 1 AS "D", 0.536842 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.027778 AS "P_0", 0.027778 AS "P_1", 0.944444 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.600000 AS "P_0", 0.300000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.216216 AS "P_0", 0.270270 AS "P_1", 0.081081 AS "P_2", 0.432432 AS "P_3", 3 AS "D", 0.432432 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.034483 AS "P_0", 0.706897 AS "P_1", 0.189655 AS "P_2", 0.068966 AS "P_3", 1 AS "D", 0.706897 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.285714 AS "P_0", 0.357143 AS "P_1", 0.107143 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.357143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.571429 AS "P_1", 0.000000 AS "P_2", 0.428571 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.571429 AS "P_0", 0.142857 AS "P_1", 0.214286 AS "P_2", 0.071429 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.054054 AS "P_0", 0.864865 AS "P_1", 0.000000 AS "P_2", 0.081081 AS "P_3", 1 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.428571 AS "P_1", 0.523810 AS "P_2", 0.047619 AS "P_3", 2 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.076923 AS "P_1", 0.846154 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.285714 AS "P_0", 0.285714 AS "P_1", 0.000000 AS "P_2", 0.428571 AS "P_3", 3 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.259542 AS "P_0", 0.427481 AS "P_1", 0.244275 AS "P_2", 0.068702 AS "P_3", 1 AS "D", 0.427481 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.629630 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.370370 AS "P_3", 0 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.138462 AS "P_0", 0.092308 AS "P_1", 0.046154 AS "P_2", 0.723077 AS "P_3", 3 AS "D", 0.723077 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.030303 AS "P_0", 0.075758 AS "P_1", 0.439394 AS "P_2", 0.454545 AS "P_3", 3 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.040000 AS "P_0", 0.120000 AS "P_1", 0.040000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.024390 AS "P_0", 0.048780 AS "P_1", 0.682927 AS "P_2", 0.243902 AS "P_3", 2 AS "D", 0.682927 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.028571 AS "P_0", 0.057143 AS "P_1", 0.800000 AS "P_2", 0.114286 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.045455 AS "P_1", 0.045455 AS "P_2", 0.909091 AS "P_3", 3 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.031250 AS "P_0", 0.062500 AS "P_1", 0.875000 AS "P_2", 0.031250 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.200000 AS "P_0", 0.400000 AS "P_1", 0.200000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.166667 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.135593 AS "P_0", 0.033898 AS "P_1", 0.050847 AS "P_2", 0.779661 AS "P_3", 3 AS "D", 0.779661 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.044444 AS "P_0", 0.044444 AS "P_1", 0.022222 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.428571 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.107143 AS "P_0", 0.500000 AS "P_1", 0.297619 AS "P_2", 0.095238 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.531915 AS "P_0", 0.297872 AS "P_1", 0.148936 AS "P_2", 0.021277 AS "P_3", 0 AS "D", 0.531915 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.694444 AS "P_0", 0.083333 AS "P_1", 0.194444 AS "P_2", 0.027778 AS "P_3", 0 AS "D", 0.694444 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.625000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.857143 AS "P_0", 0.071429 AS "P_1", 0.071429 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.105263 AS "P_0", 0.105263 AS "P_1", 0.684211 AS "P_2", 0.105263 AS "P_3", 2 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.107692 AS "P_0", 0.615385 AS "P_1", 0.184615 AS "P_2", 0.092308 AS "P_3", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.923077 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.083333 AS "P_0", 0.166667 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.113208 AS "P_0", 0.716981 AS "P_1", 0.169811 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.716981 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   CAST(NULL AS FLOAT)  AS "Score_0",
   "DT_Output"."P_0" AS "Proba_0",
   CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN LN( "DT_Output"."P_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
   CAST(NULL AS FLOAT)  AS "Score_1",
   "DT_Output"."P_1" AS "Proba_1",
   CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN LN( "DT_Output"."P_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
   CAST(NULL AS FLOAT)  AS "Score_2",
   "DT_Output"."P_2" AS "Proba_2",
   CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN LN( "DT_Output"."P_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
   CAST(NULL AS FLOAT)  AS "Score_3",
   "DT_Output"."P_3" AS "Proba_3",
   CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN LN( "DT_Output"."P_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"