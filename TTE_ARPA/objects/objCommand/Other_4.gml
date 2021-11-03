/// @description Insert description here
// You can write your code in this editor
 if room == RoomEnemyChallenge {
//challenge sound
 audio_stop_all(); 
 audio_play_sound(challenge,3,true);
}
else if (room == RoomLevel1 || room = RoomLevel2)
{
	audio_stop_all(); 
	audio_play_sound(level1_2,1,true);
}