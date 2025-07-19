#取得目標座標

#目標XYZ座標
execute store result score target_posX CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[0] 100
execute store result score target_posY CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[1] 100
execute store result score target_posZ CIWS_set run data get entity @e[tag=CIWS_target,limit=1] Pos[2] 100

#取得前一個目標座標
function ciws:advance_range/displacement_pre