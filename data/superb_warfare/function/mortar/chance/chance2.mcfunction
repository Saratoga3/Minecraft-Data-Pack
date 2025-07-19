#機率2(已棄用)

#歸零
scoreboard players set correction mortar_probability 0

#紀錄抽獎次數
scoreboard players operation correction mortar_probability += 1 mortar_probability
scoreboard players operation correction mortar_probability += 2 mortar_probability
scoreboard players operation correction mortar_probability += 3 mortar_probability
scoreboard players operation correction mortar_probability += 4 mortar_probability
scoreboard players operation correction mortar_probability += 5 mortar_probability
scoreboard players operation correction mortar_probability += 6 mortar_probability
scoreboard players operation correction mortar_probability += 7 mortar_probability
scoreboard players operation correction mortar_probability += 8 mortar_probability
scoreboard players operation correction mortar_probability += 9 mortar_probability

#如果與上1號碼重複就當作沒抽到
execute if score 1 mortar_probability matches 1 if score correction2 mortar_probability matches 1 run scoreboard players set correction mortar_probability 0
execute if score 2 mortar_probability matches 1 if score correction2 mortar_probability matches 2 run scoreboard players set correction mortar_probability 0
execute if score 3 mortar_probability matches 1 if score correction2 mortar_probability matches 3 run scoreboard players set correction mortar_probability 0
execute if score 4 mortar_probability matches 1 if score correction2 mortar_probability matches 4 run scoreboard players set correction mortar_probability 0
execute if score 5 mortar_probability matches 1 if score correction2 mortar_probability matches 5 run scoreboard players set correction mortar_probability 0
execute if score 6 mortar_probability matches 1 if score correction2 mortar_probability matches 6 run scoreboard players set correction mortar_probability 0
execute if score 7 mortar_probability matches 1 if score correction2 mortar_probability matches 7 run scoreboard players set correction mortar_probability 0
execute if score 8 mortar_probability matches 1 if score correction2 mortar_probability matches 8 run scoreboard players set correction mortar_probability 0
execute if score 9 mortar_probability matches 1 if score correction2 mortar_probability matches 9 run scoreboard players set correction mortar_probability 0

#如果沒抽到任何號碼就重抽
execute if score correction mortar_probability matches 0 run function superb_warfare:mortar/chance/chance1

#如果抽到複數個號碼就重抽
execute if score correction mortar_probability matches 2.. run function superb_warfare:mortar/chance/chance1

#如果抽到剛好1個號碼就下一步
execute if score correction mortar_probability matches 1 run function superb_warfare:mortar/record_number/record_number1
