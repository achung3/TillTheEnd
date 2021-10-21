// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewText(){
	var type
	if (instance_exists(objTextBox)) {
		type = objTextQueued	
	} else {
		type = objTextBox	
	}
	with (instance_create_layer(0, 0, "Instances", type)){
		text = argument[0]
		if (instance_exists(other)) {
			origin = other.id 	
		} else {
			origin = noone	
		}
		
		//2 args
		if (argument_count > 1) {
			background = argument[1]
		} else {
			background = 1
		}
		
		//3 args (replies)
		if (argument_count > 2) {
			replies = argument[2]
			for (var i=0; i<array_length_1d(replies); i++) {
				var pos = string_pos(":", replies[i])
				replyScript[i] = real(string_copy(replies[i], 1, pos-1))
				replies[i] = string_delete(replies[i], 1, pos)
				breakpoint = 10
			}
		} else {
			replies = [-1]
			replyScript = [-1]
		}
	}
	
	with (objHero) {
		if (state != HeroPause) {
			lastState = state	
			state = HeroPause
			script_execute(state)
		}
		//script_execute(HeroPause)
	}
}