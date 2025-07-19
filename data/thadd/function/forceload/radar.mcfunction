#加載終端高空防禦導彈雷達車

#佈署

    #如果不存在加載_雷達車，就在雷達車的位置，召喚加載_雷達車
    execute unless entity @e[tag=THADD_radar_forceload] run summon marker ~ ~ ~ {Tags:["THADD_radar_forceload"]}

    #如果存在加載_雷達車，就強加載該區塊
    execute if entity @e[tag=THADD_radar_forceload] at @e[tag=THADD_radar_forceload] unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~

#例外狀況

    #如果不存在雷達車，就刪除該區塊的強加載
    execute unless entity @e[tag=THADD_radar] at @e[tag=THADD_radar_forceload] if loaded ~ ~ ~ run forceload remove ~ ~ ~ ~

    #如果不存在雷達車，就刪除加載_雷達車
    execute unless entity @e[tag=THADD_radar] as @e[tag=THADD_radar_forceload] run kill @s
