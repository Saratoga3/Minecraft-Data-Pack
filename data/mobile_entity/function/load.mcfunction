#刷新檢測

#記分板

    #清除移動生物記分板
    scoreboard objectives remove mobile_entity

    #建立移動生物記分板
    scoreboard objectives add mobile_entity dummy

    #夜晚
    scoreboard players set summon_dark_set mobile_entity 1200

    #夜魅

        #高度
        scoreboard players set phantom_high_set mobile_entity 50

        #數量
        scoreboard players set phantom_count_set mobile_entity 4

    #殭屍

        #召喚
        #scoreboard players set zombie_summon_set mobile_entity 200

        #支援
        scoreboard players set zombie_support_set mobile_entity 600

    #顯示移動生物記分板
    #scoreboard objectives setdisplay sidebar mobile_entity

#新增：有機率在夜晚，且亮度低，且附近無玩家、無同類的草方塊上召喚殭屍
