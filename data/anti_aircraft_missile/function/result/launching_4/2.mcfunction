#導彈14處理

#取消顯示目標14

    #如果目標14有發光效果，就清除目標14發光效果
    execute as @e[tag=anti_aircraft_missile_target_14,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標14有發光狀態，就清除目標14發光狀態
    execute as @e[tag=anti_aircraft_missile_target_14,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈14可以爆炸

    #如果14導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_14] if score missile_14 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果14導彈已解除保險，且目標14是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_14,type=arrow] if score missile_14 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果14導彈已解除保險，且目標14是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_14,type=spectral_arrow] if score missile_14 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈14當前時間
    scoreboard players reset missile_14 anti_aircraft_missile_set

    #導彈14

        #刪除尾煙14
        kill @e[tag=anti_aircraft_missile_tail_14]

        #刪除前標記14
        kill @e[tag=anti_aircraft_missile_front_mark_14]

        #刪除後標記14
        kill @e[tag=anti_aircraft_missile_later_mark_14]

        #刪除目的14
        kill @e[tag=anti_aircraft_missile_object_14]

        #刪除導彈14
        kill @e[tag=anti_aircraft_missile_14]

    #目標14

        #將目標14移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_14]

        #刪除目標前置量14
        kill @e[tag=anti_aircraft_missile_target_offset_14]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_14] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_14] remove anti_aircraft_missile_target

        #刪除目標14標籤
        tag @e[tag=anti_aircraft_missile_target_14] remove anti_aircraft_missile_target_14
