// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossMovement(){


vsp = vsp + gravity;

	#region Horizontal Movement
	
	//if there is a collision
	if instance_place(x+hsp,y,objBlock)
	{
		while(!instance_place(x+ sign(hsp),y,objBlock)) //if it is not a collision one pixel in either direction we are moving
		{
			x += sign(hsp);
		}
		hsp = 0; //cs it's wall
	}
	
	x += hsp;

	#endregion


	#region vertical movement

	//jump
			alarm[0] = 30;
		if instance_place(x,y+vsp,objBlock)
		{
			while(!instance_place(x, y+ sign(vsp) ,objBlock)) //if it is not a collision one pixel in either direction we are moving
			{
				y += sign(vsp);
			}
			vsp = 0; //cs it's wall
		}
	
	y += vsp;	
	#endregion
	
if instance_place(x,y+1,objBlock) 
{
	gravity = 0;
}
else gravity = 1;
	
	
}


