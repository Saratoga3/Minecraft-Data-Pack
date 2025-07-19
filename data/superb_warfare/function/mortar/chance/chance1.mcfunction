#機率1

#歸零
scoreboard players set 1 mortar_probability 0
scoreboard players set 2 mortar_probability 0
scoreboard players set 3 mortar_probability 0
scoreboard players set 4 mortar_probability 0
scoreboard players set 5 mortar_probability 0
scoreboard players set 6 mortar_probability 0
scoreboard players set 7 mortar_probability 0
scoreboard players set 8 mortar_probability 0
scoreboard players set 9 mortar_probability 0

#抽獎
execute if predicate public:chance_2 run scoreboard players set 1 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 2 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 3 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 4 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 5 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 6 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 7 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 8 mortar_probability 1
execute if predicate public:chance_2 run scoreboard players set 9 mortar_probability 1

#下一步(只確保與上1個號碼不重複)
#function superb_warfare:mortar/chance/chance2

#下一步(確保與每個號碼不重複)
function superb_warfare:mortar/chance/chance3
