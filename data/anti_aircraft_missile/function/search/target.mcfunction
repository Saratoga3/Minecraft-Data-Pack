#搜索目標

    #夜魅

        #以雷達站範圍，搜索夜魅，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecraft:phantom,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

    #創世殖民

        #野蠻人

            #以雷達站範圍，搜索野蠻人，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campbarbarian,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:barbarian,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索野蠻人弓箭手，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:camparcherbarbarian,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:archerbarbarian,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索野蠻人首領，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campchiefbarbarian,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:chiefbarbarian,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

        #海盜

            #以雷達站範圍，搜索海盜，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:camppirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:pirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索海盜弓箭手，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:camparcherpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:archerpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索海盜船長，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campchiefpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:chiefpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

        #亞馬遜

            #以雷達站範圍，搜索亞馬遜戰士，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campamazon,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:amazon,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索亞馬遜長矛兵，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campamazonspearman,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:amazonspearman,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索亞馬遜領袖，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campamazonchief,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:amazonchief,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

        #木乃伊

            #以雷達站範圍，搜索木乃伊，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campmummy,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:mummy,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索木乃伊弓箭手，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:camparchermummy,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:archermummy,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索法老，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:camppharao,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:pharao,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

        #維京

            #以雷達站範圍，搜索維京盾兵，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campshieldmaiden,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:shieldmaiden,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索維京弓箭手，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campnorsemenarcher,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:norsemenarcher,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索維京首領，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campnorsemenchief,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:norsemenchief,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

        #沉屍海盜

            #以雷達站範圍，搜索沉屍海盜，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campdrownedpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:drownedpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索沉屍弓箭手，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campdrownedarcherpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:drownedarcherpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

            #以雷達站範圍，搜索沉屍首領，且該實體不是搜索目標，就作為搜索目標
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:campdrownedchiefpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target
            execute at @e[tag=anti_aircraft_missile_radar] as @e[type=minecolonies:drownedchiefpirate,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

    #Li___Bai

        #以雷達站範圍，搜索Li___Bai，且該實體不是搜索目標，就作為搜索目標
        #execute at @e[tag=anti_aircraft_missile_radar] as @e[name=Li___Bai,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

    #1

        #以雷達站範圍，搜索1，且該實體不是搜索目標，就作為搜索目標
        #execute at @e[tag=anti_aircraft_missile_radar] as @e[name=1,distance=200..1000] unless entity @s[tag=anti_aircraft_missile_target] run tag @s add anti_aircraft_missile_target

#多重鎖定

    #使目標可以被多重鎖定
    #execute as @e[tag=anti_aircraft_missile_locking] run tag @s remove anti_aircraft_missile_locking

#鎖定目標

    #發射站1

        #目標1

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站1，且不存在目標1，就將他作為目標1
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_1] if entity @e[tag=anti_aircraft_missile_launching_1] run function anti_aircraft_missile:search/launching_1/1

        #目標2

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站1，且不存在目標2，就將他作為目標2
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_2] if entity @e[tag=anti_aircraft_missile_launching_1] run function anti_aircraft_missile:search/launching_1/2

        #目標3

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站1，且不存在目標3，就將他作為目標3
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_3] if entity @e[tag=anti_aircraft_missile_launching_1] run function anti_aircraft_missile:search/launching_1/3

        #目標4

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站1，且不存在目標4，就將他作為目標4
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_4] if entity @e[tag=anti_aircraft_missile_launching_1] run function anti_aircraft_missile:search/launching_1/4

    #發射站2

        #目標5

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站2，且不存在目標5，就將他作為目標5
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_5] if entity @e[tag=anti_aircraft_missile_launching_2] run function anti_aircraft_missile:search/launching_2/1

        #目標6

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站2，且不存在目標6，就將他作為目標6
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_6] if entity @e[tag=anti_aircraft_missile_launching_2] run function anti_aircraft_missile:search/launching_2/2

        #目標7

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站2，且不存在目標7，就將他作為目標7
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_7] if entity @e[tag=anti_aircraft_missile_launching_2] run function anti_aircraft_missile:search/launching_2/3

        #目標8

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站2，且不存在目標8，就將他作為目標8
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_8] if entity @e[tag=anti_aircraft_missile_launching_2] run function anti_aircraft_missile:search/launching_2/4

    #發射站3

        #目標9

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站3，且不存在目標9，就將他作為目標9
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_9] if entity @e[tag=anti_aircraft_missile_launching_3] run function anti_aircraft_missile:search/launching_3/1

        #目標10

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站3，且不存在目標10，就將他作為目標10
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_10] if entity @e[tag=anti_aircraft_missile_launching_3] run function anti_aircraft_missile:search/launching_3/2

        #目標11

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站3，且不存在目標11，就將他作為目標11
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_11] if entity @e[tag=anti_aircraft_missile_launching_3] run function anti_aircraft_missile:search/launching_3/3

        #目標12

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站3，且不存在目標12，就將他作為目標12
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_12] if entity @e[tag=anti_aircraft_missile_launching_3] run function anti_aircraft_missile:search/launching_3/4

    #發射站4

        #目標13

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站4，且不存在目標13，就將他作為目標13
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_13] if entity @e[tag=anti_aircraft_missile_launching_4] run function anti_aircraft_missile:search/launching_4/1

        #目標14

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站4，且不存在目標14，就將他作為目標14
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_14] if entity @e[tag=anti_aircraft_missile_launching_4] run function anti_aircraft_missile:search/launching_4/2

        #目標15

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站4，且不存在目標15，就將他作為目標15
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_15] if entity @e[tag=anti_aircraft_missile_launching_4] run function anti_aircraft_missile:search/launching_4/3

        #目標16

            #距離雷達站最近的1個搜索目標，且沒有被導彈鎖定，且存在發射站4，且不存在目標16，就將他作為目標16
            execute at @e[tag=anti_aircraft_missile_radar] as @e[tag=anti_aircraft_missile_target,tag=!anti_aircraft_missile_locking,limit=1,sort=nearest] unless entity @e[tag=anti_aircraft_missile_target_16] if entity @e[tag=anti_aircraft_missile_launching_4] run function anti_aircraft_missile:search/launching_4/4
