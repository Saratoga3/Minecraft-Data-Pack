#導彈15飛行

#導彈15

    #在導彈15的位置，召喚目的15
    execute at @e[tag=anti_aircraft_missile_15] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_15"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的15的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_15] at @s if score missile_15 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈15速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_15] positioned 0.0 0.0 0.0 if score missile_15 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_15,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的15的視角看向前標記15
        execute as @e[tag=anti_aircraft_missile_object_15] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_15] feet if score missile_15 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈15速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_15] positioned 0.0 0.0 0.0 if score missile_15 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_15,limit=1] ^ ^ ^4

    #將目的15的座標，存入導彈15的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_15,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_15,limit=1] Pos

#尾煙15

    #在導彈15位置召喚尾煙15(確保尾煙15能在導彈15後方生成)
    execute at @e[tag=anti_aircraft_missile_15] unless entity @e[tag=anti_aircraft_missile_tail_15] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_15"],Duration:2147483647}

    #在尾煙15位置召喚尾煙15特效
    execute at @e[tag=anti_aircraft_missile_tail_15] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙15傳送至導彈15位置
    execute as @e[tag=anti_aircraft_missile_tail_15] at @e[tag=anti_aircraft_missile_15] run tp ~ ~ ~

#刪除目的15
kill @e[tag=anti_aircraft_missile_object_15]

#刪除目標前置量15
kill @e[tag=anti_aircraft_missile_target_offset_15]
