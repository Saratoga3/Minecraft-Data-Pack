#建立標記3

    #建立前標記3

        #如果不存在前標記3，且導彈3當前時間>=保險解除時間，就在導彈3位置召喚前標記3(測試)
        #execute at @e[tag=anti_aircraft_missile_3] unless entity @e[tag=anti_aircraft_missile_front_mark_3] if score missile_3 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_3"]}

        #如果不存在前標記3，且導彈3當前時間>=保險解除時間，就在導彈3位置召喚前標記3
        execute at @e[tag=anti_aircraft_missile_3] unless entity @e[tag=anti_aircraft_missile_front_mark_3] if score missile_3 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_3"],Duration:2147483647}

    #建立後標記3

        #如果不存在後標記3，且導彈3當前時間>=保險解除時間，就在導彈3位置召喚後標記3(測試)
        #execute at @e[tag=anti_aircraft_missile_3] unless entity @e[tag=anti_aircraft_missile_later_mark_3] if score missile_3 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_3"]}

        #如果不存在後標記3，且導彈3當前時間>=保險解除時間，就在導彈3位置召喚後標記3
        execute at @e[tag=anti_aircraft_missile_3] unless entity @e[tag=anti_aircraft_missile_later_mark_3] if score missile_3 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_3"],Duration:2147483647}

    #標記3鎖定目標前置量3

        #前標記3視角看向目標前置量3
        execute as @e[tag=anti_aircraft_missile_front_mark_3] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_3] feet run tp ^ ^ ^

        #冷發射

            #後標記3視角看向目標前置量3
            #execute as @e[tag=anti_aircraft_missile_later_mark_3] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_3] feet if score missile_3 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記3視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_3] at @s if score missile_3 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記3位置定位在後標記3的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_3] at @e[tag=anti_aircraft_missile_later_mark_3] run tp ^ ^ ^5

    #標記3速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記3傳送至目標前置量3，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_3] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_3] feet if score missile_3 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記3傳送至目標前置量3，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_3] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_3] feet if score missile_3 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記3傳送至前標記3，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_3] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_3] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記3距離目標前置量3的1格內，就將前標記3傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_3] at @s if entity @e[tag=anti_aircraft_missile_target_offset_3,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈3，就刪除前標記3
        execute as @e[tag=anti_aircraft_missile_front_mark_3] unless entity @e[tag=anti_aircraft_missile_3] run kill @s

        #如果不存在導彈3，就刪除後標記3
        execute as @e[tag=anti_aircraft_missile_later_mark_3] unless entity @e[tag=anti_aircraft_missile_3] run kill @s
