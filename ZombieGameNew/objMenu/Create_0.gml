/// @description Insert description here
// You can write your code in this editor

global.textSpeed = .5
global.gamePaused = false 
global.iCamera = instance_create_layer(0, 0, layer, objCamera)

randomize()

surface_resize(application_surface, 640, 360)
room_goto(RoomTown)