#俯仰角(0~85)

#向上俯仰

    #
    execute if score pitch_angle howitzer_set > howitzer_pitch_angle howitzer_set as @e[tag=howitzer_base] at @s run tp @s ~ ~ ~ ~ ~-1

    #
    execute if score pitch_angle howitzer_set > howitzer_pitch_angle howitzer_set run scoreboard players add howitzer_pitch_angle howitzer_set 1

#向下俯仰

    #
    execute if score pitch_angle howitzer_set < howitzer_pitch_angle howitzer_set as @e[tag=howitzer_base] at @s run tp @s ~ ~ ~ ~ ~1

    #
    execute if score pitch_angle howitzer_set < howitzer_pitch_angle howitzer_set run scoreboard players remove howitzer_pitch_angle howitzer_set 1
