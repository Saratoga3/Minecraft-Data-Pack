#加載防空導彈雷達站

#佈署

    #如果不存在加載_雷達站，就在雷達站的位置，召喚加載_雷達站
    execute unless entity @e[tag=anti_aircraft_missile_radar_forceload] run summon marker ~ ~ ~ {Tags:["anti_aircraft_missile_radar_forceload"]}

    #如果存在加載_雷達站，就強加載該區塊
    execute if entity @e[tag=anti_aircraft_missile_radar_forceload] at @e[tag=anti_aircraft_missile_radar_forceload] unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~

#例外狀況

    #如果不存在雷達站，就刪除該區塊的強加載
    execute unless entity @e[tag=anti_aircraft_missile_radar] at @e[tag=anti_aircraft_missile_radar_forceload] if loaded ~ ~ ~ run forceload remove ~ ~ ~ ~

    #如果不存在雷達站，就刪除加載_雷達站
    execute unless entity @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_radar_forceload] run kill @s
