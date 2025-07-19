##by NOPEname

scoreboard players operation missile_6_out math_sqrt += missile_6_tmp math_sqrt
scoreboard players operation missile_6_out math_sqrt /= 2 math_sqrt

scoreboard players operation missile_6_tmp math_sqrt = missile_6_in anti_aircraft_missile_set
scoreboard players operation missile_6_tmp math_sqrt /= missile_6_out math_sqrt

execute if score missile_6_out math_sqrt > missile_6_tmp math_sqrt run function math:sqrt/private/anti_aircraft_missile/launching_2/2_loop
