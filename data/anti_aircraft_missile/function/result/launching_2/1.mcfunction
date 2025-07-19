#導彈5處理

#取消顯示目標5

    #如果目標5有發光效果，就清除目標5發光效果
    execute as @e[tag=anti_aircraft_missile_target_5,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標5有發光狀態，就清除目標5發光狀態
    execute as @e[tag=anti_aircraft_missile_target_5,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈5可以爆炸

    #如果5導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_5] if score missile_5 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果5導彈已解除保險，且目標5是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_5,type=arrow] if score missile_5 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果5導彈已解除保險，且目標5是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_5,type=spectral_arrow] if score missile_5 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈5當前時間
    scoreboard players reset missile_5 anti_aircraft_missile_set

    #導彈5

        #刪除尾煙5
        kill @e[tag=anti_aircraft_missile_tail_5]

        #刪除前標記5
        kill @e[tag=anti_aircraft_missile_front_mark_5]

        #刪除後標記5
        kill @e[tag=anti_aircraft_missile_later_mark_5]

        #刪除目的5
        kill @e[tag=anti_aircraft_missile_object_5]

        #刪除導彈5
        kill @e[tag=anti_aircraft_missile_5]

    #目標5

        #將目標5移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_5]

        #刪除目標前置量5
        kill @e[tag=anti_aircraft_missile_target_offset_5]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_5] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_5] remove anti_aircraft_missile_target

        #刪除目標5標籤
        tag @e[tag=anti_aircraft_missile_target_5] remove anti_aircraft_missile_target_5
