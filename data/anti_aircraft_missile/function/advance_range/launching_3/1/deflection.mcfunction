#目標9的前置量

#如果不存在目標9前置量，就在目標9位置召喚目標9前置量
execute at @e[tag=anti_aircraft_missile_target_9] unless entity @e[tag=anti_aircraft_missile_target_offset_9] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_target_offset_9"],Duration:20}

#目標9前置量XYZ座標

    #取得目標9的XYZ座標
    execute store result score target_9_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[0] 10
    execute store result score target_9_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[1] 10
    execute store result score target_9_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[2] 10

    #計算取得目標9前置量

        #距離/常數2
        scoreboard players operation missile_9_out math_sqrt /= constant_2 anti_aircraft_missile_set

        #距離*常數1
        scoreboard players operation missile_9_out math_sqrt += constant_1 anti_aircraft_missile_set

        #位移量*距離
        scoreboard players operation displacement_9_X anti_aircraft_missile_set *= missile_9_out math_sqrt
        scoreboard players operation displacement_9_Y anti_aircraft_missile_set *= missile_9_out math_sqrt
        scoreboard players operation displacement_9_Z anti_aircraft_missile_set *= missile_9_out math_sqrt

    #取得最終目標9前置量XYZ值
    scoreboard players operation displacement_9_X anti_aircraft_missile_set += target_9_posX anti_aircraft_missile_set
    scoreboard players operation displacement_9_Y anti_aircraft_missile_set += target_9_posY anti_aircraft_missile_set
    scoreboard players operation displacement_9_Z anti_aircraft_missile_set += target_9_posZ anti_aircraft_missile_set

#填入目標9前置量XYZ值
execute store result entity @e[tag=anti_aircraft_missile_target_offset_9,limit=1] Pos[0] double 0.1 run scoreboard players get displacement_9_X anti_aircraft_missile_set
execute store result entity @e[tag=anti_aircraft_missile_target_offset_9,limit=1] Pos[1] double 0.1 run scoreboard players get displacement_9_Y anti_aircraft_missile_set
execute store result entity @e[tag=anti_aircraft_missile_target_offset_9,limit=1] Pos[2] double 0.1 run scoreboard players get displacement_9_Z anti_aircraft_missile_set

#在目標9前置量顯示粒子特效
#execute at @e[tag=anti_aircraft_missile_target_offset_9] run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 0 force @a
