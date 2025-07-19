#導彈16處理

#取消顯示目標16

    #如果目標16有發光效果，就清除目標16發光效果
    execute as @e[tag=anti_aircraft_missile_target_16,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標16有發光狀態，就清除目標16發光狀態
    execute as @e[tag=anti_aircraft_missile_target_16,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈16可以爆炸

    #如果16導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_16] if score missile_16 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果16導彈已解除保險，且目標16是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_16,type=arrow] if score missile_16 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果16導彈已解除保險，且目標16是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_16,type=spectral_arrow] if score missile_16 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈16當前時間
    scoreboard players reset missile_16 anti_aircraft_missile_set

    #導彈16

        #刪除尾煙16
        kill @e[tag=anti_aircraft_missile_tail_16]

        #刪除前標記16
        kill @e[tag=anti_aircraft_missile_front_mark_16]

        #刪除後標記16
        kill @e[tag=anti_aircraft_missile_later_mark_16]

        #刪除目的16
        kill @e[tag=anti_aircraft_missile_object_16]

        #刪除導彈16
        kill @e[tag=anti_aircraft_missile_16]

    #目標16

        #將目標16移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_16]

        #刪除目標前置量16
        kill @e[tag=anti_aircraft_missile_target_offset_16]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_16] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_16] remove anti_aircraft_missile_target

        #刪除目標16標籤
        tag @e[tag=anti_aircraft_missile_target_16] remove anti_aircraft_missile_target_16
