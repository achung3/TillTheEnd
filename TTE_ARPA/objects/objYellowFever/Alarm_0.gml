/// @description Insert description here
// You can write your code in this editor


alarm[0] = 30;

if(instance_exists(objknight))
{

	with (instance_create_layer(x, y+sprite_height*0.5, "EnemyLayer", shotType))
    {
		//direction = point_direction(x, y, ex, ey);
		direction = objYellowFever.direction;
			if instance_exists(objEnemyFire)
			{
				objEnemyFire.image_xscale = -1 * objYellowFever.image_xscale;
				
			}
    }
}

