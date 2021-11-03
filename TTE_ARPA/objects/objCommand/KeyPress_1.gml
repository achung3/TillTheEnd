/// transition
//start game, level 1
if keyboard_check_pressed(ord("1")) {
	room_goto(RoomLevel1)
}
// display instrcutions
else if keyboard_check_pressed(ord("2")) {
	room_goto(RoomInstructions)
}
//using it to test
else if keyboard_check_pressed(ord("3")) {
	room_goto(RoomLevel2)
}
//using it to test
else {
if keyboard_check_pressed(ord("4")) {
	room_goto(RoomEnemyChallenge)
}
}

//move this to player boss collision...
//global.once the player beats the boss 
if room == RoomEnemyChallenge
{
	if instance_exists(objBossDead)
	{
		room_goto(RoomLevelComplete)//won
	}
}

//if player wants to pause the game
if (room == RoomLevel1 || room == RoomLevel2 || room == RoomEnemyChallenge){
	if objHUD.playerLives <= 0  
	{
	room_goto(RoomGameOver)//lost
	}
	if keyboard_check_pressed(ord("0")) {
		room_goto(RoomGamePause)
	if os_is_paused()
	{ 
		audio_pause_all()
		physics_pause_enable(true); 
		instance_deactivate_all(true);
		//instance_create_layer(x, y, "Controllers", obj_PauseMenu);
	}
}
}

//global.once the game ends
if (room == RoomGameOver || room == RoomLevelComplete){
	if keyboard_check_pressed(ord("G")) {
		game_restart()
	}
	else if keyboard_check_pressed(ord("H")) {
		room_goto(RoomCredit)
	}
}

