#手動輸入座標

#處理使用者輸入射擊參數

    #散布模式
    execute if entity @s[tag=mortar_parameter] unless score spread mortar_parameter matches 1..2 run scoreboard players set spread mortar_parameter 1

    #砲擊模式
    execute if entity @s[tag=mortar_parameter] unless score bombardment mortar_parameter matches 1..2 run scoreboard players set bombardment mortar_parameter 1

    #開火模式
    execute if entity @s[tag=mortar_parameter] unless score firing mortar_parameter matches 1..2 run scoreboard players set firing mortar_parameter 1

    #砲擊次數
    execute if entity @s[tag=mortar_parameter] unless score count mortar_parameter matches 1..30 run scoreboard players set count mortar_parameter 10

#砲擊類型

    #手動輸入座標
    scoreboard players set shelling mortar_parameter 1

#召喚砲擊座標

    #
    execute if entity @e[tag=mortar_1,limit=1,distance=50..600] as @e[tag=mortar_parameter] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mortar_target"],Duration:1500}

#紀錄砲擊座標

    #x
    execute if entity @s[tag=mortar_parameter] store result score x mortar_parameter run data get entity @e[tag=mortar_target,type=minecraft:area_effect_cloud,limit=1] Pos[0] 1

    #y
    execute if entity @s[tag=mortar_parameter] store result score y mortar_parameter run data get entity @e[tag=mortar_target,type=minecraft:area_effect_cloud,limit=1] Pos[1] 1

    #z
    execute if entity @s[tag=mortar_parameter] store result score z mortar_parameter run data get entity @e[tag=mortar_target,type=minecraft:area_effect_cloud,limit=1] Pos[2] 1

#廣播使用者輸入射擊參數

    #
    execute if entity @s[tag=mortar_parameter] run function superb_warfare:mortar/tellraw/tellraw3
