/// @description Insert description here
// You can write your code in this editor

draw_set_colour($FFBFFBFF)
draw_rectangle(50, 5, 150, 45, false)

/*TODO Write Lives code here */

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))
draw_text(55, 55, "Health: " + string(lives))

if (global.game_over) 
{
	//TO_DO 
	room_goto(RoomGameOver)
	
}

for (var i = 0; i < lives; i++)
{
	draw_sprite(sprHUDPlayer,0,(50+24*i),15);
}

