#傅立葉應用

    #原地旋轉
    execute as @e[tag=a] at @s run tp @s ~ ~ ~ ~1 ~
    execute as @e[tag=b] at @s run tp @s ~ ~ ~ ~2 ~
    execute as @e[tag=c] at @s run tp @s ~ ~ ~ ~-3 ~

    #產生粒子特效
    execute rotated as @e[tag=a] positioned ^ ^ ^0.6 rotated as @e[tag=b] positioned ^ ^ ^0.6 rotated as @e[tag=c] positioned ^ ^ ^0.6 run particle flame ~ ~0.1 ~ 0 0 0 0.1 0 force

    #記分板 & 停止條件
    scoreboard players add t time 1
    execute if score t time matches ..50 run function realm:magic_circle1
    execute if score t time matches 51 run scoreboard players set t time 0