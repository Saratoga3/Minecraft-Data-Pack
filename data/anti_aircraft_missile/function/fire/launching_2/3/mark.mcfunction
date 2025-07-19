#建立標記7

    #建立前標記7

        #如果不存在前標記7，且導彈7當前時間>=保險解除時間，就在導彈7位置召喚前標記7(測試)
        #execute at @e[tag=anti_aircraft_missile_7] unless entity @e[tag=anti_aircraft_missile_front_mark_7] if score missile_7 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_7"]}

        #如果不存在前標記7，且導彈7當前時間>=保險解除時間，就在導彈7位置召喚前標記7
        execute at @e[tag=anti_aircraft_missile_7] unless entity @e[tag=anti_aircraft_missile_front_mark_7] if score missile_7 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_7"],Duration:2147483647}

    #建立後標記7

        #如果不存在後標記7，且導彈7當前時間>=保險解除時間，就在導彈7位置召喚後標記7(測試)
        #execute at @e[tag=anti_aircraft_missile_7] unless entity @e[tag=anti_aircraft_missile_later_mark_7] if score missile_7 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_7"]}

        #如果不存在後標記7，且導彈7當前時間>=保險解除時間，就在導彈7位置召喚後標記7
        execute at @e[tag=anti_aircraft_missile_7] unless entity @e[tag=anti_aircraft_missile_later_mark_7] if score missile_7 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_7"],Duration:2147483647}

    #標記7鎖定目標前置量7

        #前標記7視角看向目標前置量7
        execute as @e[tag=anti_aircraft_missile_front_mark_7] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_7] feet run tp ^ ^ ^

        #冷發射

            #後標記7視角看向目標前置量7
            #execute as @e[tag=anti_aircraft_missile_later_mark_7] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_7] feet if score missile_7 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記7視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_7] at @s if score missile_7 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記7位置定位在後標記7的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_7] at @e[tag=anti_aircraft_missile_later_mark_7] run tp ^ ^ ^5

    #標記7速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記7傳送至目標前置量7，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_7] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_7] feet if score missile_7 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記7傳送至目標前置量7，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_7] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_7] feet if score missile_7 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記7傳送至前標記7，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_7] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_7] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記7距離目標前置量7的1格內，就將前標記7傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_7] at @s if entity @e[tag=anti_aircraft_missile_target_offset_7,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈7，就刪除前標記7
        execute as @e[tag=anti_aircraft_missile_front_mark_7] unless entity @e[tag=anti_aircraft_missile_7] run kill @s

        #如果不存在導彈7，就刪除後標記7
        execute as @e[tag=anti_aircraft_missile_later_mark_7] unless entity @e[tag=anti_aircraft_missile_7] run kill @s
