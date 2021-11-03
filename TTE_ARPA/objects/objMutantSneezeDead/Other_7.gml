/// @description Insert description here
// You can write your code in this editor

instance_destroy(self);
audio_play_sound(deathM, 1, false)


if global.once
	{
		instance_create_layer(x,y,"EnemyLayer",objGreenKey);
		global.once = false;
	}