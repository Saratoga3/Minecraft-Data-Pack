#建立標記6

    #建立前標記6

        #如果不存在前標記6，且導彈6當前時間>=保險解除時間，就在導彈6位置召喚前標記6(測試)
        #execute at @e[tag=anti_aircraft_missile_6] unless entity @e[tag=anti_aircraft_missile_front_mark_6] if score missile_6 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_6"]}

        #如果不存在前標記6，且導彈6當前時間>=保險解除時間，就在導彈6位置召喚前標記6
        execute at @e[tag=anti_aircraft_missile_6] unless entity @e[tag=anti_aircraft_missile_front_mark_6] if score missile_6 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_6"],Duration:2147483647}

    #建立後標記6

        #如果不存在後標記6，且導彈6當前時間>=保險解除時間，就在導彈6位置召喚後標記6(測試)
        #execute at @e[tag=anti_aircraft_missile_6] unless entity @e[tag=anti_aircraft_missile_later_mark_6] if score missile_6 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_6"]}

        #如果不存在後標記6，且導彈6當前時間>=保險解除時間，就在導彈6位置召喚後標記6
        execute at @e[tag=anti_aircraft_missile_6] unless entity @e[tag=anti_aircraft_missile_later_mark_6] if score missile_6 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_6"],Duration:2147483647}

    #標記6鎖定目標前置量6

        #前標記6視角看向目標前置量6
        execute as @e[tag=anti_aircraft_missile_front_mark_6] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_6] feet run tp ^ ^ ^

        #冷發射

            #後標記6視角看向目標前置量6
            #execute as @e[tag=anti_aircraft_missile_later_mark_6] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_6] feet if score missile_6 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記6視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_6] at @s if score missile_6 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記6位置定位在後標記6的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_6] at @e[tag=anti_aircraft_missile_later_mark_6] run tp ^ ^ ^5

    #標記6速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記6傳送至目標前置量6，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_6] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_6] feet if score missile_6 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記6傳送至目標前置量6，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_6] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_6] feet if score missile_6 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記6傳送至前標記6，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_6] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_6] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記6距離目標前置量6的1格內，就將前標記6傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_6] at @s if entity @e[tag=anti_aircraft_missile_target_offset_6,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈6，就刪除前標記6
        execute as @e[tag=anti_aircraft_missile_front_mark_6] unless entity @e[tag=anti_aircraft_missile_6] run kill @s

        #如果不存在導彈6，就刪除後標記6
        execute as @e[tag=anti_aircraft_missile_later_mark_6] unless entity @e[tag=anti_aircraft_missile_6] run kill @s
