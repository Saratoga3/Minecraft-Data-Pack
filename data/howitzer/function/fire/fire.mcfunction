#開火

#開火等待時間

    #開火剩餘時間-1分數
    scoreboard players remove remaining_fire howitzer_set 1

    #到達開火時間，就發射砲彈
    execute as @e[tag=howitzer_base] at @s if score remaining_fire howitzer_set matches 0 run function howitzer:fire/motion

    #到達開火時間，就重置開火等待時間
    execute if score remaining_fire howitzer_set matches 0 run scoreboard players operation remaining_fire howitzer_set = fire howitzer_set
