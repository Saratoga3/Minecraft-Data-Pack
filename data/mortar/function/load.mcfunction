#刷新檢測

#標籤

    #mortar_base=迫擊砲基座

    #mortar_user=迫擊砲操作者

    #mortar_cannonball=砲彈

    #mortar_object=砲彈目的

#射擊參數

    #俯仰角(45~85)

    #方位角(0~359)

    #砲彈數量(0~99)

#常駐載入區

    #將0,0設為常駐載入區
    forceload add 0 0 0 0

#自檢

    #讓基座看向指定方向(歸零)
    execute as @e[tag=mortar_base] at @s run tp @s ~ ~ ~ 0 0

#隊伍

    #清除mortar隊伍
    team remove mortar

    #建立mortar隊伍
    team add mortar

    #設定mortar隊伍顏色為aqua
    team modify mortar color green

#記分板

    #mortar_set

        #清除mortar_set記分板
        scoreboard objectives remove mortar_set

        #建立mortar_set記分板
        scoreboard objectives add mortar_set trigger

        #砲彈

            #設定開火等待時間分數
            scoreboard players set fire mortar_set 60

            #設定開火剩餘時間分數(開火等待時間的備份)
            scoreboard players set remaining_fire mortar_set 60

            #設定砲彈最短起爆引信時間分數
            scoreboard players set cannonball_shortest_fuze mortar_set 6

            #設定砲彈引信時間分數
            scoreboard players set cannonball_fuze mortar_set 200

        #操作者

            #設定操作分數(是否能操作迫擊砲)
            scoreboard players set operate mortar_set 0

            #設定計數分數(校正回歸)
            #scoreboard players set count mortar_set -1

            #設定常數分數
            scoreboard players set constant mortar_set 100000

            #設定常數分數
            scoreboard players set constant2 mortar_set 100

        #俯仰角

            #設定迫擊砲俯仰角分數
            scoreboard players set mortar_pitch_angle mortar_set 0

        #方位角

            #設定迫擊砲方位角分數
            scoreboard players set mortar_azimuth_angle mortar_set -1

            #設定360度分數
            scoreboard players set azimuth_angle_360 mortar_set 360

        #顯示mortar_set記分板
        #scoreboard objectives setdisplay sidebar mortar_set

    #mortar

        #清除mortar記分板
        scoreboard objectives remove mortar

        #建立mortar記分板
        scoreboard objectives add mortar dummy

        #顯示mortar記分板
        scoreboard objectives setdisplay sidebar.team.green mortar

#優化：砲彈要有散布
#新增：操作者決定砲彈速度
#優化：開炮要消耗物品砲彈
#新增：高爆彈、照明彈、集束彈
