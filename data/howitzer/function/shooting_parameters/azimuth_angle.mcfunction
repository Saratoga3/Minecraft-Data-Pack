#方位角(0~359)

#設定順時針、逆時針數值
scoreboard players operation clockwise howitzer_set = howitzer_azimuth_angle howitzer_set

#計算最短旋轉角度

    #順時針-設定方位角
    scoreboard players operation clockwise howitzer_set -= azimuth_angle howitzer_set
    
    #逆時針數值=順時針數值
    scoreboard players operation counterclockwise howitzer_set = clockwise howitzer_set

    #判斷條件

        #如果設定方位角>榴彈砲方位角，就逆時針數值+360
        execute if score azimuth_angle howitzer_set > howitzer_azimuth_angle howitzer_set run scoreboard players operation counterclockwise howitzer_set += azimuth_angle_360 howitzer_set

        #如果設定方位角<榴彈砲方位角，就逆時針數值-360
        execute if score azimuth_angle howitzer_set < howitzer_azimuth_angle howitzer_set run scoreboard players operation counterclockwise howitzer_set -= azimuth_angle_360 howitzer_set

    #相加取判斷條件(clockwise>0就順時針旋轉，clockwise<0就逆時針旋轉)
    scoreboard players operation clockwise howitzer_set += counterclockwise howitzer_set

#校正

    #如果clockwise>=0，且榴彈砲方位角過360度，就校正為0度
    execute if score clockwise howitzer_set matches 0.. if score howitzer_azimuth_angle howitzer_set matches 360 run scoreboard players set howitzer_azimuth_angle howitzer_set 0

    #如果clockwise<=-1，且榴彈砲方位角過0度，就校正為360度
    execute if score clockwise howitzer_set matches ..-1 if score howitzer_azimuth_angle howitzer_set matches 0 run scoreboard players set howitzer_azimuth_angle howitzer_set 360

#順時針旋轉

    #如果clockwise>0，就順時針旋轉
    execute if score clockwise howitzer_set matches 0.. as @e[tag=howitzer_base] at @s run tp @s ~ ~ ~ ~1 ~

    #如果clockwise>0，就增加角度
    execute if score clockwise howitzer_set matches 0.. run scoreboard players add howitzer_azimuth_angle howitzer_set 1

#逆時針旋轉

    #如果clockwise<0，就逆時針旋轉
    execute if score clockwise howitzer_set matches ..-1 as @e[tag=howitzer_base] at @s run tp @s ~ ~ ~ ~-1 ~

    #如果clockwise<0，就減少角度
    execute if score clockwise howitzer_set matches ..-1 run scoreboard players remove howitzer_azimuth_angle howitzer_set 1

#歸零

    #順時針歸零
    execute if score howitzer_azimuth_angle howitzer_set = azimuth_angle howitzer_set run scoreboard players set clockwise howitzer_set 0

    #逆時針歸零
    execute if score howitzer_azimuth_angle howitzer_set = azimuth_angle howitzer_set run scoreboard players set counterclockwise howitzer_set 0
