#持續檢測

#自檢

    #重置攻擊準備

        #如果基座不存在基座標籤，且該基座當前時間不為0，就重置攻擊準備時間
        execute as @e[tag=!mini_turret_base,name="小型機槍塔",type=armor_stand] unless score @s mini_turret_time matches 0 run scoreboard players set @s mini_turret_time 0

        #如果不存在目標，且該基座當前時間不為0，就重置攻擊準備時間
        execute as @e[tag=mini_turret_base] unless entity @e[tag=mini_turret_target] unless score @s mini_turret_time matches 0 run scoreboard players set @s mini_turret_time 0

        #如果基座附近沒有目標，且該基座當前時間不為0，就重置攻擊準備時間
        execute as @e[tag=mini_turret_base] at @s unless entity @e[tag=mini_turret_target,distance=..20] unless score @s mini_turret_time matches 0 run scoreboard players set @s mini_turret_time 0

    #如果存在名字為小型機槍塔的盔甲座，且他不存在基座標籤，就給他mini_turret_base標籤
    execute as @e[name="小型機槍塔",type=armor_stand] unless entity @s[tag=mini_turret_base] run tag @s add mini_turret_base

    #如果小型機槍塔沒無敵，就給他無敵
    #execute as @e[tag=mini_turret_base,nbt={Invulnerable:false}] run data modify entity @s Invulnerable set value true

    #顯示基座

        #如果基座附近有目標，且該基座沒發光，就讓該基座發光
        #execute as @e[tag=mini_turret_base] at @s if entity @e[tag=mini_turret_target,distance=..20] unless data entity @s {Glowing:true} run data modify entity @s Glowing set value true

        #如果基座附近沒有目標，且該基座發光，就清除該基座發光
        #execute as @e[tag=mini_turret_base] at @s if score @s mini_turret_time matches 0 unless data entity @s {Glowing:false} run data modify entity @s Glowing set value false

    #如果不存在目的，就召喚目的
    execute unless entity @e[tag=mini_turret_object] run summon marker 0.0 0.0 0.0 {Tags:["mini_turret_object"]}

#攻擊

    #事前準備(確保每次搜索都是距離最近的目標)

        #清除目標的發光效果
        #execute as @e[tag=mini_turret_target] run effect clear @s minecraft:glowing

        #清除目標的發光狀態
        #execute as @e[tag=mini_turret_target] run data modify entity @s Glowing set value false

        #清除所有目標
        execute as @e[tag=mini_turret_target] run tag @s remove mini_turret_target

    #搜索目標

        #搜索距離最近的1隻目標
        execute as @e[tag=hostile_mob,type=!minecraft:phantom,type=!minecraft:breeze] at @s if entity @e[tag=mini_turret_base,distance=..20] run tag @s add mini_turret_target

        #搜索距離最近的1隻目標
        #execute as @e[name=Li___Bai] at @s if entity @e[tag=mini_turret_base,distance=..20,limit=1,sort=nearest] run tag @s add mini_turret_target

    #顯示目標

        #如果目標沒有發光效果，就給他發光效果
        #execute as @a[tag=mini_turret_target,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] run effect give @s minecraft:glowing infinite 0 true

        #如果目標沒有發光狀態，就給他發光狀態
        #execute as @e[tag=mini_turret_target,type=!player,nbt=!{Glowing:true}] run data modify entity @s Glowing set value true

    #看向目標

        #基座看向目標
        execute as @e[tag=mini_turret_base] at @s facing entity @e[tag=mini_turret_target,distance=..20,sort=furthest] feet run tp ^ ^ ^

    #基座視野

        #(未採用)
        #execute as @e[tag=mini_turret_base] at @s if entity @e[tag=mini_turret_target,distance=..20,sort=furthest] run function mini_turret:vision

    #攻擊準備

        #如果該基座附近有目標，且該基座時間<fire時間，就讓基座開始計時
        execute as @e[tag=mini_turret_base] at @s if entity @e[tag=mini_turret_target,distance=..20] if score @s mini_turret_time < fire mini_turret_time run scoreboard players add @s mini_turret_time 1

    #攻擊目標

        #如果基座獲得開火許可，就增加該基座的時間
        execute as @e[tag=mini_turret_base] if score @s mini_turret_time >= fire mini_turret_time run scoreboard players add @s mini_turret_time 1

        #到達間隔時間，就發射子彈
        execute as @e[tag=mini_turret_base] at @s if entity @e[tag=mini_turret_target,distance=..20] if score @s mini_turret_time = interval mini_turret_time run function mini_turret:motion

        #到達間隔時間，就重置該基座的時間
        execute as @e[tag=mini_turret_base] if score @s mini_turret_time >= interval mini_turret_time run scoreboard players operation @s mini_turret_time = fire mini_turret_time

#例外狀況

    #子彈觸地就刪除子彈
    execute as @e[tag=mini_turret_bullet,nbt={inGround:true}] run kill @s

    #如果目標處於無敵狀態，刪除子彈
    execute as @e[tag=mini_turret_bullet] at @s if entity @e[tag=mini_turret_target,nbt=!{HurtTime:0s},distance=..4.5] run kill @s

    #不存在基座

        #不存在基座，就刪除子彈
        execute as @e[tag=mini_turret_bullet] unless entity @e[tag=mini_turret_base] run kill @s

        #不存在基座，就清除目標標籤
        execute as @e[tag=mini_turret_target] unless entity @e[tag=mini_turret_base] run tag @s remove mini_turret_target

        #不存在基座，就刪除目的
        execute as @e[tag=mini_turret_object] unless entity @e[tag=mini_turret_base] run kill @s

    #子彈引信觸發就刪除

        #存在子彈，就讓該子彈引信時間+1分數
        execute as @e[tag=mini_turret_bullet] run scoreboard players add @s mini_turret_time 1

        #該子彈引信觸發，就刪除子彈
        execute as @e[tag=mini_turret_bullet] at @s if score @s mini_turret_time >= fuze mini_turret_time run kill @s
