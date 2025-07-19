#距離

#清除導彈2距離(平方值)
scoreboard players set missile_2_in anti_aircraft_missile_set 0

#清除暫存2
scoreboard players set temp_2_posX anti_aircraft_missile_set 0
scoreboard players set temp_2_posY anti_aircraft_missile_set 0
scoreboard players set temp_2_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標2
    execute store result score target_2_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_2,limit=1] Pos[0] 10
    execute store result score target_2_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_2,limit=1] Pos[1] 10
    execute store result score target_2_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_2,limit=1] Pos[2] 10

    #導彈2
    execute store result score missile_2_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_2,limit=1] Pos[0] 10
    execute store result score missile_2_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_2,limit=1] Pos[1] 10
    execute store result score missile_2_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_2,limit=1] Pos[2] 10

#將目標2各XYZ坐標給暫存2
scoreboard players operation temp_2_posX anti_aircraft_missile_set = target_2_posX anti_aircraft_missile_set
scoreboard players operation temp_2_posY anti_aircraft_missile_set = target_2_posY anti_aircraft_missile_set
scoreboard players operation temp_2_posZ anti_aircraft_missile_set = target_2_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_2_posX anti_aircraft_missile_set -= missile_2_posX anti_aircraft_missile_set
scoreboard players operation temp_2_posY anti_aircraft_missile_set -= missile_2_posY anti_aircraft_missile_set
scoreboard players operation temp_2_posZ anti_aircraft_missile_set -= missile_2_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_2_posX anti_aircraft_missile_set *= temp_2_posX anti_aircraft_missile_set
scoreboard players operation temp_2_posY anti_aircraft_missile_set *= temp_2_posY anti_aircraft_missile_set
scoreboard players operation temp_2_posZ anti_aircraft_missile_set *= temp_2_posZ anti_aircraft_missile_set

#取得導彈2距離(平方值)
scoreboard players operation missile_2_in anti_aircraft_missile_set += temp_2_posX anti_aircraft_missile_set
scoreboard players operation missile_2_in anti_aircraft_missile_set += temp_2_posY anti_aircraft_missile_set
scoreboard players operation missile_2_in anti_aircraft_missile_set += temp_2_posZ anti_aircraft_missile_set

#將導彈2距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_1/2_exe
