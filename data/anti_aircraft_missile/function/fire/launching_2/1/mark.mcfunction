#建立標記5

    #建立前標記5

        #如果不存在前標記5，且導彈5當前時間>=保險解除時間，就在導彈5位置召喚前標記5(測試)
        #execute at @e[tag=anti_aircraft_missile_5] unless entity @e[tag=anti_aircraft_missile_front_mark_5] if score missile_5 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_5"]}

        #如果不存在前標記5，且導彈5當前時間>=保險解除時間，就在導彈5位置召喚前標記5
        execute at @e[tag=anti_aircraft_missile_5] unless entity @e[tag=anti_aircraft_missile_front_mark_5] if score missile_5 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_5"],Duration:2147483647}

    #建立後標記5

        #如果不存在後標記5，且導彈5當前時間>=保險解除時間，就在導彈5位置召喚後標記5(測試)
        #execute at @e[tag=anti_aircraft_missile_5] unless entity @e[tag=anti_aircraft_missile_later_mark_5] if score missile_5 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_5"]}

        #如果不存在後標記5，且導彈5當前時間>=保險解除時間，就在導彈5位置召喚後標記5
        execute at @e[tag=anti_aircraft_missile_5] unless entity @e[tag=anti_aircraft_missile_later_mark_5] if score missile_5 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_5"],Duration:2147483647}

    #標記5鎖定目標前置量5

        #前標記5視角看向目標前置量5
        execute as @e[tag=anti_aircraft_missile_front_mark_5] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_5] feet run tp ^ ^ ^

        #冷發射

            #後標記5視角看向目標前置量5
            #execute as @e[tag=anti_aircraft_missile_later_mark_5] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_5] feet if score missile_5 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記5視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_5] at @s if score missile_5 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記5位置定位在後標記5的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_5] at @e[tag=anti_aircraft_missile_later_mark_5] run tp ^ ^ ^5

    #標記5速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記5傳送至目標前置量5，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_5] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_5] feet if score missile_5 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記5傳送至目標前置量5，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_5] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_5] feet if score missile_5 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記5傳送至前標記5，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_5] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_5] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記5距離目標前置量5的1格內，就將前標記5傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_5] at @s if entity @e[tag=anti_aircraft_missile_target_offset_5,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈5，就刪除前標記5
        execute as @e[tag=anti_aircraft_missile_front_mark_5] unless entity @e[tag=anti_aircraft_missile_5] run kill @s

        #如果不存在導彈5，就刪除後標記5
        execute as @e[tag=anti_aircraft_missile_later_mark_5] unless entity @e[tag=anti_aircraft_missile_5] run kill @s
