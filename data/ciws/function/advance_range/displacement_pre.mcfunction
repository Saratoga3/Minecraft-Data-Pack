#取得前一個目標座標

#確保沒有前一個XYZ目標座標時，以目標座XZ標作為前置量
execute as @e[tag=CIWS_base] if score @s CIWS_set matches 0..4 run scoreboard players operation target_pre_posX CIWS_set = target_posX CIWS_set
execute as @e[tag=CIWS_base] if score @s CIWS_set matches 0..4 run scoreboard players operation target_pre_posY CIWS_set = target_posY CIWS_set
execute as @e[tag=CIWS_base] if score @s CIWS_set matches 0..4 run scoreboard players operation target_pre_posZ CIWS_set = target_posZ CIWS_set

#取得目標位移量
function ciws:advance_range/displacement

#將目標XYZ座標作為前一個XZ座標
scoreboard players operation target_pre_posX CIWS_set = target_posX CIWS_set
scoreboard players operation target_pre_posY CIWS_set = target_posY CIWS_set
scoreboard players operation target_pre_posZ CIWS_set = target_posZ CIWS_set
