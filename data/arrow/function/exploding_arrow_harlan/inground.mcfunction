#防爆-開啟

    #計時
    scoreboard players set exploding explosion_proof 1

    #開啟防爆
    gamerule mobGriefing false

#觸地
    
    #爆炸
    summon creeper ~ ~ ~ {Fuse:0,CustomName:'{"text":"爆炸箭矢-哈蘭","color":"red","italic":true}',powered:true}

    #清除爆炸箭矢
    kill @s
