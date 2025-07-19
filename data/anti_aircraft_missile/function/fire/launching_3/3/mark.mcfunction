#建立標記11

    #建立前標記11

        #如果不存在前標記11，且導彈11當前時間>=保險解除時間，就在導彈11位置召喚前標記11(測試)
        #execute at @e[tag=anti_aircraft_missile_11] unless entity @e[tag=anti_aircraft_missile_front_mark_11] if score missile_11 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_11"]}

        #如果不存在前標記11，且導彈11當前時間>=保險解除時間，就在導彈11位置召喚前標記11
        execute at @e[tag=anti_aircraft_missile_11] unless entity @e[tag=anti_aircraft_missile_front_mark_11] if score missile_11 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_11"],Duration:2147483647}

    #建立後標記11

        #如果不存在後標記11，且導彈11當前時間>=保險解除時間，就在導彈11位置召喚後標記11(測試)
        #execute at @e[tag=anti_aircraft_missile_11] unless entity @e[tag=anti_aircraft_missile_later_mark_11] if score missile_11 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_11"]}

        #如果不存在後標記11，且導彈11當前時間>=保險解除時間，就在導彈11位置召喚後標記11
        execute at @e[tag=anti_aircraft_missile_11] unless entity @e[tag=anti_aircraft_missile_later_mark_11] if score missile_11 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_11"],Duration:2147483647}

    #標記11鎖定目標前置量11

        #前標記11視角看向目標前置量11
        execute as @e[tag=anti_aircraft_missile_front_mark_11] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_11] feet run tp ^ ^ ^

        #冷發射

            #後標記11視角看向目標前置量11
            #execute as @e[tag=anti_aircraft_missile_later_mark_11] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_11] feet if score missile_11 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記11視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_11] at @s if score missile_11 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記11位置定位在後標記11的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_11] at @e[tag=anti_aircraft_missile_later_mark_11] run tp ^ ^ ^5

    #標記11速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記11傳送至目標前置量11，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_11] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_11] feet if score missile_11 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記11傳送至目標前置量11，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_11] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_11] feet if score missile_11 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記11傳送至前標記11，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_11] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_11] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記11距離目標前置量11的1格內，就將前標記11傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_11] at @s if entity @e[tag=anti_aircraft_missile_target_offset_11,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈11，就刪除前標記11
        execute as @e[tag=anti_aircraft_missile_front_mark_11] unless entity @e[tag=anti_aircraft_missile_11] run kill @s

        #如果不存在導彈11，就刪除後標記11
        execute as @e[tag=anti_aircraft_missile_later_mark_11] unless entity @e[tag=anti_aircraft_missile_11] run kill @s
