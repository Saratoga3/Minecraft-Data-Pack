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


scoreboard players operation mercenary_out math_sqrt = mercenary_in mercenary_set
scoreboard players set mercenary_tmp math_sqrt 1

execute if score mercenary_out math_sqrt > mercenary_tmp math_sqrt run function math:sqrt/private/mercenary_loop
