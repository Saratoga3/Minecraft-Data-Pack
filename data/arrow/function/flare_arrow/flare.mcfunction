#照明箭矢

#如果照明箭矢附近沒有照明標記，就召喚照明標記
execute at @e[nbt={CustomName:'{"text":"照明箭矢","color":"yellow"}'}] unless entity @e[tag=arrow_light_marker,distance=..1.5] run summon minecraft:marker ~ ~ ~ {Tags:["arrow_light_marker"]}

#照明

    #如果照明標記附近有照明箭矢，就照明
    execute at @e[tag=arrow_light_marker] if entity @e[nbt={CustomName:'{"text":"照明箭矢","color":"yellow"}'},distance=..1.5] run setblock ~ ~ ~ light keep

#取消照明

    #如果照明標記附近沒有照明箭矢，就不照明
    execute at @e[tag=arrow_light_marker] unless entity @e[nbt={CustomName:'{"text":"照明箭矢","color":"yellow"}'},distance=..1.5] run fill ~ ~ ~ ~ ~ ~ air replace light

    #如果照明標記附近沒有照明箭矢，就刪除照明標記
    execute as @e[tag=arrow_light_marker] at @s unless entity @e[nbt={CustomName:'{"text":"照明箭矢","color":"yellow"}'},distance=..1.5] run kill @s
