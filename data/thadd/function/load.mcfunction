#刷新檢測

#標籤

    #基座

        #THADD_commander終端高空防禦導彈指揮車(未採用)

        #THADD_radar終端高空防禦導彈雷達車

        #THADD_launching終端高空防禦導彈發射車

    #目標

        #THADD_target終端高空防禦導彈目標

        #THADD_target_offset終端高空防禦導彈目標前置量

    #導彈

        #THADD_missile終端高空防禦導彈

        #THADD_tail防空導彈尾煙

        #THADD_object目的

        #THADD_front_mark前標記

        #THADD_later_mark後標記

#記分板

    #THADD_set終端高空防禦導彈設定

        #基座

            #commander管制車(未採用)

            #radar雷達車

            #launching發射車

        #導彈

            #missile導彈當前時間

            #fire發射開始時間

            #flight飛行開始時間

            #hot_launch熱發射開始時間

            #safety保險解除時間

            #fuze引信觸發時間

        #常數

            #constant常數1(前置量放大倍率)

            #constant_2常數2(距離縮小倍率)

#常駐載入區

    #設為常駐載入區
    forceload add 0 0 0 0

#隊伍

    #清除終端高空防禦導彈隊伍
    team remove THADD

    #建立終端高空防禦導彈隊伍
    team add THADD

    #設定終端高空防禦導彈隊伍顏色
    team modify THADD color red

#記分板

    #終端高空防禦導彈設定

        #刪除終端高空防禦導彈設定記分板
        scoreboard objectives remove THADD_set

        #建立終端高空防禦導彈設定記分板
        scoreboard objectives add THADD_set dummy

        #基座

            #設定佈署等待時間
            scoreboard players set base_interval THADD_set 20

        #導彈

            #設定導彈當前時間
            scoreboard players set missile THADD_set 0

            #設定發射開始時間
            scoreboard players set fire THADD_set 20

            #設定飛行開始時間
            scoreboard players set flight THADD_set 22

            #設定熱發射開始時間
            scoreboard players set hot_launch THADD_set 25

            #設定保險解除時間
            scoreboard players set safety THADD_set 30

            #設定引信觸發時間
            scoreboard players set fuze THADD_set 1200

        #常數

            #設定常數1
            scoreboard players set constant THADD_set 20

            #設定常數2
            scoreboard players set constant_2 THADD_set 100

        #顯示終端高空防禦導彈設定記分板
        #scoreboard objectives setdisplay sidebar THADD_set

    #math_sqrt

        #顯示math_sqrt記分板
        #scoreboard objectives setdisplay sidebar math_sqrt

#優化：雷達站要能目視看到目標，才鎖定目標
#優化：增加指揮站，讓玩家控制終端高空防禦導彈系統
#bug：目標超過雷達站範圍，會出現白光(目標變成非目標應該要紅光變無光)
#bug：導彈消失(被攔截等)，標記並沒有被清除
