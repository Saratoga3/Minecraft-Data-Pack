#防空導彈雷達站消失

    #目標

        #清除目標標籤
        tag @e[tag=anti_aircraft_missile_target] remove anti_aircraft_missile_target

    #發射站1

        #如果雷達站被毀，且存在目標1，就執行導彈1處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_1] run function anti_aircraft_missile:result/launching_1/1

        #如果雷達站被毀，且存在目標2，就執行導彈2處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_2] run function anti_aircraft_missile:result/launching_1/2

        #如果雷達站被毀，且存在目標3，就執行導彈3處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_3] run function anti_aircraft_missile:result/launching_1/3

        #如果雷達站被毀，且存在目標4，就執行導彈4處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_4] run function anti_aircraft_missile:result/launching_1/4

    #發射站2

        #如果雷達站被毀，且存在目標5，就執行導彈5處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_5] run function anti_aircraft_missile:result/launching_2/1

        #如果雷達站被毀，且存在目標6，就執行導彈6處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_6] run function anti_aircraft_missile:result/launching_2/2

        #如果雷達站被毀，且存在目標7，就執行導彈7處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_7] run function anti_aircraft_missile:result/launching_2/3

        #如果雷達站被毀，且存在目標8，就執行導彈8處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_8] run function anti_aircraft_missile:result/launching_2/4

    #發射站3

        #如果雷達站被毀，且存在目標9，就執行導彈9處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_9] run function anti_aircraft_missile:result/launching_3/1

        #如果雷達站被毀，且存在目標10，就執行導彈10處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_10] run function anti_aircraft_missile:result/launching_3/2

        #如果雷達站被毀，且存在目標11，就執行導彈11處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_11] run function anti_aircraft_missile:result/launching_3/3

        #如果雷達站被毀，且存在目標12，就執行導彈12處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_12] run function anti_aircraft_missile:result/launching_3/4

    #發射站4

        #如果雷達站被毀，且存在目標13，就執行導彈13處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_13] run function anti_aircraft_missile:result/launching_4/1

        #如果雷達站被毀，且存在目標14，就執行導彈14處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_14] run function anti_aircraft_missile:result/launching_4/2

        #如果雷達站被毀，且存在目標15，就執行導彈15處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_15] run function anti_aircraft_missile:result/launching_4/3

        #如果雷達站被毀，且存在目標16，就執行導彈16處理
        execute unless entity @e[tag=anti_aircraft_missile_radar] if entity @e[tag=anti_aircraft_missile_target_16] run function anti_aircraft_missile:result/launching_4/4
