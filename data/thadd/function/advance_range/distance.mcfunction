#距離

#清除終端高空防禦導彈距離(平方值)
scoreboard players set missile_in THADD_set 0

#清除暫存XYZ
scoreboard players set temp_posX THADD_set 0
scoreboard players set temp_posY THADD_set 0
scoreboard players set temp_posZ THADD_set 0

#取得XYZ坐標

    #目標
    execute store result score target_posX THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[0] 10
    execute store result score target_posY THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[1] 10
    execute store result score target_posZ THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[2] 10

    #導彈
    execute store result score missile_posX THADD_set run data get entity @e[tag=THADD_missile,limit=1] Pos[0] 10
    execute store result score missile_posY THADD_set run data get entity @e[tag=THADD_missile,limit=1] Pos[1] 10
    execute store result score missile_posZ THADD_set run data get entity @e[tag=THADD_missile,limit=1] Pos[2] 10

#將目標各XYZ坐標給暫存XYZ
scoreboard players operation temp_posX THADD_set = target_posX THADD_set
scoreboard players operation temp_posY THADD_set = target_posY THADD_set
scoreboard players operation temp_posZ THADD_set = target_posZ THADD_set

#取得各XYZ距離
scoreboard players operation temp_posX THADD_set -= missile_posX THADD_set
scoreboard players operation temp_posY THADD_set -= missile_posY THADD_set
scoreboard players operation temp_posZ THADD_set -= missile_posZ THADD_set

#平方各XYZ距離
scoreboard players operation temp_posX THADD_set *= temp_posX THADD_set
scoreboard players operation temp_posY THADD_set *= temp_posY THADD_set
scoreboard players operation temp_posZ THADD_set *= temp_posZ THADD_set

#取得終端高空防禦導彈距離(平方值)
scoreboard players operation missile_in THADD_set += temp_posX THADD_set
scoreboard players operation missile_in THADD_set += temp_posY THADD_set
scoreboard players operation missile_in THADD_set += temp_posZ THADD_set

#將終端高空防禦導彈距離(平方值)開根號，得到實際距離
function math:sqrt/thadd_exe
