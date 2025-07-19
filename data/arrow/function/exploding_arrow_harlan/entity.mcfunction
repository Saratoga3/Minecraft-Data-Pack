#防爆-開啟

    #計時
    scoreboard players set exploding explosion_proof 1

    #開啟防爆
    gamerule mobGriefing false

#實體

    #爆炸
    execute positioned ~ ~0.5 ~ run summon creeper ~ ~ ~ {Fuse:0,CustomName:'{"text":"爆炸箭矢-哈蘭","color":"red","italic":true}',powered:true}

    #清除實體上的霉運效果
    effect clear @s unluck
