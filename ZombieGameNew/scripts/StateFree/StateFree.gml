// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateFree(){
	
//Set Speed
hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection)
vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection)

//Collision
var col = false 

if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)) {
	x -= x mod 32
	if (sign(hSpeed) == 1) {
		x += 31
	}
	hSpeed = 0
	col = true
}

if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed)) {
	y -= y mod 32
	if (sign(vSpeed) == 1) {
		y += 31
	}
	vSpeed = 0
	col = true
}

//Movement
x += hSpeed
y += vSpeed

//Running
var indexCheck = sprite_index

if (inputMagnitude != 0) {
	direction = inputDirection
	sprite_index = sprKnight
} else {
	sprite_index = sprHero
}

//Change index animation
if (indexCheck != sprite_index) {
	localFrame = 0	
}

//Animation
//round(direction/45) for 8 direction
var pointDir = round(direction/90)
var frames = sprite_get_number(sprite_index) / 4
image_index = localFrame + (pointDir * frames)
localFrame += sprite_get_speed(sprite_index) / 120

if (localFrame >= frames) {
	animationEnd = true	
	localFrame -= frames
} else {
	animationEnd = false	
}

//Interactions 
if (keyE) {
	//Entity Check
	var lengthx = lengthdir_x(25, direction)
	var lengthy = lengthdir_y(25, direction)
	current = instance_position(x+lengthx, y+lengthy, objEntity)
	
	//Run Script 
	if (current == noone or current.entScript == -1) {
			
	} else {
		show_debug_message("--------------------")
		show_debug_message(current.entVars)
		show_debug_message("--------------------")
		script_execute(ArrayScript, current.entScript, current.entVars)
		
		//NPC Movement
		if (current.entNPC) {
			with (current) {
				direction = point_direction(x, y, other.x, other.y)	
				image_index = round(direction/90)
			}
		}
	}
	

	
}

}