#導彈8飛行

#導彈8

    #在導彈8的位置，召喚目的8
    execute at @e[tag=anti_aircraft_missile_8] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_8"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的8的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_8] at @s if score missile_8 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈8速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_8] positioned 0.0 0.0 0.0 if score missile_8 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_8,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的8的視角看向前標記8
        execute as @e[tag=anti_aircraft_missile_object_8] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_8] feet if score missile_8 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈8速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_8] positioned 0.0 0.0 0.0 if score missile_8 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_8,limit=1] ^ ^ ^4

    #將目的8的座標，存入導彈8的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_8,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_8,limit=1] Pos

#尾煙8

    #在導彈8位置召喚尾煙8(確保尾煙8能在導彈8後方生成)
    execute at @e[tag=anti_aircraft_missile_8] unless entity @e[tag=anti_aircraft_missile_tail_8] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_8"],Duration:2147483647}

    #在尾煙8位置召喚尾煙8特效
    execute at @e[tag=anti_aircraft_missile_tail_8] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙8傳送至導彈8位置
    execute as @e[tag=anti_aircraft_missile_tail_8] at @e[tag=anti_aircraft_missile_8] run tp ~ ~ ~

#刪除目的8
kill @e[tag=anti_aircraft_missile_object_8]

#刪除目標前置量8
kill @e[tag=anti_aircraft_missile_target_offset_8]
