#取得目標6座標

#目標6的XYZ座標
execute store result score target_6_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[0] 10
execute store result score target_6_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[1] 10
execute store result score target_6_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_6,limit=1] Pos[2] 10

#取得前一個目標6座標
function anti_aircraft_missile:advance_range/launching_2/2/displacement_pre
