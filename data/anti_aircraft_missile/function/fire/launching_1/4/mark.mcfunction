#建立標記4

    #建立前標記4

        #如果不存在前標記4，且導彈4當前時間>=保險解除時間，就在導彈4位置召喚前標記4(測試)
        #execute at @e[tag=anti_aircraft_missile_4] unless entity @e[tag=anti_aircraft_missile_front_mark_4] if score missile_4 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_4"]}

        #如果不存在前標記4，且導彈4當前時間>=保險解除時間，就在導彈4位置召喚前標記4
        execute at @e[tag=anti_aircraft_missile_4] unless entity @e[tag=anti_aircraft_missile_front_mark_4] if score missile_4 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_4"],Duration:2147483647}

    #建立後標記4

        #如果不存在後標記4，且導彈4當前時間>=保險解除時間，就在導彈4位置召喚後標記4(測試)
        #execute at @e[tag=anti_aircraft_missile_4] unless entity @e[tag=anti_aircraft_missile_later_mark_4] if score missile_4 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_4"]}

        #如果不存在後標記4，且導彈4當前時間>=保險解除時間，就在導彈4位置召喚後標記4
        execute at @e[tag=anti_aircraft_missile_4] unless entity @e[tag=anti_aircraft_missile_later_mark_4] if score missile_4 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_4"],Duration:2147483647}

    #標記4鎖定目標前置量4

        #前標記4視角看向目標前置量4
        execute as @e[tag=anti_aircraft_missile_front_mark_4] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_4] feet run tp ^ ^ ^

        #冷發射

            #後標記4視角看向目標前置量4
            #execute as @e[tag=anti_aircraft_missile_later_mark_4] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_4] feet if score missile_4 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記4視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_4] at @s if score missile_4 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記4位置定位在後標記4的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_4] at @e[tag=anti_aircraft_missile_later_mark_4] run tp ^ ^ ^5

    #標記4速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記4傳送至目標前置量4，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_4] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_4] feet if score missile_4 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記4傳送至目標前置量4，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_4] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_4] feet if score missile_4 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記4傳送至前標記4，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_4] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_4] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記4距離目標前置量4的1格內，就將前標記4傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_4] at @s if entity @e[tag=anti_aircraft_missile_target_offset_4,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈4，就刪除前標記4
        execute as @e[tag=anti_aircraft_missile_front_mark_4] unless entity @e[tag=anti_aircraft_missile_4] run kill @s

        #如果不存在導彈4，就刪除後標記4
        execute as @e[tag=anti_aircraft_missile_later_mark_4] unless entity @e[tag=anti_aircraft_missile_4] run kill @s
