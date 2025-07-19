#導彈9飛行

#導彈9

    #在導彈9的位置，召喚目的9
    execute at @e[tag=anti_aircraft_missile_9] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_9"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的9的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_9] at @s if score missile_9 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈9速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_9] positioned 0.0 0.0 0.0 if score missile_9 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_9,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的9的視角看向前標記9
        execute as @e[tag=anti_aircraft_missile_object_9] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_9] feet if score missile_9 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈9速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_9] positioned 0.0 0.0 0.0 if score missile_9 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_9,limit=1] ^ ^ ^4

    #將目的9的座標，存入導彈9的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_9,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_9,limit=1] Pos

#尾煙9

    #在導彈9位置召喚尾煙9(確保尾煙9能在導彈9後方生成)
    execute at @e[tag=anti_aircraft_missile_9] unless entity @e[tag=anti_aircraft_missile_tail_9] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_9"],Duration:2147483647}

    #在尾煙9位置召喚尾煙9特效
    execute at @e[tag=anti_aircraft_missile_tail_9] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙9傳送至導彈9位置
    execute as @e[tag=anti_aircraft_missile_tail_9] at @e[tag=anti_aircraft_missile_9] run tp ~ ~ ~

#刪除目的9
kill @e[tag=anti_aircraft_missile_object_9]

#刪除目標前置量9
kill @e[tag=anti_aircraft_missile_target_offset_9]
