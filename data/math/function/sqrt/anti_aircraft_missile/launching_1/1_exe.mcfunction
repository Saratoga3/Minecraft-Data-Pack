##by NOPEname


#input:
# 		format:		scoreboard
#		objective: 	math_sqrt
#		name: 		in

#calc:	function math:sqrt/exe
#preserves input: yes

#output:
#		format: 	scoreboard
#		objective: 	math_sqrt
#		name: 		out


scoreboard players operation missile_1_out math_sqrt = missile_1_in anti_aircraft_missile_set
scoreboard players set missile_1_tmp math_sqrt 10

execute if score missile_1_out math_sqrt > missile_1_tmp math_sqrt run function math:sqrt/private/anti_aircraft_missile/launching_1/1_loop
