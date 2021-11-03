// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jumpBouncy(){

if( vSpeed > 0 ) //this will keep player above the enemy
{
	var height = y - other.y; //it has to be negative so that player moves down after killing the enemy

	if (height < 0)
	{
		vSpeed = jump_height; // to give the bouncy effect 
		with (other)
		{
			instance_destroy();

		}
	}
	
}
else
scr_Inflict_damage(2);
 
}