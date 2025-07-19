#前置量

#如果不存在目標前置量，就在目標位置召喚目標前置量
execute at @e[tag=THADD_target] unless entity @e[tag=THADD_target_offset] run summon area_effect_cloud ~ ~ ~ {Tags:["THADD_target_offset"],Duration:20}

#目標前置量XYZ座標

    #取得目標XYZ座標
    execute store result score target_posX THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[0] 10
    execute store result score target_posY THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[1] 10
    execute store result score target_posZ THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[2] 10

    #計算取得目標前置量

        #距離/常數2
        scoreboard players operation THADD_out math_sqrt /= constant_2 THADD_set

        #距離*常數1
        scoreboard players operation THADD_out math_sqrt += constant_1 THADD_set

        #位移量*距離
        scoreboard players operation displacementX THADD_set *= THADD_out math_sqrt
        scoreboard players operation displacementY THADD_set *= THADD_out math_sqrt
        scoreboard players operation displacementZ THADD_set *= THADD_out math_sqrt

    #取得最終目標前置量XYZ值
    scoreboard players operation displacementX THADD_set += target_posX THADD_set
    scoreboard players operation displacementY THADD_set += target_posY THADD_set
    scoreboard players operation displacementZ THADD_set += target_posZ THADD_set

#填入目標前置量XYZ值
execute store result entity @e[tag=THADD_target_offset,limit=1] Pos[0] double 0.1 run scoreboard players get displacementX THADD_set
execute store result entity @e[tag=THADD_target_offset,limit=1] Pos[1] double 0.1 run scoreboard players get displacementY THADD_set
execute store result entity @e[tag=THADD_target_offset,limit=1] Pos[2] double 0.1 run scoreboard players get displacementZ THADD_set

#在目標前置量顯示粒子特效
#execute as @e[tag=THADD_target_offset] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 0 force @a
