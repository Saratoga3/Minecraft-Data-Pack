#取得目標15座標

#目標15的XYZ座標
execute store result score target_15_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_15,limit=1] Pos[0] 10
execute store result score target_15_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_15,limit=1] Pos[1] 10
execute store result score target_15_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_15,limit=1] Pos[2] 10

#取得前一個目標15座標
function anti_aircraft_missile:advance_range/launching_4/3/displacement_pre
