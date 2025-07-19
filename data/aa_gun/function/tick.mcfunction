#持續檢測

#自檢

    #重置攻擊準備

        #如果基座不存在基座標籤，且該基座當前時間不為0，就重置攻擊準備時間
        execute as @e[tag=!AA_gun_base,name="防空炮",type=armor_stand] unless score @s AA_gun_time matches 0 run scoreboard players set @s AA_gun_time 0

        #如果不存在目標，且該基座當前時間不為0，就重置攻擊準備時間
        execute as @e[tag=AA_gun_base] unless entity @e[tag=AA_gun_target] unless score @s AA_gun_time matches 0 run scoreboard players set @s AA_gun_time 0

        #如果基座附近沒有目標，且該基座當前時間不為0，就重置攻擊準備時間
        execute as @e[tag=AA_gun_base] at @s unless entity @e[tag=AA_gun_target,distance=..80] unless score @s AA_gun_time matches 0 run scoreboard players set @s AA_gun_time 0

    #如果存在名字為防空炮的盔甲座，且他不存在基座標籤，就給他AA_gun_base標籤
    execute as @e[name="防空炮",type=armor_stand] unless entity @s[tag=AA_gun_base] run tag @s add AA_gun_base

    #如果防空炮沒無敵，就給他無敵
    #execute as @e[tag=AA_gun_base,nbt={Invulnerable:false}] run data modify entity @s Invulnerable set value true

    #顯示基座

        #如果基座附近有目標，且該基座沒發光，就讓該基座發光
        #execute as @e[tag=AA_gun_base] at @s if entity @e[tag=AA_gun_target,distance=..80] unless data entity @s {Glowing:true} run data modify entity @s Glowing set value true

        #如果基座附近沒有目標，且該基座發光，就清除該基座發光
        #execute as @e[tag=AA_gun_base] at @s if score @s AA_gun_time matches 0 unless data entity @s {Glowing:false} run data modify entity @s Glowing set value false

    #如果不存在目的，就召喚目的
    execute unless entity @e[tag=AA_gun_object] run summon marker 0.0 0.0 0.0 {Tags:["AA_gun_object"]}

#攻擊

    #事前準備(確保每次搜索都是距離最近的目標)

        #清除目標的發光效果
        execute as @e[tag=AA_gun_target] run effect clear @s minecraft:glowing

        #清除目標的發光狀態
        execute as @e[tag=AA_gun_target] run data modify entity @s Glowing set value false

        #清除所有目標
        execute as @e[tag=AA_gun_target] run tag @s remove AA_gun_target

    #搜索目標

        #搜索距離最近的1隻目標
        execute as @e[type=minecraft:phantom] at @s if entity @e[tag=AA_gun_base,distance=..80] run tag @s add AA_gun_target

        #搜索距離最近的1隻目標
        #execute as @e[type=minecraft:ender_dragon] at @s if entity @e[tag=AA_gun_base,distance=..80] run tag @s add AA_gun_target

        #搜索距離最近的1隻目標
        #execute as @e[name=Li___Bai] at @s if entity @e[tag=AA_gun_base,distance=..80,limit=1,sort=nearest] run tag @s add AA_gun_target

    #顯示目標

        #如果目標沒有發光效果，就給他發光效果
        execute as @a[tag=AA_gun_target,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] run effect give @s minecraft:glowing infinite 0 true

        #如果目標沒有發光狀態，就給他發光狀態
        execute as @e[tag=AA_gun_target,type=!player,nbt=!{Glowing:true}] run data modify entity @s Glowing set value true

    #看向目標

        #基座看向目標
        execute as @e[tag=AA_gun_base] at @s facing entity @e[tag=AA_gun_target,distance=..80,sort=random] feet run tp ^ ^ ^

    #攻擊準備

        #如果該基座附近有目標，且該基座時間<fire時間，就讓基座開始計時
        execute as @e[tag=AA_gun_base] at @s if entity @e[tag=AA_gun_target,distance=..80] if score @s AA_gun_time < fire AA_gun_time run scoreboard players add @s AA_gun_time 1

    #攻擊目標

        #如果基座獲得開火許可，就增加該基座的時間
        execute as @e[tag=AA_gun_base] if score @s AA_gun_time >= fire AA_gun_time run scoreboard players add @s AA_gun_time 1

        #到達間隔時間，就發射砲彈
        execute as @e[tag=AA_gun_base] at @s if entity @e[tag=AA_gun_target,distance=..80] if score @s AA_gun_time = interval AA_gun_time run function aa_gun:motion

        #到達間隔時間，就重置該基座的時間
        execute as @e[tag=AA_gun_base] if score @s AA_gun_time >= interval AA_gun_time run scoreboard players operation @s AA_gun_time = fire AA_gun_time

    #攻擊結果

        #砲彈接近目標就爆炸
        execute as @e[tag=AA_gun_bullet] at @s if entity @e[tag=AA_gun_target,distance=..3] run function aa_gun:explode_success

#例外狀況

    #砲彈觸地就刪除砲彈
    execute as @e[tag=AA_gun_bullet,nbt={inGround:true}] run kill @s

    #如果目標處於無敵狀態，刪除砲彈
    execute as @e[tag=AA_gun_bullet] at @s if entity @e[tag=AA_gun_target,nbt=!{HurtTime:0s},distance=..4.5] run kill @s

    #不存在基座

        #不存在基座，就刪除砲彈
        execute as @e[tag=AA_gun_bullet] unless entity @e[tag=AA_gun_base] run kill @s

        #不存在基座，就清除目標標籤
        execute as @e[tag=AA_gun_target] unless entity @e[tag=AA_gun_base] run tag @s remove AA_gun_target

        #不存在基座，就刪除目的
        execute as @e[tag=AA_gun_object] unless entity @e[tag=AA_gun_base] run kill @s

    #砲彈引信觸發就刪除

        #存在砲彈，就讓該砲彈引信時間+1分數
        execute as @e[tag=AA_gun_bullet] run scoreboard players add @s AA_gun_time 1

        #該砲彈引信觸發，就讓砲彈爆炸
        execute as @e[tag=AA_gun_bullet] at @s if score @s AA_gun_time >= fuze AA_gun_time run function aa_gun:explode_success
