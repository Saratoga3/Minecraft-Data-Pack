#持續檢測

#建立基座等待時間

    #如果存在榴彈砲，且基座當前時間!=建立基座等待時間，就設定基座當前時間
    execute if entity @e[tag=howitzer_base] unless score base howitzer_set = base_interval howitzer_set run scoreboard players operation base howitzer_set = base_interval howitzer_set

    #如果存在名字為"榴彈砲"的盔甲座，且基座當前時間!=0，就倒數時間
    execute if entity @e[name="榴彈砲"] unless score base howitzer_set matches 0 run scoreboard players remove base howitzer_set 1

#自檢

    #基座

        #如果存在名字為"榴彈砲"的盔甲座，且不存在榴彈砲基座標籤的盔甲座，且基座當前時間=0，就讓他校正方位
        execute as @e[name="榴彈砲",type=armor_stand,limit=1] at @s unless entity @e[tag=howitzer_base] if score base howitzer_set matches 0 run tp @s ~ ~ ~ 0 0

        #如果不存在榴彈砲基座標籤的盔甲座，且存在名字為"榴彈砲"的盔甲座，且基座當前時間=0，就給他howitzer_base標籤
        execute as @e[name="榴彈砲",type=armor_stand,limit=1] unless entity @e[tag=howitzer_base] if score base howitzer_set matches 0 run tag @s add howitzer_base

        #如果基座沒發光，就讓基座發光
        #execute as @e[tag=howitzer_base,nbt=!{Glowing:true}] run data modify entity @s Glowing set value true

    #如果不存在目的，就召喚目的
    execute unless entity @e[tag=howitzer_object] run summon marker 0.0 0.0 0.0 {Tags:["howitzer_object"]}

    #如果榴彈砲不在howitzer隊伍中，就將榴彈砲加入howitzer隊伍
    execute as @e[tag=howitzer_base,team=!howitzer] run team join howitzer

#操作者(不可以是雇傭兵！！！)

    #如果基座附近有玩家，且不存在操作者，就給玩家操作者標籤
    execute as @a[tag=!mercenary] at @s if entity @e[tag=howitzer_base,distance=..5] unless entity @e[tag=howitzer_user] run tag @s add howitzer_user

    #如果操作者不在howitzer隊伍中，就將操作者加入howitzer隊伍
    execute as @e[tag=howitzer_user,team=!howitzer,tag=!mercenary] run team join howitzer

#加載區塊

    #榴彈砲

        #加載
        execute at @e[tag=howitzer_base] unless loaded ~ ~ ~ run function howitzer:forceload/base

        #解除加載
        execute unless entity @e[tag=howitzer_base] if entity @e[tag=howitzer_forceload_base] run function howitzer:forceload/base

    #砲彈

        #加載
        execute if entity @e[tag=howitzer_cannonball] run function howitzer:forceload/cannonball

        #解除加載
        execute unless entity @e[tag=howitzer_cannonball] if entity @e[tag=howitzer_forceload_cannonball] run function howitzer:forceload/cannonball

#射擊參數

    #顯示操作者輸入射擊參數

        #如果存在操作者，且operate分數=0，就顯示操作者輸入射擊參數
        execute at @e[tag=howitzer_user] if score operate howitzer_set matches 0 run function howitzer:shooting_parameters/tellraw

        #如果操作者遠離基座，且operate分數=1，就重新顯示操作者輸入射擊參數(讓其他人可以操作榴彈砲)
        execute as @e[tag=howitzer_user] at @s if entity @e[tag=howitzer_base,distance=5..] if score operate howitzer_set matches 1 run scoreboard players set operate howitzer_set 0

    #開啟操作者輸入射擊參數

        #如果存在操作者，且該操作者分數=!-1，就把該操作者的射擊參數儲存
        execute as @e[tag=howitzer_user] unless score @s howitzer_set matches -1 store result score user howitzer_set run scoreboard players get @s howitzer_set

        #如果存在操作者，且該操作者分數=!-1，就重新開啟讓操作者輸入射擊參數
        execute as @e[tag=howitzer_user] unless score @s howitzer_set matches -1 run scoreboard players enable @s howitzer_set

    #計算操作者輸入射擊參數

        #如果user分數=!-1，就計算射擊參數
        execute unless score user howitzer_set matches -1 run function howitzer:shooting_parameters/operate

    #關閉操作者輸入射擊參數

        #如果操作者遠離基座，就關閉操作者輸入射擊參數
        execute as @e[tag=howitzer_user] at @s if entity @e[tag=howitzer_base,distance=5..] run scoreboard players reset @s howitzer_set

#榴彈砲射控

    #榴彈砲調整俯仰角

        #如果榴彈砲俯仰角=!設定的俯仰角，就校正榴彈砲俯仰角高度
        execute unless score howitzer_pitch_angle howitzer_set = pitch_angle howitzer_set run function howitzer:shooting_parameters/pitch_angle

    #榴彈砲調整方位角

        #如果榴彈砲方位角=!設定的方位角，就校正榴彈砲方位角角度
        execute unless score howitzer_azimuth_angle howitzer_set = azimuth_angle howitzer_set run function howitzer:shooting_parameters/azimuth_angle

#顯示榴彈砲記分板

    #存在操作者，就讓操作者查看榴彈砲各項數值
    execute if entity @e[tag=howitzer_user] run function howitzer:scoreboard

#開火

    #如果俯仰角、方位角調整完畢，且砲彈數量>=1，就開火
    execute if score howitzer_pitch_angle howitzer_set = pitch_angle howitzer_set if score howitzer_azimuth_angle howitzer_set = azimuth_angle howitzer_set if score cannonball_count howitzer_set matches 1.. run function howitzer:fire/fire

#顯示彈道

    #在砲彈彈道顯示軌跡
    execute at @e[tag=howitzer_cannonball] run particle minecraft:flame ~ ~ ~ 0 0 0 0 0 force @a

#爆炸

    #砲彈引信觸發，就爆炸

        #存在砲彈，就讓該砲彈引信時間+1分數
        execute as @e[tag=howitzer_cannonball] run scoreboard players add @s howitzer_set 1

        #該砲彈引信觸發，就讓砲彈爆炸
        execute as @e[tag=howitzer_cannonball] at @s if score @s howitzer_set >= cannonball_fuze howitzer_set run function howitzer:fire/explode

    #砲彈引信未達最短起爆時間，且觸地，就刪除砲彈
    execute as @e[tag=howitzer_cannonball,nbt={inGround:true}] at @s if score @s howitzer_set <= cannonball_shortest_fuze howitzer_set run kill @s

    #砲彈引信已達最短起爆時間，且觸地，就讓砲彈爆炸
    execute as @e[tag=howitzer_cannonball,nbt={inGround:true}] at @s if score @s howitzer_set > cannonball_shortest_fuze howitzer_set run function howitzer:fire/explode

#例外狀況

    #打完所有砲彈

        #如果砲彈被打光，且開火剩餘時間=!開火等待時間，就重置開火等待時間分數
        execute if score cannonball_count howitzer_set matches 0 unless score remaining_fire howitzer_set = fire howitzer_set run scoreboard players operation remaining_fire howitzer_set = fire howitzer_set

    #操作者遠離

        #操作者遠離基座，就計數歸零
        execute as @e[tag=howitzer_user] at @s if entity @e[tag=howitzer_base,distance=5..] run scoreboard players set count howitzer_set 0

        #如果操作者在howitzer隊伍，且操作者遠離基座，就將操作者移出howitzer隊伍
        execute as @e[tag=howitzer_user,team=howitzer] at @s if entity @e[tag=howitzer_base,distance=5..] run team leave @s

        #操作者遠離基座，就清除操作者標籤
        execute as @e[tag=howitzer_user] at @s if entity @e[tag=howitzer_base,distance=5..] run tag @s remove howitzer_user

    #不存在基座

        #不存在基座，且operate分數=1，就重新顯示操作者輸入射擊參數(讓其他人可以操作榴彈砲)
        execute unless entity @e[tag=howitzer_base] if score operate howitzer_set matches 1 run scoreboard players set operate howitzer_set 0

        #不存在基座，就關閉操作者輸入射擊參數
        execute as @e[tag=howitzer_user] unless entity @e[tag=howitzer_base] run scoreboard players reset @s howitzer_set

        #如果操作者在howitzer隊伍，且不存在基座，就將操作者移出howitzer隊伍
        execute as @e[tag=howitzer_user,team=howitzer] at @s unless entity @e[tag=howitzer_base] run team leave @s

        #記分板歸零

            #俯仰角
            execute unless score pitch_angle howitzer_set matches 0 unless entity @e[tag=howitzer_base] run scoreboard players set pitch_angle howitzer_set 0

            #方位角
            execute unless score azimuth_angle howitzer_set matches 0 unless entity @e[tag=howitzer_base] run scoreboard players set azimuth_angle howitzer_set 0

            #砲彈數量
            execute unless score cannonball_count howitzer_set matches 0 unless entity @e[tag=howitzer_base] run scoreboard players set cannonball_count howitzer_set 0

            #榴彈砲的俯仰角
            execute unless score howitzer_pitch_angle howitzer_set matches 0 unless entity @e[tag=howitzer_base] run scoreboard players set howitzer_pitch_angle howitzer_set 0

            #榴彈砲的方位角
            execute unless score howitzer_azimuth_angle howitzer_set matches 0 unless entity @e[tag=howitzer_base] run scoreboard players set howitzer_azimuth_angle howitzer_set 0

            #順時針
            execute unless score clockwise howitzer_set matches 0 unless entity @e[tag=howitzer_base] run scoreboard players set clockwise howitzer_set 0

            #逆時針
            execute unless score counterclockwise howitzer_set matches 0 unless entity @e[tag=howitzer_base] run scoreboard players set counterclockwise howitzer_set 0

            #剩餘砲彈數量
            execute unless score remaining_fire howitzer_set = fire howitzer unless entity @e[tag=howitzer_base] run scoreboard players operation remaining_fire howitzer_set = fire howitzer_set

        #不存在基座，且count分數=!0，就計數歸零
        execute unless entity @e[tag=howitzer_base] unless score count howitzer_set matches 0 run scoreboard players set count howitzer_set 0

        #不存在基座，就清除操作者標籤
        execute as @e[tag=howitzer_user] unless entity @e[tag=howitzer_base] run tag @s remove howitzer_user

        #不存在基座，就讓砲彈爆炸
        execute as @e[tag=howitzer_cannonball] at @s unless entity @e[tag=howitzer_base] run function howitzer:fire/explode

        #不存在基座，就刪除目的
        execute as @e[tag=howitzer_object] unless entity @e[tag=howitzer_base] run kill @s
