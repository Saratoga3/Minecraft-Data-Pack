#命中目標

#爆炸
execute at @e[tag=THADD_missile] run summon creeper ~ ~ ~ {Fuse:0,powered:true,PersistenceRequired:true,CustomName:'{"text":"終端高空防禦導彈","color":"red"}'}

#箭矢、追跡之箭

    #如果目標是箭矢，就刪除他
    execute at @e[tag=THADD_missile] if entity @e[tag=THADD_target,distance=..7] run kill @e[tag=THADD_target,type=arrow]

    #如果目標是追跡之箭，就刪除他
    execute at @e[tag=THADD_missile] if entity @e[tag=THADD_target,distance=..7] run kill @e[tag=THADD_target,type=minecraft:spectral_arrow]
