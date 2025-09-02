#計時器

    #計時
    scoreboard players add fire mortar_time 1

    #模式選擇(自動)

        #單點砲擊
        execute at @e[tag=mortar_1,type=armor_stand] at @e[tag=mortar_target,limit=1,distance=50..600] if score count mortar_parameter matches 0 if score bombardment mortar_parameter matches 2 run function superb_warfare:mortar/model/single_point_bombardment

        #多點砲擊
        execute at @e[tag=mortar_1,type=armor_stand] at @e[tag=mortar_target,limit=1,distance=50..600] if score count mortar_parameter matches 0 if score bombardment mortar_parameter matches 1 run function superb_warfare:mortar/model/more_bombardment

        #同時開火
        execute at @e[tag=mortar_1,type=armor_stand] at @e[tag=mortar_target,limit=1,distance=50..600] if score count mortar_parameter matches 0 if score firing mortar_parameter matches 1 run function superb_warfare:mortar/model/simultaneous_firing

        #持續開火
        execute at @e[tag=mortar_1,type=armor_stand] at @e[tag=mortar_target,limit=1,distance=50..600] if score count mortar_parameter matches 0 if score firing mortar_parameter matches 2 run function superb_warfare:mortar/model/continuous_firing

    #模式選擇(手動)

        #單點砲擊
        execute if score count mortar_parameter matches 1.. if score bombardment mortar_parameter matches 2 run function superb_warfare:mortar/model/single_point_bombardment

        #多點砲擊
        execute if score count mortar_parameter matches 1.. if score bombardment mortar_parameter matches 1 run function superb_warfare:mortar/model/more_bombardment

        #同時開火
        execute if score count mortar_parameter matches 1.. if score firing mortar_parameter matches 1 run function superb_warfare:mortar/model/simultaneous_firing

        #持續開火
        execute if score count mortar_parameter matches 1.. if score firing mortar_parameter matches 2 run function superb_warfare:mortar/model/continuous_firing

    #計數歸零
    execute if score fire mortar_time matches 40 run scoreboard players set count mortar_probability 0

    #砲數遞減
    execute if score fire mortar_time matches 40 if score count mortar_parameter matches 1.. run scoreboard players remove count mortar_parameter 1

    #清除砲擊座標
    execute if score fire mortar_time matches 40 as @e[tag=mortar_target,type=minecraft:area_effect_cloud] if score count mortar_parameter matches 0 run kill @s

    #計時歸零
    execute if score fire mortar_time matches 40.. run scoreboard players set fire mortar_time 0
