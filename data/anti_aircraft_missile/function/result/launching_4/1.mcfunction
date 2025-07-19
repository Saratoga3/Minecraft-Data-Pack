#導彈13處理

#取消顯示目標13

    #如果目標13有發光效果，就清除目標13發光效果
    execute as @e[tag=anti_aircraft_missile_target_13,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標13有發光狀態，就清除目標13發光狀態
    execute as @e[tag=anti_aircraft_missile_target_13,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈13可以爆炸

    #如果13導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_13] if score missile_13 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果13導彈已解除保險，且目標13是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_13,type=arrow] if score missile_13 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果13導彈已解除保險，且目標13是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_13,type=spectral_arrow] if score missile_13 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈13當前時間
    scoreboard players reset missile_13 anti_aircraft_missile_set

    #導彈13

        #刪除尾煙13
        kill @e[tag=anti_aircraft_missile_tail_13]

        #刪除前標記13
        kill @e[tag=anti_aircraft_missile_front_mark_13]

        #刪除後標記13
        kill @e[tag=anti_aircraft_missile_later_mark_13]

        #刪除目的13
        kill @e[tag=anti_aircraft_missile_object_13]

        #刪除導彈13
        kill @e[tag=anti_aircraft_missile_13]

    #目標13

        #將目標13移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_13]

        #刪除目標前置量13
        kill @e[tag=anti_aircraft_missile_target_offset_13]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_13] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_13] remove anti_aircraft_missile_target

        #刪除目標13標籤
        tag @e[tag=anti_aircraft_missile_target_13] remove anti_aircraft_missile_target_13
