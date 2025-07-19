#持續檢測

#佈署終端高空防禦導彈陣地等待時間

    #雷達車

        #如果雷達車的盔甲座佈署等待時間>佈署等待時間，且不存在雷達車，就設定雷達車盔甲座的佈署等待時間(確保只給一次佈署等待時間)
        execute as @e[name="終端高空防禦導彈雷達車",limit=1] unless score @s THADD_set < base_interval THADD_set unless entity @e[tag=THADD_radar] run scoreboard players operation @s THADD_set = base_interval THADD_set

        #如果雷達車的盔甲座佈署等待時間=!0，且不存在雷達車，就倒數時間
        execute as @e[name="終端高空防禦導彈雷達車",limit=1] unless score @s THADD_set matches 0 unless entity @e[tag=THADD_radar] run scoreboard players remove @s THADD_set 1

    #發射車

        #如果發射車的盔甲座佈署等待時間>佈署等待時間，且不存在發射車，就設定發射車盔甲座的佈署等待時間(確保只給一次佈署等待時間)
        execute as @e[name="終端高空防禦導彈發射車",limit=1] unless score @s THADD_set < base_interval THADD_set unless entity @e[tag=THADD_launching] run scoreboard players operation @s THADD_set = base_interval THADD_set

        #如果發射車的盔甲座佈署等待時間=!0，且不存在發射車，就倒數時間
        execute as @e[name="終端高空防禦導彈發射車",limit=1] unless score @s THADD_set matches 0 unless entity @e[tag=THADD_launching] run scoreboard players remove @s THADD_set 1

#佈署終端高空防禦導彈陣地

    #雷達車

        #如果存在雷達車的盔甲座，且不存在雷達車，且雷達車的盔甲座佈署等待時間=0，就給他THADD_radar標籤
        execute as @e[name="終端高空防禦導彈雷達車",type=armor_stand,limit=1] unless entity @e[tag=THADD_radar] if score @s THADD_set matches 0 run tag @s add THADD_radar

        #如果存在雷達車，就讓雷達車運轉
        execute if entity @e[tag=THADD_radar] run function thadd:self_test/radar

    #發射車

        #如果存在發射車的盔甲座，且不存在發射車，且發射車的盔甲座佈署等待時間=0，就給他THADD_launching標籤
        execute as @e[name="終端高空防禦導彈發射車",type=armor_stand,limit=1] unless entity @e[tag=THADD_launching] if score @s THADD_set matches 0 run tag @s add THADD_launching

        #如果存在發射車，就讓發射車運轉
        execute if entity @e[tag=THADD_launching] run function thadd:self_test/launching

#建立終端高空防禦導彈隊伍

    #如果雷達車不在終端高空防禦導彈隊伍中，就將雷達車加入終端高空防禦導彈隊伍
    execute as @e[tag=THADD_radar,team=!THADD] run team join THADD

    #如果發射車不在終端高空防禦導彈隊伍中，就將發射車加入終端高空防禦導彈隊伍
    execute as @e[tag=THADD_launching,team=!THADD] run team join THADD

#常駐終端高空防禦導彈陣地

    #雷達車

        #如果存在雷達車，就加載雷達車
        execute at @e[tag=THADD_radar] unless loaded ~ ~ ~ run function thadd:forceload/radar

        #如果不存在雷達車，且存在加載_雷達車，就解除加載雷達車
        execute unless entity @e[tag=THADD_radar] if entity @e[tag=THADD_radar_forceload] run function thadd:forceload/radar

    #發射車

        #如果存在發射車，就加載發射車
        execute at @e[tag=THADD_launching] unless loaded ~ ~ ~ run function thadd:forceload/launching

        #如果不存在發射車，且存在加載_發射車，就解除加載發射車
        execute unless entity @e[tag=THADD_launching] if entity @e[tag=THADD_launching_forceload] run function thadd:forceload/launching

    #導彈

        #如果存在導彈，就加載導彈
        execute if entity @e[tag=THADD_missile] run function thadd:forceload/missile

        #如果不存在導彈，且存在加載_導彈，就解除加載導彈
        execute unless entity @e[tag=THADD_missile] if entity @e[tag=THADD_missile_forceload] run function thadd:forceload/missile

#搜索目標

    #如果存在雷達車，就搜索目標
    execute if entity @e[tag=THADD_radar] run function thadd:search/target

#顯示目標

    #如果目標不在終端高空防禦導彈隊伍中，就將目標加入終端高空防禦導彈隊伍
    execute as @e[tag=THADD_target,team=!THADD] run team join THADD

    #如果存在目標，就顯示目標
    execute if entity @e[tag=THADD_target] run function thadd:search/glowing

#導彈計時

    #如果存在發射車，且存在目標，就增加導彈當前時間(確保導彈能在發射車存在時才運作)
    execute if entity @e[tag=THADD_launching] if entity @e[tag=THADD_target] run scoreboard players add missile THADD_set 1

    #如果不存在發射車，且存在導彈，就增加導彈當前時間(確保導彈不會因發射車被毀而沒反應)
    execute unless entity @e[tag=THADD_launching] if entity @e[tag=THADD_missile] run scoreboard players add missile THADD_set 1

#發射導彈

    #如果存在發射車，且不存在導彈，且導彈當前時間>發射時間，就發射導彈
    execute if entity @e[tag=THADD_launching] unless entity @e[tag=THADD_missile] if score missile THADD_set >= fire THADD_set run function thadd:fire/fire

#計算目標前置量

    #取得與目標的距離
    execute if entity @e[tag=THADD_target] run function thadd:advance_range/distance

    #取得目標的位移量
    execute if entity @e[tag=THADD_target] run function thadd:advance_range/get

    #取得目標的前置量
    execute if entity @e[tag=THADD_target] run function thadd:advance_range/deflection

#標記飛行

    #如果標記可以飛行，就讓標記飛行
    execute if score missile THADD_set >= fire THADD_set run function thadd:fire/mark

#導彈飛行

    #如果導彈可以飛行，就讓導彈飛行
    execute if score missile THADD_set >= flight THADD_set run function thadd:fire/motion

#命中處理

    #命中目標

        #如果導彈接近目標，且導彈已解除保險，就執行命中處理
        execute at @e[tag=THADD_missile] if entity @e[tag=THADD_target,distance=..7] if score missile THADD_set > safety THADD_set run function thadd:result/hit

    #導彈觸地

        #如果導彈觸地，就執行命中處理
        execute as @e[tag=THADD_missile,nbt={inGround:true}] run function thadd:result/hit

    #目標消失

        #如果目標消失，且導彈當前時間不為0，就執行命中處理
        execute unless entity @e[tag=THADD_target] unless score missile THADD_set matches 0 run function thadd:result/hit

    #目標超出終端高空防禦導彈雷達車範圍

        #如果目標超出雷達車範圍，就執行命中處理
        execute at @e[tag=THADD_target] unless entity @e[tag=THADD_radar,distance=200..1000] run function thadd:result/hit

    #目標超出終端高空防禦導彈射程範圍

        #如果導彈燃料耗盡，就執行命中處理
        execute if score missile THADD_set > fuze THADD_set run function thadd:result/hit

    #終端高空防禦導彈雷達車消失

        #如果雷達車被毀，且存在搜索目標，就執行命中處理
        execute unless entity @e[tag=THADD_radar] if entity @e[tag=THADD_target] run function thadd:result/hit
