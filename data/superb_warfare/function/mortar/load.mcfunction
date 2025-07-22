#刷新檢測

#記分板

    #迫擊砲陣地

        #(不啟用)
        #scoreboard objectives remove mortar_positions

        #
        scoreboard objectives add mortar_positions dummy

        #
        #scoreboard objectives setdisplay sidebar mortar_positions

    #開火時間

        #
        scoreboard objectives remove mortar_time

        #
        scoreboard objectives add mortar_time dummy

        #
        #scoreboard objectives setdisplay sidebar mortar_time

    #抽獎機率

        #
        scoreboard objectives remove mortar_probability 

        #
        scoreboard objectives add mortar_probability dummy

        #
        #scoreboard objectives setdisplay sidebar mortar_probability

    #開火參數

        #(不啟用)
        #scoreboard objectives remove mortar_parameter

        #
        scoreboard objectives add mortar_parameter dummy

        #散布模式(有散布=1、無散布=2)
        execute unless score spread mortar_parameter matches 0.. run scoreboard players set spread mortar_parameter 1

        #砲擊模式(多點=1、單點=2)
        execute unless score bombardment mortar_parameter matches 0.. run scoreboard players set bombardment mortar_parameter 1

        #開火模式(同時=1、持續=2)
        execute unless score firing mortar_parameter matches 0.. run scoreboard players set firing mortar_parameter 1

        #砲擊次數
        execute unless score count mortar_parameter matches 0.. run scoreboard players set count mortar_parameter 0

        #
        scoreboard objectives setdisplay sidebar mortar_parameter

    #非OP玩家

        #
        scoreboard objectives remove mortar_no_op

        #
        scoreboard objectives add mortar_no_op trigger

        #
        #scoreboard objectives setdisplay sidebar mortar_no_op

#召喚砲手

    #
    execute at @e[tag=mortar_1,type=armor_stand] unless entity mortar_2 run player mortar_2 spawn at ^ ^ ^1 facing ~ 20 in minecraft:overworld in survival

#初始化

    #
    function superb_warfare:mortar/initialization

#記錄迫擊砲陣地

    #
    execute if entity @e[tag=mortar_1,type=armor_stand] unless score mortar_1 mortar_positions matches 1 run scoreboard players set mortar_1 mortar_positions 1

    #
    execute if entity @e[tag=mortar_2,type=armor_stand] unless score mortar_2 mortar_positions matches 1 run scoreboard players set mortar_2 mortar_positions 1

    #
    execute if entity @e[tag=mortar_3,type=armor_stand] unless score mortar_3 mortar_positions matches 1 run scoreboard players set mortar_3 mortar_positions 1

    #
    execute if entity @e[tag=mortar_4,type=armor_stand] unless score mortar_4 mortar_positions matches 1 run scoreboard players set mortar_4 mortar_positions 1

    #
    execute if entity @e[tag=mortar_5,type=armor_stand] unless score mortar_5 mortar_positions matches 1 run scoreboard players set mortar_5 mortar_positions 1

#假人

    #mortar_1：觀測手

    #mortar_2：砲手

#備忘錄

    #設計手動呼叫砲擊的冷卻系統

    #設計針對移動中目標的前置量系統

    #設計攻擊自動鎖敵的目標需要回報狀態

    #設計使用者輸入不可選擇的炮擊座標需要回報該座標不可選擇

    #設計自動鎖敵不可選擇頭頂有方塊的敵對生物
