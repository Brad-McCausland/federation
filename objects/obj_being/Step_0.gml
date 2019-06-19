/// @description Insert description here
// You can write your code in this editor

// Follow path
if (!is_string(path) && ds_list_size(path) != 0)
{
	var coord = path[| 0];
	coord = scr_grid_to_pixels(coord)
	var gotoX = coord[0];
	var gotoY = coord[1];
	
	if (point_distance(x, y, gotoX, gotoY) < 3)
	{
		// Pop
		ds_list_delete(path, 0);
		speed = 0;
	}
	else
	{
		move_towards_point(gotoX, gotoY, 3);
	}
}