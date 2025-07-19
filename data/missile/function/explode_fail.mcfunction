#命中失敗

#目標是實體：

    #讓導彈說出"未能命中目標"
    #execute as @e[tag=missile] run say 未能命中目標

    #如果不存在目標，且導彈達到臨界點，就讓導彈說出"目標消失，導彈自爆"
    #execute as @e[tag=missile] unless entity @e[tag=missile_target] if score missile missile_time >= missile_safety missile_time run say 目標消失，導彈自爆

    #如果目標超過基座範圍500格，就讓導彈說出"鎖敵失敗，目標超出雷達指引範圍"
    #execute as @e[tag=missile] at @e[tag=missile_target] at @e[tag=missile_base,distance=500..] run say 鎖敵失敗，目標超出雷達指引範圍

    #如果導彈燃料耗盡，就讓導彈說出"燃料耗盡，目標超出導彈射程範圍"
    #execute as @e[tag=missile] if score missile missile_time > missile_no missile_time run say 燃料耗盡，目標超出導彈射程範圍

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

#刪除尾煙
kill @e[tag=missile_tail]

#刪除標記
kill @e[tag=missile_mark]

#刪除標記2
kill @e[tag=missile_mark2]

#刪除導彈
kill @e[tag=missile]
