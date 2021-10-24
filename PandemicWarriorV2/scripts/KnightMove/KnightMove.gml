// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KnightMove(){
	move_speed = 4

if (keyboard_check_pressed(ord("1"))) {
	instance_create_layer(x, y, "Instances", objsword)	
}
	
if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, objblock)) {
	x += -move_speed;
	image_xscale = 1;
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, objblock)) {
	x += move_speed;
	image_xscale =- 1;
}

if (keyboard_check(vk_space)){
	if(instance_place(x, y+1, objblock)){
		vspeed = jump_height;
	}
}

if(instance_place(x, y+1, objblock)){
		gravity = 0;
	} else {
		gravity = .5;
	}
	
	if(keyboard_check_pressed(ord("Z"))){
	instance_create_layer(x,y,"Instances", objsword)
}

}