#目標消失

#導彈可以爆炸：

    #如果導彈分數>=保險分數，就爆炸
    execute if score missile missile_time >= missile_safety missile_time run function missile:explode_fail

#導彈不行爆炸：

    #就刪除尾煙
    execute as @e[tag=missile_tail] run kill @s

    #就刪除標記
    execute as @e[tag=missile_mark] run kill @s

    #就刪除標記2
    execute as @e[tag=missile_mark2] run kill @s

    #就刪除導彈
    execute as @e[tag=missile] run kill @s

#如果導彈分數>=1，就清除右側記分板
#execute if score missile missile_time matches 1.. run scoreboard objectives setdisplay sidebar

#如果導彈分數>=1，就設定導彈分數=0
execute if score missile missile_time matches 1.. run scoreboard players set missile missile_time 0

#重置導彈分數
scoreboard players set missile missile_time 0
