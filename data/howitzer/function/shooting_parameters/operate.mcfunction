#操作

#計數
scoreboard players add count howitzer_set 1

#暫存
scoreboard players operation temp howitzer_set = user howitzer_set
scoreboard players operation temp2 howitzer_set = user howitzer_set

#俯仰角(0~85)

    #相除取前2位數
    scoreboard players operation temp howitzer_set /= constant howitzer_set

    #前2位數=俯仰角
    execute if score count howitzer_set matches 1.. run scoreboard players operation pitch_angle howitzer_set = temp howitzer_set

#方位角(0~359)

    #前2位數相乘
    scoreboard players operation temp howitzer_set *= constant howitzer_set

    #相減
    scoreboard players operation temp2 howitzer_set -= temp howitzer_set

    #暫存
    scoreboard players operation temp3 howitzer_set = temp2 howitzer_set

    #相除取3~5位數
    scoreboard players operation temp2 howitzer_set /= constant2 howitzer_set

    #3~5位數=方位角
    execute if score count howitzer_set matches 1.. run scoreboard players operation azimuth_angle howitzer_set = temp2 howitzer_set

#砲彈數量(0~99)

    #相乘
    scoreboard players operation temp2 howitzer_set *= constant2 howitzer_set

    #相減取後2位數
    scoreboard players operation temp3 howitzer_set -= temp2 howitzer_set

    #後2位數=砲彈數量
    execute if score count howitzer_set matches 1.. run scoreboard players operation cannonball_count howitzer_set = temp3 howitzer_set

#如果操作者亂輸入射擊參數

    #俯仰角(0~85)

        #設定0提醒操作者輸入無效
        execute unless score pitch_angle howitzer_set matches 0..85 run scoreboard players set azimuth_angle howitzer_set 0
        execute unless score pitch_angle howitzer_set matches 0..85 run scoreboard players set cannonball_count howitzer_set 0
        execute unless score pitch_angle howitzer_set matches 0..85 run scoreboard players set pitch_angle howitzer_set 0

    #方位角(0~359)

        #設定0提醒操作者輸入無效
        execute unless score azimuth_angle howitzer_set matches 0..359 run scoreboard players set pitch_angle howitzer_set 0
        execute unless score azimuth_angle howitzer_set matches 0..359 run scoreboard players set cannonball_count howitzer_set 0
        execute unless score azimuth_angle howitzer_set matches 0..359 run scoreboard players set azimuth_angle howitzer_set 0

    #砲彈數量(0~99)

        #設定0提醒操作者輸入無效
        execute unless score cannonball_count howitzer_set matches 0..99 run scoreboard players set pitch_angle howitzer_set 0
        execute unless score cannonball_count howitzer_set matches 0..99 run scoreboard players set azimuth_angle howitzer_set 0
        execute unless score cannonball_count howitzer_set matches 0..99 run scoreboard players set cannonball_count howitzer_set 0

#歸零
scoreboard players set temp howitzer_set 0
scoreboard players set temp2 howitzer_set 0
scoreboard players set temp3 howitzer_set 0
scoreboard players operation remaining_fire howitzer_set = fire howitzer_set

#確保射擊參數能計算
scoreboard players set user howitzer_set -1

#確保操作者能輸入0000000
execute as @e[tag=howitzer_user] unless score @s howitzer_set matches -1 run scoreboard players set @s howitzer_set -1
