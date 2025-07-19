#多點砲擊

#計數歸零
execute if score fire mortar_time matches 1 run scoreboard players set count mortar_probability 0

#迫擊砲1

    #
    execute if score fire mortar_time matches 1 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/chance/chance1

    #散布模式

        #有散布
        execute if score fire mortar_time matches 2 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point1

        #無散布
        execute if score fire mortar_time matches 2 if score spread mortar_parameter matches 2 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point2

    #
    execute if score fire mortar_time matches 3 run function superb_warfare:mortar/firing_parameters/firing_parameters1

#迫擊砲2

    #
    execute if score fire mortar_time matches 4 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/chance/chance1

    #散布模式

        #有散布
        execute if score fire mortar_time matches 5 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point1

        #無散布
        execute if score fire mortar_time matches 5 if score spread mortar_parameter matches 2 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point2

    #
    execute if score fire mortar_time matches 6 run function superb_warfare:mortar/firing_parameters/firing_parameters2

#迫擊砲3

    #
    execute if score fire mortar_time matches 7 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/chance/chance1

    #散布模式

        #有散布
        execute if score fire mortar_time matches 8 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point1

        #無散布
        execute if score fire mortar_time matches 8 if score spread mortar_parameter matches 2 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point2

    #
    execute if score fire mortar_time matches 9 run function superb_warfare:mortar/firing_parameters/firing_parameters3

#迫擊砲4

    #
    execute if score fire mortar_time matches 10 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/chance/chance1

    #散布模式

        #有散布
        execute if score fire mortar_time matches 11 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point1

        #無散布
        execute if score fire mortar_time matches 11 if score spread mortar_parameter matches 2 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point2

    #
    execute if score fire mortar_time matches 12 run function superb_warfare:mortar/firing_parameters/firing_parameters4

#迫擊砲5

    #
    execute if score fire mortar_time matches 13 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/chance/chance1

    #散布模式

        #有散布
        execute if score fire mortar_time matches 14 if score spread mortar_parameter matches 1 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point1

        #無散布
        execute if score fire mortar_time matches 14 if score spread mortar_parameter matches 2 run function superb_warfare:mortar/observe_the_impact_point/observe_the_impact_point2

    #
    execute if score fire mortar_time matches 15 run function superb_warfare:mortar/firing_parameters/firing_parameters5
