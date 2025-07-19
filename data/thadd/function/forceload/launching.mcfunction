#加載終端高空防禦導彈發射車

#佈署

    #如果不存在加載_發射車，就在發射車的位置，召喚加載_發射車
    execute unless entity @e[tag=THADD_launching_forceload] run summon marker ~ ~ ~ {Tags:["THADD_launching_forceload"]}

    #如果存在加載_發射車，就強加載該區塊
    execute if entity @e[tag=THADD_launching_forceload] at @e[tag=THADD_launching_forceload] unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~

#例外狀況

    #如果不存在發射車，就刪除該區塊的強加載
    execute unless entity @e[tag=THADD_launching] at @e[tag=THADD_launching_forceload] if loaded ~ ~ ~ run forceload remove ~ ~ ~ ~

    #如果不存在發射車，就刪除加載_發射車
    execute unless entity @e[tag=THADD_launching] as @e[tag=THADD_launching_forceload] run kill @s
