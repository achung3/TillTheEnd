/// @description Insert description here
// You can write your code in this editor
show_debug_message("Player Y: " + string(y+sprite_yoffset))
show_debug_message("Other Y: " + string(other.y))
show_debug_message("VSPEED: " + string(vspeed))

if (vspeed > 0 && y+sprite_yoffset >= other.y) {
	instance_destroy(other)
} else {
	instance_destroy()
}