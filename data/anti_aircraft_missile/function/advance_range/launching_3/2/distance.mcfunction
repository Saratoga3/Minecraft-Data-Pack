#距離

#清除導彈10距離(平方值)
scoreboard players set missile_10_in anti_aircraft_missile_set 0

#清除暫存10
scoreboard players set temp_10_posX anti_aircraft_missile_set 0
scoreboard players set temp_10_posY anti_aircraft_missile_set 0
scoreboard players set temp_10_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標10
    execute store result score target_10_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[0] 10
    execute store result score target_10_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[1] 10
    execute store result score target_10_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[2] 10

    #導彈10
    execute store result score missile_10_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_10,limit=1] Pos[0] 10
    execute store result score missile_10_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_10,limit=1] Pos[1] 10
    execute store result score missile_10_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_10,limit=1] Pos[2] 10

#將目標10各XYZ坐標給暫存10
scoreboard players operation temp_10_posX anti_aircraft_missile_set = target_10_posX anti_aircraft_missile_set
scoreboard players operation temp_10_posY anti_aircraft_missile_set = target_10_posY anti_aircraft_missile_set
scoreboard players operation temp_10_posZ anti_aircraft_missile_set = target_10_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_10_posX anti_aircraft_missile_set -= missile_10_posX anti_aircraft_missile_set
scoreboard players operation temp_10_posY anti_aircraft_missile_set -= missile_10_posY anti_aircraft_missile_set
scoreboard players operation temp_10_posZ anti_aircraft_missile_set -= missile_10_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_10_posX anti_aircraft_missile_set *= temp_10_posX anti_aircraft_missile_set
scoreboard players operation temp_10_posY anti_aircraft_missile_set *= temp_10_posY anti_aircraft_missile_set
scoreboard players operation temp_10_posZ anti_aircraft_missile_set *= temp_10_posZ anti_aircraft_missile_set

#取得導彈10距離(平方值)
scoreboard players operation missile_10_in anti_aircraft_missile_set += temp_10_posX anti_aircraft_missile_set
scoreboard players operation missile_10_in anti_aircraft_missile_set += temp_10_posY anti_aircraft_missile_set
scoreboard players operation missile_10_in anti_aircraft_missile_set += temp_10_posZ anti_aircraft_missile_set

#將導彈10距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_3/2_exe
