/// @description Insert description here
// You can write your code in this editor

instance_destroy(self);
audio_play_sound(planeDestroy, 1, false)


if global.once
{
	instance_create_layer(x,y,"EnemyLayer",objBlueKey);
	global.once = false;
}