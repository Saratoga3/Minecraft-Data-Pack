#取得目標14座標

#目標14的XYZ座標
execute store result score target_14_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_14,limit=1] Pos[0] 10
execute store result score target_14_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_14,limit=1] Pos[1] 10
execute store result score target_14_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_14,limit=1] Pos[2] 10

#取得前一個目標14座標
function anti_aircraft_missile:advance_range/launching_4/2/displacement_pre
