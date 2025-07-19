#跳躍_傳送

#如果雇傭兵XZ坐標=跳躍幾次前的坐標，且達到跳躍次數，就將雇傭兵傳送到主人位置
execute if score jump_poX mercenary_set = mercenary_posX mercenary_set if score jump_poZ mercenary_set = mercenary_posZ mercenary_set if score mercenary jump >= jump_transmit_yes mercenary_set as @e[tag=mercenary] at @e[tag=owner] run tp ~ ~ ~

#如果達到跳躍次數，就清除跳躍次數
execute if score mercenary jump >= jump_transmit_yes mercenary_set run scoreboard players set mercenary jump 0
