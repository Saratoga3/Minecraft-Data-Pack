#持續檢測

#計時器

    #全域

        #計時
        scoreboard players add detection pubic_time 1

        #敵對生物
        execute if score detection pubic_time matches 20 run function public:set/hostile_mob

        #歸零
        execute if score detection pubic_time matches 20.. run scoreboard players set detection pubic_time 0

#玩家若不在友軍隊伍，就將他加入(不可以是雇傭兵！！！)
#execute as @a[tag=!mercenary,team=!friendly_forces] run team join friendly_forces

#防爆
#execute if score exploding explosion_proof matches 1.. run function public:set/exploding

#取得時間
execute store result score time time run time query daytime
