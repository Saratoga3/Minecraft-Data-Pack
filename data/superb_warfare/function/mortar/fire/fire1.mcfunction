#開火1

#前往迫擊砲並點擊開火

    #
    execute as mortar_2 at @e[tag=mortar_1,type=armor_stand] positioned ^ ^ ^1 rotated 90 20 run tp ~ ~ ~

    #
    execute run player mortar_2 use once

#移除玩家被鎖定的標籤

    #
    #execute as @a[tag=mortar_target] run tag @s remove mortar_target

#清除物品

    #
    clear mortar_2 *

#給予物品

    #
    give mortar_2 superbwarfare:mortar_shell 1
