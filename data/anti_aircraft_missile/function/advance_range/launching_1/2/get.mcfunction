#取得目標2座標

#目標2的XYZ座標
execute store result score target_2_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_2,limit=1] Pos[0] 10
execute store result score target_2_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_2,limit=1] Pos[1] 10
execute store result score target_2_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_2,limit=1] Pos[2] 10

#取得前一個目標2座標
function anti_aircraft_missile:advance_range/launching_1/2/displacement_pre
