#距離

#清除雇傭兵距離(平方值)
scoreboard players set mercenary_in mercenary_set 0

#清除暫存XYZ
scoreboard players set temp_posX mercenary_set 0
scoreboard players set temp_posY mercenary_set 0
scoreboard players set temp_posZ mercenary_set 0

#取得XYZ坐標

    #雇傭兵
    execute store result score mercenary_posX mercenary_set run data get entity @e[tag=mercenary,limit=1] Pos[0] 1
    execute store result score mercenary_posY mercenary_set run data get entity @e[tag=mercenary,limit=1] Pos[1] 1
    execute store result score mercenary_posZ mercenary_set run data get entity @e[tag=mercenary,limit=1] Pos[2] 1

    #主人
    execute store result score owner_posX mercenary_set run data get entity @e[tag=owner,limit=1] Pos[0] 1
    execute store result score owner_posY mercenary_set run data get entity @e[tag=owner,limit=1] Pos[1] 1
    execute store result score owner_posZ mercenary_set run data get entity @e[tag=owner,limit=1] Pos[2] 1

#將雇傭兵各XYZ坐標給暫存XYZ
scoreboard players operation temp_posX mercenary_set = mercenary_posX mercenary_set
scoreboard players operation temp_posY mercenary_set = mercenary_posY mercenary_set
scoreboard players operation temp_posZ mercenary_set = mercenary_posZ mercenary_set

#取得各XYZ距離
scoreboard players operation temp_posX mercenary_set -= owner_posX mercenary_set
scoreboard players operation temp_posY mercenary_set -= owner_posY mercenary_set
scoreboard players operation temp_posZ mercenary_set -= owner_posZ mercenary_set

#平方各XYZ距離
scoreboard players operation temp_posX mercenary_set *= temp_posX mercenary_set
scoreboard players operation temp_posY mercenary_set *= temp_posY mercenary_set
scoreboard players operation temp_posZ mercenary_set *= temp_posZ mercenary_set

#取得雇傭兵距離(平方值)
scoreboard players operation mercenary_in mercenary_set += temp_posX mercenary_set
scoreboard players operation mercenary_in mercenary_set += temp_posY mercenary_set
scoreboard players operation mercenary_in mercenary_set += temp_posZ mercenary_set

#將雇傭兵距離(平方值)開根號，得到實際距離
function math:sqrt/mercenary_exe