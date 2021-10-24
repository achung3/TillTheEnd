// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KnightClimb(){
	vspeed = 0
	gravity = 0
	sprite_index = sprClimb
	
	if (keyboard_check(vk_up)){
		y += -climbSpeed
	}
	
	if (keyboard_check(vk_down)) {
		y += climbSpeed
	}
	
	if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, objblock)) {
		x += -move_speed;
		image_xscale = 1;
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, objblock)) {
		x += move_speed;
		image_xscale =- 1;
	}
	
	if (instance_place(x, y+1+sprite_yoffset, objblock)) {
		//climbing = false
		sprite_index = sprknight
		objknight.state = KnightMove
		script_execute(objknight.state)
	}
}