#刷新檢測

#自檢

    #清除目標的發光狀態
    execute as @e[tag=mini_turret_target] run data modify entity @s Glowing set value false

    #清除所有目標
    execute as @e[tag=mini_turret_target] run tag @s remove mini_turret_target

#標籤

    #mini_turret_base=基座

    #mini_turret_target=目標

    #mini_turret_bullet=子彈

    #mini_turret_object=目的

#常駐載入區

    #將0,0設為常駐載入區
    forceload add 0 0 0 0

#記分板

    #mini_turret_time

        #清除小型機槍塔記分板
        scoreboard objectives remove mini_turret_time

        #建立小型機槍塔記分板
        scoreboard objectives add mini_turret_time dummy

        #設定開火時間分數
        scoreboard players set fire mini_turret_time 40

        #開火間隔

            #設定開火間隔分數
            scoreboard players set interval mini_turret_time 2

            #調整開火間隔分數
            scoreboard players operation interval mini_turret_time += fire mini_turret_time

        #設定引信時間分數
        scoreboard players set fuze mini_turret_time 60

        #顯示小型機槍塔記分板
        #scoreboard objectives setdisplay sidebar mini_turret_time

#優化：如果子彈反彈到盔甲座附近，就刪除子彈
