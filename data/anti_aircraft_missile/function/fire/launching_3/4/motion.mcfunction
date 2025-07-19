#導彈12飛行

#導彈12

    #在導彈12的位置，召喚目的12
    execute at @e[tag=anti_aircraft_missile_12] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_12"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的12的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_12] at @s if score missile_12 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈12速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_12] positioned 0.0 0.0 0.0 if score missile_12 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_12,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的12的視角看向前標記12
        execute as @e[tag=anti_aircraft_missile_object_12] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_12] feet if score missile_12 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈12速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_12] positioned 0.0 0.0 0.0 if score missile_12 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_12,limit=1] ^ ^ ^4

    #將目的12的座標，存入導彈12的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_12,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_12,limit=1] Pos

#尾煙12

    #在導彈12位置召喚尾煙12(確保尾煙12能在導彈12後方生成)
    execute at @e[tag=anti_aircraft_missile_12] unless entity @e[tag=anti_aircraft_missile_tail_12] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_12"],Duration:2147483647}

    #在尾煙12位置召喚尾煙12特效
    execute at @e[tag=anti_aircraft_missile_tail_12] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙12傳送至導彈12位置
    execute as @e[tag=anti_aircraft_missile_tail_12] at @e[tag=anti_aircraft_missile_12] run tp ~ ~ ~

#刪除目的12
kill @e[tag=anti_aircraft_missile_object_12]

#刪除目標前置量12
kill @e[tag=anti_aircraft_missile_target_offset_12]
