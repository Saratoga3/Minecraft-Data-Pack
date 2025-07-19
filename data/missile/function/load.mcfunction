#刷新檢測

#標籤：

    #基座：

        #missile_base基座

    #目標：

        #missile_no非目標

        #missile_target目標

        #missile_player目標是玩家

    #導彈：

        #missile導彈

        #missile_yes冷發射確定

        #missile_mark標記

        #missile_mark2標記2

        #missile_object目的

        #missile_tail尾煙

#記分板名稱：

    #missile_time導彈時間

    #target_advance_range目標前置量

#記分板標籤：

    #導彈時間：

        #missile_base基座分數

        #missile_yes導彈冷卻分數

        #missile導彈分數

        #missile_safety保險分數

        #missile_motion運動分數

        #missile_no自毀臨界點分數

    #目標前置量：

        #posX當前座標X分數

        #posY當前座標Y分數

        #posZ當前座標Z分數

        #prevPosX先前座標X分數

        #prevPosY先前座標Y分數

        #prevPosZ先前座標Z分數

        #displacementX位移量X分數

        #displacementY位移量Y分數

        #displacementZ位移量Z分數

        #constant常數

#常駐載入區：

    #將0,0區塊設為常駐載入區
    forceload add 0 0 0 0

#記分板：

    #導彈時間：

        #刪除導彈時間記分板
        scoreboard objectives remove missile_time

        #建立導彈時間記分板
        scoreboard objectives add missile_time dummy

        #設定基座分數
        scoreboard players set missile_base missile_time 3

        #設定導彈冷卻分數
        scoreboard players set missile_yes missile_time 10

        #設定導彈分數
        scoreboard players set missile missile_time 0

        #設定保險分數
        scoreboard players set missile_safety missile_time 45

        #設定運動分數
        scoreboard players set missile_motion missile_time 0

        #設定自毀臨界點分數
        scoreboard players set missile_no missile_time 400

        #顯示導彈時間記分板
        #scoreboard objectives setdisplay sidebar missile_time

    #目標前置量：

        #刪除目標前置量記分板
        scoreboard objectives remove target_advance_range

        #建立目標前置量記分板
        scoreboard objectives add target_advance_range dummy

        #重製時間分數
        scoreboard players reset time target_advance_range

        #設定常數分數
        scoreboard players set constant target_advance_range 10

        #顯示目標前置量記分板
        #scoreboard objectives setdisplay sidebar target_advance_range

#優化：重寫此系統
