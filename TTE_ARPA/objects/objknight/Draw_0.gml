/// @description Insert description here
// You can write your code in this editor

draw_self();


if objCommand.debugEnable
	scr_DrawCollisionBounds();


//shader effects 

if alarmSet and isCollidedwithPotion 
{
	
	alarm[0] = 120;
	alarmSet = false;
	player_gravity = 0.1;
}

if alarm != -1
{
	shader_set(shader_power);
	draw_self();
	shader_reset();
}

