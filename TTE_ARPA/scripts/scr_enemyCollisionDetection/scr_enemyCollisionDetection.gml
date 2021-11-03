function scr_enemyCollisionDetection(){


// when tile below me and ahead me is empty or tile behind or below me is empty then take a turn
	if !(place_meeting(x+2,y+1,objBlock)) or !(place_meeting(x-2,y+1,objBlock))
	{
		hspeed = hspeed * -1 ;
		image_xscale = image_xscale * -1; 
	}

}