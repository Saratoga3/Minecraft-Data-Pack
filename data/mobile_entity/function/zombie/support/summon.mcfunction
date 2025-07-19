#召喚殭屍

#召喚殭屍，並重置被呼叫支援的殭屍計時
execute summon minecraft:zombie run scoreboard players operation @s mobile_entity = zombie_support_set mobile_entity

#重置呼叫支援的殭屍計時
scoreboard players operation @s mobile_entity = zombie_support_set mobile_entity
