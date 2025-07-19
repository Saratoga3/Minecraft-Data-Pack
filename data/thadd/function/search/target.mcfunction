#搜索目標

    #夜魅

        #以雷達車範圍，且距離最近的1個夜魅作為搜索目標
        #execute at @e[tag=THADD_radar] as @e[type=phantom,limit=1,distance=200..1000,sort=nearest] unless entity @e[tag=THADD_target] run tag @s add THADD_target

    #箭矢

        #以雷達車範圍，且距離最近的1個箭矢作為搜索目標
        #execute at @e[tag=THADD_radar] as @e[type=arrow,limit=1,distance=200..1000,sort=nearest] unless entity @e[tag=THADD_target] run tag @s add THADD_target

    #追跡之箭

        #以雷達車範圍，且距離最近的1個追跡之箭作為搜索目標
        #execute at @e[tag=THADD_radar] as @e[type=minecraft:spectral_arrow,limit=1,distance=200..1000,sort=nearest] unless entity @e[tag=THADD_target] run tag @s add THADD_target

    #Li___Bai

        #以雷達車範圍，且距離最近的1個Li___Bai作為搜索目標
        #execute at @e[tag=THADD_radar] as @e[name=Li___Bai,limit=1,distance=200..1000,sort=nearest] unless entity @e[tag=THADD_target] run tag @s add THADD_target

    #1

        #以雷達車範圍，且距離最近的1個1作為搜索目標
        #execute at @e[tag=THADD_radar] as @e[name=1,limit=1,distance=200..1000,sort=nearest] unless entity @e[tag=THADD_target] run tag @s add THADD_target

    #創世殖民

        #野蠻人

            #以雷達車範圍，搜索野蠻人，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campbarbarian,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索野蠻人弓箭手，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:camparcherbarbarian,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索野蠻人首領，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campchiefbarbarian,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

        #海盜

            #以雷達車範圍，搜索海盜，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:camppirate,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索海盜弓箭手，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:camparcherpirate,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索海盜船長，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campchiefpirate,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

        #亞馬遜

            #以雷達車範圍，搜索亞馬遜戰士，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campamazon,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索亞馬遜長矛兵，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campamazonspearman,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索亞馬遜領袖，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campamazonchief,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

        #木乃伊

            #以雷達車範圍，搜索木乃伊，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campmummy,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索木乃伊弓箭手，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:camparchermummy,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索法老，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:camppharao,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

        #維京

            #以雷達車範圍，搜索維京盾兵，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campshieldmaiden,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索維京弓箭手，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campnorsemenarcher,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索維京首領，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campnorsemenchief,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

        #沉屍海盜

            #以雷達車範圍，搜索沉屍海盜，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campdrownedpirate,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索沉屍弓箭手，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campdrownedarcherpirate,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target

            #以雷達車範圍，搜索沉屍首領，且該實體不是搜索目標，就作為搜索目標
            #execute at @e[tag=THADD_radar] as @e[type=minecolonies:campdrownedchiefpirate,limit=1,distance=200..1000,sort=nearest] unless entity @s[tag=THADD_target] run tag @s add THADD_target
