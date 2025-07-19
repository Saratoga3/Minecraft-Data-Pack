#取得目標位移量

#取得X位移量
scoreboard players operation displacementX CIWS_set = target_posX CIWS_set
scoreboard players operation displacementX CIWS_set -= target_pre_posX CIWS_set

#取得Y位移量
scoreboard players operation displacementY CIWS_set = target_posY CIWS_set
scoreboard players operation displacementY CIWS_set -= target_pre_posY CIWS_set

#取得Z位移量
scoreboard players operation displacementZ CIWS_set = target_posZ CIWS_set
scoreboard players operation displacementZ CIWS_set -= target_pre_posZ CIWS_set
