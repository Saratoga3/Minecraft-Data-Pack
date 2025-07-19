#導彈11飛行

#導彈11

    #在導彈11的位置，召喚目的11
    execute at @e[tag=anti_aircraft_missile_11] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_11"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的11的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_11] at @s if score missile_11 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈11速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_11] positioned 0.0 0.0 0.0 if score missile_11 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_11,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的11的視角看向前標記11
        execute as @e[tag=anti_aircraft_missile_object_11] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_11] feet if score missile_11 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈11速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_11] positioned 0.0 0.0 0.0 if score missile_11 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_11,limit=1] ^ ^ ^4

    #將目的11的座標，存入導彈11的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_11,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_11,limit=1] Pos

#尾煙11

    #在導彈11位置召喚尾煙11(確保尾煙11能在導彈11後方生成)
    execute at @e[tag=anti_aircraft_missile_11] unless entity @e[tag=anti_aircraft_missile_tail_11] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_11"],Duration:2147483647}

    #在尾煙11位置召喚尾煙11特效
    execute at @e[tag=anti_aircraft_missile_tail_11] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙11傳送至導彈11位置
    execute as @e[tag=anti_aircraft_missile_tail_11] at @e[tag=anti_aircraft_missile_11] run tp ~ ~ ~

#刪除目的11
kill @e[tag=anti_aircraft_missile_object_11]

#刪除目標前置量11
kill @e[tag=anti_aircraft_missile_target_offset_11]
