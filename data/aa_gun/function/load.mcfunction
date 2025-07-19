#刷新檢測

#自檢

    #清除目標的發光狀態
    execute as @e[tag=AA_gun_target] run data modify entity @s Glowing set value false

    #清除所有目標
    execute as @e[tag=AA_gun_target] run tag @s remove AA_gun_target

#標籤

    #AA_gun_base=基座

    #AA_gun_target=目標

    #AA_gun_bullet=子彈

    #AA_gun_object=目的

#常駐載入區

    #將0,0設為常駐載入區
    forceload add 0 0 0 0

#記分板

    #AA_gun_time

        #清除小型機槍塔記分板
        scoreboard objectives remove AA_gun_time

        #建立小型機槍塔記分板
        scoreboard objectives add AA_gun_time dummy

        #設定開火時間分數
        scoreboard players set fire AA_gun_time 10

        #開火間隔

            #設定開火間隔分數
            scoreboard players set interval AA_gun_time 10

            #調整開火間隔分數
            scoreboard players operation interval AA_gun_time += fire AA_gun_time

        #設定引信時間分數
        scoreboard players set fuze AA_gun_time 40

        #顯示小型機槍塔記分板
        #scoreboard objectives setdisplay sidebar AA_gun_time
