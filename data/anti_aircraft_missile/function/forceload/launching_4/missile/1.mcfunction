#加載防空導彈導彈13

#重新佈署

    #刪除該區塊的強加載
    execute at @e[tag=anti_aircraft_missile_forceload_13] run forceload remove ~-5 ~-5 ~5 ~5

    #刪除加載_導彈13
    execute as @e[tag=anti_aircraft_missile_forceload_13] run kill @s

#佈署

    #在導彈13的位置，召喚加載_導彈13
    execute at @e[tag=anti_aircraft_missile_13] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_forceload","anti_aircraft_missile_forceload_13"],Duration:2147483647}

    #如果存在加載_導彈13，就強加載該區塊
    execute at @e[tag=anti_aircraft_missile_forceload_13] run forceload add ~-5 ~-5 ~5 ~5

#例外狀況

    #如果不存在導彈13，就刪除該區塊的強加載
    execute unless entity @e[tag=anti_aircraft_missile_13] at @e[tag=anti_aircraft_missile_forceload_13] run forceload remove ~-5 ~-5 ~5 ~5

    #如果不存在導彈13，且存在加載_導彈13，就刪除加載_導彈13
    execute unless entity @e[tag=anti_aircraft_missile_13] as @e[tag=anti_aircraft_missile_forceload_13] run kill @s
