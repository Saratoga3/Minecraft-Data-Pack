#建立標記12

    #建立前標記12

        #如果不存在前標記12，且導彈12當前時間>=保險解除時間，就在導彈12位置召喚前標記12(測試)
        #execute at @e[tag=anti_aircraft_missile_12] unless entity @e[tag=anti_aircraft_missile_front_mark_12] if score missile_12 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_12"]}

        #如果不存在前標記12，且導彈12當前時間>=保險解除時間，就在導彈12位置召喚前標記12
        execute at @e[tag=anti_aircraft_missile_12] unless entity @e[tag=anti_aircraft_missile_front_mark_12] if score missile_12 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_12"],Duration:2147483647}

    #建立後標記12

        #如果不存在後標記12，且導彈12當前時間>=保險解除時間，就在導彈12位置召喚後標記12(測試)
        #execute at @e[tag=anti_aircraft_missile_12] unless entity @e[tag=anti_aircraft_missile_later_mark_12] if score missile_12 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_12"]}

        #如果不存在後標記12，且導彈12當前時間>=保險解除時間，就在導彈12位置召喚後標記12
        execute at @e[tag=anti_aircraft_missile_12] unless entity @e[tag=anti_aircraft_missile_later_mark_12] if score missile_12 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_12"],Duration:2147483647}

    #標記12鎖定目標前置量12

        #前標記12視角看向目標前置量12
        execute as @e[tag=anti_aircraft_missile_front_mark_12] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_12] feet run tp ^ ^ ^

        #冷發射

            #後標記12視角看向目標前置量12
            #execute as @e[tag=anti_aircraft_missile_later_mark_12] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_12] feet if score missile_12 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記12視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_12] at @s if score missile_12 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記12位置定位在後標記12的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_12] at @e[tag=anti_aircraft_missile_later_mark_12] run tp ^ ^ ^5

    #標記12速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記12傳送至目標前置量12，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_12] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_12] feet if score missile_12 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記12傳送至目標前置量12，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_12] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_12] feet if score missile_12 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記12傳送至前標記12，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_12] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_12] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記12距離目標前置量12的1格內，就將前標記12傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_12] at @s if entity @e[tag=anti_aircraft_missile_target_offset_12,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈12，就刪除前標記12
        execute as @e[tag=anti_aircraft_missile_front_mark_12] unless entity @e[tag=anti_aircraft_missile_12] run kill @s

        #如果不存在導彈12，就刪除後標記12
        execute as @e[tag=anti_aircraft_missile_later_mark_12] unless entity @e[tag=anti_aircraft_missile_12] run kill @s
