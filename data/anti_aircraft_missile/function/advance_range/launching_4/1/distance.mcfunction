#距離

#清除導彈13距離(平方值)
scoreboard players set missile_13_in anti_aircraft_missile_set 0

#清除暫存13
scoreboard players set temp_13_posX anti_aircraft_missile_set 0
scoreboard players set temp_13_posY anti_aircraft_missile_set 0
scoreboard players set temp_13_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標13
    execute store result score target_13_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_13,limit=1] Pos[0] 10
    execute store result score target_13_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_13,limit=1] Pos[1] 10
    execute store result score target_13_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_13,limit=1] Pos[2] 10

    #導彈13
    execute store result score missile_13_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_13,limit=1] Pos[0] 10
    execute store result score missile_13_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_13,limit=1] Pos[1] 10
    execute store result score missile_13_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_13,limit=1] Pos[2] 10

#將目標13各XYZ坐標給暫存13
scoreboard players operation temp_13_posX anti_aircraft_missile_set = target_13_posX anti_aircraft_missile_set
scoreboard players operation temp_13_posY anti_aircraft_missile_set = target_13_posY anti_aircraft_missile_set
scoreboard players operation temp_13_posZ anti_aircraft_missile_set = target_13_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_13_posX anti_aircraft_missile_set -= missile_13_posX anti_aircraft_missile_set
scoreboard players operation temp_13_posY anti_aircraft_missile_set -= missile_13_posY anti_aircraft_missile_set
scoreboard players operation temp_13_posZ anti_aircraft_missile_set -= missile_13_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_13_posX anti_aircraft_missile_set *= temp_13_posX anti_aircraft_missile_set
scoreboard players operation temp_13_posY anti_aircraft_missile_set *= temp_13_posY anti_aircraft_missile_set
scoreboard players operation temp_13_posZ anti_aircraft_missile_set *= temp_13_posZ anti_aircraft_missile_set

#取得導彈13距離(平方值)
scoreboard players operation missile_13_in anti_aircraft_missile_set += temp_13_posX anti_aircraft_missile_set
scoreboard players operation missile_13_in anti_aircraft_missile_set += temp_13_posY anti_aircraft_missile_set
scoreboard players operation missile_13_in anti_aircraft_missile_set += temp_13_posZ anti_aircraft_missile_set

#將導彈13距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_4/1_exe
