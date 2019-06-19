/// @Description Returns coordinates of all points adjacent to the given point

var point = argument0

var pointList = ds_queue_create();

var up = [point[0], point[1] - 1];
var down = [point[0], point[1] + 1];
var left = [point[0] - 1, point[1]];
var right = [point[0] + 1, point[1]];

// Omit points that are outside the gameboard
if (scr_is_in_bounds(up))
{
	ds_queue_enqueue(pointList, up);
}
if (scr_is_in_bounds(left))
{
	ds_queue_enqueue(pointList, left);
}
if (scr_is_in_bounds(down))
{
	ds_queue_enqueue(pointList, down);
}
if (scr_is_in_bounds(right))
{
	ds_queue_enqueue(pointList, right);
}

return pointList;