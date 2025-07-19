#操作

#計數
scoreboard players add count mortar_set 1

#暫存
scoreboard players operation temp mortar_set = user mortar_set
scoreboard players operation temp2 mortar_set = user mortar_set

#俯仰角(45~85)

    #相除取前2位數
    scoreboard players operation temp mortar_set /= constant mortar_set

    #前2位數=俯仰角
    execute if score count mortar_set matches 1.. run scoreboard players operation pitch_angle mortar_set = temp mortar_set

#方位角(0~359)

    #前2位數相乘
    scoreboard players operation temp mortar_set *= constant mortar_set

    #相減
    scoreboard players operation temp2 mortar_set -= temp mortar_set

    #暫存
    scoreboard players operation temp3 mortar_set = temp2 mortar_set

    #相除取3~5位數
    scoreboard players operation temp2 mortar_set /= constant2 mortar_set

    #3~5位數=方位角
    execute if score count mortar_set matches 1.. run scoreboard players operation azimuth_angle mortar_set = temp2 mortar_set

#砲彈數量(0~99)

    #相乘
    scoreboard players operation temp2 mortar_set *= constant2 mortar_set

    #相減取後2位數
    scoreboard players operation temp3 mortar_set -= temp2 mortar_set

    #後2位數=砲彈數量
    execute if score count mortar_set matches 1.. run scoreboard players operation cannonball_count mortar_set = temp3 mortar_set

#如果操作者亂輸入射擊參數

    #俯仰角(45~85)

        #設定0提醒操作者輸入無效
        execute unless score pitch_angle mortar_set matches 45..85 run scoreboard players set azimuth_angle mortar_set 0
        execute unless score pitch_angle mortar_set matches 45..85 run scoreboard players set cannonball_count mortar_set 0
        execute unless score pitch_angle mortar_set matches 45..85 run scoreboard players set pitch_angle mortar_set 0

    #方位角(0~359)

        #設定0提醒操作者輸入無效
        execute unless score azimuth_angle mortar_set matches 0..359 run scoreboard players set pitch_angle mortar_set 0
        execute unless score azimuth_angle mortar_set matches 0..359 run scoreboard players set cannonball_count mortar_set 0
        execute unless score azimuth_angle mortar_set matches 0..359 run scoreboard players set azimuth_angle mortar_set 0

    #砲彈數量(0~99)

        #設定0提醒操作者輸入無效
        execute unless score cannonball_count mortar_set matches 0..99 run scoreboard players set pitch_angle mortar_set 0
        execute unless score cannonball_count mortar_set matches 0..99 run scoreboard players set azimuth_angle mortar_set 0
        execute unless score cannonball_count mortar_set matches 0..99 run scoreboard players set cannonball_count mortar_set 0

#歸零
scoreboard players set temp mortar_set 0
scoreboard players set temp2 mortar_set 0
scoreboard players set temp3 mortar_set 0
scoreboard players operation remaining_fire mortar_set = fire mortar_set

#確保射擊參數能計算
scoreboard players set user mortar_set -1

#確保操作者能輸入0000000
execute as @e[tag=mortar_user] unless score @s mortar_set matches -1 run scoreboard players set @s mortar_set -1
