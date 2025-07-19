#取得目標7座標

#目標7的XYZ座標
execute store result score target_7_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_7,limit=1] Pos[0] 10
execute store result score target_7_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_7,limit=1] Pos[1] 10
execute store result score target_7_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_7,limit=1] Pos[2] 10

#取得前一個目標7座標
function anti_aircraft_missile:advance_range/launching_2/3/displacement_pre
