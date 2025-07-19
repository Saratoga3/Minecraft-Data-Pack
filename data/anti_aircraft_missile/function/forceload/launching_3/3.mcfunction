#加載防空導彈發射站3

#佈署

    #如果不存在加載_發射站3，就在發射站3的位置，召喚加載_發射站3
    execute unless entity @e[tag=anti_aircraft_missile_launching_forceload_3] at @e[tag=anti_aircraft_missile_launching_3] run summon marker ~ ~ ~ {Tags:["anti_aircraft_missile_launching_forceload","anti_aircraft_missile_launching_forceload_3"]}

    #如果存在加載_發射站3，就強加載該區塊
    execute if entity @e[tag=anti_aircraft_missile_launching_forceload_3] at @e[tag=anti_aircraft_missile_launching_forceload_3] unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~

#例外狀況

    #如果不存在發射站3，就刪除該區塊的強加載
    execute unless entity @e[tag=anti_aircraft_missile_launching_3] at @e[tag=anti_aircraft_missile_launching_forceload_3] if loaded ~ ~ ~ run forceload remove ~ ~ ~ ~

    #如果不存在發射站3，就刪除加載_發射站3
    execute unless entity @e[tag=anti_aircraft_missile_launching_3] as @e[tag=anti_aircraft_missile_launching_forceload_3] run kill @s
