#建立標記16

    #建立前標記16

        #如果不存在前標記16，且導彈16當前時間>=保險解除時間，就在導彈16位置召喚前標記16(測試)
        #execute at @e[tag=anti_aircraft_missile_16] unless entity @e[tag=anti_aircraft_missile_front_mark_16] if score missile_16 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_16"]}

        #如果不存在前標記16，且導彈16當前時間>=保險解除時間，就在導彈16位置召喚前標記16
        execute at @e[tag=anti_aircraft_missile_16] unless entity @e[tag=anti_aircraft_missile_front_mark_16] if score missile_16 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_16"],Duration:2147483647}

    #建立後標記16

        #如果不存在後標記16，且導彈16當前時間>=保險解除時間，就在導彈16位置召喚後標記16(測試)
        #execute at @e[tag=anti_aircraft_missile_16] unless entity @e[tag=anti_aircraft_missile_later_mark_16] if score missile_16 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_16"]}

        #如果不存在後標記16，且導彈16當前時間>=保險解除時間，就在導彈16位置召喚後標記16
        execute at @e[tag=anti_aircraft_missile_16] unless entity @e[tag=anti_aircraft_missile_later_mark_16] if score missile_16 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_16"],Duration:2147483647}

    #標記16鎖定目標前置量16

        #前標記16視角看向目標前置量16
        execute as @e[tag=anti_aircraft_missile_front_mark_16] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_16] feet run tp ^ ^ ^

        #冷發射

            #後標記16視角看向目標前置量16
            #execute as @e[tag=anti_aircraft_missile_later_mark_16] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_16] feet if score missile_16 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記16視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_16] at @s if score missile_16 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記16位置定位在後標記16的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_16] at @e[tag=anti_aircraft_missile_later_mark_16] run tp ^ ^ ^5

    #標記16速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記16傳送至目標前置量16，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_16] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_16] feet if score missile_16 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記16傳送至目標前置量16，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_16] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_16] feet if score missile_16 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記16傳送至前標記16，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_16] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_16] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記16距離目標前置量16的1格內，就將前標記16傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_16] at @s if entity @e[tag=anti_aircraft_missile_target_offset_16,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈16，就刪除前標記16
        execute as @e[tag=anti_aircraft_missile_front_mark_16] unless entity @e[tag=anti_aircraft_missile_16] run kill @s

        #如果不存在導彈16，就刪除後標記16
        execute as @e[tag=anti_aircraft_missile_later_mark_16] unless entity @e[tag=anti_aircraft_missile_16] run kill @s
