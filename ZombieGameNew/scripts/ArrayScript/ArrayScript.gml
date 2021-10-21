// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ArrayScript(){
	var script = argument0
	var arguments = argument1
	show_debug_message(argument0)
	show_debug_message(argument0)
	show_debug_message(argument0)
	
	switch (array_length_1d(arguments)) {
		case 1: return script_execute(script, arguments[0])	
		
		case 2: return script_execute(script, arguments[0], arguments[1])	
		
		case 3: return script_execute(script, arguments[0], arguments[1], arguments[2])	
		
		case 4: return script_execute(script, arguments[0], arguments[1], arguments[2], arguments[3])	
	}
}