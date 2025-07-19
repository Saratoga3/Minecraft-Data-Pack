#刷新檢測

#自檢

    #清除目標的發光狀態
    execute as @e[tag=CIWS_target] run data modify entity @s Glowing set value false

    #清除所有目標
    execute as @e[tag=CIWS_target] run tag @s remove CIWS_target

#標籤

    #CIWS_base=基座

    #CIWS_target=目標

    #CIWS_target_offset=目標前置量

    #CIWS_bullet=子彈

    #CIWS_object=目的

#常駐載入區

    #將0,0設為常駐載入區
    forceload add 0 0 0 0

#記分板

    #CIWS_set

        #清除CIWS_set記分板
        scoreboard objectives remove CIWS_set

        #建立CIWS_set記分板
        scoreboard objectives add CIWS_set dummy

        #開火

            #設定開火準備時間
            scoreboard players set prepare CIWS_set 10

            #設定開火間隔時間
            scoreboard players set interval CIWS_set 1

            #設定子彈引信時間
            scoreboard players set fuze CIWS_set 50

        #彈道

            #設定常數(玩家10，夜魅12)
            scoreboard players set constant CIWS_set 12

            #設定常數2(玩家225，夜魅245)
            scoreboard players set constant_2 CIWS_set 245

        #前置量

            #設定常數3(玩家12，夜魅10)
            scoreboard players set constant_3 CIWS_set 10

            #設定常數4(俯衝)
            scoreboard players set constant_4 CIWS_set 8

            #設定常數5(爬升)
            scoreboard players set constant_5 CIWS_set 6

        #顯示CIWS_set記分板
        #scoreboard objectives setdisplay sidebar CIWS_set

    #math_sqrt

        #顯示math_sqrt記分板
        #scoreboard objectives setdisplay sidebar math_sqrt

#重寫：嘗試從獨立改成共用系統
#優化：如果子彈反彈到盔甲座附近，就刪除子彈
