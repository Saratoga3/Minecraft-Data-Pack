#建立標記15

    #建立前標記15

        #如果不存在前標記15，且導彈15當前時間>=保險解除時間，就在導彈15位置召喚前標記15(測試)
        #execute at @e[tag=anti_aircraft_missile_15] unless entity @e[tag=anti_aircraft_missile_front_mark_15] if score missile_15 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_front_mark_15"]}

        #如果不存在前標記15，且導彈15當前時間>=保險解除時間，就在導彈15位置召喚前標記15
        execute at @e[tag=anti_aircraft_missile_15] unless entity @e[tag=anti_aircraft_missile_front_mark_15] if score missile_15 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_front_mark_15"],Duration:2147483647}

    #建立後標記15

        #如果不存在後標記15，且導彈15當前時間>=保險解除時間，就在導彈15位置召喚後標記15(測試)
        #execute at @e[tag=anti_aircraft_missile_15] unless entity @e[tag=anti_aircraft_missile_later_mark_15] if score missile_15 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["anti_aircraft_missile_later_mark_15"]}

        #如果不存在後標記15，且導彈15當前時間>=保險解除時間，就在導彈15位置召喚後標記15
        execute at @e[tag=anti_aircraft_missile_15] unless entity @e[tag=anti_aircraft_missile_later_mark_15] if score missile_15 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_later_mark_15"],Duration:2147483647}

    #標記15鎖定目標前置量15

        #前標記15視角看向目標前置量15
        execute as @e[tag=anti_aircraft_missile_front_mark_15] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_15] feet run tp ^ ^ ^

        #冷發射

            #後標記15視角看向目標前置量15
            #execute as @e[tag=anti_aircraft_missile_later_mark_15] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_15] feet if score missile_15 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp ^ ^ ^

        #熱發射

            #後標記15視角看向天空
            execute as @e[tag=anti_aircraft_missile_later_mark_15] at @s if score missile_15 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #前標記15位置定位在後標記15的前方
        execute as @e[tag=anti_aircraft_missile_front_mark_15] at @e[tag=anti_aircraft_missile_later_mark_15] run tp ^ ^ ^5

    #標記15速度

        #熱發射

            #如果熱發射還沒解除，就讓前標記15傳送至目標前置量15，轉彎係數小
            execute as @e[tag=anti_aircraft_missile_front_mark_15] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_15] feet if score missile_15 anti_aircraft_missile_set <= hot_launch anti_aircraft_missile_set run tp ^ ^ ^0.15

        #飛行

            #如果熱發射已經解除，就讓前標記15傳送至目標前置量15，轉彎係數大
            execute as @e[tag=anti_aircraft_missile_front_mark_15] at @s facing entity @e[tag=anti_aircraft_missile_target_offset_15] feet if score missile_15 anti_aircraft_missile_set > hot_launch anti_aircraft_missile_set run tp ^ ^ ^1

        #後標記15傳送至前標記15，調整飛行速度
        execute as @e[tag=anti_aircraft_missile_later_mark_15] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_15] feet run tp ^ ^ ^4

    #例外狀況

        #如果前標記15距離目標前置量15的1格內，就將前標記15傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=anti_aircraft_missile_front_mark_15] at @s if entity @e[tag=anti_aircraft_missile_target_offset_15,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈15，就刪除前標記15
        execute as @e[tag=anti_aircraft_missile_front_mark_15] unless entity @e[tag=anti_aircraft_missile_15] run kill @s

        #如果不存在導彈15，就刪除後標記15
        execute as @e[tag=anti_aircraft_missile_later_mark_15] unless entity @e[tag=anti_aircraft_missile_15] run kill @s
