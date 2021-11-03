//// @description Insert description here
//// You can write your code in this editor
audio_play_sound(deathPlayer,1,false);
objHUD.playerLives -=1
if objHUD.hp >= 0{
	room_restart();
	objHUD.hp = 100;
}
else
{
	global.game_over = true;
	
}

	if objHUD.playerLives <= 0  
	{
	room_goto(RoomGameOver)//lost
	}
