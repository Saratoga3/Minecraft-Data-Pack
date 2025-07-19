#攻擊

#基座：

    #如果不存在基座，就召喚基座
    #execute unless entity @e[name="missile_base"] run summon area_effect_cloud ~ ~ ~ {Tags:["missile_base"],Duration:2147483647,CustomName:'[{"text":"","italic":false},{"text":"missile_base"}]'}

#非目標：

    #如果存在基座，就執行非目標函數
    execute if entity @e[tag=missile_base] run function missile:target_no

#搜索目標：

    #如果不存在目標，且存在基座，就搜索目標
    execute unless entity @e[tag=missile_target] if entity @e[tag=missile_base] run function missile:target_attack

#鎖定目標：
    
    #如果基座是盔甲座，就讓基座視角看向鎖定目標
    execute as @e[tag=missile_base,type=armor_stand] at @s facing entity @e[tag=missile_target] feet run tp ^ ^ ^

#發射導彈：

    #如果不存在導彈，且存在目標，且導彈分數>=導彈冷卻時間，就發射導彈
    execute unless entity @e[tag=missile] if entity @e[tag=missile_target] if score missile missile_time >= missile_yes missile_time run function missile:fire

#例外狀況：

    #目標消失：

        #如果目標有標籤(missile_no)，就刪除該實體1個標籤(missile_target)
        execute as @e[tag=missile_target] if entity @s[tag=missile_no] run tag @s remove missile_target

        #如果不存在目標，就執行目標消失函數
        execute unless entity @e[tag=missile_target] run function missile:exceptions_target_disappear
