#導彈7飛行

#導彈7

    #在導彈7的位置，召喚目的7
    execute at @e[tag=anti_aircraft_missile_7] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_7"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的7的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_7] at @s if score missile_7 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈7速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_7] positioned 0.0 0.0 0.0 if score missile_7 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_7,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的7的視角看向前標記7
        execute as @e[tag=anti_aircraft_missile_object_7] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_7] feet if score missile_7 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈7速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_7] positioned 0.0 0.0 0.0 if score missile_7 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_7,limit=1] ^ ^ ^4

    #將目的7的座標，存入導彈7的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_7,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_7,limit=1] Pos

#尾煙7

    #在導彈7位置召喚尾煙7(確保尾煙7能在導彈7後方生成)
    execute at @e[tag=anti_aircraft_missile_7] unless entity @e[tag=anti_aircraft_missile_tail_7] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_7"],Duration:2147483647}

    #在尾煙7位置召喚尾煙7特效
    execute at @e[tag=anti_aircraft_missile_tail_7] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙7傳送至導彈7位置
    execute as @e[tag=anti_aircraft_missile_tail_7] at @e[tag=anti_aircraft_missile_7] run tp ~ ~ ~

#刪除目的7
kill @e[tag=anti_aircraft_missile_object_7]

#刪除目標前置量7
kill @e[tag=anti_aircraft_missile_target_offset_7]
