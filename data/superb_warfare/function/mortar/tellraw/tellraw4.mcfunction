#廣播自動搜索砲擊目標

#確保不會重複廣播自動搜索砲擊目標

    #
    execute unless score target mortar_parameter matches 1 run scoreboard players set target mortar_parameter 1

#回報狀態

    #
    tellraw @a [{"text":"已搜索到目標！","color":"yellow"},{"text":"迫擊砲組進入自動接戰模式！","color":"yellow"}]

#散布模式

    #有散布
    execute if score spread mortar_parameter matches 1 run tellraw @a [{"text":"散布模式：有","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set spread mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"有散布=1、無散布=2(預設有散布)"}]}}]

    #無散布
    execute if score spread mortar_parameter matches 2 run tellraw @a [{"text":"散布模式：無","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set spread mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"有散布=1、無散布=2(預設有散布)"}]}}]

#砲擊模式

    #多點砲擊
    execute if score bombardment mortar_parameter matches 1 run tellraw @a [{"text":"砲擊模式：多點","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set bombardment mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"多點砲擊=1、單點砲擊=2(預設多點砲擊)"}]}}]

    #單點砲擊
    execute if score bombardment mortar_parameter matches 2 run tellraw @a [{"text":"砲擊模式：單點","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set bombardment mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"多點砲擊=1、單點砲擊=2(預設多點砲擊)"}]}}]

#開火模式

    #同時開火
    execute if score firing mortar_parameter matches 1 run tellraw @a [{"text":"開火模式：同時","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set firing mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"同時開火=1、持續開火=2(預設同時開火)"}]}}]

    #持續開火
    execute if score firing mortar_parameter matches 2 run tellraw @a [{"text":"開火模式：持續","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set firing mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"同時開火=1、持續開火=2(預設同時開火)"}]}}]

#砲擊座標

    #手動輸入座標
    execute run tellraw @a [{"text":"砲擊座標：無","color":"yellow","clickEvent":{"action":"suggest_command","value":"/execute positioned ~ ~ ~ run function superb_warfare:mortar/search/search1"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊座標=~ ~ ~(預設砲擊自己)"}]}}]

#砲擊目標

    #自動鎖定目標
    execute as @e[tag=mortar_target,tag=!hostile_mob,type=!minecraft:area_effect_cloud] run tellraw @a [{"text":"砲擊目標：","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[tag=mortar_parameter] run function superb_warfare:mortar/search/search3"},"hoverEvent":{"action":"show_text", "value":[{"text":"自動鎖定距離自己最近的10個敵對生物"}]}},{"selector":"@s","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[tag=mortar_parameter] run function superb_warfare:mortar/search/search3"},"hoverEvent":{"action":"show_text", "value":[{"text":"自動鎖定距離自己最近的10個敵對生物"}]}}]
