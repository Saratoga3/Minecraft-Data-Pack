#導彈14飛行

#導彈14

    #在導彈14的位置，召喚目的14
    execute at @e[tag=anti_aircraft_missile_14] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_14"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的14的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_14] at @s if score missile_14 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈14速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_14] positioned 0.0 0.0 0.0 if score missile_14 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_14,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的14的視角看向前標記14
        execute as @e[tag=anti_aircraft_missile_object_14] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_14] feet if score missile_14 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈14速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_14] positioned 0.0 0.0 0.0 if score missile_14 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_14,limit=1] ^ ^ ^4

    #將目的14的座標，存入導彈14的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_14,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_14,limit=1] Pos

#尾煙14

    #在導彈14位置召喚尾煙14(確保尾煙14能在導彈14後方生成)
    execute at @e[tag=anti_aircraft_missile_14] unless entity @e[tag=anti_aircraft_missile_tail_14] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_14"],Duration:2147483647}

    #在尾煙14位置召喚尾煙14特效
    execute at @e[tag=anti_aircraft_missile_tail_14] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙14傳送至導彈14位置
    execute as @e[tag=anti_aircraft_missile_tail_14] at @e[tag=anti_aircraft_missile_14] run tp ~ ~ ~

#刪除目的14
kill @e[tag=anti_aircraft_missile_object_14]

#刪除目標前置量14
kill @e[tag=anti_aircraft_missile_target_offset_14]
