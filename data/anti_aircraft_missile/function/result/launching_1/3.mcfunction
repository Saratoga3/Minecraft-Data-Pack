#導彈3處理

#取消顯示目標3

    #如果目標3有發光效果，就清除目標3發光效果
    execute as @e[tag=anti_aircraft_missile_target_3,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標3有發光狀態，就清除目標3發光狀態
    execute as @e[tag=anti_aircraft_missile_target_3,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈3可以爆炸

    #如果3導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_3] if score missile_3 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果3導彈已解除保險，且目標3是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_3,type=arrow] if score missile_3 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果3導彈已解除保險，且目標3是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_3,type=spectral_arrow] if score missile_3 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈3當前時間
    scoreboard players reset missile_3 anti_aircraft_missile_set

    #導彈3

        #刪除尾煙3
        kill @e[tag=anti_aircraft_missile_tail_3]

        #刪除前標記3
        kill @e[tag=anti_aircraft_missile_front_mark_3]

        #刪除後標記3
        kill @e[tag=anti_aircraft_missile_later_mark_3]

        #刪除目的3
        kill @e[tag=anti_aircraft_missile_object_3]

        #刪除導彈3
        kill @e[tag=anti_aircraft_missile_3]

    #目標3

        #將目標3移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_3]

        #刪除目標前置量3
        kill @e[tag=anti_aircraft_missile_target_offset_3]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_3] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_3] remove anti_aircraft_missile_target

        #刪除目標3標籤
        tag @e[tag=anti_aircraft_missile_target_3] remove anti_aircraft_missile_target_3
