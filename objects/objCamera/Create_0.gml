/// @description Camerea
// You can write your code in this editor
camera = view_camera[0]
follow = objHero

viewWidth = camera_get_view_width(camera) * 0.5
viewHeight = camera_get_view_height(camera) * 0.5

xTowards = xstart
yTowards = ystart

shakeLength = 0
shakeMag = 0
shakeLeft = 0

