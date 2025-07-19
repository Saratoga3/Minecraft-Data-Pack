#距離

#清除導彈1距離(平方值)
scoreboard players set missile_1_in anti_aircraft_missile_set 0

#清除暫存1
scoreboard players set temp_1_posX anti_aircraft_missile_set 0
scoreboard players set temp_1_posY anti_aircraft_missile_set 0
scoreboard players set temp_1_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標1
    execute store result score target_1_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_1,limit=1] Pos[0] 10
    execute store result score target_1_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_1,limit=1] Pos[1] 10
    execute store result score target_1_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_1,limit=1] Pos[2] 10

    #導彈1
    execute store result score missile_1_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_1,limit=1] Pos[0] 10
    execute store result score missile_1_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_1,limit=1] Pos[1] 10
    execute store result score missile_1_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_1,limit=1] Pos[2] 10

#將目標1各XYZ坐標給暫存1
scoreboard players operation temp_1_posX anti_aircraft_missile_set = target_1_posX anti_aircraft_missile_set
scoreboard players operation temp_1_posY anti_aircraft_missile_set = target_1_posY anti_aircraft_missile_set
scoreboard players operation temp_1_posZ anti_aircraft_missile_set = target_1_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_1_posX anti_aircraft_missile_set -= missile_1_posX anti_aircraft_missile_set
scoreboard players operation temp_1_posY anti_aircraft_missile_set -= missile_1_posY anti_aircraft_missile_set
scoreboard players operation temp_1_posZ anti_aircraft_missile_set -= missile_1_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_1_posX anti_aircraft_missile_set *= temp_1_posX anti_aircraft_missile_set
scoreboard players operation temp_1_posY anti_aircraft_missile_set *= temp_1_posY anti_aircraft_missile_set
scoreboard players operation temp_1_posZ anti_aircraft_missile_set *= temp_1_posZ anti_aircraft_missile_set

#取得導彈1距離(平方值)
scoreboard players operation missile_1_in anti_aircraft_missile_set += temp_1_posX anti_aircraft_missile_set
scoreboard players operation missile_1_in anti_aircraft_missile_set += temp_1_posY anti_aircraft_missile_set
scoreboard players operation missile_1_in anti_aircraft_missile_set += temp_1_posZ anti_aircraft_missile_set

#將導彈1距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_1/1_exe
