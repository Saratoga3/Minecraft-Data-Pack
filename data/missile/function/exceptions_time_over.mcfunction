#目標超出導彈射程範圍

#如果該目標有發光效果，就清除目標發光效果
execute as @e[tag=missile_target,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

#如果該目標有發光狀態，就清除目標發光狀態
execute as @e[tag=missile_target] if data entity @s {Glowing:1b} run data modify entity @s Glowing set value false

#爆炸
function missile:explode_fail

#如果導彈分數>=1，就清除右側記分板
#execute if score missile missile_time matches 1.. run scoreboard objectives setdisplay sidebar

#重置導彈分數
scoreboard players set missile missile_time 0

#刪除目標標籤
execute as @e[tag=missile_target] run tag @s remove missile_target
