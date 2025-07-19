#設定夜魅

#設定

    #設定夜魅數量
    scoreboard players operation phantom_count mobile_entity = phantom_count_set mobile_entity

    #設定夜魅高度
    scoreboard players operation phantom_high mobile_entity = phantom_high_set mobile_entity

#判斷是否能召喚夜魅

    #在玩家位置召喚標記(如果高度很高，標記存活時間要增加)
    execute at @a[gamemode=!spectator] in minecraft:overworld run summon area_effect_cloud ~ ~1 ~ {Tags:["phantom_marker"],Duration:100}

    #判斷是否為空氣
    execute if entity @a run function mobile_entity:phantom/if_else

#召喚夜魅

    #如果有召喚數量，就召喚夜魅
    execute at @a[gamemode=!spectator] in minecraft:overworld unless score phantom_count mobile_entity matches ..0 run function mobile_entity:phantom/summon

#例外狀況

    #清除夜魅數量
    scoreboard players reset phantom_count mobile_entity

    #清除夜魅高度
    scoreboard players reset phantom_high mobile_entity
