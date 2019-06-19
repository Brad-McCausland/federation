var input = argument0

if (is_array(input) && array_length_1d(input) == 2)
{
	var xInBounds = (input[0] >= 0) && (input[0] < global.boardXLen);
	var yInBounds = (input[1] >= 0) && (input[1] < global.boardYLen);
	
	return xInBounds && yInBounds;
}
else
{
	show_error("Error: scr_is_in_bounds can only be applied to points ([x, y])", true);
}