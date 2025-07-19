#跟隨主人

#跟隨目標:

    #在目標1~30格內,就望向跟隨目標
    execute at @e[tag=mercenary] at @e[tag=owner,distance=1..30] run player mercenary look at ~ ~1 ~

#移動:

    #在目標3~30格內,就向前移動
    execute at @e[tag=mercenary] if entity @e[tag=owner,distance=3..30] run player mercenary move forward

#蹲下:

    #在目標30格內,且目標蹲下,就蹲下
    execute at @e[tag=mercenary] if entity @e[tag=owner,distance=..30,predicate=public:is_sneaking] run player mercenary sneak
    
    #在目標30格內,且目標不蹲下,就不蹲下
    execute at @e[tag=mercenary] unless entity @e[tag=owner,distance=..30,predicate=public:is_sneaking] run player mercenary unsneak

#奔跑:

    #在目標30格內,且沒有蹲下，且目標奔跑，就奔跑
    execute at @e[tag=mercenary] if entity @e[tag=owner,distance=..30,predicate=public:is_sprinting] unless entity @e[tag=owner,predicate=public:is_sneaking] run player mercenary sprint

    #在目標4~30格內,且沒有蹲下,就奔跑
    execute at @e[tag=mercenary] if entity @e[tag=owner,distance=4..30] unless entity @e[tag=owner,predicate=public:is_sneaking] run player mercenary sprint

#游泳：

    #在目標30格內,且沒有蹲下，且目標游泳，就游泳
    execute at @e[tag=mercenary] if entity @e[tag=owner,distance=..30,predicate=public:is_swimming] unless entity @e[tag=owner,predicate=public:is_sneaking] run player mercenary sprint

#跳躍:

    #在目標30格內,且沒有蹲下，且雇傭兵在水裡，就一直跳躍
    execute at @e[tag=mercenary] if entity @e[tag=owner,distance=..30,predicate=!public:water] unless entity @e[tag=owner,predicate=public:is_sneaking] if entity @e[tag=mercenary,predicate=public:water] run player mercenary jump continue

    #在目標5~30格內,且沒有蹲下,就跳躍
    execute at @e[tag=mercenary] if entity @e[tag=owner,distance=5..30,predicate=!public:water] unless entity @e[tag=owner,predicate=public:is_sneaking] run player mercenary jump once

#停止動作:

    #
    execute as @e[tag=mercenary] at @s if entity @e[tag=owner,distance=3..30] unless entity @s[tag=mercenary_stop] unless entity @e[tag=owner_stop] run tag @s add mercenary_stop

    #
    execute as @e[tag=mercenary] at @s if entity @e[tag=owner,distance=..3] if entity @s[tag=mercenary_stop] run function mercenary:mercenary_stop

    #
    execute as @e[tag=mercenary] at @s if entity @e[tag=owner,distance=30..100] if entity @s[tag=mercenary_stop] run function mercenary:mercenary_stop
