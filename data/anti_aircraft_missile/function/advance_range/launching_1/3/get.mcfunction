#取得目標3座標

#目標3的XYZ座標
execute store result score target_3_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_3,limit=1] Pos[0] 10
execute store result score target_3_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_3,limit=1] Pos[1] 10
execute store result score target_3_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_3,limit=1] Pos[2] 10

#取得前一個目標3座標
function anti_aircraft_missile:advance_range/launching_1/3/displacement_pre
