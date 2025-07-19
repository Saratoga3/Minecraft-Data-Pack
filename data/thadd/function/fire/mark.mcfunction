#建立標記

    #建立前標記

        #如果不存在前標記，就在導彈位置召喚前標記(測試)
        #execute at @e[tag=THADD_missile] unless entity @e[tag=THADD_front_mark] run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["THADD_front_mark"]}

        #如果不存在前標記，就在導彈位置召喚前標記
        execute at @e[tag=THADD_missile] unless entity @e[tag=THADD_front_mark] run summon marker ~ ~ ~ {Tags:["THADD_front_mark"]}

    #建立後標記

        #如果不存在後標記，就在導彈位置召喚後標記(測試)
        #execute at @e[tag=THADD_missile] unless entity @e[tag=THADD_later_mark] run summon armor_stand ~ ~5 ~ {Invulnerable:true,Glowing:true,Tags:["THADD_later_mark"]}

        #如果不存在後標記，就在導彈位置召喚後標記
        execute at @e[tag=THADD_missile] unless entity @e[tag=THADD_later_mark] run summon marker ~ ~ ~ {Tags:["THADD_later_mark"]}

    #標記鎖定

        #前標記視角看向目標前置量
        execute as @e[tag=THADD_front_mark] at @s facing entity @e[tag=THADD_target_offset] feet run tp ^ ^ ^

        #升空

            #如果導彈還沒升空，就讓後標記視角看向天空
            execute as @e[tag=THADD_later_mark] at @s if score missile THADD_set < hot_launch THADD_set run tp @s ~ ~ ~ ~ ~-90

        #前標記位置定位在後標記的前方
        execute as @e[tag=THADD_front_mark] at @e[tag=THADD_later_mark] run tp ^ ^ ^5

    #標記轉彎

        #熱發射

            #如果熱發射還沒解除，就讓前標記傳送至目標前置量，轉彎係數小
            execute as @e[tag=THADD_front_mark] at @s facing entity @e[tag=THADD_target_offset] feet if score missile THADD_set >= hot_launch THADD_set if score missile THADD_set < safety THADD_set run tp ^ ^ ^0.2

        #飛行

            #如果熱發射已經解除，就讓前標記傳送至目標前置量，轉彎係數大
            execute as @e[tag=THADD_front_mark] at @s facing entity @e[tag=THADD_target_offset] feet if score missile THADD_set >= safety THADD_set run tp ^ ^ ^2

        #後標記傳送至前標記，調整飛行速度
        execute as @e[tag=THADD_later_mark] at @s facing entity @e[tag=THADD_front_mark] feet run tp ^ ^ ^10

    #例外狀況

        #如果前標記距離目標前置量的1格內，就將前標記傳送至自己的0.1,0.1,0.1的位置
        execute as @e[tag=THADD_front_mark] at @s if entity @e[tag=THADD_target_offset,distance=..1] run tp ^0.1 ^0.1 ^0.1

        #如果不存在導彈，就刪除前標記
        execute as @e[tag=THADD_front_mark] unless entity @e[tag=THADD_missile] run kill @s

        #如果不存在導彈，就刪除後標記
        execute as @e[tag=THADD_later_mark] unless entity @e[tag=THADD_missile] run kill @s
