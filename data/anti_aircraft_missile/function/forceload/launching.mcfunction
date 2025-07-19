#加載防空導彈發射站

    #發射站1

        #如果存在發射站1，就加載發射站1
        execute at @e[tag=anti_aircraft_missile_launching_1] unless loaded ~ ~ ~ run function anti_aircraft_missile:forceload/launching_1/1

        #如果不存在發射站1，且存在加載_發射站1，就解除加載發射站1
        execute unless entity @e[tag=anti_aircraft_missile_launching_1] if entity @e[tag=anti_aircraft_missile_launching_forceload_1] run function anti_aircraft_missile:forceload/launching_1/1

    #發射站2

        #如果存在發射站2，就加載發射站2
        execute at @e[tag=anti_aircraft_missile_launching_2] unless loaded ~ ~ ~ run function anti_aircraft_missile:forceload/launching_2/2

        #如果不存在發射站2，且存在加載_發射站2，就解除加載發射站2
        execute unless entity @e[tag=anti_aircraft_missile_launching_2] if entity @e[tag=anti_aircraft_missile_launching_forceload_2] run function anti_aircraft_missile:forceload/launching_2/2

    #發射站3

        #如果存在發射站3，就加載發射站3
        execute at @e[tag=anti_aircraft_missile_launching_3] unless loaded ~ ~ ~ run function anti_aircraft_missile:forceload/launching_3/3

        #如果不存在發射站3，且存在加載_發射站3，就解除加載發射站3
        execute unless entity @e[tag=anti_aircraft_missile_launching_3] if entity @e[tag=anti_aircraft_missile_launching_forceload_3] run function anti_aircraft_missile:forceload/launching_3/3

    #發射站4

        #如果存在發射站4，就加載發射站4
        execute at @e[tag=anti_aircraft_missile_launching_4] unless loaded ~ ~ ~ run function anti_aircraft_missile:forceload/launching_4/4

        #如果不存在發射站4，且存在加載_發射站4，就解除加載發射站4
        execute unless entity @e[tag=anti_aircraft_missile_launching_4] if entity @e[tag=anti_aircraft_missile_launching_forceload_4] run function anti_aircraft_missile:forceload/launching_4/4
