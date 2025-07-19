#導彈4飛行

#導彈4

    #在導彈4的位置，召喚目的4
    execute at @e[tag=anti_aircraft_missile_4] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_4"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的4的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_4] at @s if score missile_4 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈4速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_4] positioned 0.0 0.0 0.0 if score missile_4 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_4,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的4的視角看向前標記4
        execute as @e[tag=anti_aircraft_missile_object_4] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_4] feet if score missile_4 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈4速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_4] positioned 0.0 0.0 0.0 if score missile_4 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_4,limit=1] ^ ^ ^4

    #將目的4的座標，存入導彈4的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_4,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_4,limit=1] Pos

#尾煙4

    #在導彈4位置召喚尾煙4(確保尾煙4能在導彈4後方生成)
    execute at @e[tag=anti_aircraft_missile_4] unless entity @e[tag=anti_aircraft_missile_tail_4] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_4"],Duration:2147483647}

    #在尾煙4位置召喚尾煙4特效
    execute at @e[tag=anti_aircraft_missile_tail_4] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙4傳送至導彈4位置
    execute as @e[tag=anti_aircraft_missile_tail_4] at @e[tag=anti_aircraft_missile_4] run tp ~ ~ ~

#刪除目的4
kill @e[tag=anti_aircraft_missile_object_4]

#刪除目標前置量4
kill @e[tag=anti_aircraft_missile_target_offset_4]
