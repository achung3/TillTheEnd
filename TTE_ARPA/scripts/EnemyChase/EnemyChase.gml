// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyChase(aggro_range1){

	if instance_exists(objknight)
	{
		if distance_to_object(objknight) < aggro_range1
		{
			path_end();
			direction  = point_direction(x,y,objknight.x,objknight.y);
			hspeed = hsp;
		}	
	}
	
	

}
