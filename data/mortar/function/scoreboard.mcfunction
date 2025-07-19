#記分板(給操作者查看迫擊砲各項數值)

#取得俯仰角
execute store result score pitch_angle mortar run scoreboard players get mortar_pitch_angle mortar_set

#取得方位角
execute store result score azimuth_angle mortar run scoreboard players get mortar_azimuth_angle mortar_set

#取得砲彈數量
execute store result score cannonball_count mortar run scoreboard players get cannonball_count mortar_set

#取得開火等待時間
execute store result score fire_time mortar run scoreboard players get remaining_fire mortar_set

#取得輸入次數
execute store result score count mortar run scoreboard players get count mortar_set

#迫擊砲與砲彈的飛行距離

    #迫擊砲與砲彈的飛行距離
    #function mortar:distance

    #取得迫擊砲與砲彈的飛行距離
    #execute store result score distance mortar run scoreboard players get mortar_out math_sqrt
