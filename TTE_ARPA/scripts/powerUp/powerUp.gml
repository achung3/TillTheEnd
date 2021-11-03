// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function powerUp(obj){


switch(obj)
{
	
 case objBluePotion:
	player_gravity = 0.1;
	break;

 case objGreenPotion:
	jump_height = -5;
	break;

 case objRedPotion:
	move_speed = 20;
	break;
 
 case objRedKey:
	global.redkey = true;
	global.keys ++;
	show_debug_message("Red key collected");
	break;
 
 case objBlueKey:
	global.keys ++;
	global.bluekey = true;
	break;
 
 case objGreenKey:
	global.keys ++;
	global.greenkey = true;
	break;
}

instance_destroy(obj);

}