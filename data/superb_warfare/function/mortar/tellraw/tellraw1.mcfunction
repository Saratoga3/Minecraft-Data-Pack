#手動輸入砲擊座標1

#新增使用者

    #
    execute as @e[tag=!mortar_parameter] if data entity @s Inventory[{components: {"minecraft:custom_name":'"射擊諸元-改"'}, id: "superbwarfare:firing_parameters"}] run scoreboard players set @s mortar_parameter 1

    #
    execute as @e[tag=!mortar_parameter] if data entity @s Inventory[{components: {"minecraft:custom_name":'"射擊諸元-改"'}, id: "superbwarfare:firing_parameters"}] run tag @s add mortar_parameter

#顯示使用者輸入射擊參數

    #散布模式
    execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"需要OP權限"}]}},{"text":"點擊此輸入迫擊砲散布模式","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set spread mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"有散布=1、無散布=2(預設有散布)"}]}}]

    #砲擊模式
    execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"需要OP權限"}]}},{"text":"點擊此輸入迫擊砲砲擊模式","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set bombardment mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"多點砲擊=1、單點砲擊=2(預設多點砲擊)"}]}}]

    #開火模式
    execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"需要OP權限"}]}},{"text":"點擊此輸入迫擊砲開火模式","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set firing mortar_parameter 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"同時開火=1、持續開火=2(預設同時開火)"}]}}]

    #砲擊次數
    execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"需要OP權限"}]}},{"text":"點擊此輸入迫擊砲砲擊次數","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set count mortar_parameter 10"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊次數=1~30(預設10次砲擊)"}]}}]

    #及時處理使用者輸入射擊參數

        #散布模式
        #execute if score spread mortar_parameter matches 2 if score bombardment mortar_parameter matches 1 run scoreboard players set bombardment mortar_parameter 2

        #砲擊次數
        execute unless score count mortar_parameter matches 0..30 run scoreboard players set count mortar_parameter 0

    #砲擊座標

        #手動輸入座標
        execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"需要OP權限"}]}},{"text":"點擊此輸入迫擊砲砲擊座標","color":"green","clickEvent":{"action":"suggest_command","value":"/execute positioned ~ ~ ~ run function superb_warfare:mortar/search/search1"},"hoverEvent":{"action":"show_text", "value":[{"text":"砲擊座標=~ ~ ~(預設砲擊自己)"}]}}]

        #自己作為座標[OP]
        #execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"需要OP權限"}]}},{"text":"點擊此迫擊砲將以你自己座標作為砲擊座標","color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=mortar_parameter] positioned ~ ~ ~ run function superb_warfare:mortar/search/search2"},"hoverEvent":{"action":"show_text", "value":[{"text":"記得找好掩護","italic":true}]}}]

        #自己作為座標[非OP]
        execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[非OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"不需要OP權限"}]}},{"text":"點擊此迫擊砲將以你自己座標作為砲擊座標","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[tag=mortar_parameter] run scoreboard players set @s mortar_no_op 1"},"hoverEvent":{"action":"show_text", "value":[{"text":"記得找好掩護","italic":true}]}}]

        #自動鎖定目標
        execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run tellraw @s [{"text":"[OP]","color":"red","hoverEvent":{"action":"show_text", "value":[{"text":"需要OP權限"}]}},{"text":"點擊此迫擊砲將自動鎖定目標","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[tag=mortar_parameter] run function superb_warfare:mortar/search/search3"},"hoverEvent":{"action":"show_text", "value":[{"text":"自動鎖定距離自己最近的10個敵對生物"}]}}]

#確保使用者不會重複顯示射擊參數

    #
    execute as @e[tag=mortar_parameter] if score @s mortar_parameter matches 1 run scoreboard players set @s mortar_parameter 0

#移除使用者

    #開火參數
    execute as @e[tag=mortar_parameter] unless data entity @s Inventory[{components: {"minecraft:custom_name":'"射擊諸元-改"'}, id: "superbwarfare:firing_parameters"}] run scoreboard players reset @s mortar_parameter

    #非OP玩家
    execute as @e[tag=mortar_parameter] unless data entity @s Inventory[{components: {"minecraft:custom_name":'"射擊諸元-改"'}, id: "superbwarfare:firing_parameters"}] run scoreboard players reset @s mortar_no_op

    #
    execute as @e[tag=mortar_parameter] unless data entity @s Inventory[{components: {"minecraft:custom_name":'"射擊諸元-改"'}, id: "superbwarfare:firing_parameters"}] run tag @s remove mortar_parameter
