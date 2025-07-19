#基座自轉

    #基座原地旋轉
    execute as @e[tag=missile_base] at @s run tp @s ~ ~ ~ ~10 0

    #基座面前第2格產生粒子特效
    #execute as @e[tag=missile_base] at @s rotated as @e[tag=missile_base] positioned ^ ^ ^2 run particle flame ~ ~0.1 ~ 0 0 0 0 0 force @a

    #記分板 & 停止條件
    scoreboard players add missile_base missile_time 1
    #execute if score missile_base missile_time matches ..8 run function missile:magic_circle
    execute if score missile_base missile_time matches 9 run scoreboard players set missile_base missile_time 3
