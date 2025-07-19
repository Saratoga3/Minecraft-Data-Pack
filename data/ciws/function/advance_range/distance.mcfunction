#距離

#清除CIWS距離(平方值)
scoreboard players set CIWS_in CIWS_set 0

#清除暫存XYZ
scoreboard players set temp_posX CIWS_set 0
scoreboard players set temp_posY CIWS_set 0
scoreboard players set temp_posZ CIWS_set 0

#取得XYZ坐標

    #目標
    execute store result score target_posX CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[0] 100
    execute store result score target_posY CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[1] 100
    execute store result score target_posZ CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[2] 100

    #CIWS
    execute store result score CIWS_posX CIWS_set run data get entity @e[tag=CIWS_base,limit=1] Pos[0] 100
    execute store result score CIWS_posY CIWS_set run data get entity @e[tag=CIWS_base,limit=1] Pos[1] 100
    execute store result score CIWS_posZ CIWS_set run data get entity @e[tag=CIWS_base,limit=1] Pos[2] 100

#將目標各XYZ坐標給暫存XYZ
scoreboard players operation temp_posX CIWS_set = target_posX CIWS_set
scoreboard players operation temp_posY CIWS_set = target_posY CIWS_set
scoreboard players operation temp_posZ CIWS_set = target_posZ CIWS_set

#取得各XYZ距離
scoreboard players operation temp_posX CIWS_set -= CIWS_posX CIWS_set
scoreboard players operation temp_posY CIWS_set -= CIWS_posY CIWS_set
scoreboard players operation temp_posZ CIWS_set -= CIWS_posZ CIWS_set

#平方各XYZ距離
scoreboard players operation temp_posX CIWS_set *= temp_posX CIWS_set
scoreboard players operation temp_posY CIWS_set *= temp_posY CIWS_set
scoreboard players operation temp_posZ CIWS_set *= temp_posZ CIWS_set

#取得CIWS距離(平方值)
scoreboard players operation CIWS_in CIWS_set += temp_posX CIWS_set
scoreboard players operation CIWS_in CIWS_set += temp_posY CIWS_set
scoreboard players operation CIWS_in CIWS_set += temp_posZ CIWS_set

#將CIWS距離(平方值)開根號，得到實際距離
function math:sqrt/ciws_exe
