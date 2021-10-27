/// @description Insert description here
// You can write your code in this editor

#region Horizontal Movement

		if (!instance_place(floor(x-hsp),floor(y),objBlock))
		{
	
			image_xscale = 1;
			x += -hsp;
			image_speed  = 0;
			image_index = 3;
		}

		//instamce_place and place meeting returns obj, instance -> collision present and false for no collision 
		if (!instance_place(floor(x+hsp),floor(y),objBlock))
		{
			image_xscale = -1;//player moves when there is no collision
			x += hsp;
			image_speed  = 0;
			image_index = 3;
		}
#endregion