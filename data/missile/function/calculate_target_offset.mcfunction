#計算目標前置量3

#計算X軸位移量
#scoreboard players operation advance_range target_advance_range = posX target_advance_range
#scoreboard players operation advance_range target_advance_range -= prevPosX target_advance_range
#scoreboard players operation advance_range target_advance_range *= advance_range target_advance_range

scoreboard players operation displacementX target_advance_range = posX target_advance_range
scoreboard players operation displacementX target_advance_range -= prevPosX target_advance_range
scoreboard players operation displacementX target_advance_range *= constant target_advance_range

#計算Y軸位移量
#scoreboard players operation temp target_advance_range = posY target_advance_range
#scoreboard players operation temp target_advance_range -= prevPosY target_advance_range
#scoreboard players operation temp target_advance_range *= temp target_advance_range
#scoreboard players operation advance_range target_advance_range += temp target_advance_range

scoreboard players operation displacementY target_advance_range = posY target_advance_range
scoreboard players operation displacementY target_advance_range -= prevPosY target_advance_range
scoreboard players operation displacementY target_advance_range *= constant target_advance_range

#計算Z軸位移量
#scoreboard players operation temp target_advance_range = posZ target_advance_range
#scoreboard players operation temp target_advance_range -= prevPosZ target_advance_range
#scoreboard players operation temp target_advance_range *= temp target_advance_range
#scoreboard players operation advance_range target_advance_range += temp target_advance_range

scoreboard players operation displacementZ target_advance_range = posZ target_advance_range
scoreboard players operation displacementZ target_advance_range -= prevPosZ target_advance_range
scoreboard players operation displacementZ target_advance_range *= constant target_advance_range

#計算目標前置量
#scoreboard players operation advance_range target_advance_range /= constant target_advance_range

#顯示目標前置量
#tellraw @a [{"text":"advance_range: "},{"score":{"name":"advance_range","objective":"target_advance_range"}}]

#tellraw @a [{"score":{"name":"displacementX","objective":"target_advance_range"}},{"text":","},{"score":{"name":"displacementY","objective":"target_advance_range"}},{"text":","},{"score":{"name":"displacementZ","objective":"target_advance_range"}}]

#呼叫missile:target_offset
function missile:target_offset