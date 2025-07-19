#取得目標位移量

#取得X位移量
scoreboard players operation displacementX THADD_set = target_posX THADD_set
scoreboard players operation displacementX THADD_set -= target_pre_posX THADD_set

#取得Y位移量
scoreboard players operation displacementY THADD_set = target_posY THADD_set
scoreboard players operation displacementY THADD_set -= target_pre_posY THADD_set

#取得Z位移量
scoreboard players operation displacementZ THADD_set = target_posZ THADD_set
scoreboard players operation displacementZ THADD_set -= target_pre_posZ THADD_set
