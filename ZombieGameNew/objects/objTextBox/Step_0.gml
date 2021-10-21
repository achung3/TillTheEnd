/// @description Control Buildiup
// You can write your code in this editor
stretchProg += (1 - stretchProg) / 50
textProg += global.textSpeed

//linear interpolation
x1 = lerp(x1, x1Target, stretchProg)
x2 = lerp(x2, x2Target, stretchProg)

//Cycle
selectUp = keyboard_check_released(vk_up)
selectDown = keyboard_check_released(vk_down)
replySelect += (selectDown - selectUp)

var maxN = array_length_1d(replies)-1
var minN = 0
if (replySelect > 1) {
	replySelect = 0
} else if (replySelect < 0) {
	replySelect = 1
}

if (keyboard_check(vk_space)) {
	var length = string_length(text)
	if (textProg >= length) {
		instance_destroy()	
		if(instance_exists(objTextQueued)){
			with (objTextQueued) queue--	
		} else {
			with (objHero) {
				state = lastState
			}
		}
	} else {
		if (textProg > 2) {
			textProg = length
		}
	}
}