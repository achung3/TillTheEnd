/// @description Insert description here
// You can write your code in this editor
collisionMap = layer_tilemap_get_id(layer_get_id("Tiles_1"))

image_speed = 0
walkSpeed = 4

spiteIdle = sprHero
spriteRun = sprHeroRun
localFrame = 0

state = StateFree
lastState = state
