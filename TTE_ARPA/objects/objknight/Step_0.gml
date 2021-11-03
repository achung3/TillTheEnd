
PlayerMovement();
PlayerAnimation();

//attack:

if keyboard_check_pressed(ord("Z"))
{
	//sprite_index = sprAttackingPlayer;
	instance_create_layer(x,y,"Instances",objSword);
}


if (keyboard_check(vk_space) or spacePressed)
{
	if canShoot{
	//code for injectionto do projectile
	if global.Injection_count > 0
	{
		global.Injection_count -= 1;	
		canShoot = false;
		spacePressed = false;
		//instance_create_layer(x,y,"Instances",shotType);
		
		if(instance_exists(objknight))
		{

		//with (instance_create_layer(x, y+sprite_height*0.5, "Instances", shotType))
	    with (instance_create_layer(x,y,"Instances",shotType))
		{
					direction = objknight.direction;
					//speed = 4 * obj_Injection.image_xscale
					//objknight.image_xscale = -1 * objknight.image_xscale;
					direction = clamp(direction, 0,180);	
					
		    }
		}

	}
}
	
}
	

