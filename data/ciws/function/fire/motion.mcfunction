#子彈運動

#召喚子彈
summon minecraft:arrow ~ ~1.6 ~ {Glowing:true,Tags:["CIWS_bullet"]}

#將目標點從(0,0,0)往前移動
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=CIWS_object,limit=1] ^ ^ ^5

#將目標點的座標，存入箭矢的Motion中
execute positioned ~ ~1.6 ~ run data modify entity @e[tag=CIWS_bullet,limit=1,sort=nearest] Motion set from entity @e[tag=CIWS_object,limit=1] Pos
