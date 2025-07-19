#開火

#看目標

    #
    player Mk42_1 look at ~ ~1 ~

#計時器

    #
    execute run scoreboard players add fire Mk42_time 1

    #
    execute if score fire Mk42_time matches 30 run player Mk42_2 use once

    #
    execute if score fire Mk42_time matches 30.. run scoreboard players set fire Mk42_time 0
