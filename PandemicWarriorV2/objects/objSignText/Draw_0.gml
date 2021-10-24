/// @description Insert description here
// You can write your code in this editor

show_debug_message("Message----")
show_debug_message(message)

objknight.state = KnightPause
script_execute(objknight.state)

script_execute(CreateTextBox, sprTextBox, x, y, message)