#召喚煙火爆炸
#summon firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;255,65280,16711680,65535,16711935,16776960,16777215],fade_colors:[I;255,65280,16711680,65535,16711935,16776960,16777215],has_trail:true,has_twinkle:true}],flight_duration:0b}},count:1,id:"minecraft:firework_rocket"}}

#舊的備份
#summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;255,65280,16711680,65535,16711935,16776960,16777215],FadeColors:[I;255,65280,16711680,65535,16711935,16776960,16777215]}]}}}}

#召喚飛行的煙火爆炸
#summon firework_rocket ~ ~2 ~ {LifeTime:60,FireworksItem:{components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;255,65280,16711680,65535,16711935,16776960,16777215],fade_colors:[I;255,65280,16711680,65535,16711935,16776960,16777215],has_trail:true,has_twinkle:true}],flight_duration:0b}},count:1,id:"minecraft:firework_rocket"},Tags:["xyz"]}

#測試
summon horse ~ ~ ~ {attributes:[{id:generic.scale,base:0.4}]}

#測試
execute as @e[nbt=!{attributes:[{id:"minecraft:generic.scale",base:0.5}]}] run attribute @s minecraft:generic.scale base set 0.5

#測試
summon item ~ ~ ~ {Item:{id:"minecraft:gunpowder",count:64b}}

#測試
summon minecraft:villager ~ ~1 ~ {PersistenceRequired:1b,CustomName:'[{"text":"熟人理查","italic":false}]',CustomNameVisible:1b,VillagerData:{type:"minecraft:taiga",profession:"minecraft:fletcher",level:99},Offers:{Recipes:[{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:arrow"},sell:{count:1b,id:"minecraft:tipped_arrow",components:{custom_name:'{"text":"爆炸箭矢-哈蘭","color":"red"}',lore:['[{"text":"","italic":false}]','[{"text":"過去的日子真好。回到哈蘭，用你那火力強大的爆炸箭矢對抗怪物們。","italic":false}]','[{"text":"我們很想念它，所以把它帶回來了，作為彩蛋禮物送給你們。","italic":false}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"註：爆炸威力是普通爆炸箭矢的2倍，且不會破壞方塊！","color":"yellow"}]'],potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:5b,duration:20,show_particles:0b,show_icon:0b}],custom_color:16711680},hide_additional_tooltip:{}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:arrow"},sell:{count:1b,id:"minecraft:tipped_arrow",components:{custom_name:'{"text":"照明箭矢","color":"yellow"}',lore:['[{"text":"","italic":false}]','[{"text":"用於提供一段時間的小面積照明","italic":false}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"註：射入不完整方塊會啞火","color":"yellow"}]'],potion_contents:{custom_color:16774912},hide_additional_tooltip:{}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:arrow"},sell:{count:1b,id:"minecraft:tipped_arrow",components:{custom_name:'{"text":"爆炸箭矢","color":"red"}',lore:['[{"text":"","italic":false}]','[{"text":"用於壓制大量聚集的目標","italic":false}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"註：爆炸可以破壞方塊！","color":"yellow"}]'],potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:3b,duration:20,show_particles:0b,show_icon:0b}],custom_color:16711680},hide_additional_tooltip:{}}}}]}}

#測試
summon minecraft:villager ~ ~1 ~ {PersistenceRequired:1b,CustomName:'[{"text":"工具人","italic":false}]',CustomNameVisible:1b,VillagerData:{type:"minecraft:taiga",profession:"minecraft:toolsmith",level:99},Offers:{Recipes:[{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_sword"},sell:{count:1b,id:"minecraft:iron_sword",components:{enchantments:{unbreaking:3}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_axe"},sell:{count:1b,id:"minecraft:iron_axe",components:{enchantments:{unbreaking:3}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_pickaxe"},sell:{count:1b,id:"minecraft:iron_pickaxe",components:{enchantments:{unbreaking:3}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_shovel"},sell:{count:1b,id:"minecraft:iron_shovel",components:{enchantments:{unbreaking:3}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_hoe"},sell:{count:1b,id:"minecraft:iron_hoe",components:{enchantments:{unbreaking:3}}}}]}}

#測試
summon minecraft:villager ~ ~1 ~ {PersistenceRequired:1b,CustomName:'[{"text":"甲人","italic":false}]',CustomNameVisible:1b,VillagerData:{type:"minecraft:taiga",profession:"minecraft:armorer",level:99},Offers:{Recipes:[{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_helmet"},sell:{count:1b,id:"minecraft:iron_helmet",components:{enchantments:{unbreaking:3}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_chestplate"},sell:{count:1b,id:"minecraft:iron_chestplate",components:{enchantments:{unbreaking:3}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_leggings"},sell:{count:1b,id:"minecraft:iron_leggings",components:{enchantments:{unbreaking:3}}}},{maxUses:1000000,rewardExp:1b,buy:{count:1b,id:"minecraft:iron_boots"},sell:{count:1b,id:"minecraft:iron_boots",components:{enchantments:{unbreaking:3}}}}]}}

#
give @s diamond_sword[attribute_modifiers=[{type:"generic.attack_damage",amount:20,operation:"add_multiplied_base",id:diamond_sword}]]

#
give @s diamond_sword[attribute_modifiers=[{type:"generic.attack_damage",amount:20,operation:"add_multiplied_total",id:diamond_sword}]]

#
give @s diamond_sword[attribute_modifiers=[{type:"generic.attack_damage",amount:20,operation:"add_value",id:diamond_sword}]]

#
give @s elytra[attribute_modifiers=[{id:elytra,slot:"chest",type:"generic.armor",amount:8,operation:"add_value"},{id:elytra,slot:"chest",type:"generic.armor_toughness",amount:3,operation:"add_value"},{id:elytra,slot:"chest",type:"generic.knockback_resistance",amount:0.1,operation:"add_value"}]]

#
give @s elytra[attribute_modifiers=[{id:elytra,slot:"chest",type:"generic.armor",amount:8,operation:"add_value"},{id:elytra,slot:"chest",type:"generic.armor_toughness",amount:2,operation:"add_value"}]]

#
summon zombie ~ ~ ~ {attributes:[{id:"generic.follow_range",base:2048}]}

#
execute summon villager run damage @e[type=iron_golem,sort=nearest,limit=1] 1 generic by @s

#
execute as sz553341291 run damage @e[type=zombie,sort=nearest,limit=1] 1 generic by @s

#
execute as @e[type=minecraft:iron_golem] run data modify entity @s AngryAt set from entity @e[type=villager,limit=1,sort=furthest,distance=..20] UUID

#
data modify entity @e[type=minecraft:wolf,sort=nearest,limit=1] Owner set from entity @s UUID

#
summon frog ~ ~ ~ {variant:"cold"}

#
summon frog ~ ~ ~ {variant:"temperate"}

#
summon frog ~ ~ ~ {variant:"warm"}

#
execute as @e[type=minecraft:iron_golem,sort=nearest,limit=1] run data modify entity @s AngryAt set from entity 1 UUID

#
execute as @e[sort=nearest,limit=1] unless entity @s[name="Li___Bai"] run tellraw Li___Bai [{"selector":"@s","color":"red"},{"text":"於遊戲時間","color":"yellow"},{"score":{"name":"time","objective":"mobile_entity"},"color":"blue"},{"text":"進入Li___Bai房間","color":"green"}]

#
setblock -251 64 443 minecraft:tnt[unstable=false]

#
summon minecraft:tnt -249.51 62.00 451.49 {Motion: [0.0d, 0.0d, 0.0d], FallDistance: 0.0f, fuse: 54s, block_state: {Properties: {unstable: "false"}, Name: "minecraft:tnt"}, Fire: 0s, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, Rotation: [0.0f, 0.0f]}

#
execute as @p[distance=..10] run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 於遊戲時間 ","color":"aqua"},{"score":{"name":"time","objective":"mobile_entity"},"color":"green"},{"text":" 前往小黑子經驗塔，你幹嘛哈哈哎呦","color":"gold"}]

#
execute as @p[distance=..10] run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 於遊戲時間 ","color":"aqua"},{"score":{"name":"time","objective":"mobile_entity"},"color":"green"},{"text":" 離開小黑子經驗塔，雞你太美","color":"gold"}]

#
execute as @p[distance=..10] run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 於遊戲時間 ","color":"aqua"},{"score":{"name":"time","objective":"mobile_entity"},"color":"green"},{"text":" 前往界伏盒農場","color":"dark_purple"}]

#
execute as @p[distance=..10] run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 於遊戲時間 ","color":"aqua"},{"score":{"name":"time","objective":"mobile_entity"},"color":"green"},{"text":" 離開界伏盒農場","color":"dark_purple"}]

#
summon zombie ~ ~ ~ {attributes:[{id:"generic.max_health",base:200.0}],Health:30.0}

#
summon minecolonies:campamazonchief ~ ~ ~ {attributes:[{id:"generic.max_health",base:3000.0}],Health:3000.0}

#
execute at Steve at @e[type=minecolonies:campamazonchief,limit=1,distance=..200,sort=nearest] run player Steve look at ~ ~1 ~

#
execute if entity @e[type=minecolonies:campamazonchief,limit=1,distance=..200,sort=nearest] run player Alex use once

#
give Li___Bai superbwarfare:firing_parameters[superbwarfare:firing_parameters={}]

#
give Li___Bai superbwarfare:firing_parameters[superbwarfare:firing_parameters={is_depressed:0b,pos:[I;-83,115,-701]}]

#
summon superbwarfare:mortar 220.50 69.00 -584.50 {Pitch: -76.03149f, OnGround: 1b, LeftWheelDamaged: 0b, EngineHealth: 50.0f, Yaw: 48.505676f, Engine2Damaged: 0b, RightWheelHealth: 50.0f, Invulnerable: 0b, Rotation: [48.505676f, -76.03148f], TurretHealth: 50.0f, LeftWheelHealth: 50.0f, RightWheelDamaged: 0b, LastAttacker: "undefined", TurretDamaged: 0b, NeoForgeData: {}, Engine1Damaged: 0b, Air: 300s, FallDistance: 0.0f, Motion: [0.0d, 0.0d, 0.0d], LastDriver: "undefined", es_data: {in_abyssal_fire_ticks: 0}, "neoforge:attachments": {"twilightforest:fortification_shields": {temporary_shields: 0, permanent_shields: 0}}, LeftEngineHealth: 50.0f, Health: 100.0f, Fire: -1s, PortalCooldown: 0}

#
execute store result entity 123 Pos double 1 run data modify entity Li___Bai Inventory[0] set from entity @s

#
give mortar superbwarfare:firing_parameters[superbwarfare:firing_parameters={is_depressed:0b,pos:[I;-83,115,-701]}]

#
execute run give Li___Bai superbwarfare:firing_parameters[superbwarfare:firing_parameters={is_depressed:0b,pos:[I;]}]

#
execute as 123 run data modify storage superbwarfare:firing_parameters pos set from entity @s

#
data modify entity @e[type=superbwarfare:mortar,limit=1] Rotation set value 0

#
execute as 123 at @s run item modify entity Li___Bai weapon.mainhand public:mortar_pos

#
setblock 475 82 320 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[{Slot:0b,components:{"superbwarfare:firing_parameters":{is_depressed:0b,pos:[I;475,82,320]}},count:1,id:"superbwarfare:firing_parameters"}]}

#
summon item ~ ~ ~ {Item:{id:"superbwarfare:firing_parameters",count:1b}}

#
execute at Li___Bai store result entity @e[type=item,limit=1,sort=nearest] Pos int 1 run data get entity 123 Pos 1

#
execute store result entity @e[tag=anti_aircraft_missile_target_offset_1,limit=1] Pos[0] double 0.1 run scoreboard players get displacement_1_X anti_aircraft_missile_set

#
summon minecart ~ ~ ~ {Invulnerable:true}