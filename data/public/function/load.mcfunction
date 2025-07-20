#刷新檢測

#友軍

    #清除友軍隊伍
    #team remove friendly_forces

    #建立友軍隊伍
    #team add friendly_forces

    #設定友軍隊伍沒有友傷
    #team modify friendly_forces friendlyFire false

#記分板
#function public:set/scoreboard

    #計時器

        #建立計時器記分板
        scoreboard objectives add pubic_time dummy

    #檢測血量

        #建立血量記分板
        scoreboard objectives add health health

        #顯示血量記分板
        scoreboard objectives setdisplay list health

    #時間

        #建立時間記分板
        scoreboard objectives add time dummy

#新增：將所有基座、玩家整合成同一隊伍，並關閉友傷
