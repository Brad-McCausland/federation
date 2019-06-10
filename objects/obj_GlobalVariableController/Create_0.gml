/// @description Creates global variables
boardXLen = 45
boardYLen = 80

// Initialize empty array
for (i = 0; i < boardXLen; i++)
{
	for (j = 0; j < boardYLen; j++)
	{
		global.board_array[i, j] = pointer_null;
	}
}

// Load wall objects into game board
for (i = 0; i < instance_number(obj_wall); i++)
{
	var wall = instance_find(obj_wall, i);
	var coords = scr_pixels_to_grid(wall.x, wall.y);
	global.boardArray[coords[0], coords[1]] = wall;
}

// Pixel dimensions of a single square
global.GRID_SIZE = 48;

// Coordinate struct
enum point {
	x,
	y
}