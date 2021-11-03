/// @description Insert description here
// You can write your code in this editor

var padding = 10;
var text_width =  string_width(new_text);
var text_height = string_height(new_text);
var margin = 10;

draw_set_color(c_silver);
draw_rectangle(x+margin, y+margin, x+text_width+margin+padding,y+text_height+margin+padding,false);

draw_set_color(c_black);
draw_text(x+margin  ,y+margin, new_text)