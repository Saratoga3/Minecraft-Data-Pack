#導彈2飛行

#導彈2

    #在導彈2的位置，召喚目的2
    execute at @e[tag=anti_aircraft_missile_2] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_2"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的2的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_2] at @s if score missile_2 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈2速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_2] positioned 0.0 0.0 0.0 if score missile_2 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_2,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的2的視角看向前標記2
        execute as @e[tag=anti_aircraft_missile_object_2] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_2] feet if score missile_2 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈2速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_2] positioned 0.0 0.0 0.0 if score missile_2 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_2,limit=1] ^ ^ ^4

    #將目的2的座標，存入導彈2的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_2,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_2,limit=1] Pos

#尾煙2

    #在導彈2位置召喚尾煙2(確保尾煙2能在導彈2後方生成)
    execute at @e[tag=anti_aircraft_missile_2] unless entity @e[tag=anti_aircraft_missile_tail_2] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_2"],Duration:2147483647}

    #在尾煙2位置召喚尾煙2特效
    execute at @e[tag=anti_aircraft_missile_tail_2] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙2傳送至導彈2位置
    execute as @e[tag=anti_aircraft_missile_tail_2] at @e[tag=anti_aircraft_missile_2] run tp ~ ~ ~

#刪除目的2
kill @e[tag=anti_aircraft_missile_object_2]

#刪除目標前置量2
kill @e[tag=anti_aircraft_missile_target_offset_2]
