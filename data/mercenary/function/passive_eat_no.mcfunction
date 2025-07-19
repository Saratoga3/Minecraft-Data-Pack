#被動模式_有敵人就不吃食物

#始終敵對:

    #zombie_villager
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=zombie_villager,distance=..6] run function mercenary:mercenary_stop3

    #zombie
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=zombie,distance=..6] run function mercenary:mercenary_stop3

    #zoglin
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=zoglin,distance=..6] run function mercenary:mercenary_stop3

        #zoglin(Baby)
        execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=zoglin,distance=..6,nbt={IsBaby:true}] run function mercenary:mercenary_stop3

    #wither_skeleton
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=wither_skeleton,distance=..6] run function mercenary:mercenary_stop3

    #witch
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=witch,distance=..6] run function mercenary:mercenary_stop3

    #warden
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=warden,distance=..6] run function mercenary:mercenary_stop3

    #vindicator
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=vindicator,distance=..6] run function mercenary:mercenary_stop3

    #vex
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=vex,distance=..6] run function mercenary:mercenary_stop3

    #stray
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=stray,distance=..6] run function mercenary:mercenary_stop3

    #slime
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=slime,distance=..6] run function mercenary:mercenary_stop3

    #skeleton
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=skeleton,distance=..6] run function mercenary:mercenary_stop3

    #silverfish
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=silverfish,distance=..6] run function mercenary:mercenary_stop3

    #shulker
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=shulker,distance=..6] run function mercenary:mercenary_stop3

    #ravager
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=ravager,distance=..6] run function mercenary:mercenary_stop3

    #pillager
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=pillager,distance=..6] run function mercenary:mercenary_stop3

    #piglin_brute
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=piglin_brute,distance=..6] run function mercenary:mercenary_stop3

    #phantom
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=phantom,distance=..6] run function mercenary:mercenary_stop3

    #magma_cube
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=magma_cube,distance=..6] run function mercenary:mercenary_stop3

    #husk
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=husk,distance=..6] run function mercenary:mercenary_stop3

    #hoglin
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=hoglin,distance=..6] run function mercenary:mercenary_stop3

        #hoglin(bady)
        execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=hoglin,distance=..6,nbt=!{Age:0}] run function mercenary:mercenary_stop3

    #guardian
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=guardian,distance=..6] run function mercenary:mercenary_stop3

    #ghast
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=ghast,distance=..6] run function mercenary:mercenary_stop3

    #evoker
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=evoker,distance=..6] run function mercenary:mercenary_stop3

    #endermite
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=endermite,distance=..6] run function mercenary:mercenary_stop3

    #elder_guardian
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=elder_guardian,distance=..6] run function mercenary:mercenary_stop3

    #drowned
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=drowned,distance=..6] run function mercenary:mercenary_stop3

    #creeper
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=creeper,distance=..6] run function mercenary:mercenary_stop3

    #blaze
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=blaze,distance=..6] run function mercenary:mercenary_stop3

    #breeze
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=breeze,distance=..6] run function mercenary:mercenary_stop3

#條件敵對:

    #zombified_piglin
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=zombified_piglin,distance=..6,nbt=!{AngerTime:0}] run function mercenary:mercenary_stop3

    #cave_spider
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=cave_spider,distance=..6] run function mercenary:mercenary_stop3

    #spider
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=spider,distance=..6] run function mercenary:mercenary_stop3

    #piglin
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=piglin,distance=..6] run function mercenary:mercenary_stop3

    #enderman
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=enderman,distance=..6,nbt=!{AngerTime:0}] run function mercenary:mercenary_stop3
    
#boss生物:

    #wither
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=wither,distance=..6] run function mercenary:mercenary_stop3

    #ender_dragon
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=ender_dragon,distance=..6] run function mercenary:mercenary_stop3

#未使用的生物:

    #illusioner
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=illusioner,distance=..6] run function mercenary:mercenary_stop3

    #giant
    execute as @e[tag=mercenary] at @e[tag=mercenary] if entity @e[type=giant,distance=..6] run function mercenary:mercenary_stop3
