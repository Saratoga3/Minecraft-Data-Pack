#距離

#清除導彈12距離(平方值)
scoreboard players set missile_12_in anti_aircraft_missile_set 0

#清除暫存12
scoreboard players set temp_12_posX anti_aircraft_missile_set 0
scoreboard players set temp_12_posY anti_aircraft_missile_set 0
scoreboard players set temp_12_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標12
    execute store result score target_12_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_12,limit=1] Pos[0] 10
    execute store result score target_12_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_12,limit=1] Pos[1] 10
    execute store result score target_12_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_12,limit=1] Pos[2] 10

    #導彈12
    execute store result score missile_12_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_12,limit=1] Pos[0] 10
    execute store result score missile_12_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_12,limit=1] Pos[1] 10
    execute store result score missile_12_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_12,limit=1] Pos[2] 10

#將目標12各XYZ坐標給暫存12
scoreboard players operation temp_12_posX anti_aircraft_missile_set = target_12_posX anti_aircraft_missile_set
scoreboard players operation temp_12_posY anti_aircraft_missile_set = target_12_posY anti_aircraft_missile_set
scoreboard players operation temp_12_posZ anti_aircraft_missile_set = target_12_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_12_posX anti_aircraft_missile_set -= missile_12_posX anti_aircraft_missile_set
scoreboard players operation temp_12_posY anti_aircraft_missile_set -= missile_12_posY anti_aircraft_missile_set
scoreboard players operation temp_12_posZ anti_aircraft_missile_set -= missile_12_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_12_posX anti_aircraft_missile_set *= temp_12_posX anti_aircraft_missile_set
scoreboard players operation temp_12_posY anti_aircraft_missile_set *= temp_12_posY anti_aircraft_missile_set
scoreboard players operation temp_12_posZ anti_aircraft_missile_set *= temp_12_posZ anti_aircraft_missile_set

#取得導彈12距離(平方值)
scoreboard players operation missile_12_in anti_aircraft_missile_set += temp_12_posX anti_aircraft_missile_set
scoreboard players operation missile_12_in anti_aircraft_missile_set += temp_12_posY anti_aircraft_missile_set
scoreboard players operation missile_12_in anti_aircraft_missile_set += temp_12_posZ anti_aircraft_missile_set

#將導彈12距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_3/4_exe
