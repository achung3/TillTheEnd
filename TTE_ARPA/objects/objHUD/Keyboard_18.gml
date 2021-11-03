/// Cheat Codes
//Alt+R: restart the room 
if keyboard_check_pressed(ord("R")) {
	room_restart()
	}
//Alt+G: restart the game
if keyboard_check_pressed(ord("G")) {
	game_restart()
	score = 0
	
	}
//Alt+L to increase playerLives to full
if keyboard_check_pressed(ord("L")) {
	objHUD.hp = 100;
	objHUD.playerLives += 4;
}
//Alt+S to gain 5p
if keyboard_check_pressed(ord("S")) {
	    score += 5
}
//Alt+Q quit the game
if keyboard_check_pressed(ord("Q")) {
		game_end();
		
}

//Alt+N to move to the next room
//for mac you need to do Alt+Shift+N
if room == RoomEnemyChallenge{
	if keyboard_check_pressed(ord("N")) {
	room_goto(PageNotFound)
	}
}
else if (room == RoomLevel1 || room == RoomLevel2)
{
if keyboard_check_pressed(ord("N")) {
		    room_goto_next()
	}
}
	
//Alt+P to move to the previous room
if room == RoomLevel1{
	 if keyboard_check_pressed(ord("P")) {
	room_goto(PageNotFound)
	}
}
else if (room == RoomLevel2 || room == RoomEnemyChallenge)
{
	if keyboard_check_pressed(ord("P")) {
		    room_goto_previous()
	}
}

//if (room == RoomLevel2)
//{	
//	scr_roomNext();
//	scr_roomPrevious();	
//}
	
////Alt+P to move to the previous room
//if room == RoomLevel1
//{
//	scr_roomNext();
//	if keyboard_check_pressed(ord("P")) {
//	room_goto(PageNotFound)
//	}
//}

