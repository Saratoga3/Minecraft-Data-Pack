#導彈11處理

#取消顯示目標11

    #如果目標11有發光效果，就清除目標11發光效果
    execute as @e[tag=anti_aircraft_missile_target_11,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標11有發光狀態，就清除目標11發光狀態
    execute as @e[tag=anti_aircraft_missile_target_11,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈11可以爆炸

    #如果11導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_11] if score missile_11 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果11導彈已解除保險，且目標11是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_11,type=arrow] if score missile_11 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果11導彈已解除保險，且目標11是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_11,type=spectral_arrow] if score missile_11 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈11當前時間
    scoreboard players reset missile_11 anti_aircraft_missile_set

    #導彈11

        #刪除尾煙11
        kill @e[tag=anti_aircraft_missile_tail_11]

        #刪除前標記11
        kill @e[tag=anti_aircraft_missile_front_mark_11]

        #刪除後標記11
        kill @e[tag=anti_aircraft_missile_later_mark_11]

        #刪除目的11
        kill @e[tag=anti_aircraft_missile_object_11]

        #刪除導彈11
        kill @e[tag=anti_aircraft_missile_11]

    #目標11

        #將目標11移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_11]

        #刪除目標前置量11
        kill @e[tag=anti_aircraft_missile_target_offset_11]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_11] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_11] remove anti_aircraft_missile_target

        #刪除目標11標籤
        tag @e[tag=anti_aircraft_missile_target_11] remove anti_aircraft_missile_target_11
