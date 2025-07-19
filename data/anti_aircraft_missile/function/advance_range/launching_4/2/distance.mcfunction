#距離

#清除導彈14距離(平方值)
scoreboard players set missile_14_in anti_aircraft_missile_set 0

#清除暫存14
scoreboard players set temp_14_posX anti_aircraft_missile_set 0
scoreboard players set temp_14_posY anti_aircraft_missile_set 0
scoreboard players set temp_14_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標14
    execute store result score target_14_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_14,limit=1] Pos[0] 10
    execute store result score target_14_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_14,limit=1] Pos[1] 10
    execute store result score target_14_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_14,limit=1] Pos[2] 10

    #導彈14
    execute store result score missile_14_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_14,limit=1] Pos[0] 10
    execute store result score missile_14_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_14,limit=1] Pos[1] 10
    execute store result score missile_14_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_14,limit=1] Pos[2] 10

#將目標14各XYZ坐標給暫存14
scoreboard players operation temp_14_posX anti_aircraft_missile_set = target_14_posX anti_aircraft_missile_set
scoreboard players operation temp_14_posY anti_aircraft_missile_set = target_14_posY anti_aircraft_missile_set
scoreboard players operation temp_14_posZ anti_aircraft_missile_set = target_14_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_14_posX anti_aircraft_missile_set -= missile_14_posX anti_aircraft_missile_set
scoreboard players operation temp_14_posY anti_aircraft_missile_set -= missile_14_posY anti_aircraft_missile_set
scoreboard players operation temp_14_posZ anti_aircraft_missile_set -= missile_14_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_14_posX anti_aircraft_missile_set *= temp_14_posX anti_aircraft_missile_set
scoreboard players operation temp_14_posY anti_aircraft_missile_set *= temp_14_posY anti_aircraft_missile_set
scoreboard players operation temp_14_posZ anti_aircraft_missile_set *= temp_14_posZ anti_aircraft_missile_set

#取得導彈14距離(平方值)
scoreboard players operation missile_14_in anti_aircraft_missile_set += temp_14_posX anti_aircraft_missile_set
scoreboard players operation missile_14_in anti_aircraft_missile_set += temp_14_posY anti_aircraft_missile_set
scoreboard players operation missile_14_in anti_aircraft_missile_set += temp_14_posZ anti_aircraft_missile_set

#將導彈14距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_4/2_exe
