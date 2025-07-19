##by NOPEname

scoreboard players operation CIWS_out math_sqrt += CIWS_tmp math_sqrt
scoreboard players operation CIWS_out math_sqrt /= 2 math_sqrt

scoreboard players operation CIWS_tmp math_sqrt = CIWS_in CIWS_set
scoreboard players operation CIWS_tmp math_sqrt /= CIWS_out math_sqrt

execute if score CIWS_out math_sqrt > CIWS_tmp math_sqrt run function math:sqrt/private/ciws_loop
