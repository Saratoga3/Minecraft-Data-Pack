#持續檢測

#召喚雇傭兵：

    #如果不存在雇傭兵，且有任意玩家，就讓召喚分數+1
    execute unless entity mercenary if entity @a run scoreboard players add spawn mercenary_set 1

    #如果分數到達，且沒有雇傭兵，就召喚雇傭兵
    execute if score spawn mercenary_set >= spawn_yes mercenary_set unless entity mercenary run function mercenary:spawn

    #如果分數到達，就重置召喚分數
    execute if score spawn mercenary_set >= spawn_yes mercenary_set run scoreboard players set spawn mercenary_set 0

    #如果雇傭兵不在mercenary隊伍中，就執行刷新檢測
    execute as @e[tag=mercenary,team=!mercenary] run function mercenary:load

#事前準備：

    #所有實體中，不存在主人標籤，且該實體也不是雇傭兵，且他有"mercenary的狗牌"，就給他主人標籤
    execute as @e at @s unless entity @e[tag=owner] unless entity @s[tag=mercenary] if data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, id: "minecraft:totem_of_undying"}] run tag @s add owner

    #被動模式

        #不存在主人，就給雇傭兵被動攻擊標籤
        execute unless entity @e[tag=owner] unless entity @e[tag=proactive_attack] run tag @e[tag=mercenary] add proactive_attack

        #主人的"mercenary的狗牌"位於副手，就給雇傭兵被動攻擊標籤
        execute as @e[tag=owner] unless entity @e[tag=proactive_attack] if data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, Slot: -106b, id: "minecraft:totem_of_undying"}] run tag @e[tag=mercenary] add proactive_attack

        #主人距離雇傭兵太遠，就給雇傭兵被動攻擊標籤(與超過距離就傳送衝突)
        #execute as @e[tag=owner] at @s unless entity @e[tag=proactive_attack] if entity @e[tag=mercenary,distance=30..100] run tag @e[tag=mercenary] add proactive_attack

        #主人距離雇傭兵近點，且主人的"mercenary的狗牌"不是位於副手，就移除雇傭兵被動攻擊標籤(與超過距離就傳送衝突)
        #execute as @e[tag=owner] at @s if entity @e[tag=proactive_attack] if entity @e[tag=mercenary,distance=..30] unless data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, Slot: -106b, id: "minecraft:totem_of_undying"}] run tag @e[tag=mercenary] remove proactive_attack

        #主人的"mercenary的狗牌"不是位於副手，就移除雇傭兵被動攻擊標籤
        execute as @e[tag=owner] at @s if entity @e[tag=proactive_attack] unless data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, Slot: -106b, id: "minecraft:totem_of_undying"}] run tag @e[tag=mercenary] remove proactive_attack

    #主人若不在mercenary隊伍，就將他加入
    execute as @e[tag=owner] unless entity @s[team=mercenary] run team join mercenary

    #不是主人，也不是雇傭兵，但他在mercenary隊伍，就將他移除
    execute as @e[tag=!owner,tag=!mercenary] if entity @s[team=mercenary] run team leave @s

#模式選擇：

    #吃食物模式

        #雇傭兵有不能吃食物的標籤，且他飢餓值<=19，就移除他身上不能吃食物的標籤
        execute as @e[tag=eat_no] if score mercenary food matches ..19 run tag @s remove eat_no

        #被動模式

            #雇傭兵沒有不能吃食物的標籤，且存在被動攻擊標籤，且他飢餓值<=19，就判斷他能不能吃食物
            execute as @e[tag=mercenary] unless entity @s[tag=eat_no] if entity @e[tag=proactive_attack] if score mercenary food matches ..19 run function mercenary:passive_eat_no

        #主動模式

            #雇傭兵沒有不能吃食物的標籤，且不存在被動攻擊標籤，且他飢餓值<=19，就判斷他能不能吃食物
            execute as @e[tag=mercenary] unless entity @s[tag=eat_no] unless entity @e[tag=proactive_attack] if score mercenary food matches ..19 run function mercenary:proactive_eat_no

        #存在雇傭兵，且不存在不能吃食物標籤，就讓吃食物時間分數+1
        execute if entity @e[tag=mercenary] unless entity @e[tag=eat_no] run scoreboard players add mercenary_eat mercenary_set 1

        #存在雇傭兵，且不存在不能吃食物標籤(就是可以吃)，且分數到達，就停止行為(吃完食物要停止行為)
        execute if entity @e[tag=mercenary] unless entity @s[tag=eat_no] if score mercenary_eat mercenary_set >= eat mercenary_set run player mercenary stop

        #不存在不能吃食物標籤(就是可以吃)，且分數到達，且雇傭兵飢餓值<=19，就吃食物
        execute unless entity @e[tag=eat_no] if score mercenary_eat mercenary_set >= eat mercenary_set if score mercenary food matches ..19 run player mercenary use continue

        #存在雇傭兵，且不存在不能吃食物標籤(就是可以吃)，且分數到達，就重置分數
        execute if entity @e[tag=mercenary] unless entity @s[tag=eat_no] if score mercenary_eat mercenary_set >= eat mercenary_set run scoreboard players set mercenary_eat mercenary_set 0

    #被動模式_看敵人

        #雇傭兵自主看敵人
        execute if entity @e[tag=proactive_attack] run function mercenary:passive_look_enemy

    #被動模式_攻擊敵人

        #存在雇傭兵，就讓攻擊間隔分數+1
        execute if entity @e[tag=mercenary] run scoreboard players add standby_attack mercenary_set 1

        #雇傭兵自主攻擊敵人
        execute if score standby_attack mercenary_set >= attack mercenary_set if entity @e[tag=proactive_attack] run function mercenary:passive_attack_enemy

        #分數到達，就重置分數
        execute if score standby_attack mercenary_set >= attack mercenary_set run scoreboard players set standby_attack mercenary_set 0

    #跟隨模式

        #存在主人，且不存在被動攻擊標籤，就讓雇傭兵跟隨主人
        execute if entity @e[tag=owner] unless entity @e[tag=proactive_attack] run function mercenary:follow_mode

    #主動模式_看敵人

        #存在主人，且不存在被動攻擊標籤，就讓雇傭兵看距離主人最近的敵人
        execute if entity @e[tag=owner] unless entity @e[tag=proactive_attack] run function mercenary:proactive_look_enemy

    #主動模式_攻擊敵人

        #存在主人，且不存在被動攻擊標籤，就讓攻擊間隔分數+1
        execute if entity @e[tag=owner] unless entity @e[tag=proactive_attack] run scoreboard players add proactive_attack mercenary_set 1

        #存在主人，且不存在被動攻擊標籤，且分數到達，就讓雇傭兵攻擊敵人
        execute if score proactive_attack mercenary_set >= attack mercenary_set if entity @e[tag=owner] unless entity @e[tag=proactive_attack] run function mercenary:proactive_attack_enemy

        #分數到達，就重置分數
        execute if score proactive_attack mercenary_set >= attack mercenary_set run scoreboard players set proactive_attack mercenary_set 0

#附加功能：

    #傳送

        #扔出信物

            #主人身上沒有傳送標籤，且有"mercenary的狗牌"，就給主人傳送標籤
            execute as @e[tag=owner] unless entity @s[tag=transmit] if data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, id: "minecraft:totem_of_undying"}] run tag @s add transmit

            #主人身上有傳送標籤，且沒有"mercenary的狗牌"，就將雇傭兵傳送至主人的位置
            execute as @e[tag=owner] if entity @s[tag=transmit] unless data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, id: "minecraft:totem_of_undying"}] run function mercenary:transmit

        #跳躍次數

            #如果雇傭兵XZ坐標=!跳躍XZ坐標，且跳躍次數=0，就將雇傭兵XZ坐標存入跳躍XZ坐標
            execute if score mercenary jump matches 0 unless score jump_poX mercenary_set = mercenary_posX mercenary_set run scoreboard players operation jump_poX mercenary_set = mercenary_posX mercenary_set
            execute if score mercenary jump matches 0 unless score jump_poZ mercenary_set = mercenary_posZ mercenary_set run scoreboard players operation jump_poZ mercenary_set = mercenary_posZ mercenary_set

            #如果達到跳躍次數，就判斷是否能傳送
            execute if score mercenary jump >= jump_transmit_yes mercenary_set run function mercenary:jump

        #超過距離(與超過距離的被動攻擊衝突)

            #雇傭兵距離主人太遠，且雇傭兵沒有被動攻擊標籤，就將雇傭兵傳送至主人的位置
            execute as @e[tag=mercenary] at @s at @e[tag=owner,distance=30..] unless entity @s[tag=proactive_attack] run tp ~ ~ ~

    #落地水(實裝後可以移除超過距離就傳送)

    #舉盾牌

#顯示雇傭兵各項數值：

    #存在主人，就讓主人查看雇傭兵各項數值
    execute if entity @e[tag=owner] run function mercenary:scoreboard

#停止行為：

    #存在主人，且不存在停止2，且不存在被動攻擊標籤，就給雇傭兵停止2標籤
    execute if entity @e[tag=owner] unless entity @e[tag=mercenary_stop2] unless entity @e[tag=proactive_attack] run tag @e[tag=mercenary] add mercenary_stop2

    #存在主人，且他身上沒有"mercenary的狗牌"，就移除他身上傳送標籤
    execute as @e[tag=owner] unless data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, id: "minecraft:totem_of_undying"}] run tag @s remove transmit

    #存在主人，且他身上沒有"mercenary的狗牌"，就移除他身上停止標籤
    execute as @e[tag=owner] unless data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, id: "minecraft:totem_of_undying"}] run tag @e[tag=mercenary_stop] remove mercenary_stop

    #存在主人，且他身上沒有"mercenary的狗牌"，就移除他身上主人標籤
    execute as @e[tag=owner] unless data entity @s Inventory[{components: {"minecraft:item_name": '"mercenary的狗牌"'}, id: "minecraft:totem_of_undying"}] run tag @s remove owner

    #主人副手有信物or超過距離

        #如果存在被動攻擊標籤，且存在停止2標籤，就讓雇傭兵停止行為
        execute if entity @e[tag=proactive_attack] if entity @e[tag=mercenary_stop2] run function mercenary:mercenary_stop2

    #不存在主人

        #如果不存在主人，且存在停止2標籤，就讓雇傭兵停止行為
        execute unless entity @e[tag=owner] if entity @e[tag=mercenary_stop2] run function mercenary:mercenary_stop2

    #不存在雇傭兵

        #如果不存在雇傭兵，就移除傳送標籤
        execute unless entity @e[tag=mercenary] if entity @e[tag=transmit] run tag @e remove transmit
