#取得前一個目標座標

#確保沒有前一個XYZ目標座標時，以目標座XYZ標作為前置量
execute if score missile THADD_set matches ..5 run scoreboard players operation target_pre_posX THADD_set = target_posX THADD_set
execute if score missile THADD_set matches ..5 run scoreboard players operation target_pre_posY THADD_set = target_posY THADD_set
execute if score missile THADD_set matches ..5 run scoreboard players operation target_pre_posZ THADD_set = target_posZ THADD_set

#取得目標位移量
function thadd:advance_range/displacement

#將目標XYZ座標作為前一個XYZ座標
scoreboard players operation target_pre_posX THADD_set = target_posX THADD_set
scoreboard players operation target_pre_posY THADD_set = target_posY THADD_set
scoreboard players operation target_pre_posZ THADD_set = target_posZ THADD_set
