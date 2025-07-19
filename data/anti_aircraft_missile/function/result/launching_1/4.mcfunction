#導彈4處理

#取消顯示目標4

    #如果目標4有發光效果，就清除目標4發光效果
    execute as @e[tag=anti_aircraft_missile_target_4,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標4有發光狀態，就清除目標4發光狀態
    execute as @e[tag=anti_aircraft_missile_target_4,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈4可以爆炸

    #如果4導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_4] if score missile_4 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果4導彈已解除保險，且目標4是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_4,type=arrow] if score missile_4 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果4導彈已解除保險，且目標4是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_4,type=spectral_arrow] if score missile_4 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈4當前時間
    scoreboard players reset missile_4 anti_aircraft_missile_set

    #導彈4

        #刪除尾煙4
        kill @e[tag=anti_aircraft_missile_tail_4]

        #刪除前標記4
        kill @e[tag=anti_aircraft_missile_front_mark_4]

        #刪除後標記4
        kill @e[tag=anti_aircraft_missile_later_mark_4]

        #刪除目的4
        kill @e[tag=anti_aircraft_missile_object_4]

        #刪除導彈4
        kill @e[tag=anti_aircraft_missile_4]

    #目標4

        #將目標4移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_4]

        #刪除目標前置量4
        kill @e[tag=anti_aircraft_missile_target_offset_4]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_4] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_4] remove anti_aircraft_missile_target

        #刪除目標4標籤
        tag @e[tag=anti_aircraft_missile_target_4] remove anti_aircraft_missile_target_4
