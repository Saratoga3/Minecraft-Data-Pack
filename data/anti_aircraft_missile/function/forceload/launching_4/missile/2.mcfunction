#加載防空導彈導彈14

#重新佈署

    #刪除該區塊的強加載
    execute at @e[tag=anti_aircraft_missile_forceload_14] run forceload remove ~-5 ~-5 ~5 ~5

    #刪除加載_導彈14
    execute as @e[tag=anti_aircraft_missile_forceload_14] run kill @s

#佈署

    #在導彈14的位置，召喚加載_導彈14
    execute at @e[tag=anti_aircraft_missile_14] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_forceload","anti_aircraft_missile_forceload_14"],Duration:2147483647}

    #如果存在加載_導彈14，就強加載該區塊
    execute at @e[tag=anti_aircraft_missile_forceload_14] run forceload add ~-5 ~-5 ~5 ~5

#例外狀況

    #如果不存在導彈14，就刪除該區塊的強加載
    execute unless entity @e[tag=anti_aircraft_missile_14] at @e[tag=anti_aircraft_missile_forceload_14] run forceload remove ~-5 ~-5 ~5 ~5

    #如果不存在導彈14，且存在加載_導彈14，就刪除加載_導彈14
    execute unless entity @e[tag=anti_aircraft_missile_14] as @e[tag=anti_aircraft_missile_forceload_14] run kill @s
