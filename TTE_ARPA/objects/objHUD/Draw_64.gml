/// @description Insert description here
// You can write your code in this editor
var padding = 100;
var countKey = 0
//if room = RoomLevel1{
//		if keyFound == 1{
//		countKey 
//		}
	
//	}
//}
if room == RoomGameOver || room == RoomLevelComplete{

	draw_set_halign(fa_center)
	draw_text(room_width/2-padding, room_height/2 , "Score: " + string(score));
	draw_text(room_width/2-padding, room_height/2 + padding*0.5, "Key Found: " + string(keyFound));

}

if (global.game_over) 
{
	room_goto(RoomGameOver)
	draw_set_halign(fa_center)
	draw_text(room_width/2-padding, room_height/2 , "Score: " + string(score));
	
	draw_text(room_width/2-padding, room_height/2 + padding*0.5, "Key Found: " + string(keyFound));

	
	if global.redkey
		drawPotion(global.redkey);
	else if global.bluekey
		drawPotion(global.bluekey);
	else if global.greenkey
		drawPotion(global.greenkey);
	
	

}
else
{	

	
	if (room == RoomLevel1) or (room== RoomLevel2) or (room == RoomEnemyChallenge)
	{
		
		//player health Bar
		
		draw_set_colour($FFBFFBFF); 
		draw_rectangle(30, 5, 150, 45, false)
		
		/*TODO Write playerLives code here */
		draw_set_halign(fa_left)
		draw_text(16, 55, "Score: " + string(score));
		
		for (var i = 0; i < playerLives; i++)
		{
			draw_sprite(sprPills,0,(20+24*i),-18);
		}
		
		draw_text(16, 95, "Key Found: " + string(keyFound));

		//collected injections
		draw_sprite(sprInjection,0,32,90);
		draw_text(70, 75,string(global.Injection_count));
		
		draw_healthbar(8,140,256,120,hp,c_white,c_red,c_blue,0,true,true)

	}
	
	//Enemy Health Bar	
	if (room == RoomEnemyChallenge)
	{
		draw_set_halign(fa_right);
		draw_set_colour($FFBFFBFF); 
		draw_text(1600, 75,string("Enemy's Health"));
		draw_healthbar(1650,80,1800,100,objBoss.health,c_red,c_orange,c_blue,0,true,true);

	}

	//for (var i = 0; i < playerLives; i++)
	//{
	//	draw_sprite(sprPills,0,(50+24*i),15);
	//}
	


}
	
	
function drawPotion(keyCollected)
{	
	draw_text(room_width/2-padding, room_height/2 +150,  "Key Collected : " );
	draw_sprite(sprBluePotion,0,room_width/2- padding*2,room_height/2 + 150);	
}