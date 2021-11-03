/// @description Insert description here
// You can write your code in this editor

if( vSpeed > 0 ) //this will keep player above the enemy
{
	var height = y - other.y; //it has to be negative so that player moves down after killing the enemy

	if (height < 0)
	{
		vSpeed = jump_height; // to give the bouncy effect 
		with (other)
		{
			objBoss.health -= 10;
			audio_play_sound(deathM,5,false);
		}
	}
	
}
else {
	scr_Inflict_damage(15);
	audio_play_sound(deathPlayer,3,false);
}