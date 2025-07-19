#加載終端高空防禦導彈導彈

#重新佈署

    #刪除該區塊的強加載
    execute at @e[tag=THADD_missile_forceload] run forceload remove ~-32 ~-32 ~32 ~32

    #刪除加載_導彈
    execute as @e[tag=THADD_missile_forceload] run kill @s

#佈署

    #在導彈的位置，召喚加載_導彈
    execute at @e[tag=THADD_missile] run summon marker ~ ~ ~ {Tags:["THADD_missile_forceload"]}

    #如果存在加載_導彈，就強加載該區塊
    execute at @e[tag=THADD_missile_forceload] run forceload add ~-32 ~-32 ~32 ~32

#例外狀況

    #如果不存在導彈，就刪除該區塊的強加載
    execute unless entity @e[tag=THADD_missile] at @e[tag=THADD_missile_forceload] run forceload remove ~-32 ~-32 ~32 ~32

    #如果不存在導彈，且存在加載_導彈，就刪除加載_導彈
    execute unless entity @e[tag=THADD_missile] as @e[tag=THADD_missile_forceload] run kill @s
