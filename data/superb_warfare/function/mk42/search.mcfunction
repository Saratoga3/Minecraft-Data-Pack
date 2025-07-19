#索敵

#目標

    #
    execute at Mk42_1 at @e[tag=Mk42_target,distance=50..200,limit=1,sort=nearest] run function superb_warfare:mk42/fire

    #
    execute at Mk42_1 as @e[tag=Mk42_target] unless entity @s[distance=50..200] run tag @s remove Mk42_target

#創世殖民

    #野蠻人

        #以Mk42範圍，搜索野蠻人，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campbarbarian,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:barbarian,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索野蠻人弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:camparcherbarbarian,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:archerbarbarian,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索野蠻人首領，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campchiefbarbarian,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:chiefbarbarian,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

    #海盜

        #以Mk42範圍，搜索海盜，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:camppirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:pirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索海盜弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:camparcherpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:archerpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索海盜船長，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campchiefpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:chiefpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

    #亞馬遜

        #以Mk42範圍，搜索亞馬遜戰士，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campamazon,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:amazon,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索亞馬遜長矛兵，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campamazonspearman,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:amazonspearman,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索亞馬遜領袖，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campamazonchief,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:amazonchief,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

    #木乃伊

        #以Mk42範圍，搜索木乃伊，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campmummy,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:mummy,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索木乃伊弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:camparchermummy,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:archermummy,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索法老，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:camppharao,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:pharao,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

    #維京

        #以Mk42範圍，搜索維京盾兵，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campshieldmaiden,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:shieldmaiden,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索維京弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campnorsemenarcher,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:norsemenarcher,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索維京首領，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campnorsemenchief,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:norsemenchief,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

    #沉屍海盜

        #以Mk42範圍，搜索沉屍海盜，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campdrownedpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:drownedpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索沉屍弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campdrownedarcherpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:drownedarcherpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target

        #以Mk42範圍，搜索沉屍首領，且該實體不是搜索目標，就作為搜索目標
        execute at Mk42_1 as @e[type=minecolonies:campdrownedchiefpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
        execute at Mk42_1 as @e[type=minecolonies:drownedchiefpirate,tag=!Mk42_target,distance=50..200] run tag @s add Mk42_target
