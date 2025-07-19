#子彈運動

#召喚子彈
summon minecraft:arrow ~ ~1.6 ~ {Glowing:true,Tags:["AA_gun_bullet"]}

#設定子彈的主人
execute run data modify entity @e[tag=AA_gun_bullet,limit=1,sort=nearest] Owner set from entity @s UUID

#將目標點從(0,0,0)往前移動
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=AA_gun_object,limit=1] ^ ^ ^4

#將目標點的座標，存入箭矢的Motion中
execute positioned ~ ~1.6 ~ run data modify entity @e[tag=AA_gun_bullet,limit=1,sort=nearest] Motion set from entity @e[tag=AA_gun_object,limit=1] Pos
