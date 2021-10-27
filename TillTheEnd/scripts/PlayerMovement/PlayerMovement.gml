// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMovement(){

keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);

var actionTaken = keyRight - keyLeft ;
hSpeed = actionTaken * move_speed; //so whatever key was pressed by player it will take direction accordingly and move with walkSpeed
vSpeed = vSpeed + player_gravity;

#region Ladders


if (instance_place(x,y, objLadder))
{
	if keyboard_check(vk_up) or keyboard_check(vk_down)
	{
		is_on_ladder = true;
		climbing = true;
		vspeed = 0;
		Vspeed = 0
		gravity = 0;
		player_gravity = 0;
	}
}
else
{
	is_on_ladder = false; 
	climbing = false;
}

if  climbing 
{
	if keyboard_check(vk_up) 	
	{
		y += -climb_speed; 
		//vspeed = clamp(vspeed, -(climb_speed * 0.50), (climb_speed * 0.50))
	}
	else if keyboard_check(vk_down) //and !instance_place(x,y+1,objBlock)	
	{
		y += climb_speed;
		//vspeed = clamp(vspeed, -(climb_speed * 0.50), (climb_speed * 0.50))		
	}
	
	if (instance_place(x,y+1,objBlock))
	{
	climbing = false;
	sprite_index = sprStanding;
	}
}
else
{

	#region Jump
		is_on_ground = instance_place(x,y+1,objBlock); //touching ground
		
		if keyboard_check_pressed(vk_up) and is_on_ground
		{
			vSpeed = jump_height;
		}
		
	#endregion
	
	#region Horizontal Movement
	//if there is a collision
	if instance_place(x+hSpeed,y,objBlock)
	{
		while(!instance_place(x+ sign(hSpeed),y,objBlock)) //if it is not a collision one pixel in either direction we are moving
		{
			x += sign(hSpeed);
		}
		hSpeed = 0; //cs it's wall
	}
	
	x += hSpeed;

	#endregion


	#region vertical movement

	//jump
			
		if instance_place(x,y+vSpeed,objBlock)
		{
			while(!instance_place(x, y+ sign(vSpeed) ,objBlock)) //if it is not a collision one pixel in either direction we are moving
			{
				y += sign(vSpeed);
			}
			vSpeed = 0; //cs it's wall
		}
	
	y += vSpeed;	
			
		
		//to keep gravity and speed in-check
		
		if is_on_ground player_gravity = 0;
		else player_gravity = 0.4;
	
		if vSpeed > 12
		{
			vSpeed = 12;
		}
	#endregion
	

		
	if keyboard_check_pressed(ord("z"))
	{
		instance_create_layer(x,y,"Instances",objSword);
	}
}



#endregion

PlayerAnimation();

}