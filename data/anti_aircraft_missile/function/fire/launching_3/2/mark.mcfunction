#建立標記10

    #建立前標記10

        #如果不存在前標記10，且導彈10當前時間>=保險解除時間，就在導彈10位置召喚前標記10(測試)
        #execute at @e[tag=anti_aircraft_missile_10] unless entity @e[tag=anti_aircraft_missile_front_mark_10] if score missile_10 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_10"]}

        #如果不存在前標記10，且導彈10當前時間>=保險解除時間，就在導彈10位置召喚前標記10
        execute at @e[tag=anti_aircraft_missile_10] unless entity @e[tag=anti_aircraft_missile_front_mark_10] if score missile_10 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_10"],Duration:2147483647}

    #建立後標記10

        #如果不存在後標記10，且導彈10當前時間>=保險解除時間，就在導彈10位置召喚後標記10(測試)
        #execute at @e[tag=anti_aircraft_missile_10] unless entity @e[tag=anti_aircraft_missile_later_mark_10] if score missile_10 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_10"]}

        #如果不存在後標記10，且導彈10當前時間>=保險解除時間，就在導彈10位置召喚後標記10
        execute at @e[tag=anti_aircraft_missile_10] unless entity @e[tag=anti_aircraft_missile_later_mark_10] if score missile_10 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_10"],Duration:2147483647}

    #標記10鎖定目標前置量10

        #前標記10視角看向目標前置量10
        execute as @e[tag=anti_aircraft_missile_front_mark_10] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_10] feet run tp ^ ^ ^

        #冷發射

            #後標記10視角看向目標前置量10
            #execute as @e[tag=anti_aircraft_missile_later_mark_10] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_10] feet if score missile_10 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記10視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_10] at @s if score missile_10 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記10位置定位在後標記10的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_10] at @e[tag=anti_aircraft_missile_later_mark_10] run tp ^ ^ ^5

    #標記10速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記10傳送至目標前置量10，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_10] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_10] feet if score missile_10 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記10傳送至目標前置量10，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_10] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_10] feet if score missile_10 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記10傳送至前標記10，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_10] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_10] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記10距離目標前置量10的1格內，就將前標記10傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_10] at @s if entity @e[tag=anti_aircraft_missile_target_offset_10,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈10，就刪除前標記10
        execute as @e[tag=anti_aircraft_missile_front_mark_10] unless entity @e[tag=anti_aircraft_missile_10] run kill @s

        #如果不存在導彈10，就刪除後標記10
        execute as @e[tag=anti_aircraft_missile_later_mark_10] unless entity @e[tag=anti_aircraft_missile_10] run kill @s
