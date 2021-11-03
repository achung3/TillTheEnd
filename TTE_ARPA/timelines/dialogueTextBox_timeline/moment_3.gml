DialogueScript("Return my once peaceful lifestyle!");

repeat(50)
{
	effect_create_above(ef_smokeup, random(room_width),random(room_height),irandom_range(0,2),choose(c_purple,c_yellow,c_white));
}