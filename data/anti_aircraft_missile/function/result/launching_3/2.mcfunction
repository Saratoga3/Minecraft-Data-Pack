#導彈10處理

#取消顯示目標10

    #如果目標10有發光效果，就清除目標10發光效果
    execute as @e[tag=anti_aircraft_missile_target_10,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標10有發光狀態，就清除目標10發光狀態
    execute as @e[tag=anti_aircraft_missile_target_10,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈10可以爆炸

    #如果10導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_10] if score missile_10 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果10導彈已解除保險，且目標10是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_10,type=arrow] if score missile_10 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果10導彈已解除保險，且目標10是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_10,type=spectral_arrow] if score missile_10 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈10當前時間
    scoreboard players reset missile_10 anti_aircraft_missile_set

    #導彈10

        #刪除尾煙10
        kill @e[tag=anti_aircraft_missile_tail_10]

        #刪除前標記10
        kill @e[tag=anti_aircraft_missile_front_mark_10]

        #刪除後標記10
        kill @e[tag=anti_aircraft_missile_later_mark_10]

        #刪除目的10
        kill @e[tag=anti_aircraft_missile_object_10]

        #刪除導彈10
        kill @e[tag=anti_aircraft_missile_10]

    #目標10

        #將目標10移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_10]

        #刪除目標前置量10
        kill @e[tag=anti_aircraft_missile_target_offset_10]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_10] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_10] remove anti_aircraft_missile_target

        #刪除目標10標籤
        tag @e[tag=anti_aircraft_missile_target_10] remove anti_aircraft_missile_target_10
