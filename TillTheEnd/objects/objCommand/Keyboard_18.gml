/// Cheat Codes

//Alt+R: restart the room 
if keyboard_check_pressed(ord("R")) room_restart()
//Alt+G: restart the game
if keyboard_check_pressed(ord("G")) game_restart()
//Alt+L to increase lives by 5
if keyboard_check_pressed(ord("L")) {
	    lives += 5
}
//Alt+N to move to the next room
//for mac you need to do Alt+Shift+N
if keyboard_check_pressed(ord("N")) 
{
	if !room_exists(room_next(room))
		room_goto(PageNotFound);
	else
		room_goto_next();
}
	
//Alt+P to move to the previous room
if room == RoomLevel1{
	if keyboard_check_pressed(ord("P")) {
		    room_goto_previous()
	}
	else{
	room_goto(PageNotFound)
	}
}
//Alt+S to gain 5p
if keyboard_check_pressed(ord("S")) {
	    score += 5
}

if keyboard_check_pressed(ord("1")) {
	    room_goto(RoomLevel1)
}
