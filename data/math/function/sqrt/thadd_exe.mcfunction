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


scoreboard players operation THADD_out math_sqrt = missile_in THADD_set
scoreboard players set THADD_tmp math_sqrt 10

execute if score THADD_out math_sqrt > THADD_tmp math_sqrt run function math:sqrt/private/thadd_loop
