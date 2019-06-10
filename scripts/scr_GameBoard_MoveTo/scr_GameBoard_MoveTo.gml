/// @Description Input: (being, destination, [optional] adjacent) Output: A path from that being to the destination.

var being = argument0;
var destination = argument1;
var adjacent = false

var path = ds_list_create()

// 'adjacent' is an optional argument that determines whether the path leads
// the destination's exact coordinates or to the nearest adjacent space. Defaults
// to false.
if (argument_count > 2) {
	adjacent = argument2;
}