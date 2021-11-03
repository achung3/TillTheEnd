// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimation(){

if (is_on_ladder)
{
	sprite_index = sprPlayerClimbing;
}
else if (!is_on_ground) //if it's not a collision
{
	sprite_index = sprPlayerJumping;
	image_speed = 0; //don't animate
	
	if sign(vspeed > 0) //moving down and -ve for up
	image_index = 1; //jump frame
	else
	{
		//image_index = 0;
	    sprite_index = sprPlayerIdle;
	}
}
else if objHUD.hp <= 0 //if it's not a collision
{
	sprite_index = sprPlayerDeath;
	//image_speed = 0; //don't animate
}
else //touching the ground
{
	image_speed = 1;

	 
	if keyLeft	
	{
		image_xscale = -1;
		sprite_index = sprPlayerRunning;
	}
		
	else if keyRight
	{
		image_xscale = 1;
		sprite_index = sprPlayerRunning;
	}
	else if (hSpeed == 0 ) //collided with wall
	{
		sprite_index = sprPlayerIdle;
	}
	if keyboard_check_pressed(ord("z"))
	{
		sprite_index = sprAttackingPlayer;
	}
	 
	

}

	
}