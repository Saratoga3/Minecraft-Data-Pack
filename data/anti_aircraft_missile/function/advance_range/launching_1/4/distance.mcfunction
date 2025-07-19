#距離

#清除導彈4距離(平方值)
scoreboard players set missile_4_in anti_aircraft_missile_set 0

#清除暫存4
scoreboard players set temp_4_posX anti_aircraft_missile_set 0
scoreboard players set temp_4_posY anti_aircraft_missile_set 0
scoreboard players set temp_4_posZ anti_aircraft_missile_set 0

#取得XYZ坐標

    #目標4
    execute store result score target_4_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_4,limit=1] Pos[0] 10
    execute store result score target_4_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_4,limit=1] Pos[1] 10
    execute store result score target_4_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_4,limit=1] Pos[2] 10

    #導彈4
    execute store result score missile_4_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_4,limit=1] Pos[0] 10
    execute store result score missile_4_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_4,limit=1] Pos[1] 10
    execute store result score missile_4_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_4,limit=1] Pos[2] 10

#將目標4各XYZ坐標給暫存4
scoreboard players operation temp_4_posX anti_aircraft_missile_set = target_4_posX anti_aircraft_missile_set
scoreboard players operation temp_4_posY anti_aircraft_missile_set = target_4_posY anti_aircraft_missile_set
scoreboard players operation temp_4_posZ anti_aircraft_missile_set = target_4_posZ anti_aircraft_missile_set

#取得各XYZ距離
scoreboard players operation temp_4_posX anti_aircraft_missile_set -= missile_4_posX anti_aircraft_missile_set
scoreboard players operation temp_4_posY anti_aircraft_missile_set -= missile_4_posY anti_aircraft_missile_set
scoreboard players operation temp_4_posZ anti_aircraft_missile_set -= missile_4_posZ anti_aircraft_missile_set

#平方各XYZ距離
scoreboard players operation temp_4_posX anti_aircraft_missile_set *= temp_4_posX anti_aircraft_missile_set
scoreboard players operation temp_4_posY anti_aircraft_missile_set *= temp_4_posY anti_aircraft_missile_set
scoreboard players operation temp_4_posZ anti_aircraft_missile_set *= temp_4_posZ anti_aircraft_missile_set

#取得導彈4距離(平方值)
scoreboard players operation missile_4_in anti_aircraft_missile_set += temp_4_posX anti_aircraft_missile_set
scoreboard players operation missile_4_in anti_aircraft_missile_set += temp_4_posY anti_aircraft_missile_set
scoreboard players operation missile_4_in anti_aircraft_missile_set += temp_4_posZ anti_aircraft_missile_set

#將導彈4距離(平方值)開根號，得到實際距離
function math:sqrt/anti_aircraft_missile/launching_1/4_exe
