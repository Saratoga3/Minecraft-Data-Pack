#導彈13飛行

#導彈13

    #在導彈13的位置，召喚目的13
    execute at @e[tag=anti_aircraft_missile_13] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_13"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的13的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_13] at @s if score missile_13 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈13速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_13] positioned 0.0 0.0 0.0 if score missile_13 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_13,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的13的視角看向前標記13
        execute as @e[tag=anti_aircraft_missile_object_13] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_13] feet if score missile_13 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈13速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_13] positioned 0.0 0.0 0.0 if score missile_13 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_13,limit=1] ^ ^ ^4

    #將目的13的座標，存入導彈13的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_13,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_13,limit=1] Pos

#尾煙13

    #在導彈13位置召喚尾煙13(確保尾煙13能在導彈13後方生成)
    execute at @e[tag=anti_aircraft_missile_13] unless entity @e[tag=anti_aircraft_missile_tail_13] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_13"],Duration:2147483647}

    #在尾煙13位置召喚尾煙13特效
    execute at @e[tag=anti_aircraft_missile_tail_13] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙13傳送至導彈13位置
    execute as @e[tag=anti_aircraft_missile_tail_13] at @e[tag=anti_aircraft_missile_13] run tp ~ ~ ~

#刪除目的13
kill @e[tag=anti_aircraft_missile_object_13]

#刪除目標前置量13
kill @e[tag=anti_aircraft_missile_target_offset_13]
