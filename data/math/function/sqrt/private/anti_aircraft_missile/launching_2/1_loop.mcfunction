##by NOPEname

scoreboard players operation missile_5_out math_sqrt += missile_5_tmp math_sqrt
scoreboard players operation missile_5_out math_sqrt /= 2 math_sqrt

scoreboard players operation missile_5_tmp math_sqrt = missile_5_in anti_aircraft_missile_set
scoreboard players operation missile_5_tmp math_sqrt /= missile_5_out math_sqrt

execute if score missile_5_out math_sqrt > missile_5_tmp math_sqrt run function math:sqrt/private/anti_aircraft_missile/launching_2/1_loop
