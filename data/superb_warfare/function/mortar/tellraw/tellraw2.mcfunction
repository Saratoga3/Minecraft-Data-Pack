#回報狀態

    #
    execute unless entity @e[tag=mortar_1,type=armor_stand] if score mortar_1 mortar_positions matches 1 unless entity mortar_1 unless entity mortar_1 run tellraw @a [{"text":"第1迫擊砲陣地被摧毀！","color":"red"}]

    #
    execute unless entity @e[tag=mortar_2,type=armor_stand] if score mortar_2 mortar_positions matches 1 run tellraw @a [{"text":"第2迫擊砲陣地被摧毀！","color":"red"}]

    #
    execute unless entity @e[tag=mortar_3,type=armor_stand] if score mortar_3 mortar_positions matches 1 run tellraw @a [{"text":"第3迫擊砲陣地被摧毀！","color":"red"}]

    #
    execute unless entity @e[tag=mortar_4,type=armor_stand] if score mortar_4 mortar_positions matches 1 run tellraw @a [{"text":"第4迫擊砲陣地被摧毀！","color":"red"}]

    #
    execute unless entity @e[tag=mortar_5,type=armor_stand] if score mortar_5 mortar_positions matches 1 run tellraw @a [{"text":"第5迫擊砲陣地被摧毀！","color":"red"}]
