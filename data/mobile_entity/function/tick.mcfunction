#持續檢測

#時間

    #取得時間
    execute store result score time mobile_entity run time query daytime

    #夜魅

        #如果白天，就清除夜晚召喚冷卻時間
        execute unless score time mobile_entity matches 13000..23000 run scoreboard players reset summon_dark mobile_entity

        #如果白天，就清除召喚夜魅數量
        execute unless score time mobile_entity matches 13000..23000 run scoreboard players reset phantom_count mobile_entity

    #殭屍

        #召喚

            #
            #execute if score zombie_time mobile_entity matches 1.. run scoreboard players remove zombie_time mobile_entity 1

            #
            #execute if score zombie_time mobile_entity matches 0 run scoreboard players reset zombie_time mobile_entity

        #支援

            #如果殭屍的召喚冷卻時間>=1，就倒數
            execute as @e[type=zombie,scores={mobile_entity=1..}] run scoreboard players remove @s mobile_entity 1

            #如果殭屍的召喚冷卻時間=0，就清除
            execute as @e[type=zombie,scores={mobile_entity=0}] run scoreboard players reset @s mobile_entity

#資料

    #設定資料
    #execute if entity @a run function mobile_entity:data

#召喚

    #如果存在玩家，且是晚上，就計時
    execute if entity @a if score time mobile_entity matches 13000..23000 run scoreboard players add summon_dark mobile_entity 1

    #夜魅

        #如果到達時間，就召喚夜魅
        execute if score summon_dark mobile_entity = summon_dark_set mobile_entity run function mobile_entity:phantom/set

    #殭屍

        #召喚

            #
            #execute as @e[type=zombie,sort=random,limit=10,predicate=public:chance,predicate=public:dark] at @s if score time mobile_entity matches 13000..23000 if block ~ ~-1 ~ grass_block unless entity @a[distance=..10] unless score zombie_time mobile_entity matches 1.. in minecraft:overworld run function mobile_entity:zombie/summon

        #支援

            #如果玩家攻擊殭屍，就讓殭屍呼叫支援
            #execute as @e[type=zombie,nbt={HurtTime:9s}] on attacker if entity @a as @e[type=zombie,nbt={HurtTime:9s}] at @s run function mobile_entity:zombie/support/set

    #如果到達時間，就重置計時
    execute if score summon_dark mobile_entity >= summon_dark_set mobile_entity run scoreboard players set summon_dark mobile_entity 0
