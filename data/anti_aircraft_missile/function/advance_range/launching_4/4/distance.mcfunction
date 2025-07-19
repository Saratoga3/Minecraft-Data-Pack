#距離

#清除導彈16距離(平方值)
scoreboard players set missile_16_in anti_aircraft_missile_set 0

#清除暫存16
scoreboard players set temp_16_posX anti_aircraft_missile_set 0
scoreboard players set temp_16_posY anti_aircraft_missile_set 0
scoreboard players set temp_16_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標16
    execute store result score target_16_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_16,limit=1] Pos[0] 10
    execute store result score target_16_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_16,limit=1] Pos[1] 10
    execute store result score target_16_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_16,limit=1] Pos[2] 10

    #導彈16
    execute store result score missile_16_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_16,limit=1] Pos[0] 10
    execute store result score missile_16_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_16,limit=1] Pos[1] 10
    execute store result score missile_16_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_16,limit=1] Pos[2] 10

#將目標16各XYZ坐標給暫存16
scoreboard players operation temp_16_posX anti_aircraft_missile_set = target_16_posX anti_aircraft_missile_set
scoreboard players operation temp_16_posY anti_aircraft_missile_set = target_16_posY anti_aircraft_missile_set
scoreboard players operation temp_16_posZ anti_aircraft_missile_set = target_16_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_16_posX anti_aircraft_missile_set -= missile_16_posX anti_aircraft_missile_set
scoreboard players operation temp_16_posY anti_aircraft_missile_set -= missile_16_posY anti_aircraft_missile_set
scoreboard players operation temp_16_posZ anti_aircraft_missile_set -= missile_16_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_16_posX anti_aircraft_missile_set *= temp_16_posX anti_aircraft_missile_set
scoreboard players operation temp_16_posY anti_aircraft_missile_set *= temp_16_posY anti_aircraft_missile_set
scoreboard players operation temp_16_posZ anti_aircraft_missile_set *= temp_16_posZ anti_aircraft_missile_set

#取得導彈16距離(平方值)
scoreboard players operation missile_16_in anti_aircraft_missile_set += temp_16_posX anti_aircraft_missile_set
scoreboard players operation missile_16_in anti_aircraft_missile_set += temp_16_posY anti_aircraft_missile_set
scoreboard players operation missile_16_in anti_aircraft_missile_set += temp_16_posZ anti_aircraft_missile_set

#將導彈16距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_4/4_exe
