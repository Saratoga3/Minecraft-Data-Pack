#取得目標10座標

#目標10的XYZ座標
execute store result score target_10_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[0] 10
execute store result score target_10_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[1] 10
execute store result score target_10_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_10,limit=1] Pos[2] 10

#取得前一個目標10座標
function anti_aircraft_missile:advance_range/launching_3/2/displacement_pre
