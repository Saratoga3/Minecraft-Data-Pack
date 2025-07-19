#導彈運動

#導彈：

    #在導彈的位置，召喚目的
    execute at @e[tag=missile] run summon area_effect_cloud ~ ~ ~ {Tags:["missile_object"],Duration:2147483647}

    #將目的的視角看向標記
    execute as @e[tag=missile_object] at @s facing entity @e[tag=missile_mark] feet run tp ^ ^ ^

    #導彈速度：

        #非玩家：

            #將目的從(0,0,0)往標記移動2格
            execute rotated as @e[tag=missile_object] positioned 0.0 0.0 0.0 if entity @e[tag=missile_mark,type=!player] run tp @e[tag=missile_object,limit=1] ^ ^ ^2

        #玩家：

            #將目的從(0,0,0)往標記移動2格
            execute rotated as @e[tag=missile_object] positioned 0.0 0.0 0.0 if entity @e[tag=missile_mark,type=player] run tp @e[tag=missile_object,limit=1] ^ ^ ^2

    #將目的的座標，存入導彈的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=missile,limit=1] Motion set from entity @e[tag=missile_object,limit=1] Pos

#尾煙：

    #如果沒有標籤(missile_tail)，就在導彈位置召喚標籤(missile_tail)
    execute at @e[tag=missile] unless entity @e[tag=missile_tail] run summon area_effect_cloud ~ ~ ~ {Tags:["missile_tail"],Duration:2147483647,CustomName:'[{"text":"","italic":false},{"text":"missile_tail"}]'}

    #尾煙速度：

        #非玩家：

            #召喚導彈尾煙
            execute at @e[tag=missile_tail] if entity @e[tag=missile_target,type=!player] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.5 0.9 0 100 force @a

        #玩家：

            #召喚導彈尾煙
            #execute at @e[tag=missile_tail] if entity @e[tag=missile_target,type=player] run particle campfire_cosy_smoke ~ ~ ~ 1.8 1 1.8 0 200 force @a
            execute at @e[tag=missile_tail] if entity @e[tag=missile_target,type=player] run particle campfire_cosy_smoke ~ ~ ~ 0.9 0.5 0.9 0 100 force @a

    #標籤(missile_tail)傳送至導彈位置
    execute as @e[tag=missile_tail] at @e[tag=missile] run tp ~ ~ ~

#刪除目的
kill @e[tag=missile_object]
