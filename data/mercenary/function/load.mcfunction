#刷新檢測

#自檢：

    #給雇傭兵標籤
    execute as mercenary if entity @s[tag=!mercenary] run tag @s add mercenary

    #清除雇傭兵所有效果
    effect clear @e[tag=mercenary]

    #給雇傭兵發光效果
    effect give @e[tag=mercenary] glowing infinite 0 true

    #如果有玩家持有"mercenary的狗牌"，就清除該玩家的"mercenary的狗牌"
    execute as @a if data entity @s Inventory[{components:{"minecraft:item_name":'"mercenary的狗牌"'},id:"minecraft:totem_of_undying"}] run clear @s minecraft:totem_of_undying[minecraft:item_name='"mercenary的狗牌"']

    #如果雇傭兵身上沒有"mercenary的狗牌"，就給他1個"mercenary的狗牌"
    execute as @e[tag=mercenary] unless data entity @s Inventory[{components:{"minecraft:item_name":'"mercenary的狗牌"'},id:"minecraft:totem_of_undying"}] run give @s minecraft:totem_of_undying[item_name='"mercenary的狗牌"',custom_name='[{"text":"mercenary的狗牌","color":"aqua"}]',lore=['[{"text":"","italic":false}]','[{"text":"免費勞工之一，精通近距離戰鬥","color":"light_purple"}]']] 1

#隊伍：

    #清除mercenary隊伍
    team remove mercenary

    #建立mercenary隊伍
    team add mercenary

    #設定mercenary隊伍沒有友傷
    team modify mercenary friendlyFire false

    #設定mercenary隊伍顏色為aqua
    team modify mercenary color aqua

    #將雇傭兵加入mercenary隊伍
    execute as @e[tag=mercenary] run team join mercenary

#記分板：

    #雇傭兵設定

        #清除mercenary_set記分板
        scoreboard objectives remove mercenary_set

        #建立mercenary_set記分板
        scoreboard objectives add mercenary_set dummy

        #設定召喚等待分數
        scoreboard players set spawn_yes mercenary_set 150

        #設定攻擊間隔分數
        scoreboard players set attack mercenary_set 12

        #設定吃食物時間分數
        scoreboard players set eat mercenary_set 35

        #設定跳躍幾次可以傳送分數
        scoreboard players set jump_transmit_yes mercenary_set 3

    #雇傭兵

        #清除mercenary記分板
        scoreboard objectives remove mercenary

        #建立mercenary記分板
        scoreboard objectives add mercenary dummy

        #顯示mercenary記分板
        scoreboard objectives setdisplay sidebar.team.aqua mercenary

#新增：舉盾牌
#新增：給鐵劍
#新增：顯示各項數值(負面狀態、食物數量、武器耐久值)
#新增：負面狀態就喝牛奶
#新增：落地水
#新增：水上漂浮
#優化：取消獨立鎖敵資料庫，改用共用鎖敵資料庫
#bug：雇傭兵傳送時，應停止動作
#bug：
