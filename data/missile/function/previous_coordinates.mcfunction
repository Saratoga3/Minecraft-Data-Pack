#先前座標2

#呼叫missile:calculate_target_offset
function missile:calculate_target_offset

#將當前座標作為先前座標
scoreboard players operation prevPosX target_advance_range = posX target_advance_range
scoreboard players operation prevPosY target_advance_range = posY target_advance_range
scoreboard players operation prevPosZ target_advance_range = posZ target_advance_range
