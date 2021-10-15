/// @description Control Buildiup
// You can write your code in this editor
stretchProg += (1 - stretchProg) / 50
textProg += global.textSpeed

//linear interpolation
x1 = lerp(x1, x1Target, stretchProg)
x2 = lerp(x2, x2Target, stretchProg)

if (keyboard_check(vk_space)) {
	var length = string_length(text)
	if (textProg >= length) {
		instance_destroy()	
	} else {
		if (textProg > 2) {
			textProg = length
		}
	}
}