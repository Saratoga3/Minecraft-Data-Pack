#建立標記13

    #建立前標記13

        #如果不存在前標記13，且導彈13當前時間>=保險解除時間，就在導彈13位置召喚前標記13(測試)
        #execute at @e[tag=anti_aircraft_missile_13] unless entity @e[tag=anti_aircraft_missile_front_mark_13] if score missile_13 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_13"]}

        #如果不存在前標記13，且導彈13當前時間>=保險解除時間，就在導彈13位置召喚前標記13
        execute at @e[tag=anti_aircraft_missile_13] unless entity @e[tag=anti_aircraft_missile_front_mark_13] if score missile_13 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_13"],Duration:2147483647}

    #建立後標記13

        #如果不存在後標記13，且導彈13當前時間>=保險解除時間，就在導彈13位置召喚後標記13(測試)
        #execute at @e[tag=anti_aircraft_missile_13] unless entity @e[tag=anti_aircraft_missile_later_mark_13] if score missile_13 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_13"]}

        #如果不存在後標記13，且導彈13當前時間>=保險解除時間，就在導彈13位置召喚後標記13
        execute at @e[tag=anti_aircraft_missile_13] unless entity @e[tag=anti_aircraft_missile_later_mark_13] if score missile_13 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_13"],Duration:2147483647}

    #標記13鎖定目標前置量13

        #前標記13視角看向目標前置量13
        execute as @e[tag=anti_aircraft_missile_front_mark_13] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_13] feet run tp ^ ^ ^

        #冷發射

            #後標記13視角看向目標前置量13
            #execute as @e[tag=anti_aircraft_missile_later_mark_13] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_13] feet if score missile_13 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記13視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_13] at @s if score missile_13 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記13位置定位在後標記13的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_13] at @e[tag=anti_aircraft_missile_later_mark_13] run tp ^ ^ ^5

    #標記13速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記13傳送至目標前置量13，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_13] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_13] feet if score missile_13 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記13傳送至目標前置量13，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_13] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_13] feet if score missile_13 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記13傳送至前標記13，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_13] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_13] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記13距離目標前置量13的1格內，就將前標記13傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_13] at @s if entity @e[tag=anti_aircraft_missile_target_offset_13,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈13，就刪除前標記13
        execute as @e[tag=anti_aircraft_missile_front_mark_13] unless entity @e[tag=anti_aircraft_missile_13] run kill @s

        #如果不存在導彈13，就刪除後標記13
        execute as @e[tag=anti_aircraft_missile_later_mark_13] unless entity @e[tag=anti_aircraft_missile_13] run kill @s
