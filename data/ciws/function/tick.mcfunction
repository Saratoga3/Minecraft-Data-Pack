#持續檢測

#自檢

    #如果存在名字為"近迫方陣"的盔甲座，且不存在近迫方陣基座標籤的盔甲座，就讓他校正方位
    execute as @e[name="近迫方陣",type=armor_stand,limit=1] at @s unless entity @e[tag=CIWS_base] run tp @s ~ ~ ~ 0 0

    #如果不存在基座標籤的盔甲座，且存在名字為"近迫方陣"的盔甲座，就給他CIWS_base標籤
    execute as @e[name="近迫方陣",type=armor_stand,limit=1] unless entity @e[tag=CIWS_base] run tag @s add CIWS_base

    #如果基座沒無敵，就給他無敵
    execute as @e[tag=CIWS_base,nbt={Invulnerable:false}] run data modify entity @s Invulnerable set value true

    #如果基座沒發光，就讓基座發光
    #execute as @e[tag=CIWS_base,nbt=!{Glowing:true}] run data modify entity @s Glowing set value true

    #如果不存在目的，就召喚目的
    execute unless entity @e[tag=CIWS_object] run summon marker 0.0 0.0 0.0 {Tags:["CIWS_object"]}

    #如果不存在目標，就重置開火準備時間
    execute as @e[tag=CIWS_base] unless score @s CIWS_set matches 0 unless entity @e[tag=CIWS_target] run scoreboard players set @s CIWS_set 0

    #讓基座看向指定方向
    execute as @e[tag=CIWS_base,nbt=!{Rotation:[0f,0f]}] at @s unless entity @e[tag=CIWS_target] run tp @s ~ ~ ~ 0 0

#攻擊

    #鎖定目標

        #如果不存在目標，就鎖定距離最近的1隻目標
        #execute at @e[tag=CIWS_base] as @e[tag=!CIWS_base,name=Li___Bai,limit=1,distance=..80,sort=nearest] unless entity @e[tag=CIWS_target] run tag @s add CIWS_target

        #如果不存在目標，就鎖定距離最近的1隻目標(furthest、nearest)
        execute at @e[tag=CIWS_base] as @e[tag=!CIWS_base,type=minecraft:phantom,limit=1,distance=..80,sort=nearest] unless entity @e[tag=CIWS_target] run tag @s add CIWS_target

    #顯示目標

        #如果目標沒有發光狀態，就給他發光狀態
        execute as @e[tag=CIWS_target,nbt=!{Glowing:true}] run data modify entity @s Glowing set value true

        #如果目標超出距離，就移除目標發光狀態
        execute as @e[tag=CIWS_target,nbt={Glowing:true}] at @s if entity @e[tag=CIWS_base,distance=80..] run data modify entity @s Glowing set value false

    #不是目標

        #如果目標超出距離，就移除目標標籤
        execute as @e[tag=CIWS_target] at @s if entity @e[tag=CIWS_base,distance=80..] run tag @s remove CIWS_target

    #項目標開火

        #如果基座攻擊範圍存在目標就向他開火
        execute if entity @e[tag=CIWS_target] run function ciws:fire/fire

#例外狀況

    #子彈觸地就刪除子彈
    execute as @e[tag=CIWS_bullet,nbt={inGround:true}] run kill @s

    #不存在基座

        #不存在基座，就刪除子彈
        execute as @e[tag=CIWS_bullet] unless entity @e[tag=CIWS_base] run kill @s

        #不存在基座，且目標有發光狀態，就移除目標發光狀態
        execute as @e[tag=CIWS_target,nbt={Glowing:true}] unless entity @e[tag=CIWS_base] run data modify entity @s Glowing set value false

        #不存在基座，就清除目標標籤
        execute as @e[tag=CIWS_target] unless entity @e[tag=CIWS_base] run tag @s remove CIWS_target

        #不存在基座，就刪除目的
        execute as @e[tag=CIWS_object] unless entity @e[tag=CIWS_base] run kill @s

    #不存在目標

        #不存在目標，就刪除前置量
        execute as @e[tag=CIWS_target_offset] unless entity @e[tag=CIWS_target] run kill @s

        #不存在目標，就重置下次開火時間
        #execute unless entity @e[tag=CIWS_target] run scoreboard players set CIWS_bullet CIWS_set 0

    #子彈引信觸發就刪除

        #存在子彈，就讓該子彈引信時間+1分數
        execute as @e[tag=CIWS_bullet] run scoreboard players add @s CIWS_set 1

        #該子彈引信觸發，就刪除子彈
        execute as @e[tag=CIWS_bullet] at @s if score @s CIWS_set >= fuze CIWS_set run kill @s
