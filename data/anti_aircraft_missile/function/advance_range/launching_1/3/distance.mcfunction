#距離

#清除導彈3距離(平方值)
scoreboard players set missile_3_in anti_aircraft_missile_set 0

#清除暫存3
scoreboard players set temp_3_posX anti_aircraft_missile_set 0
scoreboard players set temp_3_posY anti_aircraft_missile_set 0
scoreboard players set temp_3_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標3
    execute store result score target_3_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_3,limit=1] Pos[0] 10
    execute store result score target_3_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_3,limit=1] Pos[1] 10
    execute store result score target_3_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_3,limit=1] Pos[2] 10

    #導彈3
    execute store result score missile_3_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_3,limit=1] Pos[0] 10
    execute store result score missile_3_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_3,limit=1] Pos[1] 10
    execute store result score missile_3_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_3,limit=1] Pos[2] 10

#將目標3各XYZ坐標給暫存3
scoreboard players operation temp_3_posX anti_aircraft_missile_set = target_3_posX anti_aircraft_missile_set
scoreboard players operation temp_3_posY anti_aircraft_missile_set = target_3_posY anti_aircraft_missile_set
scoreboard players operation temp_3_posZ anti_aircraft_missile_set = target_3_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_3_posX anti_aircraft_missile_set -= missile_3_posX anti_aircraft_missile_set
scoreboard players operation temp_3_posY anti_aircraft_missile_set -= missile_3_posY anti_aircraft_missile_set
scoreboard players operation temp_3_posZ anti_aircraft_missile_set -= missile_3_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_3_posX anti_aircraft_missile_set *= temp_3_posX anti_aircraft_missile_set
scoreboard players operation temp_3_posY anti_aircraft_missile_set *= temp_3_posY anti_aircraft_missile_set
scoreboard players operation temp_3_posZ anti_aircraft_missile_set *= temp_3_posZ anti_aircraft_missile_set

#取得導彈3距離(平方值)
scoreboard players operation missile_3_in anti_aircraft_missile_set += temp_3_posX anti_aircraft_missile_set
scoreboard players operation missile_3_in anti_aircraft_missile_set += temp_3_posY anti_aircraft_missile_set
scoreboard players operation missile_3_in anti_aircraft_missile_set += temp_3_posZ anti_aircraft_missile_set

#將導彈3距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_1/3_exe
