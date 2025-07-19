#刷新檢測

#標籤

    #howitzer_base=榴彈砲基座

    #howitzer_user=榴彈砲操作者

    #howitzer_cannonball=砲彈

    #howitzer_object=砲彈目的

#射擊參數

    #俯仰角(0~85)

    #方位角(0~359)

    #砲彈數量(0~99)

#常駐載入區

    #將0,0設為常駐載入區
    forceload add 0 0 0 0

#自檢

    #讓基座看向指定方向(歸零)
    execute as @e[tag=howitzer_base] at @s run tp @s ~ ~ ~ 0 0

#隊伍

    #清除howitzer隊伍
    team remove howitzer

    #建立howitzer隊伍
    team add howitzer

    #設定howitzer隊伍顏色為aqua
    team modify howitzer color gold

#記分板

    #howitzer_set

        #清除howitzer_set記分板
        scoreboard objectives remove howitzer_set

        #建立howitzer_set記分板
        scoreboard objectives add howitzer_set trigger

        #基座

            #設定建立基座等待時間分數
            scoreboard players set base_interval howitzer_set 20

            #設定基座當前時間分數
            scoreboard players operation base howitzer_set = base_interval howitzer_set

        #砲彈

            #設定開火等待時間分數
            scoreboard players set fire howitzer_set 100

            #設定開火剩餘時間分數(開火等待時間的備份)
            scoreboard players set remaining_fire howitzer_set 100

            #設定砲彈最短起爆引信時間分數
            scoreboard players set cannonball_shortest_fuze howitzer_set 20

            #設定砲彈引信時間分數
            scoreboard players set cannonball_fuze howitzer_set 1200

        #操作者

            #設定操作分數(是否能操作榴彈砲)
            scoreboard players set operate howitzer_set 0

            #設定常數分數
            scoreboard players set constant howitzer_set 100000

            #設定常數分數
            scoreboard players set constant2 howitzer_set 100

        #俯仰角

            #設定榴彈砲俯仰角分數
            scoreboard players set howitzer_pitch_angle howitzer_set 0

        #方位角

            #設定榴彈砲方位角分數
            scoreboard players set howitzer_azimuth_angle howitzer_set -1

            #設定360度分數
            scoreboard players set azimuth_angle_360 howitzer_set 360

        #顯示howitzer_set記分板
        #scoreboard objectives setdisplay sidebar howitzer_set

    #howitzer

        #清除howitzer記分板
        scoreboard objectives remove howitzer

        #建立howitzer記分板
        scoreboard objectives add howitzer dummy

        #顯示howitzer記分板
        scoreboard objectives setdisplay sidebar.team.gold howitzer

#優化：砲彈要有散布
#新增：操作者決定砲彈速度
#優化：開炮要消耗物品砲彈
#新增：高爆彈、照明彈、集束彈
