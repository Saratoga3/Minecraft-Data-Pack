#建立標記8

    #建立前標記8

        #如果不存在前標記8，且導彈8當前時間>=保險解除時間，就在導彈8位置召喚前標記8(測試)
        #execute at @e[tag=anti_aircraft_missile_8] unless entity @e[tag=anti_aircraft_missile_front_mark_8] if score missile_8 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_8"]}

        #如果不存在前標記8，且導彈8當前時間>=保險解除時間，就在導彈8位置召喚前標記8
        execute at @e[tag=anti_aircraft_missile_8] unless entity @e[tag=anti_aircraft_missile_front_mark_8] if score missile_8 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_8"],Duration:2147483647}

    #建立後標記8

        #如果不存在後標記8，且導彈8當前時間>=保險解除時間，就在導彈8位置召喚後標記8(測試)
        #execute at @e[tag=anti_aircraft_missile_8] unless entity @e[tag=anti_aircraft_missile_later_mark_8] if score missile_8 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_8"]}

        #如果不存在後標記8，且導彈8當前時間>=保險解除時間，就在導彈8位置召喚後標記8
        execute at @e[tag=anti_aircraft_missile_8] unless entity @e[tag=anti_aircraft_missile_later_mark_8] if score missile_8 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_8"],Duration:2147483647}

    #標記8鎖定目標前置量8

        #前標記8視角看向目標前置量8
        execute as @e[tag=anti_aircraft_missile_front_mark_8] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_8] feet run tp ^ ^ ^

        #冷發射

            #後標記8視角看向目標前置量8
            #execute as @e[tag=anti_aircraft_missile_later_mark_8] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_8] feet if score missile_8 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記8視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_8] at @s if score missile_8 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記8位置定位在後標記8的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_8] at @e[tag=anti_aircraft_missile_later_mark_8] run tp ^ ^ ^5

    #標記8速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記8傳送至目標前置量8，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_8] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_8] feet if score missile_8 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記8傳送至目標前置量8，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_8] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_8] feet if score missile_8 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記8傳送至前標記8，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_8] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_8] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記8距離目標前置量8的1格內，就將前標記8傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_8] at @s if entity @e[tag=anti_aircraft_missile_target_offset_8,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈8，就刪除前標記8
        execute as @e[tag=anti_aircraft_missile_front_mark_8] unless entity @e[tag=anti_aircraft_missile_8] run kill @s

        #如果不存在導彈8，就刪除後標記8
        execute as @e[tag=anti_aircraft_missile_later_mark_8] unless entity @e[tag=anti_aircraft_missile_8] run kill @s
