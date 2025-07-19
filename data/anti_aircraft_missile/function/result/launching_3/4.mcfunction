#導彈12處理

#取消顯示目標12

    #如果目標12有發光效果，就清除目標12發光效果
    execute as @e[tag=anti_aircraft_missile_target_12,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標12有發光狀態，就清除目標12發光狀態
    execute as @e[tag=anti_aircraft_missile_target_12,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈12可以爆炸

    #如果12導彈已解除保險，就爆炸
    execute at @e[tag=anti_aircraft_missile_12] if score missile_12 anti_aircraft_missile_set > safety anti_aircraft_missile_set run function anti_aircraft_missile:result/explode

    #箭矢、追跡之箭

        #如果12導彈已解除保險，且目標12是箭矢，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_12,type=arrow] if score missile_12 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

        #如果12導彈已解除保險，且目標12是追跡之箭，就刪除他
        execute as @e[tag=anti_aircraft_missile_target_12,type=spectral_arrow] if score missile_12 anti_aircraft_missile_set > safety anti_aircraft_missile_set run kill @s

#重置系統

    #重置導彈12當前時間
    scoreboard players reset missile_12 anti_aircraft_missile_set

    #導彈12

        #刪除尾煙12
        kill @e[tag=anti_aircraft_missile_tail_12]

        #刪除前標記12
        kill @e[tag=anti_aircraft_missile_front_mark_12]

        #刪除後標記12
        kill @e[tag=anti_aircraft_missile_later_mark_12]

        #刪除目的12
        kill @e[tag=anti_aircraft_missile_object_12]

        #刪除導彈12
        kill @e[tag=anti_aircraft_missile_12]

    #目標12

        #將目標12移出防空隊伍
        team leave @e[tag=anti_aircraft_missile_target_12]

        #刪除目標前置量12
        kill @e[tag=anti_aircraft_missile_target_offset_12]

        #刪除鎖定標籤
        tag @e[tag=anti_aircraft_missile_target_12] remove anti_aircraft_missile_locking

        #刪除目標標籤
        tag @e[tag=anti_aircraft_missile_target_12] remove anti_aircraft_missile_target

        #刪除目標12標籤
        tag @e[tag=anti_aircraft_missile_target_12] remove anti_aircraft_missile_target_12
