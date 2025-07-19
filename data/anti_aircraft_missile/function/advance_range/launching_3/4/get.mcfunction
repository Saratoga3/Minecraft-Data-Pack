#取得目標12座標

#目標12的XYZ座標
execute store result score target_12_posX anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_12,limit=1] Pos[0] 10
execute store result score target_12_posY anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_12,limit=1] Pos[1] 10
execute store result score target_12_posZ anti_aircraft_missile_set run data get entity @e[tag=anti_aircraft_missile_target_12,limit=1] Pos[2] 10

#取得前一個目標12座標
function anti_aircraft_missile:advance_range/launching_3/4/displacement_pre
