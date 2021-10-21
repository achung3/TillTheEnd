/// @description Drawing
// You can write your code in this editor
script_execute(Box, sprTextBox, x1, y1, x2, y2, background)

draw_set_font(fontText)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_black)

var print = string_copy(text, 1, textProg)

if (replies[0] != -1) and (textProg >= string_length(text)) {
	for (var i=0; i<array_length_1d(replies); i++) {
		print += "\n"	
		if (i == replySelect) {
			print += "-> "	
		}
		print += replies[i]
		if (i == replySelect) {
			print += " <-"	
		}
	}
}

draw_text((x1+x2)/2, y1+25, print)
draw_set_color(c_white)
draw_text((x1+x2)/2, y1+24, print)