/// @Description Recursive search function. breadth_first_search(enum point, enum point)

var start = argument0
var target = argument1

// Convert inputs to tiles
start = scr_obj_to_tile(start);
target = scr_obj_to_tile(target);

// Copy of gameboard to store visited tiles
var visit_board;
var copy = global.board_array
for (i = 0; i < global.boardXLen; i++)
{
	for (j = 0; j < global.boardYLen; j++)
	{
		if (copy[i, j] == "w")
		{
			visit_board[i, j] = -2;
		} else {
			visit_board[i, j] = -1;
		}
	}
}

// Initialize search origin with distance 0
visit_board[start[0], start[1]] = 0;

// Queue to store tiles needing visit in the correct order
var tile_queue = ds_queue_create();

// Enqueue start tile
ds_queue_enqueue(tile_queue, start);

// Records current tile
var current;

var foundPath = false;

while (!ds_queue_empty(tile_queue))
{
	current = ds_queue_dequeue(tile_queue);
	
	if (current[0] == target[0] &&
		current[1] = target[1])
	{
		foundPath = true;
		break;
	}
	
	// DEBUG CODE //
	if (global.DEBUG)
	{
		xcoord = current[0] * global.GRID_SIZE;
		ycoord = current[1] * global.GRID_SIZE;
	
		var debug_tile = instance_create_depth(xcoord, ycoord, -14000, obj_tile);
		debug_tile.distance = string(visit_board[current[0], current[1]]);
	
		for(i = 0; i < 1; i++)
		{
			// Wait
		}
	}
	// END DEBUG //
	
	var adjacent_points = scr_adjacent_points(current);
	
	while (!ds_queue_empty(adjacent_points))
	{
		var p = ds_queue_dequeue(adjacent_points);
		
		// Visit if unvisited and not a wall
		var comparator = visit_board[p[0], p[1]];
		if (comparator == -1)
		{
			// Mark visited with distance
			ds_queue_enqueue(tile_queue, p);
			visit_board[p[0], p[1]] = visit_board[current[0], current[1]] + 1;
		}
	}
}

if (!foundPath)
{
	// Tiles exhausted without finding a path to target
	return ds_list_create();
}
else
{
	// List of coordinates back to origin
	var path_list = ds_list_create();
	
	ds_list_add(path_list, current) //TODO: Omit adding destination if pathfinding is to adjacent space
	
	var distance = visit_board[current[0], current[1]];
	
	while (distance > 0)
	{
		distance --;
		
		var adjacent_points = scr_adjacent_points(current);
		
		while (!ds_queue_empty(adjacent_points))
		{
			var point = ds_queue_dequeue(adjacent_points)
			if (visit_board[point[0], point[1]] == distance)
			{
				ds_list_insert(path_list, 0, point);
				current = [point[0], point[1]];
				break;
			}
		}
	}
	
	return path_list;
}