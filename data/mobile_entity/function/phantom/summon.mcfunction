#召喚夜魅

#計數-1
scoreboard players remove phantom_count mobile_entity 1

#在標記位置召喚夜魅
execute at @e[tag=phantom_marker] if block ~ ~ ~ air run summon minecraft:phantom

#當計數歸零，就刪除標記
execute as @e[tag=phantom_marker] if score phantom_count mobile_entity matches ..0 run kill @s

#遞迴召喚
execute unless score phantom_count mobile_entity matches ..0 run function mobile_entity:phantom/summon
