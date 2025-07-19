#召喚雇傭兵

#在主人位置召喚
execute unless entity mercenary at @e[tag=owner] run player mercenary spawn

#在隨機玩家位置召喚
execute unless entity mercenary at @r run player mercenary spawn

#設定雇傭兵
function mercenary:load
