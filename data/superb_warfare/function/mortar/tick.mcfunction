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

        #計時器
        function superb_warfare:mortar/timer
