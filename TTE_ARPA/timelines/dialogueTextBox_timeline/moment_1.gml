DialogueScript("and only the strongest can survive...");

repeat(60)
{
	effect_create_above(ef_firework, random(room_width),random(room_height),irandom_range(0,2),choose(c_olive,c_yellow,c_teal));
}