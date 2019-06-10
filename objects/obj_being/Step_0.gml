/// @description Insert description here
// You can write your code in this editor

// Follow path
if (ds_list_size(path) != 0)
{
	var coord = path[| 0];
	var gotoX = coord[0];
	var gotoY = coord[1];
	
	if (point_distance(x, y, gotoX, gotoY) < 3)
	{
		// Pop
		ds_list_delete(path, 0);
		speed = 0;
		show_debug_message("Popped list");
		show_debug_message(string(ds_list_size(path)));
	}
	else
	{
		move_towards_point(gotoX, gotoY, 3);
	}
}