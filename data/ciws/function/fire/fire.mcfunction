#開火

#計算目標前置量

    #取得目標的位移量
    function ciws:advance_range/get

    #取得與目標的距離
    function ciws:advance_range/distance

    #取得目標的前置量
    function ciws:advance_range/deflection

#鎖定目標的前置量

    #基座看向目標前置量
    execute as @e[tag=CIWS_base] at @s facing entity @e[tag=CIWS_target_offset] feet run tp ^ ^ ^

#開火準備時間

    #如果存在目標，且基座還沒準備好，就計時開火準備時間
    execute as @e[tag=CIWS_base] if entity @e[tag=CIWS_target] if score @s CIWS_set < prepare CIWS_set run scoreboard players add @s CIWS_set 1

#開火等待時間

    #如果基座準備好，就讓計時開火間隔時間
    execute as @e[tag=CIWS_base] if score @s CIWS_set >= prepare CIWS_set run scoreboard players add fire CIWS_set 1

    #到達開火時間，就發射子彈
    execute as @e[tag=CIWS_base] at @s if score fire CIWS_set >= interval CIWS_set if score @s CIWS_set >= prepare CIWS_set run function ciws:fire/motion

    #到達時間，就重置開火間隔時間
    execute if score fire CIWS_set >= interval CIWS_set run scoreboard players set fire CIWS_set 0
