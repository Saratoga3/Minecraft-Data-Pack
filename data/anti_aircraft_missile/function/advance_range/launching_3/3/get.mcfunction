#取得目標11座標

#目標11的XYZ座標
execute store result score target_11_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_11,limit=1] Pos[0] 10
execute store result score target_11_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_11,limit=1] Pos[1] 10
execute store result score target_11_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_11,limit=1] Pos[2] 10

#取得前一個目標11座標
function anti_aircraft_missile:advance_range/launching_3/3/displacement_pre
