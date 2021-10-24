/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_released(vk_space)) {
	objknight.state = objknight.lastState
	script_execute(objknight.state)
	instance_destroy()
}