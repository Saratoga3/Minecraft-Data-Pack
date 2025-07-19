#導彈飛行

#導彈

    #在導彈的位置，召喚目的
    execute at @e[tag=THADD_missile] run summon marker ~ ~ ~ {Tags:["THADD_object"]}

    #目的的視角看向前標記
    execute as @e[tag=THADD_object] at @s facing entity @e[tag=THADD_front_mark] feet run tp ^ ^ ^

    #調整導彈速度
    execute rotated as @e[tag=THADD_object] positioned 0.0 0.0 0.0 run tp @e[tag=THADD_object,limit=1] ^ ^ ^10

    #將目的的座標，存入導彈的Motion中
    execute positioned ~ ~ ~ run data modify entity @e[tag=THADD_missile,limit=1] Motion set from entity @e[tag=THADD_object,limit=1] Pos

#尾煙

    #在導彈位置召喚尾煙
    execute at @e[tag=THADD_missile] unless entity @e[tag=THADD_tail] run summon marker ~ ~ ~ {Tags:["THADD_tail"]}

    #在尾煙位置召喚尾煙特效
    execute at @e[tag=THADD_tail] run particle campfire_signal_smoke ~ ~ ~ 1 1 1 0 200 force @a

    #尾煙傳送至導彈位置
    execute as @e[tag=THADD_tail] at @e[tag=THADD_missile] run tp ~ ~ ~

#刪除目的
kill @e[tag=THADD_object]

#刪除目標前置量
kill @e[tag=THADD_target_offset]
