#初始化

#召喚觀測手

    #
    execute at @e[tag=mortar_1,type=armor_stand] unless entity mortar_1 run player mortar_1 spawn at ^1 ^ ^1 facing ~30 20 in minecraft:overworld in creative

#清除效果

    #
    effect clear mortar_1

    #
    effect clear mortar_2

#清除物品

    #
    clear mortar_1 *

    #
    clear mortar_2 *

#給予效果

    #
    effect give mortar_1 minecraft:invisibility infinite 0 true

#給予物品

    #
    give mortar_1 superbwarfare:firing_parameters 1

    #
    give mortar_2 superbwarfare:mortar_shell 1
