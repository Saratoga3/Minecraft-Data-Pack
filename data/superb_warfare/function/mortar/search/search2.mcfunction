#自己作為座標

#處理使用者輸入射擊參數

    #散布模式
    execute unless score spread mortar_parameter matches 1 run scoreboard players set spread mortar_parameter 1

    #砲擊模式
    execute unless score bombardment mortar_parameter matches 1 run scoreboard players set bombardment mortar_parameter 1

    #開火模式
    execute unless score firing mortar_parameter matches 1 run scoreboard players set firing mortar_parameter 1

    #砲擊次數
    execute unless score count mortar_parameter matches 10 run scoreboard players set count mortar_parameter 10

#砲擊類型

    #自己作為座標
    scoreboard players set shelling mortar_parameter 2

#召喚砲擊座標

    #
    execute if entity @e[tag=mortar_1,limit=1,distance=50..600] as @e[tag=mortar_parameter] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mortar_target"],Duration:1500}

#紀錄砲擊座標

    #x
    execute store result score x mortar_parameter run data get entity @e[tag=mortar_target,type=minecraft:area_effect_cloud,limit=1] Pos[0] 1

    #y
    execute store result score y mortar_parameter run data get entity @e[tag=mortar_target,type=minecraft:area_effect_cloud,limit=1] Pos[1] 1

    #z
    execute store result score z mortar_parameter run data get entity @e[tag=mortar_target,type=minecraft:area_effect_cloud,limit=1] Pos[2] 1

#廣播使用者輸入射擊參數

    #
    function superb_warfare:mortar/tellraw/tellraw3
