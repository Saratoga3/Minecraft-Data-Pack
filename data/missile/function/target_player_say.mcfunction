#目標是玩家

#命中成功：

    #如果導彈接近目標3格內，且導彈達到臨界點，就讓導彈說出"命中目標"
    execute as @e[tag=missile] at @s if entity @e[tag=missile_target,distance=..3] if score missile missile_time >= missile_safety missile_time run say 命中目標

#命中失敗：

    #如果導彈觸地，就讓導彈說出"觸地，未能命中目標"
    execute as @e[tag=missile] if entity @s[nbt={inGround:true}] run say 觸地，未能命中目標

    #如果不存在目標，且導彈達到臨界點，就讓導彈說出"目標消失，導彈自爆"
    execute as @e[tag=missile] unless entity @e[tag=missile_target] if score missile missile_time >= missile_safety missile_time run say 目標消失，導彈自爆

    #如果目標超過基座範圍500格，就讓導彈說出"鎖敵失敗，目標超出雷達指引範圍"
    execute as @e[tag=missile] at @e[tag=missile_target] at @e[tag=missile_base,distance=500..] run say 鎖敵失敗，目標超出雷達指引範圍

    #如果導彈燃料耗盡，就讓導彈說出"燃料耗盡，目標超出導彈射程範圍"
    execute as @e[tag=missile] if score missile missile_time > missile_no missile_time run say 燃料耗盡，目標超出導彈射程範圍

    #如果基座消失，就讓導彈說出"基座消失，導彈自爆"
    execute as @e[tag=missile] unless entity @e[tag=missile_base] run say 基座消失，導彈自爆
