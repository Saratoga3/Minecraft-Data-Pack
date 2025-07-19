#射擊諸元1

#移除落彈點的方塊
execute at mortar_1 if block ~ ~-1 ~ blue_stained_glass run fill ~ ~-1 ~ ~ ~-1 ~ water
execute at mortar_1 if block ~ ~-1 ~ red_stained_glass run fill ~ ~-1 ~ ~ ~-1 ~ lava
execute at mortar_1 if block ~ ~-1 ~ glass run fill ~ ~-1 ~ ~ ~-1 ~ air

#計數
scoreboard players add count mortar_probability 1

#回到迫擊砲並點擊輸入落彈點座標

    #
    execute as mortar_1 at @e[tag=mortar_1,type=armor_stand] positioned ^1 ^ ^1 rotated ~30 20 run tp ~ ~ ~

    #
    player mortar_1 use once
