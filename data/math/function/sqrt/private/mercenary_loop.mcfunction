##by NOPEname

scoreboard players operation mercenary_out math_sqrt += mercenary_tmp math_sqrt
scoreboard players operation mercenary_out math_sqrt /= 2 math_sqrt

scoreboard players operation mercenary_tmp math_sqrt = mercenary_in mercenary_set
scoreboard players operation mercenary_tmp math_sqrt /= mercenary_out math_sqrt

execute if score mercenary_out math_sqrt > mercenary_tmp math_sqrt run function math:sqrt/private/mercenary_loop
