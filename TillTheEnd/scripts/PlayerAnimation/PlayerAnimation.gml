// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimation(){

if (is_on_ladder)
{
	sprite_index = sprClimbing;
}
else if (!is_on_ground) //if it's not a collision
{
	sprite_index = sprPlayerJumping;
	image_speed = 0; //don't animate
	
	if sign(vSpeed > 0) //moving down and -ve for up
	image_index = 1; //jump frame
	else
	image_index = 0;
}
else //touching the ground
{
	image_speed = 1;
	if (hSpeed == 0) //collided with wall
	{
		sprite_index = sprPlayerIdle;
	}
	else 
	{ 
		if keyLeft	image_xscale = 1;
		else if keyRight image_xscale = -1;
		
		sprite_index = sprPlayerRunning;
	}
}	
}