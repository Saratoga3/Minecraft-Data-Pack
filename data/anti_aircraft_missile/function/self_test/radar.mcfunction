#雷達站運轉

    #雷達站發光(未採用)
    #execute as @e[tag=anti_aircraft_missile_radar] unless data entity @s {Glowing:true} run data modify entity @s Glowing set value true

    #雷達站原地旋轉
    execute as @e[tag=anti_aircraft_missile_radar] at @s run tp @s ~ ~ ~ ~10 0

    #雷達站面前產生粒子特效(未採用)
    #execute as @e[tag=anti_aircraft_missile_radar] at @s rotated as @e[tag=anti_aircraft_missile_radar] positioned ^ ^ ^2 run particle flame ~ ~0.1 ~ 0 0 0 0 0 force @a

    #遞迴

        #增加雷達站當前時間
        scoreboard players add radar anti_aircraft_missile_set 1
        #重設當前時間
        execute if score radar anti_aircraft_missile_set matches 9.. run scoreboard players set radar anti_aircraft_missile_set 0
