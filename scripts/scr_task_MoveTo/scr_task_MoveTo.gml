///MoveTo (being, destination)

var being = argument0
var destination = argument1

// Convert object to grid coordinates
if (is_ptr(destination))
{
	gotoX = destination.x / 48
	gotoY = destination.y / 48
}

// Check if the destination is a set of coordinates (an array with length 2)
if (is_array(destination) && array_length_1d(destination) == 2)
{
	
}
else
{
	// Abort execution if destination is unhandled type.
	show_error("Error: argument given to task Move was not a pointer or set of coordinates", true)
}