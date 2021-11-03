/// @description Insert description here
// You can write your code in this editor


scr_DrawCollisionBounds();

powerUp(other);

//on collision with blue potion set alarm value to something for which only alarm will execute

alarmSet = true;
isCollidedwithPotion = true;
audio_play_sound(found,3,false);