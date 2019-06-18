/// @Description Returns coordinates of all points adjacent to the given point

var point = argument0

var pointList = ds_queue_create();

var up = [point[0], point[1] - 1];
var down = [point[0] - 1, point[1]];
var left = [point[0], point[1] + 1];
var right = [point[0] + 1, point[1]];

// Omit points that are outside the gameboard
if (up[1] >= 0)
{
	ds_queue_enqueue(pointList, up);
}
if (left[0] >= 0)
{
	ds_queue_enqueue(pointList, left);
}
if (down[1] < global.boardYLen)
{
	ds_queue_enqueue(pointList, down);
}
if (right[0] < global.boardXLen)
{
	ds_queue_enqueue(pointList, right);
}

return pointList;