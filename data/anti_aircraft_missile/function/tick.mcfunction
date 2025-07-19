#持續檢測

#佈署防空導彈陣地等待時間

    #雷達站

        #如果雷達站的盔甲座佈署等待時間>佈署等待時間，且不存在雷達站，就設定雷達站盔甲座的佈署等待時間(確保只給一次佈署等待時間)
        execute as @e[name="防空導彈雷達站",limit=1] unless score @s anti_aircraft_missile_set < base_interval anti_aircraft_missile_set unless entity @e[tag=anti_aircraft_missile_radar,limit=1] run scoreboard players operation @s anti_aircraft_missile_set = base_interval anti_aircraft_missile_set

        #如果雷達站的盔甲座佈署等待時間=!0，且不存在雷達站，就倒數時間
        execute as @e[name="防空導彈雷達站",limit=1] unless score @s anti_aircraft_missile_set matches 0 unless entity @e[tag=anti_aircraft_missile_radar,limit=1] run scoreboard players remove @s anti_aircraft_missile_set 1

    #發射站1

        #如果發射站1的盔甲座佈署等待時間>佈署等待時間，且不存在發射站1，就設定發射站1盔甲座的佈署等待時間(確保只給一次佈署等待時間)
        execute as @e[name="防空導彈發射站1",limit=1] unless score @s anti_aircraft_missile_set < base_interval anti_aircraft_missile_set unless entity @e[tag=anti_aircraft_missile_launching_1,limit=1] run scoreboard players operation @s anti_aircraft_missile_set = base_interval anti_aircraft_missile_set

        #如果發射站1的盔甲座佈署等待時間=!0，且不存在發射站1，就倒數時間
        execute as @e[name="防空導彈發射站1",limit=1] unless score @s anti_aircraft_missile_set matches 0 unless entity @e[tag=anti_aircraft_missile_launching_1,limit=1] run scoreboard players remove @s anti_aircraft_missile_set 1

    #發射站2

        #如果發射站2的盔甲座佈署等待時間>佈署等待時間，且不存在發射站2，就設定發射站2盔甲座的佈署等待時間(確保只給一次佈署等待時間)
        execute as @e[name="防空導彈發射站2",limit=1] unless score @s anti_aircraft_missile_set < base_interval anti_aircraft_missile_set unless entity @e[tag=anti_aircraft_missile_launching_2,limit=1] run scoreboard players operation @s anti_aircraft_missile_set = base_interval anti_aircraft_missile_set

        #如果發射站2的盔甲座佈署等待時間=!0，且不存在發射站2，就倒數時間
        execute as @e[name="防空導彈發射站2",limit=1] unless score @s anti_aircraft_missile_set matches 0 unless entity @e[tag=anti_aircraft_missile_launching_2,limit=1] run scoreboard players remove @s anti_aircraft_missile_set 1

    #發射站3

        #如果發射站3的盔甲座佈署等待時間>佈署等待時間，且不存在發射站3，就設定發射站3盔甲座的佈署等待時間(確保只給一次佈署等待時間)
        execute as @e[name="防空導彈發射站3",limit=1] unless score @s anti_aircraft_missile_set < base_interval anti_aircraft_missile_set unless entity @e[tag=anti_aircraft_missile_launching_3,limit=1] run scoreboard players operation @s anti_aircraft_missile_set = base_interval anti_aircraft_missile_set

        #如果發射站3的盔甲座佈署等待時間=!0，且不存在發射站3，就倒數時間
        execute as @e[name="防空導彈發射站3",limit=1] unless score @s anti_aircraft_missile_set matches 0 unless entity @e[tag=anti_aircraft_missile_launching_3,limit=1] run scoreboard players remove @s anti_aircraft_missile_set 1

    #發射站4

        #如果發射站4的盔甲座佈署等待時間>佈署等待時間，且不存在發射站4，就設定發射站4盔甲座的佈署等待時間(確保只給一次佈署等待時間)
        execute as @e[name="防空導彈發射站4",limit=1] unless score @s anti_aircraft_missile_set < base_interval anti_aircraft_missile_set unless entity @e[tag=anti_aircraft_missile_launching_4,limit=1] run scoreboard players operation @s anti_aircraft_missile_set = base_interval anti_aircraft_missile_set

        #如果發射站4的盔甲座佈署等待時間=!0，且不存在發射站4，就倒數時間
        execute as @e[name="防空導彈發射站4",limit=1] unless score @s anti_aircraft_missile_set matches 0 unless entity @e[tag=anti_aircraft_missile_launching_4,limit=1] run scoreboard players remove @s anti_aircraft_missile_set 1

#佈署防空導彈陣地

    #建立防空導彈雷達站

        #如果存在雷達站的盔甲座，且不存在雷達站，就給他雷達站標籤
        execute as @e[name="防空導彈雷達站",type=armor_stand,limit=1] unless entity @e[tag=anti_aircraft_missile_radar,limit=1] if score @s anti_aircraft_missile_set matches 0 run tag @s add anti_aircraft_missile_radar

        #如果存在雷達站，就讓雷達站運轉
        execute if entity @e[tag=anti_aircraft_missile_radar,limit=1] run function anti_aircraft_missile:self_test/radar

    #建立防空導彈發射站

        #發射站1

            #如果存在發射站1的盔甲座，且不存在發射站1，就給他發射站1標籤
            execute as @e[name="防空導彈發射站1",type=armor_stand,limit=1] unless entity @e[tag=anti_aircraft_missile_launching_1,limit=1] if score @s anti_aircraft_missile_set matches 0 run tag @s add anti_aircraft_missile_launching_1

            #如果存在發射站1，且該實體沒有發射站標籤，就給他發射站標籤
            execute as @e[tag=anti_aircraft_missile_launching_1,limit=1] unless entity @s[tag=anti_aircraft_missile_launching] run tag @s add anti_aircraft_missile_launching

        #發射站2

            #如果存在發射站2的盔甲座，且不存在發射站2，就給他發射站2標籤
            execute as @e[name="防空導彈發射站2",type=armor_stand,limit=1] unless entity @e[tag=anti_aircraft_missile_launching_2,limit=1] if score @s anti_aircraft_missile_set matches 0 run tag @s add anti_aircraft_missile_launching_2

            #如果存在發射站2，且該實體沒有發射站標籤，就給他發射站標籤
            execute as @e[tag=anti_aircraft_missile_launching_2,limit=1] unless entity @s[tag=anti_aircraft_missile_launching] run tag @s add anti_aircraft_missile_launching

        #發射站3

            #如果存在發射站3的盔甲座，且不存在發射站3，就給他發射站3標籤
            execute as @e[name="防空導彈發射站3",type=armor_stand,limit=1] unless entity @e[tag=anti_aircraft_missile_launching_3,limit=1] if score @s anti_aircraft_missile_set matches 0 run tag @s add anti_aircraft_missile_launching_3

            #如果存在發射站3，且該實體沒有發射站標籤，就給他發射站標籤
            execute as @e[tag=anti_aircraft_missile_launching_3,limit=1] unless entity @s[tag=anti_aircraft_missile_launching] run tag @s add anti_aircraft_missile_launching

        #發射站4

            #如果存在發射站4的盔甲座，且不存在發射站4，就給他發射站4標籤
            execute as @e[name="防空導彈發射站4",type=armor_stand,limit=1] unless entity @e[tag=anti_aircraft_missile_launching_4,limit=1] if score @s anti_aircraft_missile_set matches 0 run tag @s add anti_aircraft_missile_launching_4

            #如果存在發射站4，且該實體沒有發射站標籤，就給他發射站標籤
            execute as @e[tag=anti_aircraft_missile_launching_4,limit=1] unless entity @s[tag=anti_aircraft_missile_launching] run tag @s add anti_aircraft_missile_launching

        #如果存在發射站，就讓發射站運轉
        execute if entity @e[tag=anti_aircraft_missile_launching,limit=1] run function anti_aircraft_missile:self_test/launching

#建立防空導彈隊伍

    #如果雷達站不在防空導彈隊伍中，就將雷達站加入防空導彈隊伍
    execute as @e[tag=anti_aircraft_missile_radar,limit=1,team=!anti_aircraft_missile] run team join anti_aircraft_missile

    #如果發射站不在防空導彈隊伍中，就將發射站加入防空導彈隊伍
    execute as @e[tag=anti_aircraft_missile_launching,limit=1,team=!anti_aircraft_missile] run team join anti_aircraft_missile

#常駐防空導彈陣地

    #加載防空導彈雷達站

        #如果存在雷達站，就加載雷達站
        execute at @e[tag=anti_aircraft_missile_radar,limit=1] unless loaded ~ ~ ~ run function anti_aircraft_missile:forceload/radar

        #如果不存在雷達站，且存在加載_雷達站，就解除加載雷達站
        execute unless entity @e[tag=anti_aircraft_missile_radar,limit=1] if entity @e[tag=anti_aircraft_missile_radar_forceload,limit=1] run function anti_aircraft_missile:forceload/radar

    #加載防空導彈發射站

        #如果存在發射站，就加載發射站
        execute at @e[tag=anti_aircraft_missile_launching,limit=1] unless loaded ~ ~ ~ run function anti_aircraft_missile:forceload/launching

        #如果不存在發射站，且存在加載_發射站，就解除加載發射站
        execute unless entity @e[tag=anti_aircraft_missile_launching,limit=1] if entity @e[tag=anti_aircraft_missile_launching_forceload,limit=1] run function anti_aircraft_missile:forceload/launching

    #加載防空導彈

        #如果存在導彈，就加載導彈
        execute if entity @e[tag=anti_aircraft_missile,limit=1] run function anti_aircraft_missile:forceload/missile

        #如果不存在導彈，且存在加載_導彈，就解除加載導彈
        execute unless entity @e[tag=anti_aircraft_missile,limit=1] if entity @e[tag=anti_aircraft_missile_forceload,limit=1] run function anti_aircraft_missile:forceload/missile

#搜索目標

    #如果存在雷達站，就搜索目標
    execute if entity @e[tag=anti_aircraft_missile_radar,limit=1] run function anti_aircraft_missile:search/target

#顯示目標

    #如果被鎖定的目標不在防空導彈隊伍中，就將他加入防空導彈隊伍
    execute as @e[tag=anti_aircraft_missile_locking,team=!anti_aircraft_missile,limit=1] run team join anti_aircraft_missile

    #如果存在目標，就顯示目標
    execute if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:search/glowing

#發射間隔

    #如果間隔計時<間隔時間，就增加間隔計時的時間
    execute if score interval_timing anti_aircraft_missile_set < interval anti_aircraft_missile_set run scoreboard players add interval_timing anti_aircraft_missile_set 1

#導彈計時

    #如果存在發射站，且存在目標，就讓導彈開始計時(確保導彈能在發射站存在時才運作)
    execute if entity @e[tag=anti_aircraft_missile_launching,limit=1] if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:fire/timing

    #如果不存在發射站，且存在導彈，就讓導彈開始計時(確保導彈不會因發射站被毀而沒反應)
    execute unless entity @e[tag=anti_aircraft_missile_launching,limit=1] if entity @e[tag=anti_aircraft_missile,limit=1] run function anti_aircraft_missile:fire/timing

#發射導彈

    #如果存在發射站，且存在目標，就發射導彈
    execute if entity @e[tag=anti_aircraft_missile_launching,limit=1] if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:fire/fire

#計算目標前置量

    #取得與目標的距離
    execute if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:advance_range/distance

    #取得目標的位移量
    execute if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:advance_range/get

    #取得目標的前置量
    execute if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:advance_range/deflection

#建立標記

    #如果存在導彈，就建立標記
    execute if entity @e[tag=anti_aircraft_missile,limit=1] run function anti_aircraft_missile:fire/mark

#導彈飛行

    #如果存在導彈，就讓導彈飛向目標
    execute if entity @e[tag=anti_aircraft_missile,limit=1] run function anti_aircraft_missile:fire/motion

#命中處理

    #命中目標

        #存在導彈，且存在目標，就判斷是否命中目標
        execute if entity @e[tag=anti_aircraft_missile,limit=1] if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:result/handle/hit

    #導彈觸地

        #存在導彈，就判斷是否導彈觸地
        execute if entity @e[tag=anti_aircraft_missile,limit=1] run function anti_aircraft_missile:result/handle/touchdown

    #目標超出防空導彈雷達站範圍

        #存在雷達站，且存在目標，就判斷目標是否超出防空導彈雷達站範圍
        execute if entity @e[tag=anti_aircraft_missile_radar,limit=1] if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:result/handle/over_radar

    #目標超出防空導彈射程範圍

        #存在導彈，就判斷目標是否超出防空導彈射程範圍
        execute if entity @e[tag=anti_aircraft_missile,limit=1] run function anti_aircraft_missile:result/handle/over_range

    #目標消失

        #存在導彈，就判斷目標是否消失
        execute if entity @e[tag=anti_aircraft_missile,limit=1] run function anti_aircraft_missile:result/handle/target_disappear

    #導彈消失

        #存在目標，就判斷導彈是否消失
        execute if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:result/handle/missile_disappear

    #防空導彈雷達站消失

        #不存在雷達站，且存在目標，就判斷防空導彈雷達站是否消失
        execute unless entity @e[tag=anti_aircraft_missile_radar,limit=1] if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:result/handle/radar_disappear

    #防空導彈發射站消失

        #存在目標，就判斷防空導彈發射站是否消失
        execute if entity @e[tag=anti_aircraft_missile_target,limit=1] run function anti_aircraft_missile:result/handle/launching_disappear
