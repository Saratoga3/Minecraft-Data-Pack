#距離

#清除導彈11距離(平方值)
scoreboard players set missile_11_in anti_aircraft_missile_set 0

#清除暫存11
scoreboard players set temp_11_posX anti_aircraft_missile_set 0
scoreboard players set temp_11_posY anti_aircraft_missile_set 0
scoreboard players set temp_11_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標11
    execute store result score target_11_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_11,limit=1] Pos[0] 10
    execute store result score target_11_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_11,limit=1] Pos[1] 10
    execute store result score target_11_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_11,limit=1] Pos[2] 10

    #導彈11
    execute store result score missile_11_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_11,limit=1] Pos[0] 10
    execute store result score missile_11_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_11,limit=1] Pos[1] 10
    execute store result score missile_11_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_11,limit=1] Pos[2] 10

#將目標11各XYZ坐標給暫存11
scoreboard players operation temp_11_posX anti_aircraft_missile_set = target_11_posX anti_aircraft_missile_set
scoreboard players operation temp_11_posY anti_aircraft_missile_set = target_11_posY anti_aircraft_missile_set
scoreboard players operation temp_11_posZ anti_aircraft_missile_set = target_11_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_11_posX anti_aircraft_missile_set -= missile_11_posX anti_aircraft_missile_set
scoreboard players operation temp_11_posY anti_aircraft_missile_set -= missile_11_posY anti_aircraft_missile_set
scoreboard players operation temp_11_posZ anti_aircraft_missile_set -= missile_11_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_11_posX anti_aircraft_missile_set *= temp_11_posX anti_aircraft_missile_set
scoreboard players operation temp_11_posY anti_aircraft_missile_set *= temp_11_posY anti_aircraft_missile_set
scoreboard players operation temp_11_posZ anti_aircraft_missile_set *= temp_11_posZ anti_aircraft_missile_set

#取得導彈11距離(平方值)
scoreboard players operation missile_11_in anti_aircraft_missile_set += temp_11_posX anti_aircraft_missile_set
scoreboard players operation missile_11_in anti_aircraft_missile_set += temp_11_posY anti_aircraft_missile_set
scoreboard players operation missile_11_in anti_aircraft_missile_set += temp_11_posZ anti_aircraft_missile_set

#將導彈11距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_3/3_exe
