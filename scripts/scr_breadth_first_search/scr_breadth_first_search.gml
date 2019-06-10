/// @Description Recursive search function.
/*
var current = argument0
var target = argument1

// Base case, return final coords.
if (current[0] == target[0] &&
	current[1] == target[1])
{
	return current;
}
else
{
	var realCoords = scr_grid_to_pixels(current[0], current[1])
	var boardCopy = global.board_array
	
	var up = realCoords[1] - global.GRID_SIZE
	var down = realCoords[1] + global.GRID_SIZE
	var left = realCoords[0] - global.GRID_SIZE
	var right = realCoords[0] + global.GRID_SIZE
	
	// Up
	if (!position_meeting(up, realCoords[1], obj_wall))
	{
		return ds_list_add(scr_breadth_first_search(up, realCoords[1], )*/