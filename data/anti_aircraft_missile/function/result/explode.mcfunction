#命中目標

#防爆-開啟

    #設定防爆
    scoreboard players set exploding explosion_proof 1

    #開啟防爆
    gamerule mobGriefing false

#爆炸
summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,PersistenceRequired:true,Tags:["anti_aircraft_exploding"],CustomName:'{"text":"陸基遠程防空導彈","color":"red"}'}
