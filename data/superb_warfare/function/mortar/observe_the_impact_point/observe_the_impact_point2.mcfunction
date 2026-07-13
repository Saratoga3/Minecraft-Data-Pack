#觀測落彈點2

#觀測手tp過去落彈點
execute as mortar_1 at @s positioned as @e[tag=mortar_target,sort=random] run tp ~ ~-3 ~

#放置落彈點的方塊
execute at mortar_1 if block ~ ~-1 ~ water run fill ~ ~-1 ~ ~ ~-1 ~ blue_stained_glass
execute at mortar_1 if block ~ ~-1 ~ lava run fill ~ ~-1 ~ ~ ~-1 ~ red_stained_glass
execute at mortar_1 if block ~ ~-1 ~ air run fill ~ ~-1 ~ ~ ~-1 ~ glass

#觀測落彈點

    #
    player mortar_1 sneak
    
    #
    player mortar_1 look down

    #
    player mortar_1 use once

#移除落彈點的方塊
#execute at mortar_1 if block ~ ~-1 ~ blue_stained_glass run fill ~ ~-1 ~ ~ ~-1 ~ water
#execute at mortar_1 if block ~ ~-1 ~ red_stained_glass run fill ~ ~-1 ~ ~ ~-1 ~ lava
#execute at mortar_1 if block ~ ~-1 ~ glass run fill ~ ~-1 ~ ~ ~-1 ~ air
