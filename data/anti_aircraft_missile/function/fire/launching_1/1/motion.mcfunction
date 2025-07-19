#導彈1飛行

#導彈1

    #在導彈1的位置，召喚目的1
    execute at @e[tag=anti_aircraft_missile_1] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_1"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的1的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_1] at @s if score missile_1 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈1速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_1] positioned 0.0 0.0 0.0 if score missile_1 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_1,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的1的視角看向前標記1
        execute as @e[tag=anti_aircraft_missile_object_1] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_1] feet if score missile_1 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈1速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_1] positioned 0.0 0.0 0.0 if score missile_1 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_1,limit=1] ^ ^ ^4

    #將目的1的座標，存入導彈1的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_1,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_1,limit=1] Pos

#尾煙1

    #在導彈1位置召喚尾煙1(確保尾煙1能在導彈1後方生成)
    execute at @e[tag=anti_aircraft_missile_1] unless entity @e[tag=anti_aircraft_missile_tail_1] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_1"],Duration:2147483647}

    #在尾煙1位置召喚尾煙1特效
    execute at @e[tag=anti_aircraft_missile_tail_1] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙1傳送至導彈1位置
    execute as @e[tag=anti_aircraft_missile_tail_1] at @e[tag=anti_aircraft_missile_1] run tp ~ ~ ~

#刪除目的1
kill @e[tag=anti_aircraft_missile_object_1]

#刪除目標前置量1
kill @e[tag=anti_aircraft_missile_target_offset_1]
