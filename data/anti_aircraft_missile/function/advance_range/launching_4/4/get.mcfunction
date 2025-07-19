#取得目標16座標

#目標16的XYZ座標
execute store result score target_16_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_16,limit=1] Pos[0] 10
execute store result score target_16_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_16,limit=1] Pos[1] 10
execute store result score target_16_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_16,limit=1] Pos[2] 10

#取得前一個目標16座標
function anti_aircraft_missile:advance_range/launching_4/4/displacement_pre
