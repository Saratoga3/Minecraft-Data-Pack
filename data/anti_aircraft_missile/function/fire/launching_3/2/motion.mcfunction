#導彈10飛行

#導彈10

    #在導彈10的位置，召喚目的10
    execute at @e[tag=anti_aircraft_missile_10] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_10"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的10的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_10] at @s if score missile_10 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈10速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_10] positioned 0.0 0.0 0.0 if score missile_10 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_10,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的10的視角看向前標記10
        execute as @e[tag=anti_aircraft_missile_object_10] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_10] feet if score missile_10 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈10速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_10] positioned 0.0 0.0 0.0 if score missile_10 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_10,limit=1] ^ ^ ^4

    #將目的10的座標，存入導彈10的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_10,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_10,limit=1] Pos

#尾煙10

    #在導彈10位置召喚尾煙10(確保尾煙10能在導彈10後方生成)
    execute at @e[tag=anti_aircraft_missile_10] unless entity @e[tag=anti_aircraft_missile_tail_10] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_10"],Duration:2147483647}

    #在尾煙10位置召喚尾煙10特效
    execute at @e[tag=anti_aircraft_missile_tail_10] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙10傳送至導彈10位置
    execute as @e[tag=anti_aircraft_missile_tail_10] at @e[tag=anti_aircraft_missile_10] run tp ~ ~ ~

#刪除目的10
kill @e[tag=anti_aircraft_missile_object_10]

#刪除目標前置量10
kill @e[tag=anti_aircraft_missile_target_offset_10]
