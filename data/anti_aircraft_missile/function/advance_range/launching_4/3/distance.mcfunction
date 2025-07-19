#距離

#清除導彈15距離(平方值)
scoreboard players set missile_15_in anti_aircraft_missile_set 0

#清除暫存15
scoreboard players set temp_15_posX anti_aircraft_missile_set 0
scoreboard players set temp_15_posY anti_aircraft_missile_set 0
scoreboard players set temp_15_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標15
    execute store result score target_15_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_15,limit=1] Pos[0] 10
    execute store result score target_15_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_15,limit=1] Pos[1] 10
    execute store result score target_15_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_15,limit=1] Pos[2] 10

    #導彈15
    execute store result score missile_15_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_15,limit=1] Pos[0] 10
    execute store result score missile_15_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_15,limit=1] Pos[1] 10
    execute store result score missile_15_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_15,limit=1] Pos[2] 10

#將目標15各XYZ坐標給暫存15
scoreboard players operation temp_15_posX anti_aircraft_missile_set = target_15_posX anti_aircraft_missile_set
scoreboard players operation temp_15_posY anti_aircraft_missile_set = target_15_posY anti_aircraft_missile_set
scoreboard players operation temp_15_posZ anti_aircraft_missile_set = target_15_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_15_posX anti_aircraft_missile_set -= missile_15_posX anti_aircraft_missile_set
scoreboard players operation temp_15_posY anti_aircraft_missile_set -= missile_15_posY anti_aircraft_missile_set
scoreboard players operation temp_15_posZ anti_aircraft_missile_set -= missile_15_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_15_posX anti_aircraft_missile_set *= temp_15_posX anti_aircraft_missile_set
scoreboard players operation temp_15_posY anti_aircraft_missile_set *= temp_15_posY anti_aircraft_missile_set
scoreboard players operation temp_15_posZ anti_aircraft_missile_set *= temp_15_posZ anti_aircraft_missile_set

#取得導彈15距離(平方值)
scoreboard players operation missile_15_in anti_aircraft_missile_set += temp_15_posX anti_aircraft_missile_set
scoreboard players operation missile_15_in anti_aircraft_missile_set += temp_15_posY anti_aircraft_missile_set
scoreboard players operation missile_15_in anti_aircraft_missile_set += temp_15_posZ anti_aircraft_missile_set

#將導彈15距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_4/3_exe
