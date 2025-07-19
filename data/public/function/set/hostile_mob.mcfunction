#敵對生物

#Minecraft

    #始終敵對

        #殭屍村民
        execute as @e[type=minecraft:zombie_villager,tag=!hostile_mob] run tag @s add hostile_mob

        #殭屍
        execute as @e[type=minecraft:zombie,tag=!hostile_mob] run tag @s add hostile_mob

        #豬屍獸
        execute as @e[type=minecraft:zoglin,tag=!hostile_mob] run tag @s add hostile_mob

        #凋零骷髏
        execute as @e[type=minecraft:wither_skeleton,tag=!hostile_mob] run tag @s add hostile_mob

        #女巫
        execute as @e[type=minecraft:witch,tag=!hostile_mob] run tag @s add hostile_mob

        #伏守者
        execute as @e[type=minecraft:warden,tag=!hostile_mob] run tag @s add hostile_mob

        #衛道士
        execute as @e[type=minecraft:vindicator,tag=!hostile_mob] run tag @s add hostile_mob

        #惱鬼
        execute as @e[type=minecraft:vex,tag=!hostile_mob] run tag @s add hostile_mob

        #流觸
        execute as @e[type=minecraft:stray,tag=!hostile_mob] run tag @s add hostile_mob

        #史萊姆
        execute as @e[type=minecraft:slime,tag=!hostile_mob] run tag @s add hostile_mob

        #骷髏
        execute as @e[type=minecraft:skeleton,tag=!hostile_mob] run tag @s add hostile_mob

        #蠢魚
        execute as @e[type=minecraft:silverfish,tag=!hostile_mob] run tag @s add hostile_mob

        #界伏蚌
        execute as @e[type=minecraft:shulker,tag=!hostile_mob] run tag @s add hostile_mob

        #劫毀獸
        execute as @e[type=minecraft:ravager,tag=!hostile_mob] run tag @s add hostile_mob

        #掠奪者
        execute as @e[type=minecraft:pillager,tag=!hostile_mob] run tag @s add hostile_mob

        #豬布林蠻兵
        execute as @e[type=minecraft:piglin_brute,tag=!hostile_mob] run tag @s add hostile_mob

        #夜魅
        execute as @e[type=minecraft:phantom,tag=!hostile_mob] run tag @s add hostile_mob

        #岩漿立方怪
        execute as @e[type=minecraft:magma_cube,tag=!hostile_mob] run tag @s add hostile_mob

        #屍殼
        execute as @e[type=minecraft:husk,tag=!hostile_mob] run tag @s add hostile_mob

        #豬布獸
        execute as @e[type=minecraft:hoglin,tag=!hostile_mob] run tag @s add hostile_mob

        #深海守衛
        execute as @e[type=minecraft:guardian,tag=!hostile_mob] run tag @s add hostile_mob

        #地獄幽靈
        execute as @e[type=minecraft:ghast,tag=!hostile_mob] run tag @s add hostile_mob

        #喚魔者
        execute as @e[type=minecraft:evoker,tag=!hostile_mob] run tag @s add hostile_mob

        #終界蟎
        execute as @e[type=minecraft:endermite,tag=!hostile_mob] run tag @s add hostile_mob

        #遠古深海守衛
        execute as @e[type=minecraft:elder_guardian,tag=!hostile_mob] run tag @s add hostile_mob

        #沉屍
        execute as @e[type=minecraft:drowned,tag=!hostile_mob] run tag @s add hostile_mob

        #苦力怕
        execute as @e[type=minecraft:creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #烈焰使者
        execute as @e[type=minecraft:blaze,tag=!hostile_mob] run tag @s add hostile_mob

        #旋風使者
        execute as @e[type=minecraft:breeze,tag=!hostile_mob] run tag @s add hostile_mob

        #殭屍馬
        execute as @e[type=minecraft:zombie_horse,tag=!hostile_mob] run tag @s add hostile_mob

        #骷髏馬
        execute as @e[type=minecraft:skeleton_horse,tag=!hostile_mob] run tag @s add hostile_mob

    #條件敵對

        #殭屍化豬布林
        execute as @e[type=minecraft:zombified_piglin,tag=!hostile_mob,nbt=!{AngerTime:0}] run tag @s add hostile_mob

        #洞穴蜘蛛
        execute as @e[type=minecraft:cave_spider,tag=!hostile_mob] run tag @s add hostile_mob

        #蜘蛛
        execute as @e[type=minecraft:spider,tag=!hostile_mob] run tag @s add hostile_mob

        #豬布林
        execute as @e[type=minecraft:piglin,tag=!hostile_mob] run tag @s add hostile_mob

        #終界使者
        execute as @e[type=minecraft:enderman,tag=!hostile_mob,nbt=!{AngerTime:0}] run tag @s add hostile_mob
        
    #boss生物

        #凋零怪
        execute as @e[type=minecraft:wither,tag=!hostile_mob] run tag @s add hostile_mob

        #終界龍
        execute as @e[type=minecraft:ender_dragon,tag=!hostile_mob] run tag @s add hostile_mob

    #未使用的生物

        #幻術師
        execute as @e[type=minecraft:illusioner,tag=!hostile_mob] run tag @s add hostile_mob

        #巨人
        execute as @e[type=minecraft:giant,tag=!hostile_mob] run tag @s add hostile_mob

#模組

    #車萬女僕

        #女僕妖精
        execute as @e[type=touhou_little_maid:fairy,tag=!hostile_mob] run tag @s add hostile_mob

    #突變生物

        #突變殭屍
        execute as @e[type=mutantmonsters:mutant_zombie,tag=!hostile_mob] run tag @s add hostile_mob

        #突變骷髏
        execute as @e[type=mutantmonsters:mutant_skeleton,tag=!hostile_mob] run tag @s add hostile_mob

        #突變苦力怕
        execute as @e[type=mutantmonsters:mutant_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #突變終界使者
        execute as @e[type=mutantmonsters:mutant_enderman,tag=!hostile_mob] run tag @s add hostile_mob

    #卓越前線

        #野獸先輩
        execute as @e[type=superbwarfare:senpai,tag=!hostile_mob] run tag @s add hostile_mob

    #沉浸工程

        #燧發槍
        execute as @e[type=immersiveengineering:fusilier,tag=!hostile_mob] run tag @s add hostile_mob

        #重甲兵
        execute as @e[type=immersiveengineering:bulwark,tag=!hostile_mob] run tag @s add hostile_mob

        #突擊隊員
        execute as @e[type=immersiveengineering:commando,tag=!hostile_mob] run tag @s add hostile_mob

    #更多苦力怕

        #惡地苦力怕
        execute as @e[type=creeperoverhaul:badlands_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #竹子苦力怕
        execute as @e[type=creeperoverhaul:bamboo_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #沙灘苦力怕
        execute as @e[type=creeperoverhaul:beach_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #樺木苦力怕
        execute as @e[type=creeperoverhaul:birch_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #洞穴苦力怕
        execute as @e[type=creeperoverhaul:cave_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #黑橡木苦力怕
        execute as @e[type=creeperoverhaul:dark_oak_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #沙漠苦力怕
        execute as @e[type=creeperoverhaul:desert_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #鐘乳石苦力怕
        execute as @e[type=creeperoverhaul:dripstone_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #丘陵苦力怕
        execute as @e[type=creeperoverhaul:hills_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #叢林苦力怕
        execute as @e[type=creeperoverhaul:jungle_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #蘑菇苦力怕
        execute as @e[type=creeperoverhaul:mushroom_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #海洋苦力怕
        execute as @e[type=creeperoverhaul:ocean_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #莽原苦力怕
        execute as @e[type=creeperoverhaul:savannah_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #雪地苦力怕
        execute as @e[type=creeperoverhaul:snowy_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #杉木苦力怕
        execute as @e[type=creeperoverhaul:spruce_creeper,tag=!hostile_mob] run tag @s add hostile_mob

        #沼澤苦力怕
        execute as @e[type=creeperoverhaul:swamp_creeper,tag=!hostile_mob] run tag @s add hostile_mob
