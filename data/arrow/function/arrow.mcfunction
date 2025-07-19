#箭矢

#爆炸箭矢-哈蘭

    #觸地
    execute as @e[nbt={inGround:true,CustomName:'{"text":"爆炸箭矢-哈蘭","color":"red"}'},limit=1] at @s run function arrow:exploding_arrow_harlan/inground

    #實體
    execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:5b}]},limit=1] at @s run function arrow:exploding_arrow_harlan/entity

#照明箭矢

    #箭矢
    execute if entity @e[nbt={CustomName:'{"text":"照明箭矢","color":"yellow"}'},limit=1] run function arrow:flare_arrow/flare

    #照明標記
    execute if entity @e[tag=arrow_light_marker] unless entity @e[nbt={CustomName:'{"text":"照明箭矢","color":"yellow"}'},limit=1] run function arrow:flare_arrow/flare

#爆炸箭矢

    #觸地
    execute as @e[nbt={inGround:true,CustomName:'{"text":"爆炸箭矢","color":"red"}'},limit=1] at @s run function arrow:exploding_arrow/inground

    #實體
    execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:3b}]},limit=1] at @s run function arrow:exploding_arrow/entity
