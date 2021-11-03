DialogueScript("The monster has intruded our town!!");

repeat(50)
{
	effect_create_above(ef_ellipse, random(room_width),random(room_height),irandom_range(0,2),choose(c_purple,c_yellow,c_silver));
}