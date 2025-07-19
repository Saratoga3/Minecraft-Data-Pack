#刷新檢測

#標籤

    #基座

        #anti_aircraft_missile_control防空導彈控制站(未採用)

        #anti_aircraft_missile_radar防空導彈雷達站

        #anti_aircraft_missile_launching防空導彈發射站

    #加載區塊標記

        #anti_aircraft_missile_control_forceload防空導彈控制站(未採用)

        #anti_aircraft_missile_radar_forceload加載_防空導彈雷達站

        #anti_aircraft_missile_launching_forceload加載_防空導彈發射站

        #anti_aircraft_missile_forceload_加載_防空導彈

    #導彈

        #anti_aircraft_missile防空導彈

        #anti_aircraft_missile_tail防空導彈尾煙

        #anti_aircraft_missile_object目的

        #anti_aircraft_missile_front_mark前標記

        #anti_aircraft_missile_later_mark後標記

    #目標

        #anti_aircraft_missile_target防空導彈目標

        #anti_aircraft_missile_target_offset防空導彈目標前置量

#記分板

    #anti_aircraft_missile_set防空導彈設定

        #基座

            #control管制站(未採用)

            #radar雷達站

            #launching發射站

        #發射間隔

            #interval發射間隔時間

            #interval_timing間隔計時時間

        #導彈

            #missile導彈當前時間

            #fire發射時間

            #safety保險解除時間

            #hot_launch熱發射解除時間

            #exploding防爆時間

            #fuze引信觸發時間

        #常數

            #constant_1常數1(前置量放大倍率)

            #constant_2常數2(距離縮小倍率)

#常駐載入區

    #清除所有常駐載入區
    forceload remove all

    #將0,0區塊設為常駐載入區
    forceload add 0 0 0 0

#隊伍

    #清除防空導彈隊伍
    team remove anti_aircraft_missile

    #建立防空導彈隊伍
    team add anti_aircraft_missile

    #設定防空導彈隊伍顏色
    team modify anti_aircraft_missile color red

#記分板

    #防空導彈設定

        #刪除防空導彈設定記分板
        scoreboard objectives remove anti_aircraft_missile_set

        #建立防空導彈設定記分板
        scoreboard objectives add anti_aircraft_missile_set dummy

        #基座

            #設定佈署等待時間
            scoreboard players set base_interval anti_aircraft_missile_set 20

        #發射間隔

            #設定發射間隔時間
            scoreboard players set interval anti_aircraft_missile_set 20

            #設定間隔計時時間
            scoreboard players operation interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set

        #導彈

            #設定發射時間
            scoreboard players set fire anti_aircraft_missile_set 20

            #設定保險解除時間(冷發射:發射-保險=35)
            scoreboard players set safety anti_aircraft_missile_set 40

            #設定熱發射解除時間
            scoreboard players set hot_launch anti_aircraft_missile_set 100

            #設定引信觸發時間
            scoreboard players set fuze anti_aircraft_missile_set 1200

        #常數

            #設定常數1(前置量放大倍率2、5)
            scoreboard players set constant_1 anti_aircraft_missile_set 2

            #設定常數2(距離縮小倍率80、235)
            scoreboard players set constant_2 anti_aircraft_missile_set 80

        #顯示防空導彈設定記分板
        #scoreboard objectives setdisplay sidebar anti_aircraft_missile_set

    #math_sqrt

        #顯示math_sqrt記分板
        #scoreboard objectives setdisplay sidebar math_sqrt

#修改-射程：over_radar、glowing、target這3個文件

#優化：雷達站要能目視看到目標，才鎖定目標
#優化：增加指揮站，讓玩家控制防空導彈系統
#優化：目標前置量距離，使每次攔截都能100%成功
#bug：目標超過雷達站範圍，會出現白光(目標變成非目標應該要紅光變無光)
#bug：如果目標消失，導彈會立即攻擊新目標(導彈應該100%自爆)
#bug：發射站需要全部消失，加載區塊才會移除
#bug：導彈消失時，區塊強加載也會跟著消失，會導致尾焰、前/後標等來不及刪除
