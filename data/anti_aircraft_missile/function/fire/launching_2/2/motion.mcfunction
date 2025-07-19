#導彈6飛行

#導彈6

    #在導彈6的位置，召喚目的6
    execute at @e[tag=anti_aircraft_missile_6] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_object_6"],Duration:2147483647}

    #熱發射階段

        #如果導彈當前時間<=保險射解除時間，就將目的6的視角看向天空
        execute as @e[tag=anti_aircraft_missile_object_6] at @s if score missile_6 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @s ~ ~ ~ ~ ~-90

        #如果導彈當前時間<=保險射解除時間，就設定導彈6速度慢
        execute rotated as @e[tag=anti_aircraft_missile_object_6] positioned 0.0 0.0 0.0 if score missile_6 anti_aircraft_missile_set <= safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_6,limit=1] ^ ^ ^3

    #飛行階段

        #如果導彈當前時間>保險解除時間，就將目的6的視角看向前標記6
        execute as @e[tag=anti_aircraft_missile_object_6] at @s facing entity @e[tag=anti_aircraft_missile_front_mark_6] feet if score missile_6 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp ^ ^ ^

        #如果導彈當前時間>保險解除時間，就設定導彈6速度快
        execute rotated as @e[tag=anti_aircraft_missile_object_6] positioned 0.0 0.0 0.0 if score missile_6 anti_aircraft_missile_set > safety anti_aircraft_missile_set run tp @e[tag=anti_aircraft_missile_object_6,limit=1] ^ ^ ^4

    #將目的6的座標，存入導彈6的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=anti_aircraft_missile_6,limit=1] Motion set from entity @e[tag=anti_aircraft_missile_object_6,limit=1] Pos

#尾煙6

    #在導彈6位置召喚尾煙6(確保尾煙6能在導彈6後方生成)
    execute at @e[tag=anti_aircraft_missile_6] unless entity @e[tag=anti_aircraft_missile_tail_6] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_tail_6"],Duration:2147483647}

    #在尾煙6位置召喚尾煙6特效
    execute at @e[tag=anti_aircraft_missile_tail_6] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.9 0.9 0 100 force @a

    #尾煙6傳送至導彈6位置
    execute as @e[tag=anti_aircraft_missile_tail_6] at @e[tag=anti_aircraft_missile_6] run tp ~ ~ ~

#刪除目的6
kill @e[tag=anti_aircraft_missile_object_6]

#刪除目標前置量6
kill @e[tag=anti_aircraft_missile_target_offset_6]
