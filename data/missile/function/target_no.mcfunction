#非目標

#如果目標存在於非搜索區，且該實體沒有標籤(missile_no)，就給該實體1個標籤(missile_no)
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=-500,dx=500,dz=500] unless entity @s[tag=missile_no] run tag @s add missile_no
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=-500,dx=-500,dz=500] unless entity @s[tag=missile_no] run tag @s add missile_no
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=-500,dx=500,dz=-500] unless entity @s[tag=missile_no] run tag @s add missile_no
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=-500,dx=-500,dz=-500] unless entity @s[tag=missile_no] run tag @s add missile_no

#如果目標存在於搜索區，且該實體有標籤(missile_no)，就刪除該實體1個標籤(missile_no)
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=500,dx=500,dz=500] if entity @s[tag=missile_no] run tag @s remove missile_no
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=500,dx=-500,dz=500] if entity @s[tag=missile_no] run tag @s remove missile_no
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=500,dx=500,dz=-500] if entity @s[tag=missile_no] run tag @s remove missile_no
execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,distance=..500,dy=500,dx=-500,dz=-500] if entity @s[tag=missile_no] run tag @s remove missile_no

#如果目標有發光效果，且有標籤(missile_no)，就清除目標發光效果
execute as @e[tag=missile_target,nbt={active_effects:[{id:"minecraft:glowing"}]}] if entity @s[tag=missile_no] run effect clear @s glowing

#如果目標有發光狀態，且有標籤(missile_no)，就清除目標發光狀態
execute as @e[tag=missile_target] if data entity @s {Glowing:1b} if entity @s[tag=missile_no] run data modify entity @s Glowing set value false
