#距離

#清除導彈9距離(平方值)
scoreboard players set missile_9_in anti_aircraft_missile_set 0

#清除暫存9
scoreboard players set temp_9_posX anti_aircraft_missile_set 0
scoreboard players set temp_9_posY anti_aircraft_missile_set 0
scoreboard players set temp_9_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標9
    execute store result score target_9_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[0] 10
    execute store result score target_9_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[1] 10
    execute store result score target_9_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[2] 10

    #導彈9
    execute store result score missile_9_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_9,limit=1] Pos[0] 10
    execute store result score missile_9_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_9,limit=1] Pos[1] 10
    execute store result score missile_9_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_9,limit=1] Pos[2] 10

#將目標9各XYZ坐標給暫存9
scoreboard players operation temp_9_posX anti_aircraft_missile_set = target_9_posX anti_aircraft_missile_set
scoreboard players operation temp_9_posY anti_aircraft_missile_set = target_9_posY anti_aircraft_missile_set
scoreboard players operation temp_9_posZ anti_aircraft_missile_set = target_9_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_9_posX anti_aircraft_missile_set -= missile_9_posX anti_aircraft_missile_set
scoreboard players operation temp_9_posY anti_aircraft_missile_set -= missile_9_posY anti_aircraft_missile_set
scoreboard players operation temp_9_posZ anti_aircraft_missile_set -= missile_9_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_9_posX anti_aircraft_missile_set *= temp_9_posX anti_aircraft_missile_set
scoreboard players operation temp_9_posY anti_aircraft_missile_set *= temp_9_posY anti_aircraft_missile_set
scoreboard players operation temp_9_posZ anti_aircraft_missile_set *= temp_9_posZ anti_aircraft_missile_set

#取得導彈9距離(平方值)
scoreboard players operation missile_9_in anti_aircraft_missile_set += temp_9_posX anti_aircraft_missile_set
scoreboard players operation missile_9_in anti_aircraft_missile_set += temp_9_posY anti_aircraft_missile_set
scoreboard players operation missile_9_in anti_aircraft_missile_set += temp_9_posZ anti_aircraft_missile_set

#將導彈9距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_3/1_exe
