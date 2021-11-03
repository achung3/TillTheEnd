/// @description Insert description here
// You can write your code in this editor

if room != RoomEnemyChallenge and (room != RoomLevel1 || room != RoomLevel2)
{
audio_stop_all();
audio_play_sound(normBackground,1,true);
}