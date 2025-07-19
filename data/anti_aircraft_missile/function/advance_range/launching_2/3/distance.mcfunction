#距離

#清除導彈7距離(平方值)
scoreboard players set missile_7_in anti_aircraft_missile_set 0

#清除暫存7
scoreboard players set temp_7_posX anti_aircraft_missile_set 0
scoreboard players set temp_7_posY anti_aircraft_missile_set 0
scoreboard players set temp_7_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標7
    execute store result score target_7_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_7,limit=1] Pos[0] 10
    execute store result score target_7_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_7,limit=1] Pos[1] 10
    execute store result score target_7_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_7,limit=1] Pos[2] 10

    #導彈7
    execute store result score missile_7_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_7,limit=1] Pos[0] 10
    execute store result score missile_7_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_7,limit=1] Pos[1] 10
    execute store result score missile_7_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_7,limit=1] Pos[2] 10

#將目標7各XYZ坐標給暫存7
scoreboard players operation temp_7_posX anti_aircraft_missile_set = target_7_posX anti_aircraft_missile_set
scoreboard players operation temp_7_posY anti_aircraft_missile_set = target_7_posY anti_aircraft_missile_set
scoreboard players operation temp_7_posZ anti_aircraft_missile_set = target_7_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_7_posX anti_aircraft_missile_set -= missile_7_posX anti_aircraft_missile_set
scoreboard players operation temp_7_posY anti_aircraft_missile_set -= missile_7_posY anti_aircraft_missile_set
scoreboard players operation temp_7_posZ anti_aircraft_missile_set -= missile_7_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_7_posX anti_aircraft_missile_set *= temp_7_posX anti_aircraft_missile_set
scoreboard players operation temp_7_posY anti_aircraft_missile_set *= temp_7_posY anti_aircraft_missile_set
scoreboard players operation temp_7_posZ anti_aircraft_missile_set *= temp_7_posZ anti_aircraft_missile_set

#取得導彈7距離(平方值)
scoreboard players operation missile_7_in anti_aircraft_missile_set += temp_7_posX anti_aircraft_missile_set
scoreboard players operation missile_7_in anti_aircraft_missile_set += temp_7_posY anti_aircraft_missile_set
scoreboard players operation missile_7_in anti_aircraft_missile_set += temp_7_posZ anti_aircraft_missile_set

#將導彈7距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_2/3_exe
