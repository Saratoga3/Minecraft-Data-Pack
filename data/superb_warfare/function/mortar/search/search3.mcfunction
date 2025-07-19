#自動鎖定目標

#敵對生物

    #
    execute at @s as @e[tag=hostile_mob,tag=!mortar_target,type=!phantom,limit=10,distance=..100,sort=nearest] at @s if entity @e[tag=mortar_1,type=armor_stand,distance=50..600] run tag @s add mortar_target

#處理使用者輸入射擊參數

    #散布模式
    execute unless score spread mortar_parameter matches 2 run scoreboard players set spread mortar_parameter 2

    #砲擊模式
    execute unless score bombardment mortar_parameter matches 1..2 run scoreboard players set bombardment mortar_parameter 1

    #開火模式
    execute unless score firing mortar_parameter matches 1..2 run scoreboard players set firing mortar_parameter 1

    #砲擊次數
    execute unless score count mortar_parameter matches 1..30 run scoreboard players set count mortar_parameter 10

#砲擊類型

    #自動鎖定目標
    scoreboard players set shelling mortar_parameter 3

#廣播使用者輸入射擊參數

    #
    function superb_warfare:mortar/tellraw/tellraw3
