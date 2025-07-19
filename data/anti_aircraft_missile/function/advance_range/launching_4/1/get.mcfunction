#取得目標13座標

#目標13的XYZ座標
execute store result score target_13_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_13,limit=1] Pos[0] 10
execute store result score target_13_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_13,limit=1] Pos[1] 10
execute store result score target_13_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_13,limit=1] Pos[2] 10

#取得前一個目標13座標
function anti_aircraft_missile:advance_range/launching_4/1/displacement_pre
