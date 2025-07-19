#目標6的前置量

#如果不存在目標6前置量，就在目標6位置召喚目標6前置量
execute at @e[tag=anti_aircraft_missile_target_6] unless entity @e[tag=anti_aircraft_missile_target_offset_6] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_target_offset_6"],Duration:20}

#目標6前置量XYZ座標

    #取得目標6的XYZ座標
    execute store result score target_6_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[0] 10
    execute store result score target_6_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[1] 10
    execute store result score target_6_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[2] 10

    #計算取得目標6前置量

        #距離/常數2
        scoreboard players operation missile_6_out math_sqrt /= constant_2 anti_aircraft_missile_set

        #距離*常數1
        scoreboard players operation missile_6_out math_sqrt += constant_1 anti_aircraft_missile_set

        #位移量*距離
        scoreboard players operation displacement_6_X anti_aircraft_missile_set *= missile_6_out math_sqrt
        scoreboard players operation displacement_6_Y anti_aircraft_missile_set *= missile_6_out math_sqrt
        scoreboard players operation displacement_6_Z anti_aircraft_missile_set *= missile_6_out math_sqrt

    #取得最終目標6前置量XYZ值
    scoreboard players operation displacement_6_X anti_aircraft_missile_set += target_6_posX anti_aircraft_missile_set
    scoreboard players operation displacement_6_Y anti_aircraft_missile_set += target_6_posY anti_aircraft_missile_set
    scoreboard players operation displacement_6_Z anti_aircraft_missile_set += target_6_posZ anti_aircraft_missile_set

#填入目標6前置量XYZ值
execute store result entity @e[tag=anti_aircraft_missile_target_offset_6,limit=1] Pos[0] double 0.1 run scoreboard players get displacement_6_X anti_aircraft_missile_set
execute store result entity @e[tag=anti_aircraft_missile_target_offset_6,limit=1] Pos[1] double 0.1 run scoreboard players get displacement_6_Y anti_aircraft_missile_set
execute store result entity @e[tag=anti_aircraft_missile_target_offset_6,limit=1] Pos[2] double 0.1 run scoreboard players get displacement_6_Z anti_aircraft_missile_set

#在目標6前置量顯示粒子特效
#execute at @e[tag=anti_aircraft_missile_target_offset_6] run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 0 force @a
