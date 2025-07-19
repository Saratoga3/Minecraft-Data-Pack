#持續檢測

#計時
execute if entity @a run scoreboard players add arrow arrow 1

#執行判斷
execute if score arrow arrow = time arrow run function arrow:arrow

#重置計時
execute if score arrow arrow >= time arrow run scoreboard players reset arrow arrow
