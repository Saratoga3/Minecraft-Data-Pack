#導彈16飛行

#導彈16

    #在導彈16的位置，召喚目的16
    execute at @e[tag=anti_aircraft_missile_16] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_16"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的16的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_16] at @s if score missile_16 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈16速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_16] positioned 0.0 0.0 0.0 if score missile_16 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_16,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的16的視角看向前標記16
        execute as @e[tag=anti_aircraft_missile_object_16] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_16] feet if score missile_16 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈16速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_16] positioned 0.0 0.0 0.0 if score missile_16 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_16,limit=1] ^ ^ ^4

    #將目的16的座標，存入導彈16的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_16,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_16,limit=1] Pos

#尾煙16

    #在導彈16位置召喚尾煙16(確保尾煙16能在導彈16後方生成)
    execute at @e[tag=anti_aircraft_missile_16] unless entity @e[tag=anti_aircraft_missile_tail_16] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_16"],Duration:2147483647}

    #在尾煙16位置召喚尾煙16特效
    execute at @e[tag=anti_aircraft_missile_tail_16] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙16傳送至導彈16位置
    execute as @e[tag=anti_aircraft_missile_tail_16] at @e[tag=anti_aircraft_missile_16] run tp ~ ~ ~

#刪除目的16
kill @e[tag=anti_aircraft_missile_object_16]

#刪除目標前置量16
kill @e[tag=anti_aircraft_missile_target_offset_16]
