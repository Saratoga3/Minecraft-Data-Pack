#加載區塊

#基座：

    #如果不存在區塊標記_基座，就在基座的位置，召喚區塊標記_基座
    execute unless entity @e[tag=missile_forceload] at @e[tag=missile_base] run summon area_effect_cloud ~ ~ ~ {Tags:["missile_forceload"],Duration:2147483647}

    #如果存在區塊標記_基座，就強加載該區塊
    execute if entity @e[tag=missile_forceload] at @e[tag=missile_forceload] in overworld run forceload add ~ ~ ~ ~

    #如果不存在基座，就刪除該區塊的強加載
    execute unless entity @e[tag=missile_base] at @e[tag=missile_forceload] in overworld run forceload remove ~ ~ ~ ~

    #如果不存在基座，就刪除區塊標記_基座
    execute unless entity @e[tag=missile_base] as @e[tag=missile_forceload] run kill @s

#導彈：

    #區塊標記_導彈：

        #如果missile_forceload=設定時間，就刪除該區塊的強加載
        execute at @e[tag=missile_forceload1] in overworld run forceload remove ~ ~ ~ ~

        #如果missile_forceload=設定時間，就刪除區塊標記_導彈
        execute as @e[tag=missile_forceload1] run kill @s

        #如果不存在區塊標記_導彈，就在導彈的位置，召喚區塊標記_導彈
        execute unless entity @e[tag=missile_forceload1] at @e[tag=missile] run summon area_effect_cloud ~ ~ ~ {Tags:["missile_forceload1"],Duration:2147483647}

        #如果存在區塊標記_導彈，就強加載該區塊
        execute at @e[tag=missile_forceload1] in overworld run forceload add ~ ~ ~ ~

        #如果不存在導彈，就刪除該區塊的強加載
        execute unless entity @e[tag=missile] at @e[tag=missile_forceload1] in overworld run forceload remove ~ ~ ~ ~

        #如果不存在導彈，且存在區塊標記_導彈，就刪除區塊標記_導彈
        execute unless entity @e[tag=missile] if entity @e[tag=missile_forceload1] as @e[tag=missile_forceload1] run kill @s
