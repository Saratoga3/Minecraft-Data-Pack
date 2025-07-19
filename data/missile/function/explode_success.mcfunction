#命中成功

#目標是實體：

    #讓導彈說出"命中目標"
    #execute as @e[tag=missile] run say 命中目標

#目標是玩家：

    #如果目標是玩家，就說出命中結果
    execute if entity @e[tag=missile_player] run function missile:target_player_say

#防爆-開啟

    #判斷條件

        #打開防爆
        scoreboard players add exploding missile_time 1

    #開啟防爆
    execute if score exploding missile_time matches 1 run gamerule mobGriefing false
    
#爆炸
summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,PersistenceRequired:true,CustomName:'{"text":"導彈"}'}

#箭矢、追跡之箭：

    #如果目標是箭矢，就刪除該目標
    execute as @e[tag=missile_target,type=arrow] run kill @s

    #如果目標是追跡之箭，就刪除該目標
    execute as @e[tag=missile_target,type=spectral_arrow] run kill @s

#玩家：

    #如果目標是玩家，就刪除目標發光效果
    execute as @a[tag=missile_target] run effect clear @s glowing

    #如果目標是玩家，刪除目標的標籤(missile_target)
    execute as @a[tag=missile_target] run tag @s remove missile_target

#刪除尾煙
kill @e[tag=missile_tail]

#刪除標記
kill @e[tag=missile_mark]

#刪除標記2
kill @e[tag=missile_mark2]

#刪除導彈
kill @e[tag=missile]
