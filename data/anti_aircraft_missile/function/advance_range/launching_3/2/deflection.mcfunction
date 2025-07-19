#目標10的前置量

#如果不存在目標10前置量，就在目標10位置召喚目標10前置量
execute at @e[tag=anti_aircraft_missile_target_10] unless entity @e[tag=anti_aircraft_missile_target_offset_10] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_target_offset_10"],Duration:20}

#目標10前置量XYZ座標

    #取得目標10的XYZ座標
    execute store result score target_10_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[0] 10
    execute store result score target_10_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[1] 10
    execute store result score target_10_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[2] 10

    #計算取得目標10前置量

        #距離/常數2
        scoreboard players operation missile_10_out math_sqrt /= constant_2 anti_aircraft_missile_set

        #距離*常數1
        scoreboard players operation missile_10_out math_sqrt += constant_1 anti_aircraft_missile_set

        #位移量*距離
        scoreboard players operation displacement_10_X anti_aircraft_missile_set *= missile_10_out math_sqrt
        scoreboard players operation displacement_10_Y anti_aircraft_missile_set *= missile_10_out math_sqrt
        scoreboard players operation displacement_10_Z anti_aircraft_missile_set *= missile_10_out math_sqrt

    #取得最終目標10前置量XYZ值
    scoreboard players operation displacement_10_X anti_aircraft_missile_set += target_10_posX anti_aircraft_missile_set
    scoreboard players operation displacement_10_Y anti_aircraft_missile_set += target_10_posY anti_aircraft_missile_set
    scoreboard players operation displacement_10_Z anti_aircraft_missile_set += target_10_posZ anti_aircraft_missile_set

#填入目標10前置量XYZ值
execute store result entity @e[tag=anti_aircraft_missile_target_offset_10,limit=1] Pos[0] double 0.1 run scoreboard players get displacement_10_X anti_aircraft_missile_set
execute store result entity @e[tag=anti_aircraft_missile_target_offset_10,limit=1] Pos[1] double 0.1 run scoreboard players get displacement_10_Y anti_aircraft_missile_set
execute store result entity @e[tag=anti_aircraft_missile_target_offset_10,limit=1] Pos[2] double 0.1 run scoreboard players get displacement_10_Z anti_aircraft_missile_set

#在目標10前置量顯示粒子特效
#execute at @e[tag=anti_aircraft_missile_target_offset_10] run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 0 force @a
