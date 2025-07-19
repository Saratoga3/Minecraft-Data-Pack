#目標距離

#導彈與目標距離400~500，就設定常數=150
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=400..500] run scoreboard players set constant target_advance_range 150

#導彈與目標距離300~400，就設定常數=125
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=300..400] run scoreboard players set constant target_advance_range 125

#導彈與目標距離200~300，就設定常數=100
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=200..300] run scoreboard players set constant target_advance_range 100

#導彈與目標距離150~200，就設定常數=75
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=150..200] run scoreboard players set constant target_advance_range 75

#導彈與目標距離100~150，就設定常數=50
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=100..150] run scoreboard players set constant target_advance_range 50

#導彈與目標距離50~100，就設定常數=10
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=50..100] run scoreboard players set constant target_advance_range 10

#導彈與目標距離25~50，就設定常數=5
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=25..50] run scoreboard players set constant target_advance_range 5

#導彈與目標距離~25，就設定常數=3
execute at @e[tag=missile] if entity @e[tag=missile_target,distance=..25] run scoreboard players set constant target_advance_range 3
