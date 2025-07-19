#導彈3飛行

#導彈3

    #在導彈3的位置，召喚目的3
    execute at @e[tag=anti_aircraft_missile_3] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_3"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的3的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_3] at @s if score missile_3 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈3速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_3] positioned 0.0 0.0 0.0 if score missile_3 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_3,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的3的視角看向前標記3
        execute as @e[tag=anti_aircraft_missile_object_3] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_3] feet if score missile_3 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈3速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_3] positioned 0.0 0.0 0.0 if score missile_3 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_3,limit=1] ^ ^ ^4

    #將目的3的座標，存入導彈3的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_3,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_3,limit=1] Pos

#尾煙3

    #在導彈3位置召喚尾煙3(確保尾煙3能在導彈3後方生成)
    execute at @e[tag=anti_aircraft_missile_3] unless entity @e[tag=anti_aircraft_missile_tail_3] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_3"],Duration:2147483647}

    #在尾煙3位置召喚尾煙3特效
    execute at @e[tag=anti_aircraft_missile_tail_3] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙3傳送至導彈3位置
    execute as @e[tag=anti_aircraft_missile_tail_3] at @e[tag=anti_aircraft_missile_3] run tp ~ ~ ~

#刪除目的3
kill @e[tag=anti_aircraft_missile_object_3]

#刪除目標前置量3
kill @e[tag=anti_aircraft_missile_target_offset_3]
