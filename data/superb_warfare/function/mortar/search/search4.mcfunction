#自動搜索砲擊目標

#創世殖民

    #野蠻人

        #以迫擊砲範圍，搜索野蠻人，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campbarbarian,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:barbarian,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索野蠻人弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:camparcherbarbarian,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:archerbarbarian,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索野蠻人首領，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campchiefbarbarian,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:chiefbarbarian,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

    #海盜

        #以迫擊砲範圍，搜索海盜，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:camppirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:pirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索海盜弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:camparcherpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:archerpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索海盜船長，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campchiefpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:chiefpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

    #亞馬遜

        #以迫擊砲範圍，搜索亞馬遜戰士，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campamazon,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:amazon,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索亞馬遜長矛兵，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campamazonspearman,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:amazonspearman,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索亞馬遜領袖，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campamazonchief,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:amazonchief,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

    #木乃伊

        #以迫擊砲範圍，搜索木乃伊，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campmummy,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:mummy,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索木乃伊弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:camparchermummy,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:archermummy,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索法老，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:camppharao,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:pharao,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

    #維京

        #以迫擊砲範圍，搜索維京盾兵，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campshieldmaiden,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:shieldmaiden,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索維京弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campnorsemenarcher,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:norsemenarcher,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索維京首領，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campnorsemenchief,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:norsemenchief,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

    #沉屍海盜

        #以迫擊砲範圍，搜索沉屍海盜，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campdrownedpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:drownedpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索沉屍弓箭手，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campdrownedarcherpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:drownedarcherpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

        #以迫擊砲範圍，搜索沉屍首領，且該實體不是搜索目標，就作為搜索目標
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:campdrownedchiefpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target
        execute at @e[tag=mortar_1,type=armor_stand] as @e[type=minecolonies:drownedchiefpirate,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

#沉浸工程

    #燧發槍

        #以迫擊砲範圍，搜索燧發槍，且該實體不是搜索目標，就作為搜索目標
        #execute at @e[tag=mortar_1,type=armor_stand] as @e[type=immersiveengineering:fusilier,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

    #重甲兵

        #以迫擊砲範圍，搜索重甲兵，且該實體不是搜索目標，就作為搜索目標
        #execute at @e[tag=mortar_1,type=armor_stand] as @e[type=immersiveengineering:bulwark,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

    #突擊隊員

        #以迫擊砲範圍，搜索突擊隊員，且該實體不是搜索目標，就作為搜索目標
        #execute at @e[tag=mortar_1,type=armor_stand] as @e[type=immersiveengineering:commando,tag=!mortar_target,distance=50..600] at @s run tag @s add mortar_target

#輸入射擊參數

    #散布模式
    execute if entity @e[tag=mortar_target,tag=!hostile_mob,type=!minecraft:area_effect_cloud] if score target mortar_parameter matches 0 unless score spread mortar_parameter matches 1 run scoreboard players set spread mortar_parameter 1

    #砲擊模式
    execute if entity @e[tag=mortar_target,tag=!hostile_mob,type=!minecraft:area_effect_cloud] if score target mortar_parameter matches 0 unless score bombardment mortar_parameter matches 1 run scoreboard players set bombardment mortar_parameter 1

    #開火模式
    execute if entity @e[tag=mortar_target,tag=!hostile_mob,type=!minecraft:area_effect_cloud] if score target mortar_parameter matches 0 unless score firing mortar_parameter matches 1..2 run scoreboard players set firing mortar_parameter 1

#廣播自動搜索砲擊目標

    #
    execute if entity @e[tag=mortar_target,tag=!hostile_mob,type=!minecraft:area_effect_cloud] if score target mortar_parameter matches 0 run function superb_warfare:mortar/tellraw/tellraw4

#目標發光

    #
    execute as @e[tag=mortar_target,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] run effect give @s glowing infinite 0 true

    #
    execute as @e[tag=mortar_target,tag=hostile_mob,nbt={active_effects:[{id:"minecraft:glowing"}]}] if score count mortar_parameter matches 0 run effect clear @s glowing

#移除目標

    #
    execute as @e[tag=mortar_target,tag=hostile_mob] if score count mortar_parameter matches 0 run tag @s remove mortar_target
