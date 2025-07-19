#被動模式_看敵人

#始終敵對:

    #zombie_villager
    execute at @e[tag=mercenary] at @e[type=zombie_villager,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #zombie
    execute at @e[tag=mercenary] at @e[type=zombie,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #zoglin
    execute at @e[tag=mercenary] at @e[type=zoglin,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

        #zoglin(Baby)
        execute at @e[tag=mercenary] at @e[type=zoglin,limit=1,distance=..6,sort=nearest,nbt={IsBaby:true}] run player mercenary look at ~ ~ ~

    #wither_skeleton
    execute at @e[tag=mercenary] at @e[type=wither_skeleton,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #witch
    execute at @e[tag=mercenary] at @e[type=witch,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #warden
    execute at @e[tag=mercenary] at @e[type=warden,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #vindicator
    execute at @e[tag=mercenary] at @e[type=vindicator,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #vex
    execute at @e[tag=mercenary] at @e[type=vex,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #stray
    execute at @e[tag=mercenary] at @e[type=stray,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #slime
    execute at @e[tag=mercenary] at @e[type=slime,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #skeleton
    execute at @e[tag=mercenary] at @e[type=skeleton,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #silverfish
    execute at @e[tag=mercenary] at @e[type=silverfish,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #shulker
    execute at @e[tag=mercenary] at @e[type=shulker,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #ravager
    execute at @e[tag=mercenary] at @e[type=ravager,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #pillager
    execute at @e[tag=mercenary] at @e[type=pillager,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #piglin_brute
    execute at @e[tag=mercenary] at @e[type=piglin_brute,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #phantom
    execute at @e[tag=mercenary] at @e[type=phantom,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #magma_cube
    execute at @e[tag=mercenary] at @e[type=magma_cube,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #husk
    execute at @e[tag=mercenary] at @e[type=husk,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #hoglin
    execute at @e[tag=mercenary] at @e[type=hoglin,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

        #hoglin(bady)
        execute at @e[tag=mercenary] at @e[type=hoglin,limit=1,distance=..6,sort=nearest,nbt=!{Age:0}] run player mercenary look at ~ ~ ~

    #guardian
    execute at @e[tag=mercenary] at @e[type=guardian,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #ghast
    execute at @e[tag=mercenary] at @e[type=ghast,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #evoker
    execute at @e[tag=mercenary] at @e[type=evoker,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #endermite
    execute at @e[tag=mercenary] at @e[type=endermite,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #elder_guardian
    execute at @e[tag=mercenary] at @e[type=elder_guardian,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #drowned
    execute at @e[tag=mercenary] at @e[type=drowned,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #creeper
    execute at @e[tag=mercenary] at @e[type=creeper,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #blaze
    execute at @e[tag=mercenary] at @e[type=blaze,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #breeze
    execute at @e[tag=mercenary] at @e[type=breeze,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

#條件敵對:

    #zombified_piglin
    execute at @e[tag=mercenary] at @e[type=zombified_piglin,limit=1,distance=..6,sort=nearest,nbt=!{AngerTime:0}] run player mercenary look at ~ ~1 ~

    #cave_spider
    execute at @e[tag=mercenary] at @e[type=cave_spider,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #spider
    execute at @e[tag=mercenary] at @e[type=spider,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #piglin
    execute at @e[tag=mercenary] at @e[type=piglin,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #enderman
    execute at @e[tag=mercenary] at @e[type=enderman,limit=1,distance=..6,sort=nearest,nbt=!{AngerTime:0}] run player mercenary look at ~ ~1 ~
    
#boss生物:

    #wither
    execute at @e[tag=mercenary] at @e[type=wither,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

    #ender_dragon
    execute at @e[tag=mercenary] at @e[type=ender_dragon,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~

#未使用的生物:

    #illusioner
    execute at @e[tag=mercenary] at @e[type=illusioner,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~1 ~

    #giant
    execute at @e[tag=mercenary] at @e[type=giant,limit=1,distance=..6,sort=nearest] run player mercenary look at ~ ~ ~
