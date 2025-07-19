#殭屍

#名字

    #設定名字
    data modify entity @s CustomName set value '{"text":"你不會連我都打不過吧","color":"green"}'

    #顯示名字
    #data modify entity @s CustomNameVisible set value 1b

#雙手

    #設定雙手裝備
    #data modify entity @s HandItems set value [{id:"iron_sword",count:1b},{id:"totem_of_undying",count:1b}]
    data modify entity @s HandItems set value [{id:"iron_sword",count:1b},{}]

    #設定雙手掉落機率
    data modify entity @s HandDropChances set value [0f,0f]

#衣服

    #設定衣服裝備
    data modify entity @s ArmorItems set value [{id:"iron_boots",count:1b},{id:"iron_leggings",count:1b},{id:"iron_chestplate",count:1b},{id:"iron_helmet",count:1b,components:{unbreakable:{show_in_tooltip:false}}}]

    #設定衣服掉落機率
    data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]

#特性

    #給予抗火效果
    #effect give @s fire_resistance infinite 0 true

    #設定不會自然消失
    #data modify entity @s PersistenceRequired set value true

    #設定追蹤距離
    attribute @s generic.follow_range base set 200

    #設定呼叫增援機率
    execute if score time mobile_entity matches 13000..23000 run attribute @s zombie.spawn_reinforcements base set 0.5

    #設定追蹤目標
    #execute if entity @a[name="sz553341291",limit=1] run damage @s 0 generic by sz553341291

#標籤

    #給予標籤
    tag @s add zombie
