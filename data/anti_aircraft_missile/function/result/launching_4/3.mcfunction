#導彈15處理

#取消顯示目標15

    #如果目標15有發光效果，就清除目標15發光效果
    execute as @e[tag=anti_aircraft_missile_target_15,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標15有發光狀態，就清除目標15發光狀態
    execute as @e[tag=anti_aircraft_missile_target_15,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈15可以爆炸

    #如果15導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_15] if score missile_15 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果15導彈已解除保險，且目標15是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_15,type=arrow] if score missile_15 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果15導彈已解除保險，且目標15是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_15,type=spectral_arrow] if score missile_15 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈15當前時間
    scoreboard players reset missile_15 anti_aircraft_missile_set

    #導彈15

        #刪除尾煙15
        kill @e[tag=anti_aircraft_missile_tail_15]

        #刪除前標記15
        kill @e[tag=anti_aircraft_missile_front_mark_15]

        #刪除後標記15
        kill @e[tag=anti_aircraft_missile_later_mark_15]

        #刪除目的15
        kill @e[tag=anti_aircraft_missile_object_15]

        #刪除導彈15
        kill @e[tag=anti_aircraft_missile_15]

    #目標15

        #將目標15移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_15]

        #刪除目標前置量15
        kill @e[tag=anti_aircraft_missile_target_offset_15]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_15] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_15] remove anti_aircraft_missile_target

        #刪除目標15標籤
        tag @e[tag=anti_aircraft_missile_target_15] remove anti_aircraft_missile_target_15
