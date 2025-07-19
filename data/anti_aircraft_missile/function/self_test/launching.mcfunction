#發射站運轉

    #發射站發光(未採用)
    #execute as @e[tag=anti_aircraft_missile_launching] unless data entity @s {Glowing:true} run data modify entity @s Glowing set value true

    #發射站

        #發射站固定視角(未採用)
        #execute as @e[tag=anti_aircraft_missile_launching] at @s run tp @s ~ ~ ~ 0 0

    #發射站1

        #發射站1固定視角
        execute as @e[tag=anti_aircraft_missile_launching_1] at @s run tp @s ~ ~ ~ 225 0

    #發射站2

        #發射站2固定視角
        execute as @e[tag=anti_aircraft_missile_launching_2] at @s run tp @s ~ ~ ~ 315 0

    #發射站3

        #發射站3固定視角
        execute as @e[tag=anti_aircraft_missile_launching_3] at @s run tp @s ~ ~ ~ 45 0

    #發射站4

        #發射站4固定視角
        execute as @e[tag=anti_aircraft_missile_launching_4] at @s run tp @s ~ ~ ~ 135 0
