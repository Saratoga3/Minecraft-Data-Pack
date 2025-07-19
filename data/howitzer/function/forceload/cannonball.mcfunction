#砲彈

#重新佈署

    #刪除該區塊的強加載
    execute at @e[tag=howitzer_forceload_cannonball] run forceload remove ~ ~ ~ ~

    #刪除加載_砲彈
    execute as @e[tag=howitzer_forceload_cannonball] run kill @s

#佈署

    #在砲彈的位置，召喚加載_砲彈
    execute at @e[tag=howitzer_cannonball] run summon marker ~ ~ ~ {Tags:["howitzer_forceload_cannonball"]}

    #如果存在加載_砲彈，就強加載該區塊
    execute at @e[tag=howitzer_forceload_cannonball] run forceload add ~ ~ ~ ~

#例外狀況

    #如果不存在砲彈，就刪除該區塊的強加載
    execute unless entity @e[tag=howitzer_cannonball] at @e[tag=howitzer_forceload_cannonball] run forceload remove ~ ~ ~ ~

    #如果不存在砲彈，且存在加載_砲彈，就刪除加載_砲彈
    execute unless entity @e[tag=howitzer_cannonball] as @e[tag=howitzer_forceload_cannonball] run kill @s
