##by NOPEname

scoreboard players operation missile_12_out math_sqrt += missile_12_tmp math_sqrt
scoreboard players operation missile_12_out math_sqrt /= 2 math_sqrt

scoreboard players operation missile_12_tmp math_sqrt = missile_12_in anti_aircraft_missile_set
scoreboard players operation missile_12_tmp math_sqrt /= missile_12_out math_sqrt

execute if score missile_12_out math_sqrt > missile_12_tmp math_sqrt run function math:sqrt/private/anti_aircraft_missile/launching_3/4_loop
