#操作者輸入射擊參數

#如果operate=0，就operate+1分數(關閉顯示操作者輸入射擊參數)
execute if score operate howitzer_set matches 0 run scoreboard players add operate howitzer_set 1

#顯示操作者輸入射擊參數
execute as @e[tag=howitzer_user] run tellraw @s {"text":"點擊此輸入榴彈砲射擊參數","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger howitzer_set set 0000000"},"hoverEvent":{"action":"show_text", "value":[{"text":"範例:4518005,俯仰角45°,方位角180°,砲彈數量5發"}]}}

#開啟操作者輸入射擊參數
execute as @e[tag=howitzer_user] run scoreboard players enable @s howitzer_set

#計數(校正回歸)
scoreboard players set count howitzer_set -1
