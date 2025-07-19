#記分板(給主人查看雇傭兵各項數值)

#取得雇傭兵血量
execute store result score health mercenary run scoreboard players get mercenary health

#取得雇傭兵飢餓值
execute store result score food mercenary run scoreboard players get mercenary food

#取得雇傭兵跳躍次數
#execute store result score jump mercenary run scoreboard players get mercenary jump

#取得雇傭兵氧氣值
execute store result score air mercenary run data get entity @e[tag=mercenary,limit=1] Air

#雇傭兵與主人的距離

    #計算雇傭兵與主人的距離
    function mercenary:distance

    #取得雇傭兵與主人的距離
    execute store result score distance mercenary run scoreboard players get mercenary_out math_sqrt
