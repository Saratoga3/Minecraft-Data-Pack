#導彈1處理

#取消顯示目標1

    #如果目標1有發光效果，就清除目標1發光效果
    execute as @e[tag=anti_aircraft_missile_target_1,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標1有發光狀態，就清除目標1發光狀態
    execute as @e[tag=anti_aircraft_missile_target_1,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈1可以爆炸

    #如果1導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_1] if score missile_1 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果1導彈已解除保險，且目標1是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_1,type=arrow] if score missile_1 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果1導彈已解除保險，且目標1是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_1,type=spectral_arrow] if score missile_1 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈1當前時間
    scoreboard players reset missile_1 anti_aircraft_missile_set

    #導彈1

        #刪除尾煙1
        kill @e[tag=anti_aircraft_missile_tail_1]

        #刪除前標記1
        kill @e[tag=anti_aircraft_missile_front_mark_1]

        #刪除後標記1
        kill @e[tag=anti_aircraft_missile_later_mark_1]

        #刪除目的1
        kill @e[tag=anti_aircraft_missile_object_1]

        #刪除導彈1
        kill @e[tag=anti_aircraft_missile_1]

    #目標1

        #將目標1移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_1]

        #刪除目標前置量1
        kill @e[tag=anti_aircraft_missile_target_offset_1]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_1] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_1] remove anti_aircraft_missile_target

        #刪除目標1標籤
        tag @e[tag=anti_aircraft_missile_target_1] remove anti_aircraft_missile_target_1
