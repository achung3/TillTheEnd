/// @description Insert description here
// You can write your code in this editor
global.gamePaused = false 
global.iCamera = instance_create_layer(0, 0, layer, objCamera)

randomize()
room_goto(RoomTown)