#持續檢測

#計時器

    #全域

        #計時
        scoreboard players add detection mortar_time 1

        #觸發
        execute if score detection mortar_time matches 20 run function superb_warfare:mortar/detection

        #歸零
        execute if score detection mortar_time matches 20.. run scoreboard players set detection mortar_time 0

    #迫擊砲

        #目標

            #計時
            execute if score open mortar_auto matches 1 run scoreboard players add target mortar_time 1

            #歸零(冷卻系統)

                #再次廣播自動搜索砲擊目標
                execute if score target mortar_time matches 1200.. run scoreboard players set open mortar_auto 0

                #目標
                execute if score target mortar_time matches 1200.. run scoreboard players set target mortar_time 0

        #計時器
        execute at @e[tag=mortar_1,type=armor_stand] at @e[tag=mortar_target,limit=1,distance=50..600] run function superb_warfare:mortar/timer
