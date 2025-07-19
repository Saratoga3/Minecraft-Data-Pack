#搜索目標

#目標：

    #非物品、非效果雲、非經驗的實體：

        #以基座範圍500格的1位非物品、非效果雲、非經驗的實體作為搜索目標
        #execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,tag=!missile_no,type=!item,type=!area_effect_cloud,type=!experience_orb,limit=1,distance=..500,sort=nearest] run tag @s add missile_target

    #非物品、非效果雲、非經驗、非玩家、非盔甲座的實體：

        #以基座範圍500格的1位非物品、非玩家、非盔甲座的實體作為搜索目標
        #execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,tag=!missile_no,type=!item,type=!area_effect_cloud,type=!experience_orb,type=!player,type=!armor_stand,limit=1,distance=..500,sort=nearest] run tag @s add missile_target

    #夜魅：

        #以基座範圍500格的1隻夜魅作為搜索目標
        execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,tag=!missile_no,type=phantom,limit=1,distance=..500,sort=nearest] run tag @s add missile_target

    #箭矢、追跡之箭：

        #以基座範圍500格的1隻箭矢作為搜索目標
        #execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,tag=!missile_no,type=arrow,limit=1,distance=..500,sort=nearest] run tag @s add missile_target

        #以基座範圍500格的1隻追跡之箭作為搜索目標
        #execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,tag=!missile_no,type=spectral_arrow,limit=1,distance=..500,sort=nearest] run tag @s add missile_target

    #玩家：

        #以基座範圍500格的1位玩家作為搜索目標
        #execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,tag=!missile_no,type=player,limit=1,distance=..500,sort=nearest] run tag @s add missile_target

    #Li___Bai：

        #如果目標是Li___Bai且距離基座500格內，就給該實體1個標籤(missile_target)
        #execute at @e[tag=missile_base] as @e[tag=!missile_base,tag=!missile,tag=!missile_no,name="Li___Bai",limit=1,distance=..500,sort=nearest] run tag @s add missile_target

#目標是玩家：

    #如果目標是玩家，且該實體不存在標籤(missile_player)，就給該實體1個標籤(missile_player)
    #execute as @e[tag=missile_target] if entity @s[type=player] unless entity @s[tag=missile_player] run tag @s add missile_player

#非目標：

    #如果存在基座，就執行非目標函數
    execute if entity @e[tag=missile_base] run function missile:target_no

#非玩家：

    #如果目標不是玩家，就設定導彈冷卻分數=10
    execute if entity @e[tag=missile_target,type=!player] run scoreboard players set missile_yes missile_time 10

    #如果目標不是玩家，就設定保險分數=45
    execute if entity @e[tag=missile_target,type=!player] run scoreboard players set missile_safety missile_time 45

    #如果目標不是玩家，就設定自毀臨界點分數=400
    execute if entity @e[tag=missile_target,type=!player] run scoreboard players set missile_no missile_time 400

#玩家：

    #如果目標是玩家，就設定導彈冷卻分數=10
    execute if entity @e[tag=missile_target,type=player] run scoreboard players set missile_yes missile_time 10

    #如果目標是玩家，就設定保險分數=45
    execute if entity @e[tag=missile_target,type=player] run scoreboard players set missile_safety missile_time 45

    #如果目標是玩家，就設定自毀臨界點分數=600
    execute if entity @e[tag=missile_target,type=player] run scoreboard players set missile_no missile_time 600

    #如果目標是玩家，就向該目標說出"您正在被鎖定，請盡速離開禁飛區"
    execute as @e[tag=missile_base] run tell @a[tag=missile_target] 您正在被鎖定，請盡速離開禁飛區

#記分板：

    #如果目標是玩家，就顯示導彈記分板
    #execute if entity @e[tag=missile_target,type=player] run scoreboard objectives setdisplay sidebar missile_time
