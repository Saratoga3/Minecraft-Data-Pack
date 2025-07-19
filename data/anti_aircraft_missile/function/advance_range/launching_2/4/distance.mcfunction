#距離

#清除導彈8距離(平方值)
scoreboard players set missile_8_in anti_aircraft_missile_set 0

#清除暫存8
scoreboard players set temp_8_posX anti_aircraft_missile_set 0
scoreboard players set temp_8_posY anti_aircraft_missile_set 0
scoreboard players set temp_8_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標8
    execute store result score target_8_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_8,limit=1] Pos[0] 10
    execute store result score target_8_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_8,limit=1] Pos[1] 10
    execute store result score target_8_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_8,limit=1] Pos[2] 10

    #導彈8
    execute store result score missile_8_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_8,limit=1] Pos[0] 10
    execute store result score missile_8_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_8,limit=1] Pos[1] 10
    execute store result score missile_8_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_8,limit=1] Pos[2] 10

#將目標8各XYZ坐標給暫存8
scoreboard players operation temp_8_posX anti_aircraft_missile_set = target_8_posX anti_aircraft_missile_set
scoreboard players operation temp_8_posY anti_aircraft_missile_set = target_8_posY anti_aircraft_missile_set
scoreboard players operation temp_8_posZ anti_aircraft_missile_set = target_8_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_8_posX anti_aircraft_missile_set -= missile_8_posX anti_aircraft_missile_set
scoreboard players operation temp_8_posY anti_aircraft_missile_set -= missile_8_posY anti_aircraft_missile_set
scoreboard players operation temp_8_posZ anti_aircraft_missile_set -= missile_8_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_8_posX anti_aircraft_missile_set *= temp_8_posX anti_aircraft_missile_set
scoreboard players operation temp_8_posY anti_aircraft_missile_set *= temp_8_posY anti_aircraft_missile_set
scoreboard players operation temp_8_posZ anti_aircraft_missile_set *= temp_8_posZ anti_aircraft_missile_set

#取得導彈8距離(平方值)
scoreboard players operation missile_8_in anti_aircraft_missile_set += temp_8_posX anti_aircraft_missile_set
scoreboard players operation missile_8_in anti_aircraft_missile_set += temp_8_posY anti_aircraft_missile_set
scoreboard players operation missile_8_in anti_aircraft_missile_set += temp_8_posZ anti_aircraft_missile_set

#將導彈8距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_2/4_exe
