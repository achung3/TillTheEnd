DialogueScript("I can't wait for the government any longer");

repeat(70)
{
	effect_create_above(ef_flare, random(room_width),random(room_height),irandom_range(0,2),choose(c_fuchsia,c_dkgray,c_white));
}