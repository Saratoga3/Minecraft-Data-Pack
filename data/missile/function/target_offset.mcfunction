#目標前置量

#如果不存在目標前置量，就在目標位置召喚目標前置量
execute as @e[tag=missile_target] at @s unless entity @e[tag=missile_target_offset] run summon area_effect_cloud ~ ~ ~ {Tags:["missile_target_offset"],Duration:20}

#設定目標前置量
scoreboard players operation displacementX target_advance_range += posX target_advance_range
scoreboard players operation displacementY target_advance_range += posY target_advance_range
scoreboard players operation displacementZ target_advance_range += posZ target_advance_range

#填入目標前置量
execute store result entity @e[tag=missile_target_offset,limit=1] Pos[0] double 1 run scoreboard players get displacementX target_advance_range
execute store result entity @e[tag=missile_target_offset,limit=1] Pos[1] double 1 run scoreboard players get displacementY target_advance_range
execute store result entity @e[tag=missile_target_offset,limit=1] Pos[2] double 1 run scoreboard players get displacementZ target_advance_range

#在目標前置量顯示粒子特效
#execute as @e[tag=missile_target_offset] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 0 force @a

#顯示目標前置量
#tellraw @a [{"score":{"name":"displacementX","objective":"target_advance_range"}},{"text":","},{"score":{"name":"displacementY","objective":"target_advance_range"}},{"text":","},{"score":{"name":"displacementZ","objective":"target_advance_range"}}]
