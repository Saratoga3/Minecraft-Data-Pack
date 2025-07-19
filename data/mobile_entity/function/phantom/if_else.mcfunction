#判斷是否為空氣

#計數-1
scoreboard players remove phantom_high mobile_entity 1

#如果標記位置不是空氣，就刪除該標記
execute as @e[tag=phantom_marker] at @s unless block ~ ~ ~ air run kill @s

#標記向上移動
execute as @e[tag=phantom_marker] at @s run tp ^ ^1 ^

#遞迴判斷
execute unless score phantom_high mobile_entity matches ..0 run function mobile_entity:phantom/if_else
