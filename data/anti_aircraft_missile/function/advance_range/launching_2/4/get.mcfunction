#取得目標8座標

#目標8的XYZ座標
execute store result score target_8_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_8,limit=1] Pos[0] 10
execute store result score target_8_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_8,limit=1] Pos[1] 10
execute store result score target_8_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_8,limit=1] Pos[2] 10

#取得前一個目標8座標
function anti_aircraft_missile:advance_range/launching_2/4/displacement_pre
