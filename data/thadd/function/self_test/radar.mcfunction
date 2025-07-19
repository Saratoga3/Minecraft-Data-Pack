#雷達車運轉

    #雷達車原地旋轉
    execute as @e[tag=THADD_radar] at @s run tp @s ~ ~ ~ ~10 0

    #遞迴

        #增加雷達車當前時間
        scoreboard players add radar THADD_set 1
        #重設當前時間
        execute if score radar THADD_set matches 9.. run scoreboard players set radar THADD_set 0
