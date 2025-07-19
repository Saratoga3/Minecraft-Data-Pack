#操作者輸入射擊參數

#如果operate=0，就operate+1分數(關閉顯示操作者輸入射擊參數)
execute if score operate mortar_set matches 0 run scoreboard players add operate mortar_set 1

#顯示操作者輸入射擊參數
execute as @e[tag=mortar_user] run tellraw @s {"text":"點擊此輸入迫擊砲射擊參數","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger mortar_set set 0000000"},"hoverEvent":{"action":"show_text", "value":[{"text":"範例:4518005,俯仰角45°,方位角180°,砲彈數量5發"}]}}

#開啟操作者輸入射擊參數
execute as @e[tag=mortar_user] run scoreboard players enable @s mortar_set

#計數(校正回歸)
scoreboard players set count mortar_set -1
