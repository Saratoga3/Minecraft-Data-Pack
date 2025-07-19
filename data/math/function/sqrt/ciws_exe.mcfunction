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


scoreboard players operation CIWS_out math_sqrt = CIWS_in CIWS_set
scoreboard players set CIWS_tmp math_sqrt 100

execute if score CIWS_out math_sqrt > CIWS_tmp math_sqrt run function math:sqrt/private/ciws_loop
