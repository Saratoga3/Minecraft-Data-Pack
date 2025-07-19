#取得目標5座標

#目標5的XYZ座標
execute store result score target_5_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_5,limit=1] Pos[0] 10
execute store result score target_5_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_5,limit=1] Pos[1] 10
execute store result score target_5_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_5,limit=1] Pos[2] 10

#取得前一個目標5座標
function anti_aircraft_missile:advance_range/launching_2/1/displacement_pre
