#設定殭屍

#殭屍嘗試呼叫支援
execute if predicate public:chance_1 unless score @s mobile_entity matches 1.. run function mobile_entity:zombie/support/summon
