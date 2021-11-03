/// @description Insert description here
// You can write your code in this editor


timeline_position++;

if ( timeline_position > timeline_max_moment(timeline_index)+1 )
{
	instance_destroy();
}

text_position = 0;
text = "";