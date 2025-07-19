#獲取座標1

#獲取導彈目標的XYZ座標
execute store result score posX target_advance_range run data get entity @e[tag=missile_target,limit=1] Pos[0] 1
execute store result score posY target_advance_range run data get entity @e[tag=missile_target,limit=1] Pos[1] 1
execute store result score posZ target_advance_range run data get entity @e[tag=missile_target,limit=1] Pos[2] 1

#每隔1段時間，就呼叫missile:previous_coordinates
function missile:previous_coordinates
#scoreboard players add time target_advance_range 1
#execute if score time target_advance_range >= time_up target_advance_range run function missile:previous_coordinates
#execute if score time target_advance_range >= time_up target_advance_range run scoreboard players set time target_advance_range 0
