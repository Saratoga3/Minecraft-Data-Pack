#建立標記2

    #建立前標記2

        #如果不存在前標記2，且導彈2當前時間>=保險解除時間，就在導彈2位置召喚前標記2(測試)
        #execute at @e[tag=anti_aircraft_missile_2] unless entity @e[tag=anti_aircraft_missile_front_mark_2] if score missile_2 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_2"]}

        #如果不存在前標記2，且導彈2當前時間>=保險解除時間，就在導彈2位置召喚前標記2
        execute at @e[tag=anti_aircraft_missile_2] unless entity @e[tag=anti_aircraft_missile_front_mark_2] if score missile_2 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_2"],Duration:2147483647}

    #建立後標記2

        #如果不存在後標記2，且導彈2當前時間>=保險解除時間，就在導彈2位置召喚後標記2(測試)
        #execute at @e[tag=anti_aircraft_missile_2] unless entity @e[tag=anti_aircraft_missile_later_mark_2] if score missile_2 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_2"]}

        #如果不存在後標記2，且導彈2當前時間>=保險解除時間，就在導彈2位置召喚後標記2
        execute at @e[tag=anti_aircraft_missile_2] unless entity @e[tag=anti_aircraft_missile_later_mark_2] if score missile_2 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_2"],Duration:2147483647}

    #標記2鎖定目標前置量2

        #前標記2視角看向目標前置量2
        execute as @e[tag=anti_aircraft_missile_front_mark_2] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_2] feet run tp ^ ^ ^

        #冷發射

            #後標記2視角看向目標前置量2
            #execute as @e[tag=anti_aircraft_missile_later_mark_2] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_2] feet if score missile_2 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記2視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_2] at @s if score missile_2 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記2位置定位在後標記2的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_2] at @e[tag=anti_aircraft_missile_later_mark_2] run tp ^ ^ ^5

    #標記2速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記2傳送至目標前置量2，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_2] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_2] feet if score missile_2 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記2傳送至目標前置量2，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_2] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_2] feet if score missile_2 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記2傳送至前標記2，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_2] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_2] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記2距離目標前置量2的1格內，就將前標記2傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_2] at @s if entity @e[tag=anti_aircraft_missile_target_offset_2,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈2，就刪除前標記2
        execute as @e[tag=anti_aircraft_missile_front_mark_2] unless entity @e[tag=anti_aircraft_missile_2] run kill @s

        #如果不存在導彈2，就刪除後標記2
        execute as @e[tag=anti_aircraft_missile_later_mark_2] unless entity @e[tag=anti_aircraft_missile_2] run kill @s
