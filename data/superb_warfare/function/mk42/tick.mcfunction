#持續檢測

#標籤

    #
    execute as @e[name=Mk42_1,type=minecraft:armor_stand,limit=1] unless entity @e[tag=Mk42_1] run tag @s add Mk42_1

#索敵

    #
    function superb_warfare:mk42/search

#刷新檢測

    #
    execute if entity @e[tag=Mk42_1,type=minecraft:armor_stand] if entity Mk42_1 unless entity Mk42_2 run function superb_warfare:mk42/load

    #
    execute if entity @e[tag=Mk42_1,type=minecraft:armor_stand] if entity Mk42_2 unless entity Mk42_1 run function superb_warfare:mk42/load

    #
    execute if entity @e[tag=Mk42_1,type=minecraft:armor_stand] unless entity Mk42_1 unless entity Mk42_2 run function superb_warfare:mk42/load

#歸零

    #開火
    execute unless entity @e[tag=Mk42_target] run scoreboard players set fire Mk42_time 0

#刪除假人

    #Mk42_2
    execute unless entity @e[tag=Mk42_1,type=armor_stand] if entity Mk42_2 run player Mk42_2 kill

    #Mk42_1
    execute unless entity @e[tag=Mk42_1,type=armor_stand] if entity Mk42_1 run player Mk42_1 kill
