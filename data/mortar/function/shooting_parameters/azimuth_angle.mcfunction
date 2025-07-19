#方位角(0~359)

#設定順時針、逆時針數值
scoreboard players operation clockwise mortar_set = mortar_azimuth_angle mortar_set

#計算最短旋轉角度

    #順時針-設定方位角
    scoreboard players operation clockwise mortar_set -= azimuth_angle mortar_set
    
    #逆時針數值=順時針數值
    scoreboard players operation counterclockwise mortar_set = clockwise mortar_set

    #判斷條件

        #如果設定方位角>迫擊砲方位角，就逆時針數值+360
        execute if score azimuth_angle mortar_set > mortar_azimuth_angle mortar_set run scoreboard players operation counterclockwise mortar_set += azimuth_angle_360 mortar_set

        #如果設定方位角<迫擊砲方位角，就逆時針數值-360
        execute if score azimuth_angle mortar_set < mortar_azimuth_angle mortar_set run scoreboard players operation counterclockwise mortar_set -= azimuth_angle_360 mortar_set

    #相加取判斷條件(clockwise>0就順時針旋轉，clockwise<0就逆時針旋轉)
    scoreboard players operation clockwise mortar_set += counterclockwise mortar_set

#校正

    #如果clockwise>=0，且迫擊砲方位角過360度，就校正為0度
    execute if score clockwise mortar_set matches 0.. if score mortar_azimuth_angle mortar_set matches 360 run scoreboard players set mortar_azimuth_angle mortar_set 0

    #如果clockwise<=-1，且迫擊砲方位角過0度，就校正為360度
    execute if score clockwise mortar_set matches ..-1 if score mortar_azimuth_angle mortar_set matches 0 run scoreboard players set mortar_azimuth_angle mortar_set 360

#順時針旋轉

    #如果clockwise>0，就順時針旋轉
    execute if score clockwise mortar_set matches 0.. as @e[tag=mortar_base] at @s run tp @s ~ ~ ~ ~1 ~

    #如果clockwise>0，就增加角度
    execute if score clockwise mortar_set matches 0.. run scoreboard players add mortar_azimuth_angle mortar_set 1

#逆時針旋轉

    #如果clockwise<0，就逆時針旋轉
    execute if score clockwise mortar_set matches ..-1 as @e[tag=mortar_base] at @s run tp @s ~ ~ ~ ~-1 ~

    #如果clockwise<0，就減少角度
    execute if score clockwise mortar_set matches ..-1 run scoreboard players remove mortar_azimuth_angle mortar_set 1

#歸零

    #順時針歸零
    execute if score mortar_azimuth_angle mortar_set = azimuth_angle mortar_set run scoreboard players set clockwise mortar_set 0

    #逆時針歸零
    execute if score mortar_azimuth_angle mortar_set = azimuth_angle mortar_set run scoreboard players set counterclockwise mortar_set 0
