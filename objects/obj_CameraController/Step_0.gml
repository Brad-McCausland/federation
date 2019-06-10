/// @description Handles mouse wheel inputs for zoom control

var ZOOM_FACTOR = 0.1;
var MIN_ZOOM_FACTOR = 0.5
var MAX_ZOOM_FACTOR = 2
var PAN_SPEED = 20

var mouseW = mouse_wheel_down() - mouse_wheel_up();

var wPressed = keyboard_check(ord("W"))
var sPressed = keyboard_check(ord("S"))
var aPressed = keyboard_check(ord("A"))
var dPressed = keyboard_check(ord("D"))

// Get current camera location
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewW = camera_get_view_width(view_camera[0]);
var viewH = camera_get_view_height(view_camera[0]);
	
// Init new camera details
var newX = viewX
var newY = viewY
var newW = viewW
var newH = viewH

if(mouseW != 0)
{
	if (mouseW < 0 && (viewW / 1920) > MIN_ZOOM_FACTOR) // Zoom in
	{
		var gotoX = mouse_x
		var gotoY = mouse_y
	
		newX = lerp(viewX, gotoX, 0.1);
		newY = lerp(viewY, gotoY, 0.1);
		newW = viewW * (1 - ZOOM_FACTOR)
		newH = viewH * (1 - ZOOM_FACTOR)
	}
	else if (mouseW > 0 && (viewH / 1920) < MAX_ZOOM_FACTOR) // Zoom out
	{
		var gotoX = viewX + (viewX - mouse_x)
		var gotoY = viewY + (viewY - mouse_y)
		
		newX = lerp(viewX, gotoX, 0.1);
		newY = lerp(viewY, gotoY, 0.1);
		newW = viewW * (1 + ZOOM_FACTOR)
		newH = viewH * (1 + ZOOM_FACTOR)
	}
}

// Handle panning
if(wPressed)
{
	newY -= PAN_SPEED
}
if(sPressed)
{
	newY += PAN_SPEED
}
if(aPressed)
{
	newX -= PAN_SPEED
}
if(dPressed)
{
	newX += PAN_SPEED
}
	
// Make camera adjustments
camera_set_view_pos(view_camera[0], newX, newY);
camera_set_view_size(view_camera[0], newW, newH);
	
// Move and Scale background to move with camera
obj_SpaceBackround.x = newX
obj_SpaceBackround.y = newY
obj_SpaceBackround.image_xscale = newW / 1920
obj_SpaceBackround.image_yscale = newH / 1080