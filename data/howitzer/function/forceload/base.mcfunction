#榴彈砲

    #存在

        #如果不存在區塊標記_基座，就召喚區塊標記_基座
        execute unless entity @e[tag=howitzer_forceload_base] run summon marker ~ ~ ~ {Tags:["howitzer_forceload_base"]}

        #如果存在榴彈砲，就加載區塊
        execute if entity @e[tag=howitzer_base] at @e[tag=howitzer_forceload_base] unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~

    #不存在

        #如果不存在榴彈砲，就刪除該區塊的強加載
        execute unless entity @e[tag=howitzer_base] at @e[tag=howitzer_forceload_base] if loaded ~ ~ ~ run forceload remove ~ ~ ~ ~

        #如果不存在榴彈砲，就刪除區塊標記_基座
        execute unless entity @e[tag=howitzer_base] as @e[tag=howitzer_forceload_base] run kill @s
