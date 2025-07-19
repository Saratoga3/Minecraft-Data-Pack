#加載防空導彈導彈4

#重新佈署

    #刪除該區塊的強加載
    execute at @e[tag=anti_aircraft_missile_forceload_4] run forceload remove ~-5 ~-5 ~5 ~5

    #刪除加載_導彈4
    execute as @e[tag=anti_aircraft_missile_forceload_4] run kill @s

#佈署

    #在導彈4的位置，召喚加載_導彈4
    execute at @e[tag=anti_aircraft_missile_4] run summon area_effect_cloud ~ ~ ~ {Tags:["anti_aircraft_missile_forceload","anti_aircraft_missile_forceload_4"],Duration:2147483647}

    #如果存在加載_導彈4，就強加載該區塊
    execute at @e[tag=anti_aircraft_missile_forceload_4] run forceload add ~-5 ~-5 ~5 ~5

#例外狀況

    #如果不存在導彈4，就刪除該區塊的強加載
    execute unless entity @e[tag=anti_aircraft_missile_4] at @e[tag=anti_aircraft_missile_forceload_4] run forceload remove ~-5 ~-5 ~5 ~5

    #如果不存在導彈4，且存在加載_導彈4，就刪除加載_導彈4
    execute unless entity @e[tag=anti_aircraft_missile_4] as @e[tag=anti_aircraft_missile_forceload_4] run kill @s
