/// @Description Converts pixel coords into gameboard coords

var input = argument0;

// Convert point struct
if (is_array(input))
{
	var xx = input[0]
	var yy = input[1]
	return [xx div global.GRID_SIZE, yy div global.GRID_SIZE];
}
// Convert single number
else
{
	return input div global.GRID_SIZE;
}
