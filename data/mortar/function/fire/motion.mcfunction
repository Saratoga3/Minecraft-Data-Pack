#砲彈運動

#消耗砲彈數量

    #cannonball_count-1分數
    scoreboard players remove cannonball_count mortar_set 1

#開炮

    #召喚砲彈
    summon minecraft:arrow ~ ~1.6 ~ {Glowing:true,Tags:["mortar_cannonball"],PierceLevel:24}

    #將目標點從(0,0,0)往前移動3格
    execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=mortar_object,limit=1] ^ ^ ^3

    #將目標點的座標，存入砲彈的Motion中
    execute positioned ~ ~1.6 ~ run data modify entity @e[tag=mortar_cannonball,limit=1,sort=nearest] Motion set from entity @e[tag=mortar_object,limit=1] Pos
