#取得目標1座標

#目標1的XYZ座標
execute store result score target_1_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_1,limit=1] Pos[0] 10
execute store result score target_1_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_1,limit=1] Pos[1] 10
execute store result score target_1_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_1,limit=1] Pos[2] 10

#取得前一個目標1座標
function anti_aircraft_missile:advance_range/launching_1/1/displacement_pre
