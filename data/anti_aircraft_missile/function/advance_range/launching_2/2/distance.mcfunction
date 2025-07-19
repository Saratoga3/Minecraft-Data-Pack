#距離

#清除導彈6距離(平方值)
scoreboard players set missile_6_in anti_aircraft_missile_set 0

#清除暫存6
scoreboard players set temp_6_posX anti_aircraft_missile_set 0
scoreboard players set temp_6_posY anti_aircraft_missile_set 0
scoreboard players set temp_6_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標6
    execute store result score target_6_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[0] 10
    execute store result score target_6_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[1] 10
    execute store result score target_6_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[2] 10

    #導彈6
    execute store result score missile_6_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_6,limit=1] Pos[0] 10
    execute store result score missile_6_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_6,limit=1] Pos[1] 10
    execute store result score missile_6_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_6,limit=1] Pos[2] 10

#將目標6各XYZ坐標給暫存6
scoreboard players operation temp_6_posX anti_aircraft_missile_set = target_6_posX anti_aircraft_missile_set
scoreboard players operation temp_6_posY anti_aircraft_missile_set = target_6_posY anti_aircraft_missile_set
scoreboard players operation temp_6_posZ anti_aircraft_missile_set = target_6_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_6_posX anti_aircraft_missile_set -= missile_6_posX anti_aircraft_missile_set
scoreboard players operation temp_6_posY anti_aircraft_missile_set -= missile_6_posY anti_aircraft_missile_set
scoreboard players operation temp_6_posZ anti_aircraft_missile_set -= missile_6_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_6_posX anti_aircraft_missile_set *= temp_6_posX anti_aircraft_missile_set
scoreboard players operation temp_6_posY anti_aircraft_missile_set *= temp_6_posY anti_aircraft_missile_set
scoreboard players operation temp_6_posZ anti_aircraft_missile_set *= temp_6_posZ anti_aircraft_missile_set

#取得導彈6距離(平方值)
scoreboard players operation missile_6_in anti_aircraft_missile_set += temp_6_posX anti_aircraft_missile_set
scoreboard players operation missile_6_in anti_aircraft_missile_set += temp_6_posY anti_aircraft_missile_set
scoreboard players operation missile_6_in anti_aircraft_missile_set += temp_6_posZ anti_aircraft_missile_set

#將導彈6距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_2/2_exe
