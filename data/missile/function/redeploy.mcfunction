#重新佈署

#導彈消失：

    #如果不存在導彈，且導彈分數>導彈冷卻分數，就重置導彈分數
    execute unless entity @e[tag=missile] if score missile missile_time > missile_yes missile_time run scoreboard players set missile missile_time 0

#目標消失：

    #如果不存在目標，就執行目標消失函數
    execute unless entity @e[tag=missile_target] run function missile:exceptions_target_disappear

#基座：

    #如果存在標籤(missile_base)，就開始攻擊
    execute if entity @e[tag=missile_base] run function missile:attack

    #標籤(missile_base)發光
    #execute as @e[tag=missile_base] unless data entity @s {Glowing:1b} run data modify entity @s Glowing set value true

    #如果存在基座，且基座是盔甲座，且不存在目標，就讓基座自轉
    execute if entity @e[tag=missile_base,type=armor_stand] unless entity @e[tag=missile_target] run function missile:magic_circle

    #如果存在基座，且存在目標，就設定基座分數=3
    execute if entity @e[tag=missile_base] if entity @e[tag=missile_target] run scoreboard players set missile_base missile_time 3
