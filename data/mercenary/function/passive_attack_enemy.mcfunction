#被動模式_攻擊敵人

#始終敵對:

    #zombie_villager
    execute at @e[tag=mercenary] at @e[type=zombie_villager,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #zombie
    execute at @e[tag=mercenary] at @e[type=zombie,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #zoglin
    execute at @e[tag=mercenary] at @e[type=zoglin,limit=1,distance=..6,sort=nearest] run player mercenary attack once

        #zoglin(Baby)
        execute at @e[tag=mercenary] at @e[type=zoglin,limit=1,distance=..6,sort=nearest,nbt={IsBaby:true}] run player mercenary attack once

    #wither_skeleton
    execute at @e[tag=mercenary] at @e[type=wither_skeleton,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #witch
    execute at @e[tag=mercenary] at @e[type=witch,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #warden
    execute at @e[tag=mercenary] at @e[type=warden,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #vindicator
    execute at @e[tag=mercenary] at @e[type=vindicator,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #vex
    execute at @e[tag=mercenary] at @e[type=vex,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #stray
    execute at @e[tag=mercenary] at @e[type=stray,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #slime
    execute at @e[tag=mercenary] at @e[type=slime,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #skeleton
    execute at @e[tag=mercenary] at @e[type=skeleton,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #silverfish
    execute at @e[tag=mercenary] at @e[type=silverfish,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #shulker
    execute at @e[tag=mercenary] at @e[type=shulker,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #ravager
    execute at @e[tag=mercenary] at @e[type=ravager,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #pillager
    execute at @e[tag=mercenary] at @e[type=pillager,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #piglin_brute
    execute at @e[tag=mercenary] at @e[type=piglin_brute,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #phantom
    execute at @e[tag=mercenary] at @e[type=phantom,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #magma_cube
    execute at @e[tag=mercenary] at @e[type=magma_cube,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #husk
    execute at @e[tag=mercenary] at @e[type=husk,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #hoglin
    execute at @e[tag=mercenary] at @e[type=hoglin,limit=1,distance=..6,sort=nearest] run player mercenary attack once

        #hoglin(bady)
        execute at @e[tag=mercenary] at @e[type=hoglin,limit=1,distance=..6,sort=nearest,nbt=!{Age:0}] run player mercenary attack once

    #guardian
    execute at @e[tag=mercenary] at @e[type=guardian,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #ghast
    execute at @e[tag=mercenary] at @e[type=ghast,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #evoker
    execute at @e[tag=mercenary] at @e[type=evoker,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #endermite
    execute at @e[tag=mercenary] at @e[type=endermite,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #elder_guardian
    execute at @e[tag=mercenary] at @e[type=elder_guardian,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #drowned
    execute at @e[tag=mercenary] at @e[type=drowned,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #creeper
    execute at @e[tag=mercenary] at @e[type=creeper,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #blaze
    execute at @e[tag=mercenary] at @e[type=blaze,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #breeze
    execute at @e[tag=mercenary] at @e[type=breeze,limit=1,distance=..6,sort=nearest] run player mercenary attack once

#條件敵對:

    #zombified_piglin
    execute at @e[tag=mercenary] at @e[type=zombified_piglin,limit=1,distance=..6,sort=nearest,nbt=!{AngerTime:0}] run player mercenary attack once

    #cave_spider
    execute at @e[tag=mercenary] at @e[type=cave_spider,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #spider
    execute at @e[tag=mercenary] at @e[type=spider,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #piglin
    execute at @e[tag=mercenary] at @e[type=piglin,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #enderman
    execute at @e[tag=mercenary] at @e[type=enderman,limit=1,distance=..6,sort=nearest,nbt=!{AngerTime:0}] run player mercenary attack once
    
#boss生物:

    #wither
    execute at @e[tag=mercenary] at @e[type=wither,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #ender_dragon
    execute at @e[tag=mercenary] at @e[type=ender_dragon,limit=1,distance=..6,sort=nearest] run player mercenary attack once

#未使用的生物:

    #illusioner
    execute at @e[tag=mercenary] at @e[type=illusioner,limit=1,distance=..6,sort=nearest] run player mercenary attack once

    #giant
    execute at @e[tag=mercenary] at @e[type=giant,limit=1,distance=..6,sort=nearest] run player mercenary attack once
