/// @description Insert description here
// You can write your code in this editor
//Input
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"))
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"))
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"))
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"))
keySpace = keyboard_check(vk_space)
keyShift = keyboard_check(vk_shift)
//keyControl = keyboard_check(vk_control)

//Angle Math
inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp)
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0)

script_execute(StateFree)