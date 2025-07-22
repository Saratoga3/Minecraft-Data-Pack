#廣播使用者輸入射擊參數

#回報狀態

    #
    tellraw @a [{"text":"已收到來自 ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" 的砲擊請求","color":"yellow"}]

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

#砲擊次數

    #
    tellraw @a [{"text":"砲擊次數：","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set count mortar_parameter 10"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊次數=1~30(預設10次砲擊)"}]}},{"score":{"name":"count","objective":"mortar_parameter"},"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set count mortar_parameter 10"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊次數=1~30(預設10次砲擊)"}]}}]

#砲擊座標

    #手動輸入座標(被選擇)
    execute if score shelling mortar_parameter matches 1 run tellraw @a [{"text":"砲擊座標：","color":"yellow","clickEvent":{"action":"suggest_command","value":"/execute positioned ~ ~ ~ run function superb_warfare:mortar/search/search1"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊座標=~ ~ ~(預設砲擊自己)"}]}},{"score":{"name":"x","objective":"mortar_parameter"},"color":"yellow"},{"text":",","color":"yellow"},{"score":{"name":"y","objective":"mortar_parameter"},"color":"yellow"},{"text":",","color":"yellow"},{"score":{"name":"z","objective":"mortar_parameter"},"color":"yellow","clickEvent":{"action":"suggest_command","value":"/execute positioned ~ ~ ~ run function superb_warfare:mortar/search/search1"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊座標=~ ~ ~(預設砲擊自己)"}]}}]

    #手動輸入座標(無選擇)
    execute if score shelling mortar_parameter matches 3 run tellraw @a [{"text":"砲擊座標：無","color":"yellow","clickEvent":{"action":"suggest_command","value":"/execute positioned ~ ~ ~ run function superb_warfare:mortar/search/search1"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊座標=~ ~ ~(預設砲擊自己)"}]}}]

    #自己作為座標[OP]
    #execute if score shelling mortar_parameter matches 2 run tellraw @a [{"text":"砲擊座標：","color":"yellow","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=mortar_parameter] positioned ~ ~ ~ run function superb_warfare:mortar/search/search2"},"hoverEvent":{"action":"show_text", "value":[{"text":"記得找好掩護","italic":true}]}},{"selector":"@s","color":"yellow","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=mortar_parameter] positioned ~ ~ ~ run function superb_warfare:mortar/search/search2"},"hoverEvent":{"action":"show_text", "value":[{"text":"記得找好掩護","italic":true}]}}]

    #自己作為座標[非OP]
    execute if score shelling mortar_parameter matches 2 run tellraw @a [{"text":"砲擊座標：","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger mortar_no_op set 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"記得找好掩護","italic":true}]}},{"selector":"@s","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger mortar_no_op set 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"記得找好掩護","italic":true}]}}]

#砲擊目標

    #自動鎖定目標(被選擇)
    execute if score shelling mortar_parameter matches 3 as @e[tag=mortar_target] run tellraw @a [{"text":"砲擊目標：","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[tag=mortar_parameter] run function superb_warfare:mortar/search/search3"},"hoverEvent":{"action":"show_text", "value":[{"text":"自動鎖定距離自己最近的10個敵對生物"}]}},{"selector":"@s","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[tag=mortar_parameter] run function superb_warfare:mortar/search/search3"},"hoverEvent":{"action":"show_text", "value":[{"text":"自動鎖定距離自己最近的10個敵對生物"}]}}]

    #自動鎖定目標(無選擇)
    execute if score shelling mortar_parameter matches 1..2 run tellraw @a [{"text":"砲擊目標：無","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[tag=mortar_parameter] run function superb_warfare:mortar/search/search3"},"hoverEvent":{"action":"show_text", "value":[{"text":"自動鎖定距離自己最近的10個敵對生物"}]}}]
