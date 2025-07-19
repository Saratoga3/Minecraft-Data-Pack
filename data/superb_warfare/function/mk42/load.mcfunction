#刷新檢測

#記分板

    #開火時間

        #
        scoreboard objectives remove Mk42_time

        #
        scoreboard objectives add Mk42_time dummy

        #
        scoreboard objectives setdisplay sidebar Mk42_time

#召喚假人

    #Mk42_1
    execute at @e[tag=Mk42_1,type=armor_stand] unless entity Mk42_1 run player Mk42_1 spawn at ^-1 ^ ^1 facing ~ -90 in minecraft:overworld in creative

    #Mk42_2
    execute at @e[tag=Mk42_1,type=armor_stand] unless entity Mk42_2 run player Mk42_2 spawn at ^ ^ ^1 facing ~ -90 in minecraft:overworld in creative

#初始化

    #
    function superb_warfare:mk42/initialization

#假人

    #Mk42_1：砲手

    #Mk42_2：裝填手

#備忘錄

    #設計不能向看不到的目標開火

    #終止開發
