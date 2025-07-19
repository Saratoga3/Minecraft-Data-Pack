#導彈5飛行

#導彈5

    #在導彈5的位置，召喚目的5
    execute at @e[tag=anti_aircraft_missile_5] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_5"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的5的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_5] at @s if score missile_5 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈5速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_5] positioned 0.0 0.0 0.0 if score missile_5 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_5,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的5的視角看向前標記5
        execute as @e[tag=anti_aircraft_missile_object_5] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_5] feet if score missile_5 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈5速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_5] positioned 0.0 0.0 0.0 if score missile_5 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_5,limit=1] ^ ^ ^4

    #將目的5的座標，存入導彈5的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_5,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_5,limit=1] Pos

#尾煙5

    #在導彈5位置召喚尾煙5(確保尾煙5能在導彈5後方生成)
    execute at @e[tag=anti_aircraft_missile_5] unless entity @e[tag=anti_aircraft_missile_tail_5] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_5"],Duration:2147483647}

    #在尾煙5位置召喚尾煙5特效
    execute at @e[tag=anti_aircraft_missile_tail_5] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙5傳送至導彈5位置
    execute as @e[tag=anti_aircraft_missile_tail_5] at @e[tag=anti_aircraft_missile_5] run tp ~ ~ ~

#刪除目的5
kill @e[tag=anti_aircraft_missile_object_5]

#刪除目標前置量5
kill @e[tag=anti_aircraft_missile_target_offset_5]
