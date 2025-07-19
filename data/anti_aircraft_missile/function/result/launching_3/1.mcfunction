#導彈9處理

#取消顯示目標9

    #如果目標9有發光效果，就清除目標9發光效果
    execute as @e[tag=anti_aircraft_missile_target_9,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標9有發光狀態，就清除目標9發光狀態
    execute as @e[tag=anti_aircraft_missile_target_9,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈9可以爆炸

    #如果9導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_9] if score missile_9 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果9導彈已解除保險，且目標9是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_9,type=arrow] if score missile_9 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果9導彈已解除保險，且目標9是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_9,type=spectral_arrow] if score missile_9 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈9當前時間
    scoreboard players reset missile_9 anti_aircraft_missile_set

    #導彈9

        #刪除尾煙9
        kill @e[tag=anti_aircraft_missile_tail_9]

        #刪除前標記9
        kill @e[tag=anti_aircraft_missile_front_mark_9]

        #刪除後標記9
        kill @e[tag=anti_aircraft_missile_later_mark_9]

        #刪除目的9
        kill @e[tag=anti_aircraft_missile_object_9]

        #刪除導彈9
        kill @e[tag=anti_aircraft_missile_9]

    #目標9

        #將目標9移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_9]

        #刪除目標前置量9
        kill @e[tag=anti_aircraft_missile_target_offset_9]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_9] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_9] remove anti_aircraft_missile_target

        #刪除目標9標籤
        tag @e[tag=anti_aircraft_missile_target_9] remove anti_aircraft_missile_target_9
