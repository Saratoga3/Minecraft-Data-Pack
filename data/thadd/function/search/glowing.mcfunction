#顯示目標

#如果目標是玩家，且沒有發光效果，且在雷達車範圍，就給目標發光效果
execute as @e[tag=THADD_target,type=player,limit=1,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] at @s at @e[tag=THADD_radar,distance=200..1000] run effect give @s minecraft:glowing infinite 0 true

#如果目標不是玩家，且沒有發光狀態，且在雷達車範圍，就給目標發光狀態
execute as @e[tag=THADD_target,type=!player,limit=1,nbt=!{Glowing:true}] at @s at @e[tag=THADD_radar,distance=200..1000] run data modify entity @s Glowing set value true
