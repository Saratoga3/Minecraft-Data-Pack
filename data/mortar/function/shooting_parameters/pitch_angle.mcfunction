#俯仰角(45~85)

#向上俯仰

    #
    execute if score pitch_angle mortar_set > mortar_pitch_angle mortar_set as @e[tag=mortar_base] at @s run tp @s ~ ~ ~ ~ ~-1

    #
    execute if score pitch_angle mortar_set > mortar_pitch_angle mortar_set run scoreboard players add mortar_pitch_angle mortar_set 1

#向下俯仰

    #
    execute if score pitch_angle mortar_set < mortar_pitch_angle mortar_set as @e[tag=mortar_base] at @s run tp @s ~ ~ ~ ~ ~1

    #
    execute if score pitch_angle mortar_set < mortar_pitch_angle mortar_set run scoreboard players remove mortar_pitch_angle mortar_set 1
