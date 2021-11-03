// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//function scr_Inflict_damage(damage){

//	if(instance_exists(objknight))
//	{
//		with (objknight)
//		//player health will be damaged here
//		objknight.health -= damage;

//		if objknight.health <=0 //when health will reach to 0 player will be killed.
//		{
//			instance_destroy(self);
//		}
		
//	}
	
//}


function scr_Inflict_damage(damage){

	if(instance_exists(objHUD))
	{
		with (objHUD)
		//player health will be damaged here
		objHUD.hp -= damage;

		if objHUD.hp <=0 //when health will reach to 0 player will be killed.
		{
			instance_destroy(self);
		}
		
	}
	
}