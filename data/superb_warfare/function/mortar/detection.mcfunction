#檢測

#記錄迫擊砲陣地

    #
    execute unless entity @e[tag=mortar_1,type=armor_stand] if entity @e[name="迫擊砲1",type=armor_stand] run scoreboard players set mortar_1 mortar_positions 1

    #
    execute unless entity @e[tag=mortar_2,type=armor_stand] if entity @e[name="迫擊砲2",type=armor_stand] run scoreboard players set mortar_2 mortar_positions 1

    #
    execute unless entity @e[tag=mortar_3,type=armor_stand] if entity @e[name="迫擊砲3",type=armor_stand] run scoreboard players set mortar_3 mortar_positions 1

    #
    execute unless entity @e[tag=mortar_4,type=armor_stand] if entity @e[name="迫擊砲4",type=armor_stand] run scoreboard players set mortar_4 mortar_positions 1

    #
    execute unless entity @e[tag=mortar_5,type=armor_stand] if entity @e[name="迫擊砲5",type=armor_stand] run scoreboard players set mortar_5 mortar_positions 1

#標籤

    #
    execute unless entity @e[tag=mortar_1,type=armor_stand] as @e[name="迫擊砲1",type=armor_stand] run tag @s add mortar_1

    #
    execute unless entity @e[tag=mortar_2,type=armor_stand] as @e[name="迫擊砲2",type=armor_stand] run tag @s add mortar_2

    #
    execute unless entity @e[tag=mortar_3,type=armor_stand] as @e[name="迫擊砲3",type=armor_stand] run tag @s add mortar_3

    #
    execute unless entity @e[tag=mortar_4,type=armor_stand] as @e[name="迫擊砲4",type=armor_stand] run tag @s add mortar_4

    #
    execute unless entity @e[tag=mortar_5,type=armor_stand] as @e[name="迫擊砲5",type=armor_stand] run tag @s add mortar_5

#刷新檢測

    #存在mortar_2
    execute if entity @e[tag=mortar_1,type=armor_stand] unless entity mortar_1 if entity mortar_2 run function superb_warfare:mortar/load

    #存在mortar_1
    execute if entity @e[tag=mortar_1,type=armor_stand] unless entity mortar_2 if entity mortar_1 run function superb_warfare:mortar/load

    #不存在mortar_2、mortar_1
    execute if entity @e[tag=mortar_1,type=armor_stand] unless entity mortar_2 unless entity mortar_1 run function superb_warfare:mortar/load

#使用者與迫擊砲物動的物品

    #射擊諸元-改
    execute as @e[tag=!mortar_parameter] if data entity @s Inventory[{components: {"minecraft:item_name": '"射擊諸元-改"'}, id: "superbwarfare:firing_parameters"}] run function superb_warfare:mortar/item

#手動輸入砲擊座標

    #
    function superb_warfare:mortar/tellraw/tellraw1

#非OP玩家的操作

    #自己作為座標
    execute as @e[tag=mortar_parameter,scores={mortar_no_op=1}] at @s run function superb_warfare:mortar/search/search2

    #非OP
    execute as @e[tag=mortar_parameter] unless score @s mortar_no_op matches 0 run function superb_warfare:mortar/no_access

#自動搜索砲擊目標

    #
    function superb_warfare:mortar/search/search4

#計時器

    #(移至tick.mcfunction執行)
    #function superb_warfare:mortar/timer

#固定假人

    #mortar_2
    execute as mortar_2 unless entity @e[tag=mortar_target] at @e[tag=mortar_1,type=armor_stand] positioned ^ ^ ^1 rotated ~ 20 run tp ~ ~ ~

    #mortar_1
    execute as mortar_1 unless entity @e[tag=mortar_target] at @e[tag=mortar_1,type=armor_stand] positioned ^1 ^ ^1 rotated ~30 20 run tp ~ ~ ~

#計時器歸零

    #不存在目標
    execute unless score fire mortar_time matches 0 unless entity @e[tag=mortar_target] run scoreboard players set fire mortar_time 0

    #不存在迫擊砲1
    execute unless score fire mortar_time matches 0 unless entity @e[tag=mortar_1,type=armor_stand] run scoreboard players set fire mortar_time 0

#回報狀態

    #
    function superb_warfare:mortar/tellraw/tellraw2

#移除迫擊砲陣地

    #
    execute unless entity @e[tag=mortar_1,type=armor_stand] if score mortar_1 mortar_positions matches 1 run scoreboard players set mortar_1 mortar_positions 0

    #
    execute unless entity @e[tag=mortar_2,type=armor_stand] if score mortar_2 mortar_positions matches 1 run scoreboard players set mortar_2 mortar_positions 0

    #
    execute unless entity @e[tag=mortar_3,type=armor_stand] if score mortar_3 mortar_positions matches 1 run scoreboard players set mortar_3 mortar_positions 0

    #
    execute unless entity @e[tag=mortar_4,type=armor_stand] if score mortar_4 mortar_positions matches 1 run scoreboard players set mortar_4 mortar_positions 0

    #
    execute unless entity @e[tag=mortar_5,type=armor_stand] if score mortar_5 mortar_positions matches 1 run scoreboard players set mortar_5 mortar_positions 0

#刪除假人

    #mortar_2
    execute unless entity @e[tag=mortar_1,type=armor_stand] if entity mortar_2 run player mortar_2 kill

    #mortar_1
    execute unless entity @e[tag=mortar_1,type=armor_stand] if entity mortar_1 run player mortar_1 kill
