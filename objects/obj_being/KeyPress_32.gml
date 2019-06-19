/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var temp_path = scr_breadth_first_search(self, Obj_TestObject);

for (i = 0; i < ds_list_size(temp_path); i++)
{
	var vertex = temp_path[| i];
	vertex = scr_grid_to_pixels(vertex);
	xcoord = vertex[0];
	ycoord = vertex[1];
	if (global.DEBUG)
	{
		instance_create_depth(xcoord, ycoord, -15000, obj_path);
	}
}
	

self.path = temp_path;