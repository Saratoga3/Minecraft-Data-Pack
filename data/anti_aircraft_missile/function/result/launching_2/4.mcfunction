#導彈8處理

#取消顯示目標8

    #如果目標8有發光效果，就清除目標8發光效果
    execute as @e[tag=anti_aircraft_missile_target_8,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標8有發光狀態，就清除目標8發光狀態
    execute as @e[tag=anti_aircraft_missile_target_8,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈8可以爆炸

    #如果8導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_8] if score missile_8 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果8導彈已解除保險，且目標8是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_8,type=arrow] if score missile_8 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果8導彈已解除保險，且目標8是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_8,type=spectral_arrow] if score missile_8 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈8當前時間
    scoreboard players reset missile_8 anti_aircraft_missile_set

    #導彈8

        #刪除尾煙8
        kill @e[tag=anti_aircraft_missile_tail_8]

        #刪除前標記8
        kill @e[tag=anti_aircraft_missile_front_mark_8]

        #刪除後標記8
        kill @e[tag=anti_aircraft_missile_later_mark_8]

        #刪除目的8
        kill @e[tag=anti_aircraft_missile_object_8]

        #刪除導彈8
        kill @e[tag=anti_aircraft_missile_8]

    #目標8

        #將目標8移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_8]

        #刪除目標前置量8
        kill @e[tag=anti_aircraft_missile_target_offset_8]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_8] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_8] remove anti_aircraft_missile_target

        #刪除目標8標籤
        tag @e[tag=anti_aircraft_missile_target_8] remove anti_aircraft_missile_target_8
