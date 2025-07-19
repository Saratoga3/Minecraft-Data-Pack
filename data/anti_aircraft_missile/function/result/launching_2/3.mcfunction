#導彈7處理

#取消顯示目標7

    #如果目標7有發光效果，就清除目標7發光效果
    execute as @e[tag=anti_aircraft_missile_target_7,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標7有發光狀態，就清除目標7發光狀態
    execute as @e[tag=anti_aircraft_missile_target_7,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈7可以爆炸

    #如果7導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_7] if score missile_7 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果7導彈已解除保險，且目標7是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_7,type=arrow] if score missile_7 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果7導彈已解除保險，且目標7是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_7,type=spectral_arrow] if score missile_7 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈7當前時間
    scoreboard players reset missile_7 anti_aircraft_missile_set

    #導彈7

        #刪除尾煙7
        kill @e[tag=anti_aircraft_missile_tail_7]

        #刪除前標記7
        kill @e[tag=anti_aircraft_missile_front_mark_7]

        #刪除後標記7
        kill @e[tag=anti_aircraft_missile_later_mark_7]

        #刪除目的7
        kill @e[tag=anti_aircraft_missile_object_7]

        #刪除導彈7
        kill @e[tag=anti_aircraft_missile_7]

    #目標7

        #將目標7移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_7]

        #刪除目標前置量7
        kill @e[tag=anti_aircraft_missile_target_offset_7]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_7] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_7] remove anti_aircraft_missile_target

        #刪除目標7標籤
        tag @e[tag=anti_aircraft_missile_target_7] remove anti_aircraft_missile_target_7
