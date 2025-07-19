#傳送

#將雇傭兵傳送到主人位置
execute as @e[tag=mercenary] at @e[tag=owner] run tp ~ ~ ~

#清除主人身上的傳送標籤
execute as @e[tag=owner] run tag @s remove transmit