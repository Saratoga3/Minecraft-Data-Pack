#前置量

#如果不存在目標前置量，就在目標位置召喚目標前置量
execute as @e[tag=CIWS_target] at @s unless entity @e[tag=CIWS_target_offset] run summon marker ~ ~ ~ {Tags:["CIWS_target_offset"]}

#Y座標

    #取得目標Y座標
    execute store result score target_posY CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[1] 100

    #計算目標前置量Y值
    scoreboard players operation CIWS_out math_sqrt /= constant CIWS_set
    scoreboard players operation CIWS_out math_sqrt -= constant_2 CIWS_set

    #取得最終的目標前置量Y值
    scoreboard players operation CIWS_out math_sqrt += target_posY CIWS_set

#XZ座標

    #取得目標XZ座標
    execute store result score target_posX CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[0] 100
    execute store result score target_posZ CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[2] 100

    #計算目標前置量XZ值
    scoreboard players operation displacementX CIWS_set *= constant_3 CIWS_set
    scoreboard players operation displacementZ CIWS_set *= constant_3 CIWS_set

    #計算目標前置量Y值
    execute if score displacementY CIWS_set matches ..0 run scoreboard players operation displacementY CIWS_set *= constant_4 CIWS_set
    execute if score displacementY CIWS_set matches 0.. run scoreboard players operation displacementY CIWS_set *= constant_5 CIWS_set

    #取得最終目標前置量XYZ值
    scoreboard players operation displacementX CIWS_set += target_posX CIWS_set
    scoreboard players operation displacementY CIWS_set += CIWS_out math_sqrt
    scoreboard players operation displacementZ CIWS_set += target_posZ CIWS_set

#填入目標前置量XYZ值
execute store result entity @e[tag=CIWS_target_offset,limit=1] Pos[0] double 0.01 run scoreboard players get displacementX CIWS_set
execute store result entity @e[tag=CIWS_target_offset,limit=1] Pos[1] double 0.01 run scoreboard players get displacementY CIWS_set
execute store result entity @e[tag=CIWS_target_offset,limit=1] Pos[2] double 0.01 run scoreboard players get displacementZ CIWS_set

#在目標前置量顯示粒子特效
#execute as @e[tag=CIWS_target_offset] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 0 force @a
