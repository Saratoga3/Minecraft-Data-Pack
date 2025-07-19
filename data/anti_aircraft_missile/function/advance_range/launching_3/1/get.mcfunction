#取得目標9座標

#目標9的XYZ座標
execute store result score target_9_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[0] 10
execute store result score target_9_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[1] 10
execute store result score target_9_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_9,limit=1] Pos[2] 10

#取得前一個目標9座標
function anti_aircraft_missile:advance_range/launching_3/1/displacement_pre
