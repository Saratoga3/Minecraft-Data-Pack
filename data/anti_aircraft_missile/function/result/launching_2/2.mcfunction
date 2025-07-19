#導彈6處理

#取消顯示目標6

    #如果目標6有發光效果，就清除目標6發光效果
    execute as @e[tag=anti_aircraft_missile_target_6,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標6有發光狀態，就清除目標6發光狀態
    execute as @e[tag=anti_aircraft_missile_target_6,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈6可以爆炸

    #如果6導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_6] if score missile_6 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果6導彈已解除保險，且目標6是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_6,type=arrow] if score missile_6 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果6導彈已解除保險，且目標6是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_6,type=spectral_arrow] if score missile_6 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈6當前時間
    scoreboard players reset missile_6 anti_aircraft_missile_set

    #導彈6

        #刪除尾煙6
        kill @e[tag=anti_aircraft_missile_tail_6]

        #刪除前標記6
        kill @e[tag=anti_aircraft_missile_front_mark_6]

        #刪除後標記6
        kill @e[tag=anti_aircraft_missile_later_mark_6]

        #刪除目的6
        kill @e[tag=anti_aircraft_missile_object_6]

        #刪除導彈6
        kill @e[tag=anti_aircraft_missile_6]

    #目標6

        #將目標6移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_6]

        #刪除目標前置量6
        kill @e[tag=anti_aircraft_missile_target_offset_6]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_6] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_6] remove anti_aircraft_missile_target

        #刪除目標6標籤
        tag @e[tag=anti_aircraft_missile_target_6] remove anti_aircraft_missile_target_6
