#刷新檢測

#記分板

    #arrow

        #清除箭矢記分板
        scoreboard objectives remove arrow

        #建立箭矢記分板
        scoreboard objectives add arrow dummy

        #設定檢測時間
        scoreboard players set time arrow 10

        #顯示箭矢記分板
        #scoreboard objectives setdisplay sidebar arrow

#給箭矢

    #給爆炸箭矢-哈蘭
    #give @a minecraft:tipped_arrow[custom_name='{"text":"爆炸箭矢-哈蘭","color":"red"}',lore=['[{"text":"","italic":false}]','[{"text":"過去的日子真好。回到哈蘭，用你那火力強大的爆炸箭矢對抗怪物們。","italic":false}]','[{"text":"我們很想念它，所以把它帶回來了，作為彩蛋禮物送給你們。","italic":false}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"註：爆炸威力是普通爆炸箭矢的2倍，且不會破壞方塊！","color":"yellow"}]'],potion_contents={custom_effects:[{id:"minecraft:unluck",amplifier:5b,duration:20,show_particles:0b,show_icon:0b}],custom_color:16711680},hide_additional_tooltip={}] 10

    #給照明箭矢
    #give @a minecraft:tipped_arrow[custom_name='{"text":"照明箭矢","color":"yellow"}',lore=['[{"text":"","italic":false}]','[{"text":"用於提供一段時間的小面積照明","italic":false}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"註：射入不完整方塊會啞火","color":"yellow"}]'],potion_contents={custom_color:16774912},hide_additional_tooltip={}] 10

    #給爆炸箭矢
    #give @a minecraft:tipped_arrow[custom_name='{"text":"爆炸箭矢","color":"red"}',lore=['[{"text":"","italic":false}]','[{"text":"用於壓制大量聚集的目標","italic":false}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"註：爆炸可以破壞方塊！","color":"yellow"}]'],potion_contents={custom_effects:[{id:"minecraft:unluck",amplifier:3b,duration:20,show_particles:0b,show_icon:0b}],custom_color:16711680},hide_additional_tooltip={}] 10
