#導彈2處理

#取消顯示目標2

    #如果目標2有發光效果，就清除目標2發光效果
    execute as @e[tag=anti_aircraft_missile_target_2,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標2有發光狀態，就清除目標2發光狀態
    execute as @e[tag=anti_aircraft_missile_target_2,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈2可以爆炸

    #如果2導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_2] if score missile_2 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果2導彈已解除保險，且目標2是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_2,type=arrow] if score missile_2 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果2導彈已解除保險，且目標2是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_2,type=spectral_arrow] if score missile_2 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈2當前時間
    scoreboard players reset missile_2 anti_aircraft_missile_set

    #導彈2

        #刪除尾煙2
        kill @e[tag=anti_aircraft_missile_tail_2]

        #刪除前標記2
        kill @e[tag=anti_aircraft_missile_front_mark_2]

        #刪除後標記2
        kill @e[tag=anti_aircraft_missile_later_mark_2]

        #刪除目的2
        kill @e[tag=anti_aircraft_missile_object_2]

        #刪除導彈2
        kill @e[tag=anti_aircraft_missile_2]

    #目標2

        #將目標2移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_2]

        #刪除目標前置量2
        kill @e[tag=anti_aircraft_missile_target_offset_2]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_2] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_2] remove anti_aircraft_missile_target

        #刪除目標2標籤
        tag @e[tag=anti_aircraft_missile_target_2] remove anti_aircraft_missile_target_2
