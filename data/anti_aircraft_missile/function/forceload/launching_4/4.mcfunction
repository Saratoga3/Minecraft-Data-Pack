#加載防空導彈發射站4

#佈署

    #如果不存在加載_發射站4，就在發射站4的位置，召喚加載_發射站4
    execute unless entity @e[tag=anti_aircraft_missile_launching_forceload_4] at @e[tag=anti_aircraft_missile_launching_4] run summon marker ~ ~ ~ {Tags:["anti_aircraft_missile_launching_forceload","anti_aircraft_missile_launching_forceload_4"]}

    #如果存在加載_發射站4，就強加載該區塊
    execute if entity @e[tag=anti_aircraft_missile_launching_forceload_4] at @e[tag=anti_aircraft_missile_launching_forceload_4] unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~

#例外狀況

    #如果不存在發射站4，就刪除該區塊的強加載
    execute unless entity @e[tag=anti_aircraft_missile_launching_4] at @e[tag=anti_aircraft_missile_launching_forceload_4] if loaded ~ ~ ~ run forceload remove ~ ~ ~ ~

    #如果不存在發射站4，就刪除加載_發射站4
    execute unless entity @e[tag=anti_aircraft_missile_launching_4] as @e[tag=anti_aircraft_missile_launching_forceload_4] run kill @s
