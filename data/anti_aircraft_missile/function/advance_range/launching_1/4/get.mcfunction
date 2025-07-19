#取得目標4座標

#目標4的XYZ座標
execute store result score target_4_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_4,limit=1] Pos[0] 10
execute store result score target_4_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_4,limit=1] Pos[1] 10
execute store result score target_4_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_4,limit=1] Pos[2] 10

#取得前一個目標4座標
function anti_aircraft_missile:advance_range/launching_1/4/displacement_pre
