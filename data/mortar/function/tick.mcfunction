#持續檢測

#自檢

    #如果存在名字為"迫擊砲"的盔甲座，且不存在迫擊砲基座標籤的盔甲座，就讓他校正方位
    execute as @e[name="迫擊砲",type=armor_stand,limit=1] at @s unless entity @e[tag=mortar_base] run tp @s ~ ~ ~ 0 0

    #如果不存在迫擊砲基座標籤的盔甲座，且存在名字為"迫擊砲"的盔甲座，就給他mortar_base標籤
    execute as @e[name="迫擊砲",type=armor_stand,limit=1] unless entity @e[tag=mortar_base] run tag @s add mortar_base

    #如果基座沒發光，就讓基座發光
    #execute as @e[tag=mortar_base] unless data entity @s {Glowing:1b} run data modify entity @s Glowing set value true

    #如果不存在目的，就召喚目的
    execute unless entity @e[tag=mortar_object] run summon marker 0.0 0.0 0.0 {Tags:["mortar_object"]}

    #如果迫擊砲不在mortar隊伍中，就將迫擊砲加入mortar隊伍
    execute as @e[tag=mortar_base,team=!mortar] run team join mortar

#操作者(不可以是雇傭兵！！！)

    #如果基座附近有玩家，且不存在操作者，就給玩家操作者標籤
    execute as @a[tag=!mercenary] at @s if entity @e[tag=mortar_base,distance=..5] unless entity @e[tag=mortar_user] run tag @s add mortar_user

    #如果操作者不在mortar隊伍中，就將操作者加入mortar隊伍
    execute as @e[tag=mortar_user,team=!mortar,tag=!mercenary] run team join mortar

#射擊參數

    #顯示操作者輸入射擊參數

        #如果存在操作者，且operate分數=0，就顯示操作者輸入射擊參數
        execute at @e[tag=mortar_user] if score operate mortar_set matches 0 run function mortar:shooting_parameters/tellraw

        #如果操作者遠離基座，且operate分數=1，就重新顯示操作者輸入射擊參數(讓其他人可以操作迫擊砲)
        execute as @e[tag=mortar_user] at @s if entity @e[tag=mortar_base,distance=5..] if score operate mortar_set matches 1 run scoreboard players set operate mortar_set 0

    #開啟操作者輸入射擊參數

        #如果存在操作者，且該操作者分數=!-1，就把該操作者的射擊參數儲存
        execute as @e[tag=mortar_user] unless score @s mortar_set matches -1 store result score user mortar_set run scoreboard players get @s mortar_set

        #如果存在操作者，且該操作者分數=!-1，就重新開啟讓操作者輸入射擊參數
        execute as @e[tag=mortar_user] unless score @s mortar_set matches -1 run scoreboard players enable @s mortar_set

    #計算操作者輸入射擊參數

        #如果user分數=!-1，就計算射擊參數
        execute unless score user mortar_set matches -1 run function mortar:shooting_parameters/operate

    #關閉操作者輸入射擊參數

        #如果操作者遠離基座，就關閉操作者輸入射擊參數
        execute as @e[tag=mortar_user] at @s if entity @e[tag=mortar_base,distance=5..] run scoreboard players reset @s mortar_set

#迫擊砲射控

    #迫擊砲調整俯仰角

        #如果迫擊砲俯仰角=!設定的俯仰角，就校正迫擊砲俯仰角高度
        execute unless score mortar_pitch_angle mortar_set = pitch_angle mortar_set run function mortar:shooting_parameters/pitch_angle

    #迫擊砲調整方位角

        #如果迫擊砲方位角=!設定的方位角，就校正迫擊砲方位角角度
        execute unless score mortar_azimuth_angle mortar_set = azimuth_angle mortar_set run function mortar:shooting_parameters/azimuth_angle

#顯示迫擊砲記分板

    #存在操作者，就讓操作者查看迫擊砲各項數值
    execute if entity @e[tag=mortar_user] run function mortar:scoreboard

#開火

    #如果俯仰角、方位角調整完畢，且砲彈數量>=1，就開火
    execute if score mortar_pitch_angle mortar_set = pitch_angle mortar_set if score mortar_azimuth_angle mortar_set = azimuth_angle mortar_set if score cannonball_count mortar_set matches 1.. run function mortar:fire/fire

#顯示彈道

    #在砲彈彈道顯示軌跡
    execute at @e[tag=mortar_cannonball] run particle minecraft:flame ~ ~ ~ 0 0 0 0 0 force @a

#爆炸

    #砲彈引信觸發，就爆炸

        #存在砲彈，就讓該砲彈引信時間+1分數
        execute as @e[tag=mortar_cannonball] run scoreboard players add @s mortar_set 1

        #該砲彈引信觸發，就讓砲彈爆炸
        execute as @e[tag=mortar_cannonball] at @s if score @s mortar_set >= cannonball_fuze mortar_set run function mortar:fire/explode

    #砲彈引信未達最短起爆時間，且觸地，就刪除砲彈
    execute as @e[tag=mortar_cannonball,nbt={inGround:true}] at @s if score @s mortar_set <= cannonball_shortest_fuze mortar_set run kill @s

    #砲彈引信已達最短起爆時間，且觸地，就讓砲彈爆炸
    execute as @e[tag=mortar_cannonball,nbt={inGround:true}] at @s if score @s mortar_set > cannonball_shortest_fuze mortar_set run function mortar:fire/explode

#例外狀況

    #打完所有砲彈

        #如果砲彈被打光，且開火剩餘時間=!開火等待時間，就重置開火等待時間分數
        execute if score cannonball_count mortar_set matches 0 unless score remaining_fire mortar_set = fire mortar_set run scoreboard players operation remaining_fire mortar_set = fire mortar_set

    #操作者遠離

        #操作者遠離基座，就計數歸零
        execute as @e[tag=mortar_user] at @s if entity @e[tag=mortar_base,distance=5..] run scoreboard players set count mortar_set 0

        #如果操作者在mortar隊伍，且操作者遠離基座，就將操作者移出mortar隊伍
        execute as @e[tag=mortar_user,team=mortar] at @s if entity @e[tag=mortar_base,distance=5..] run team leave @s

        #操作者遠離基座，就清除操作者標籤
        execute as @e[tag=mortar_user] at @s if entity @e[tag=mortar_base,distance=5..] run tag @s remove mortar_user

    #不存在基座

        #不存在基座，且operate分數=1，就重新顯示操作者輸入射擊參數(讓其他人可以操作迫擊砲)
        execute unless entity @e[tag=mortar_base] if score operate mortar_set matches 1 run scoreboard players set operate mortar_set 0

        #不存在基座，就關閉操作者輸入射擊參數
        execute as @e[tag=mortar_user] unless entity @e[tag=mortar_base] run scoreboard players reset @s mortar_set

        #如果操作者在mortar隊伍，且不存在基座，就將操作者移出mortar隊伍
        execute as @e[tag=mortar_user,team=mortar] at @s unless entity @e[tag=mortar_base] run team leave @s

        #記分板歸零

            #俯仰角
            execute unless score pitch_angle mortar_set matches 0 unless entity @e[tag=mortar_base] run scoreboard players set pitch_angle mortar_set 0

            #方位角
            execute unless score azimuth_angle mortar_set matches 0 unless entity @e[tag=mortar_base] run scoreboard players set azimuth_angle mortar_set 0

            #砲彈數量
            execute unless score cannonball_count mortar_set matches 0 unless entity @e[tag=mortar_base] run scoreboard players set cannonball_count mortar_set 0

            #迫擊砲的俯仰角
            execute unless score mortar_pitch_angle mortar_set matches 0 unless entity @e[tag=mortar_base] run scoreboard players set mortar_pitch_angle mortar_set 0

            #迫擊砲的方位角
            execute unless score mortar_azimuth_angle mortar_set matches 0 unless entity @e[tag=mortar_base] run scoreboard players set mortar_azimuth_angle mortar_set 0

            #順時針
            execute unless score clockwise mortar_set matches 0 unless entity @e[tag=mortar_base] run scoreboard players set clockwise mortar_set 0

            #逆時針
            execute unless score counterclockwise mortar_set matches 0 unless entity @e[tag=mortar_base] run scoreboard players set counterclockwise mortar_set 0

            #剩餘砲彈數量
            execute unless score remaining_fire mortar_set = fire mortar_set unless entity @e[tag=mortar_base] run scoreboard players operation remaining_fire mortar_set = fire mortar_set

        #不存在基座，且count分數=!0，就計數歸零
        execute unless entity @e[tag=mortar_base] unless score count mortar_set matches 0 run scoreboard players set count mortar_set 0

        #不存在基座，就清除操作者標籤
        execute as @e[tag=mortar_user] unless entity @e[tag=mortar_base] run tag @s remove mortar_user

        #不存在基座，就讓砲彈爆炸
        execute as @e[tag=mortar_cannonball] at @s unless entity @e[tag=mortar_base] run function mortar:fire/explode

        #不存在基座，就刪除目的
        execute as @e[tag=mortar_object] unless entity @e[tag=mortar_base] run kill @s
