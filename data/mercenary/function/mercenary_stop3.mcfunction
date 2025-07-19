#停止3

#停止雇傭兵行為
player mercenary stop

#如果雇傭兵身上沒有不能吃食物標籤，就給他不能吃食物標籤
execute as @e[tag=mercenary] unless entity @s[tag=eat_no] run tag @s add eat_no
