/// @Description Converts gameboard coords to actual pixel coords

var input = argument0;

// Convert point struct
if (is_array(input))
{
	var xx = input[0]
	var yy = input[1]
	return [xx * global.GRID_SIZE, yy * global.GRID_SIZE];
}
// Convert single number
else
{
	return input * global.GRID_SIZE;
}
