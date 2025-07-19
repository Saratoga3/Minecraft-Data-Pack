#導彈處理

#取消顯示目標

    #如果目標有發光效果，就清除目標發光效果
    execute as @e[tag=THADD_target,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s glowing

    #如果目標有發光狀態，就清除目標發光狀態
    execute as @e[tag=THADD_target,nbt={Glowing:true}] run data modify entity @s Glowing set value false

#導彈可以爆炸

    #如果導彈已解除保險，就爆炸
    execute if score missile THADD_set > safety THADD_set run function thadd:result/explode

#重置系統

    #重置導彈當前時間
    scoreboard players set missile THADD_set 0

    #導彈

        #刪除尾煙
        kill @e[tag=THADD_tail]

        #刪除前標記
        kill @e[tag=THADD_front_mark]

        #刪除後標記
        kill @e[tag=THADD_later_mark]

        #刪除目的
        kill @e[tag=THADD_object]

        #刪除導彈
        kill @e[tag=THADD_missile]

    #目標

        #將目標移出防空隊伍
        team leave @e[tag=THADD_target]

        #刪除目標前置量
        kill @e[tag=THADD_target_offset]

        #刪除目標標籤
        tag @e[tag=THADD_target] remove THADD_target
