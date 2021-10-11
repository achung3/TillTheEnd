/// @description Moving Camera
// You can write your code in this editor

if (instance_exists(follow)) {
	xTowards = follow.x
	yTowards = follow.y
}

x += (xTowards - x) * 0.1
y += (yTowards - y) * 0.1

x = clamp(x, viewWidth, room_width - viewWidth)
y = clamp(y, viewHeight, room_height - viewHeight)

camera_set_view_pos(camera, x - viewWidth, y - viewHeight)