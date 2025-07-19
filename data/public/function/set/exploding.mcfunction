#防爆

#採用列表

    #爆炸箭矢-哈蘭
    #防空導彈

#防爆-關閉

    #延長防爆時間，確保防爆正確執行
    execute if score exploding explosion_proof matches 1.. run scoreboard players add exploding explosion_proof 1

    #關閉防爆
    execute if score exploding explosion_proof matches 3 run gamerule mobGriefing true

    #重置開啟防爆時間
    execute if score exploding explosion_proof matches 3.. run scoreboard players set exploding explosion_proof 0
