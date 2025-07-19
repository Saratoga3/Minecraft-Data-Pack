#發射導彈

#向上發射導彈：

    #如果不存在導彈，就發射導彈
    execute at @e[tag=missile_base] unless entity @e[tag=missile] run summon minecraft:arrow ~ ~1 ~ {Glowing:true,Tags:["missile"],damage:0,CustomName:'[{"text":"","italic":false},{"text":"導彈"}]'}

    #如果目標是玩家，就向該目標說出"您已經被鎖定，導彈升空攔截"
    execute as @e[tag=missile] run tell @a[tag=missile_target] 您已經被鎖定，導彈升空攔截

    #如果導彈不存在標籤(missile_yes)，就將導彈發射至天空
    execute as @e[tag=missile] unless entity @s[tag=missile_yes] run data merge entity @s {Motion:[0.0,2.0,0.0]}

    #如果導彈不存在標籤(missile_yes)，就給導彈1個標籤(missile_yes)
    execute as @e[tag=missile] unless entity @s[tag=missile_yes] run tag @s add missile_yes

#向前發射導彈：

    #設定導彈分數=0
    #scoreboard players set missile missile_time 0

    #如果不存在導彈，就發射導彈
    #execute unless entity @e[tag=missile] run summon minecraft:arrow ~ ~-2 ~ {Glowing:1,Tags:["missile"],damage:0,CustomName:'[{"text":"","italic":false},{"text":"導彈"}]'}

    #將目標點從(0,0,0)往前移動1格：
    #execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=CIWS_object,limit=1] ^ ^ ^3

    #將目標點的座標，存入箭矢的Motion中：
    #execute positioned ~ ~1 ~ run data modify entity @e[tag=missile,limit=1] Motion set from entity @e[tag=CIWS_object,limit=1] Pos
