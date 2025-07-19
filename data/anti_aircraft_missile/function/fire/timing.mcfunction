#導彈計時

    #發射間隔

        #如果間隔計時<間隔時間，就增加間隔計時的時間
        #execute if score interval_timing anti_aircraft_missile_set < interval anti_aircraft_missile_set run scoreboard players add interval_timing anti_aircraft_missile_set 1

    #發射站1

        #導彈1

            #發射

                #如果存在發射站1，且不存在導彈1，且存在目標1，且獲得發射許可，就讓導彈1開始計時(確保導彈1能在發射站1存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_1] unless entity @e[tag=anti_aircraft_missile_1] if entity @e[tag=anti_aircraft_missile_target_1] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_1 anti_aircraft_missile_set 0

                #如果導彈1當前時間=0，就重設發射間隔
                execute if score missile_1 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標1，且導彈1當前時間>=0，就讓導彈1開始計時(確保導彈1能在發射站1存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_1] if score missile_1 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_1 anti_aircraft_missile_set 1

        #導彈2

            #發射

                #如果存在發射站1，且不存在導彈2，且存在目標2，且獲得發射許可，就讓導彈2開始計時(確保導彈2能在發射站2存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_1] unless entity @e[tag=anti_aircraft_missile_2] if entity @e[tag=anti_aircraft_missile_target_2] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_2 anti_aircraft_missile_set 0

                #如果導彈2當前時間=0，就重設發射間隔
                execute if score missile_2 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標2，且導彈2當前時間>=0，就讓導彈2開始計時(確保導彈2能在發射站2存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_2] if score missile_2 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_2 anti_aircraft_missile_set 1

        #導彈3

            #發射

                #如果存在發射站1，且不存在導彈3，且存在目標3，且獲得發射許可，就讓導彈3開始計時(確保導彈3能在發射站3存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_1] unless entity @e[tag=anti_aircraft_missile_3] if entity @e[tag=anti_aircraft_missile_target_3] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_3 anti_aircraft_missile_set 0

                #如果導彈3當前時間=0，就重設發射間隔
                execute if score missile_3 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標3，且導彈3當前時間>=0，就讓導彈3開始計時(確保導彈3能在發射站3存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_3] if score missile_3 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_3 anti_aircraft_missile_set 1

        #導彈4

            #發射

                #如果存在發射站1，且不存在導彈4，且存在目標4，且獲得發射許可，就讓導彈4開始計時(確保導彈4能在發射站4存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_1] unless entity @e[tag=anti_aircraft_missile_4] if entity @e[tag=anti_aircraft_missile_target_4] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_4 anti_aircraft_missile_set 0

                #如果導彈4當前時間=0，就重設發射間隔
                execute if score missile_4 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標4，且導彈4當前時間>=0，就讓導彈4開始計時(確保導彈4能在發射站4存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_4] if score missile_4 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_4 anti_aircraft_missile_set 1

    #發射站2

        #導彈5

            #發射

                #如果存在發射站2，且不存在導彈5，且存在目標5，且獲得發射許可，就讓導彈5開始計時(確保導彈5能在發射站5存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_2] unless entity @e[tag=anti_aircraft_missile_5] if entity @e[tag=anti_aircraft_missile_target_5] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_5 anti_aircraft_missile_set 0

                #如果導彈5當前時間=0，就重設發射間隔
                execute if score missile_5 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標5，且導彈5當前時間>=0，就讓導彈5開始計時(確保導彈5能在發射站5存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_5] if score missile_5 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_5 anti_aircraft_missile_set 1

        #導彈6

            #發射

                #如果存在發射站2，且不存在導彈6，且存在目標6，且獲得發射許可，就讓導彈6開始計時(確保導彈6能在發射站6存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_2] unless entity @e[tag=anti_aircraft_missile_6] if entity @e[tag=anti_aircraft_missile_target_6] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_6 anti_aircraft_missile_set 0

                #如果導彈6當前時間=0，就重設發射間隔
                execute if score missile_6 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標6，且導彈6當前時間>=0，就讓導彈6開始計時(確保導彈6能在發射站6存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_6] if score missile_6 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_6 anti_aircraft_missile_set 1

        #導彈7

            #發射

                #如果存在發射站2，且不存在導彈7，且存在目標7，且獲得發射許可，就讓導彈7開始計時(確保導彈7能在發射站7存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_2] unless entity @e[tag=anti_aircraft_missile_7] if entity @e[tag=anti_aircraft_missile_target_7] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_7 anti_aircraft_missile_set 0

                #如果導彈7當前時間=0，就重設發射間隔
                execute if score missile_7 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標7，且導彈7當前時間>=0，就讓導彈7開始計時(確保導彈7能在發射站7存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_7] if score missile_7 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_7 anti_aircraft_missile_set 1

        #導彈8

            #發射

                #如果存在發射站2，且不存在導彈8，且存在目標8，且獲得發射許可，就讓導彈8開始計時(確保導彈8能在發射站8存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_2] unless entity @e[tag=anti_aircraft_missile_8] if entity @e[tag=anti_aircraft_missile_target_8] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_8 anti_aircraft_missile_set 0

                #如果導彈8當前時間=0，就重設發射間隔
                execute if score missile_8 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標8，且導彈8當前時間>=0，就讓導彈8開始計時(確保導彈8能在發射站8存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_8] if score missile_8 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_8 anti_aircraft_missile_set 1

    #發射站3

        #導彈9

            #發射

                #如果存在發射站3，且不存在導彈9，且存在目標9，且獲得發射許可，就讓導彈9開始計時(確保導彈9能在發射站9存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_3] unless entity @e[tag=anti_aircraft_missile_9] if entity @e[tag=anti_aircraft_missile_target_9] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_9 anti_aircraft_missile_set 0

                #如果導彈9當前時間=0，就重設發射間隔
                execute if score missile_9 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標9，且導彈9當前時間>=0，就讓導彈9開始計時(確保導彈9能在發射站9存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_9] if score missile_9 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_9 anti_aircraft_missile_set 1

        #導彈10

            #發射

                #如果存在發射站3，且不存在導彈10，且存在目標10，且獲得發射許可，就讓導彈10開始計時(確保導彈10能在發射站10存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_3] unless entity @e[tag=anti_aircraft_missile_10] if entity @e[tag=anti_aircraft_missile_target_10] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_10 anti_aircraft_missile_set 0

                #如果導彈10當前時間=0，就重設發射間隔
                execute if score missile_10 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標10，且導彈10當前時間>=0，就讓導彈10開始計時(確保導彈10能在發射站10存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_10] if score missile_10 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_10 anti_aircraft_missile_set 1

        #導彈11

            #發射

                #如果存在發射站3，且不存在導彈11，且存在目標11，且獲得發射許可，就讓導彈11開始計時(確保導彈11能在發射站11存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_3] unless entity @e[tag=anti_aircraft_missile_11] if entity @e[tag=anti_aircraft_missile_target_11] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_11 anti_aircraft_missile_set 0

                #如果導彈11當前時間=0，就重設發射間隔
                execute if score missile_11 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標11，且導彈11當前時間>=0，就讓導彈11開始計時(確保導彈11能在發射站11存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_11] if score missile_11 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_11 anti_aircraft_missile_set 1

        #導彈12

            #發射

                #如果存在發射站3，且不存在導彈12，且存在目標12，且獲得發射許可，就讓導彈12開始計時(確保導彈12能在發射站12存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_3] unless entity @e[tag=anti_aircraft_missile_12] if entity @e[tag=anti_aircraft_missile_target_12] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_12 anti_aircraft_missile_set 0

                #如果導彈12當前時間=0，就重設發射間隔
                execute if score missile_12 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標12，且導彈12當前時間>=0，就讓導彈12開始計時(確保導彈12能在發射站12存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_12] if score missile_12 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_12 anti_aircraft_missile_set 1

    #發射站4

        #導彈13

            #發射

                #如果存在發射站4，且不存在導彈13，且存在目標13，且獲得發射許可，就讓導彈13開始計時(確保導彈13能在發射站13存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_4] unless entity @e[tag=anti_aircraft_missile_13] if entity @e[tag=anti_aircraft_missile_target_13] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_13 anti_aircraft_missile_set 0

                #如果導彈13當前時間=0，就重設發射間隔
                execute if score missile_13 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標13，且導彈13當前時間>=0，就讓導彈13開始計時(確保導彈13能在發射站13存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_13] if score missile_13 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_13 anti_aircraft_missile_set 1

        #導彈14

            #發射

                #如果存在發射站4，且不存在導彈14，且存在目標14，且獲得發射許可，就讓導彈14開始計時(確保導彈14能在發射站14存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_4] unless entity @e[tag=anti_aircraft_missile_14] if entity @e[tag=anti_aircraft_missile_target_14] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_14 anti_aircraft_missile_set 0

                #如果導彈14當前時間=0，就重設發射間隔
                execute if score missile_14 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標14，且導彈14當前時間>=0，就讓導彈14開始計時(確保導彈14能在發射站14存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_14] if score missile_14 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_14 anti_aircraft_missile_set 1

        #導彈15

            #發射

                #如果存在發射站4，且不存在導彈15，且存在目標15，且獲得發射許可，就讓導彈15開始計時(確保導彈15能在發射站15存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_4] unless entity @e[tag=anti_aircraft_missile_15] if entity @e[tag=anti_aircraft_missile_target_15] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_15 anti_aircraft_missile_set 0

                #如果導彈15當前時間=0，就重設發射間隔
                execute if score missile_15 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標15，且導彈15當前時間>=0，就讓導彈15開始計時(確保導彈15能在發射站15存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_15] if score missile_15 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_15 anti_aircraft_missile_set 1

        #導彈16

            #發射

                #如果存在發射站4，且不存在導彈16，且存在目標16，且獲得發射許可，就讓導彈16開始計時(確保導彈16能在發射站16存在&與其他導彈間隔發射)
                execute if entity @e[tag=anti_aircraft_missile_launching_4] unless entity @e[tag=anti_aircraft_missile_16] if entity @e[tag=anti_aircraft_missile_target_16] if score interval_timing anti_aircraft_missile_set = interval anti_aircraft_missile_set run scoreboard players set missile_16 anti_aircraft_missile_set 0

                #如果導彈16當前時間=0，就重設發射間隔
                execute if score missile_16 anti_aircraft_missile_set matches 0 run scoreboard players set interval_timing anti_aircraft_missile_set 0

            #飛行

                #如果存在目標16，且導彈16當前時間>=0，就讓導彈16開始計時(確保導彈16能在發射站16存在時才運作)
                execute if entity @e[tag=anti_aircraft_missile_target_16] if score missile_16 anti_aircraft_missile_set matches 0.. run scoreboard players add missile_16 anti_aircraft_missile_set 1
