##by NOPEname

scoreboard players operation THADD_out math_sqrt += THADD_tmp math_sqrt
scoreboard players operation THADD_out math_sqrt /= 2 math_sqrt

scoreboard players operation THADD_tmp math_sqrt = missile_in THADD_set
scoreboard players operation THADD_tmp math_sqrt /= THADD_out math_sqrt

execute if score THADD_out math_sqrt > THADD_tmp math_sqrt run function math:sqrt/private/thadd_loop
