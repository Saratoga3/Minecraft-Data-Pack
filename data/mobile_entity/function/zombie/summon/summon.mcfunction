#召喚殭屍

#召喚殭屍，並重置計時
execute summon minecraft:zombie run scoreboard players operation @s mobile_entity = zombie_support_set mobile_entity

#重置群體計時
#scoreboard players operation zombie_time mobile_entity = zombie_summon_set mobile_entity

#重置個別計時
scoreboard players operation @s mobile_entity = zombie_support_set mobile_entity
