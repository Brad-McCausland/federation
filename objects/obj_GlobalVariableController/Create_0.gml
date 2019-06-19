/// @description Creates global variables
global.DEBUG = 1;

global.boardXLen = 80;
global.boardYLen = 45;

// Pixel dimensions of a single square
global.GRID_SIZE = 48;

global.GameController = instance_create_depth(0, 0, -200, obj_GameController);

/*
// Initialize empty array
for (i = 0; i < global.boardXLen; i++)
{
	for (j = 0; j < global.boardYLen; j++)
	{
		global.board_array[i, j] = pointer_null;
	}
}

// Load wall objects into game board
for (i = 0; i < instance_number(obj_wall); i++)
{
	var wall = instance_find(obj_wall, i);
	var coords = scr_pixels_to_grid(wall.x, wall.y);
	global.board_array[coords[0], coords[1]] = "w"
}
*/

// Load objects from game board
for (i = 0; i < global.boardXLen; i++)
{
	for (j = 0; j < global.boardYLen; j++)
	{
		if (global.board_array[i, j] == "w")
		{
			var xx = scr_grid_to_pixels(i);
			var yy = scr_grid_to_pixels(j);
			instance_create_depth(xx, yy, -15000, obj_wall);
		}
	}
}
