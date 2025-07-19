#建立標記

    #發射站1

        #如果存在導彈1，且導彈1當前時間>=保險解除時間，就建立標記1
        execute if entity @e[tag=anti_aircraft_missile_1] if score missile_1 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_1/1/mark

        #如果存在導彈2，且導彈2當前時間>=保險解除時間，就建立標記2
        execute if entity @e[tag=anti_aircraft_missile_2] if score missile_2 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_1/2/mark

        #如果存在導彈3，且導彈3當前時間>=保險解除時間，就建立標記3
        execute if entity @e[tag=anti_aircraft_missile_3] if score missile_3 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_1/3/mark

        #如果存在導彈4，且導彈4當前時間>=保險解除時間，就建立標記4
        execute if entity @e[tag=anti_aircraft_missile_4] if score missile_4 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_1/4/mark

    #發射站2

        #如果存在導彈5，且導彈5當前時間>=保險解除時間，就建立標記5
        execute if entity @e[tag=anti_aircraft_missile_5] if score missile_5 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_2/1/mark

        #如果存在導彈6，且導彈6當前時間>=保險解除時間，就建立標記6
        execute if entity @e[tag=anti_aircraft_missile_6] if score missile_6 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_2/2/mark

        #如果存在導彈7，且導彈7當前時間>=保險解除時間，就建立標記7
        execute if entity @e[tag=anti_aircraft_missile_7] if score missile_7 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_2/3/mark

        #如果存在導彈8，且導彈8當前時間>=保險解除時間，就建立標記8
        execute if entity @e[tag=anti_aircraft_missile_8] if score missile_8 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_2/4/mark

    #發射站3

        #如果存在導彈9，且導彈9當前時間>=保險解除時間，就建立標記9
        execute if entity @e[tag=anti_aircraft_missile_9] if score missile_9 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_3/1/mark

        #如果存在導彈10，且導彈10當前時間>=保險解除時間，就建立標記10
        execute if entity @e[tag=anti_aircraft_missile_10] if score missile_10 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_3/2/mark

        #如果存在導彈11，且導彈11當前時間>=保險解除時間，就建立標記11
        execute if entity @e[tag=anti_aircraft_missile_11] if score missile_11 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_3/3/mark

        #如果存在導彈12，且導彈12當前時間>=保險解除時間，就建立標記12
        execute if entity @e[tag=anti_aircraft_missile_12] if score missile_12 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_3/4/mark

    #發射站4

        #如果存在導彈13，且導彈13當前時間>=保險解除時間，就建立標記13
        execute if entity @e[tag=anti_aircraft_missile_13] if score missile_13 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_4/1/mark

        #如果存在導彈14，且導彈14當前時間>=保險解除時間，就建立標記14
        execute if entity @e[tag=anti_aircraft_missile_14] if score missile_14 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_4/2/mark

        #如果存在導彈15，且導彈15當前時間>=保險解除時間，就建立標記15
        execute if entity @e[tag=anti_aircraft_missile_15] if score missile_15 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_4/3/mark

        #如果存在導彈16，且導彈16當前時間>=保險解除時間，就建立標記16
        execute if entity @e[tag=anti_aircraft_missile_16] if score missile_16 anti_aircraft_missile_set >= safety anti_aircraft_missile_set run function anti_aircraft_missile:fire/launching_4/4/mark
