/// @description Insert description here
// You can write your code in this editor
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, noone, -1, -1, -1, -1);

var _dwidth = display_get_width();
var _dheight = display_get_height();
window_set_rectangle(1920/2, 1080/2, 1920, 1080);

surface_resize(application_surface, 1920, 1080);