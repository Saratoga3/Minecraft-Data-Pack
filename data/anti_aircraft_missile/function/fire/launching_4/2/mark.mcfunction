#建立標記14

    #建立前標記14

        #如果不存在前標記14，且導彈14當前時間>=保險解除時間，就在導彈14位置召喚前標記14(測試)
        #execute at @e[tag=anti_aircraft_missile_14] unless entity @e[tag=anti_aircraft_missile_front_mark_14] if score missile_14 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_14"]}

        #如果不存在前標記14，且導彈14當前時間>=保險解除時間，就在導彈14位置召喚前標記14
        execute at @e[tag=anti_aircraft_missile_14] unless entity @e[tag=anti_aircraft_missile_front_mark_14] if score missile_14 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_14"],Duration:2147483647}

    #建立後標記14

        #如果不存在後標記14，且導彈14當前時間>=保險解除時間，就在導彈14位置召喚後標記14(測試)
        #execute at @e[tag=anti_aircraft_missile_14] unless entity @e[tag=anti_aircraft_missile_later_mark_14] if score missile_14 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_14"]}

        #如果不存在後標記14，且導彈14當前時間>=保險解除時間，就在導彈14位置召喚後標記14
        execute at @e[tag=anti_aircraft_missile_14] unless entity @e[tag=anti_aircraft_missile_later_mark_14] if score missile_14 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_14"],Duration:2147483647}

    #標記14鎖定目標前置量14

        #前標記14視角看向目標前置量14
        execute as @e[tag=anti_aircraft_missile_front_mark_14] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_14] feet run tp ^ ^ ^

        #冷發射

            #後標記14視角看向目標前置量14
            #execute as @e[tag=anti_aircraft_missile_later_mark_14] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_14] feet if score missile_14 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記14視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_14] at @s if score missile_14 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記14位置定位在後標記14的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_14] at @e[tag=anti_aircraft_missile_later_mark_14] run tp ^ ^ ^5

    #標記14速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記14傳送至目標前置量14，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_14] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_14] feet if score missile_14 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記14傳送至目標前置量14，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_14] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_14] feet if score missile_14 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記14傳送至前標記14，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_14] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_14] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記14距離目標前置量14的1格內，就將前標記14傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_14] at @s if entity @e[tag=anti_aircraft_missile_target_offset_14,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈14，就刪除前標記14
        execute as @e[tag=anti_aircraft_missile_front_mark_14] unless entity @e[tag=anti_aircraft_missile_14] run kill @s

        #如果不存在導彈14，就刪除後標記14
        execute as @e[tag=anti_aircraft_missile_later_mark_14] unless entity @e[tag=anti_aircraft_missile_14] run kill @s
