#召喚常駐盔甲座

    scoreboard objectives add time dummy

    execute unless entity @e[tag=a] run summon marker 0 0 0 {Tags:["a"]}
    execute unless entity @e[tag=b] run summon marker 0 0 0 {Tags:["b"]}
    execute unless entity @e[tag=c] run summon marker 0 0 0 {Tags:["c"]}