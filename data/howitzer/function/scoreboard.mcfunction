#記分板(給操作者查看榴彈砲各項數值)

#取得俯仰角
execute store result score pitch_angle howitzer run scoreboard players get howitzer_pitch_angle howitzer_set

#取得方位角
execute store result score azimuth_angle howitzer run scoreboard players get howitzer_azimuth_angle howitzer_set

#取得砲彈數量
execute store result score cannonball_count howitzer run scoreboard players get cannonball_count howitzer_set

#取得開火等待時間
execute store result score fire_time howitzer run scoreboard players get remaining_fire howitzer_set

#取得輸入次數
execute store result score count howitzer run scoreboard players get count howitzer_set

#榴彈砲與砲彈的飛行距離

    #榴彈砲與砲彈的飛行距離
    #function howitzer:distance

    #取得榴彈砲與砲彈的飛行距離
    #execute store result score distance howitzer run scoreboard players get howitzer_out math_sqrt
