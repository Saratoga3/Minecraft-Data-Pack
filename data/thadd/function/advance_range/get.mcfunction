#取得目標座標

#目標XYZ座標
execute store result score target_posX THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[0] 10
execute store result score target_posY THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[1] 10
execute store result score target_posZ THADD_set run data get entity @e[tag=THADD_target,limit=1] Pos[2] 10

#取得前一個目標座標
function thadd:advance_range/displacement_pre
