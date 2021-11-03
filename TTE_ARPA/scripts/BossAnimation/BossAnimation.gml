// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossAnimation(){
	if(distance_to_object(objknight) > 130)
	{
	 sprite_index = sprBossIdle;
	}
	else  if (distance_to_object(objknight) < 100)
	sprite_index =  sprBossWalking;

	if (distance_to_object(objknight) < 50) or ( place_meeting(x+2,y,objknight)) or ( place_meeting(x-2,y,objknight))
	{
	sprite_index = sprBossAttacking;
	}
}