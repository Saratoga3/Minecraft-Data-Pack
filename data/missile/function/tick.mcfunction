#持續檢測

#重新佈署：

    #建立基座：

        #如果存在名稱為missile_base且是盔甲座的實體，且世界不存在標籤(missile_base)，就給該實體1個標籤(missile_base)
        execute as @e[name="missile_base",type=armor_stand,limit=1] unless entity @e[tag=missile_base] run tag @s add missile_base

        #如果存在名稱為missile_base且不是玩家的實體，且世界不存在標籤(missile_base)，就給該實體1個標籤(missile_base)
        #execute as @e[name="missile_base",type=!player,limit=1] unless entity @e[tag=missile_base] run tag @s add missile_base

    #如果存在基座，就執行重新部署函數
    execute if entity @e[tag=missile_base] run function missile:redeploy

    #如果不存在基座，且存在標籤(missile_no)的實體，就清除所有實體上的標籤(missile_no)
    execute unless entity @e[tag=missile_base] if entity @e[tag=missile_no] run tag @e remove missile_no

#加載區塊：

    #如果存在基座，就執行missile:forceload
    execute if entity @e[tag=missile_base] run function missile:forceload

    #如果不存在基座，且存在區塊標記_基座，就執行missile:forceload
    execute unless entity @e[tag=missile_base] if entity @e[tag=missile_forceload] run function missile:forceload

    #如果不存在基座，且存在區塊標記_導彈，就執行missile:forceload
    execute unless entity @e[tag=missile_base] if entity @e[tag=missile_forceload1] run function missile:forceload

#目標是玩家：

    #如果目標是玩家，且該實體不存在標籤(missile_player)，就給該實體1個標籤(missile_player)
    execute as @e[tag=missile_target] if entity @s[type=player] unless entity @s[tag=missile_player] run tag @s add missile_player

    #如果目標是玩家，且不存在目標，就刪除該實體標籤(missile_player)
    execute as @e[tag=missile_player] unless entity @s[tag=missile_target] run tag @s remove missile_player

#顯示目標：

    #如果該目標是玩家，且沒有發光效果，且在基座範圍500格內，就給目標發光效果
    execute as @e[tag=missile_target,type=player,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] at @s at @e[tag=missile_base,distance=..500] run effect give @s glowing 999999 0 true

    #如果目標不是玩家，且該實體沒有發光狀態，就給該實體發光狀態
    execute as @e[tag=missile_target,type=!player] at @s at @e[tag=missile_base,distance=..500] unless data entity @s {Glowing:1b} run data modify entity @s Glowing set value true

    #如果目標是物品，且該實體沒有發光狀態，就給該實體發光狀態
    #execute as @e[tag=missile_target,type=item] at @s at @e[tag=missile_base,distance=..500] unless data entity @s {Glowing:1b} run data modify entity @s Glowing set value 1

#目標前置量：

    #存在目標，就獲取目標前置量
    execute if entity @e[tag=missile_target] run function missile:get_coordinates

#目標距離：

    #存在導彈，就依照距離調整目標前置量
    execute if entity @e[tag=missile] run function missile:distance

#標記：

    #建立標記：

        #如果不存在標記，且導彈分數>=保險分數，就在導彈位置召喚標記
        #execute at @e[tag=missile] unless entity @e[tag=missile_mark] if score missile missile_time >= missile_safety missile_time run summon armor_stand ~ ~5 ~ {Invulnerable:1b,Glowing:1b,Tags:["missile_mark"],CustomName:'[{"text":"","italic":false},{"text":"missile_mark"}]'}

        #如果不存在標記2，且導彈分數>=保險分數，就在導彈位置召喚標記2
        #execute at @e[tag=missile] unless entity @e[tag=missile_mark2] if score missile missile_time >= missile_safety missile_time run summon armor_stand ~ ~5 ~ {Invulnerable:1b,Glowing:1b,Tags:["missile_mark2"],CustomName:'[{"text":"","italic":false},{"text":"missile_mark2"}]'}

        #如果不存在標記，且導彈分數>=保險分數，就在導彈位置召喚標記
        execute at @e[tag=missile] unless entity @e[tag=missile_mark] if score missile missile_time >= missile_safety missile_time run summon area_effect_cloud ~ ~ ~ {Tags:["missile_mark"],Duration:2147483647,CustomName:'[{"text":"","italic":false},{"text":"missile_mark"}]'}

        #如果不存在標記2，且導彈分數>=保險分數，就在導彈位置召喚標記2
        execute at @e[tag=missile] unless entity @e[tag=missile_mark2] if score missile missile_time >= missile_safety missile_time run summon area_effect_cloud ~ ~ ~ {Tags:["missile_mark2"],Duration:2147483647,CustomName:'[{"text":"","italic":false},{"text":"missile_mark2"}]'}

    #標記視角看向目標前置量
    execute as @e[tag=missile_mark] at @s facing entity @e[tag=missile_target_offset] feet run tp ^ ^ ^

    #如果不存在尾煙，就讓標記2視角看向天空(熱發射)
    #execute as @e[tag=missile_mark2] at @s unless entity @e[tag=missile_tail] run tp @s ~ ~ ~ ~ ~-90

    #如果不存在尾煙，就讓標記2視角看向目標前置量(冷發射)
    execute as @e[tag=missile_mark2] at @s facing entity @e[tag=missile_target_offset] feet unless entity @e[tag=missile_tail] run tp ^ ^ ^

    #標記位置定位在標記2的前方第3格
    execute as @e[tag=missile_mark] at @e[tag=missile_mark2] run tp ^ ^ ^3

    #標記速度：

        #非玩家：

            #標記傳送至目標前置量，轉彎係數1
            execute as @e[tag=missile_mark] at @s facing entity @e[tag=missile_target_offset] feet if entity @e[tag=missile_target,type=!player] run tp ^ ^ ^1

            #標記傳送至標記2，飛行速度2
            execute as @e[tag=missile_mark2] at @s facing entity @e[tag=missile_mark] feet if entity @e[tag=missile_target,type=!player] run tp ^ ^ ^2

        #玩家：

            #標記傳送至目標前置量，轉彎係數1
            execute as @e[tag=missile_mark] at @s facing entity @e[tag=missile_target_offset] feet if entity @e[tag=missile_target,type=player] run tp ^ ^ ^1

            #標記傳送至標記2，飛行速度2
            execute as @e[tag=missile_mark2] at @s facing entity @e[tag=missile_mark] feet if entity @e[tag=missile_target,type=player] run tp ^ ^ ^2

    #如果標記距離目標1格內，就將標記傳送至自己的0.1,0.1,0.1的位置
    execute as @e[tag=missile_mark] at @s if entity @e[tag=missile_target,distance=..1] run tp ^0.1 ^0.1 ^0.1

    #如果不存在導彈，就刪除標記
    execute as @e[tag=missile_mark] unless entity @e[tag=missile] run kill @s

    #如果不存在導彈，就刪除標記2
    execute as @e[tag=missile_mark2] unless entity @e[tag=missile] run kill @s

    #如果不存在導彈，就刪除尾煙
    execute as @e[tag=missile_tail] unless entity @e[tag=missile] run kill @s

    #刪除目標前置量
    kill @e[tag=missile_target_offset]

    #如果不存在導彈，就刪除目標前置量
    #execute as @e[tag=missile_target_offset] unless entity @e[tag=missile] run kill @s

#導彈運動：

    #如果存在導彈，且導彈分數<保險分數，就設定運動分數=0
    execute if entity @e[tag=missile] if score missile missile_time < missile_safety missile_time run scoreboard players set missile_motion missile_time 0

    #如果存在基座，且存在目標，就讓導彈分數+1
    execute if entity @e[tag=missile_base] if entity @e[tag=missile_target] run scoreboard players add missile missile_time 1

    #如果存在導彈，且導彈分數>保險分數，就讓運動分數+1
    execute if entity @e[tag=missile] if score missile missile_time > missile_safety missile_time run scoreboard players add missile_motion missile_time 1

    #飛向目標：

        #如果存在導彈，且導彈分數>保險分數，就讓導彈飛向目標
        execute if entity @e[tag=missile] if score missile missile_time > missile_safety missile_time run function missile:motion

        #如果運動分數=1，就讓導彈飛向目標
        #execute if score missile_motion missile_time matches 1 run function missile:motion

        #如果運動分數=1，就設定運動分數=0
        #execute if score missile_motion missile_time matches 1 run scoreboard players set missile_motion missile_time 0

#命中目標：

    #如果導彈接近目標3格內，且導彈達到臨界點，就執行命中目標函數
    execute as @e[tag=missile] at @s if entity @e[tag=missile_target,distance=..3] if score missile missile_time >= missile_safety missile_time run function missile:explode_success

#防爆-關閉

    #延長防爆時間，確保防爆正確執行
    execute if score exploding missile_time matches 1.. run scoreboard players add exploding missile_time 1

    #關閉防爆
    execute if score exploding missile_time matches 3 run gamerule mobGriefing true

    #重置開啟防爆時間
    execute if score exploding missile_time matches 3.. run scoreboard players set exploding missile_time 0

#例外狀況：

    #導彈觸地：

        #如果導彈碰到方塊，就執行導彈觸地函數
        execute as @e[tag=missile] if entity @s[nbt={inGround:true}] run function missile:exceptions_missile_touchdown

    #目標消失：

        #如果不存在目標，就執行目標消失函數
        execute as @e[tag=missile] unless entity @e[tag=missile_target] run function missile:exceptions_target_disappear

    #目標超出雷達指引範圍：

        #如果目標超過基座範圍500格，就執行目標超出雷達指引範圍函數
        execute at @e[tag=missile_target] at @e[tag=missile_base,distance=500..] run function missile:exceptions_distance_over

    #目標超出導彈射程範圍：

        #如果導彈燃料耗盡，就執行目標超出導彈射程範圍函數
        execute if score missile missile_time > missile_no missile_time run function missile:exceptions_time_over

    #基座消失：

        #如果不存在基座，且存在目標，就執行基座消失函數
        execute unless entity @e[tag=missile_base] if entity @e[tag=missile_target] run function missile:exceptions_base_disappear
