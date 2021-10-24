// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KnightClimb(){
	vspeed = 0
	gravity = 0
	sprite_index = sprClimb
	move_speed = 4
	
	if (keyboard_check(vk_up)){
		y += -climbSpeed
	}
	
	if (keyboard_check(vk_down)) {
		y += climbSpeed
	}
	
	
	if (instance_place(x, y+1+sprite_yoffset, objblock)) {
		//climbing = false
		sprite_index = sprknight
		objknight.state = KnightMove
		script_execute(objknight.state)
	}
}