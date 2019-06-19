var data = argument0

var dataLen = string_length(data);

if (dataLen != global.boardXLen * global.boardYLen)
{
	// Abort if board data is an unexpected size
	show_error("Error: map data loaded with incorrect number of tile. Expected 3600, got " + dataLen, true);
}

for (yy = 0; yy < global.boardYLen; yy++)
{
	for (xx = 0; xx < global.boardXLen; xx++)
	{
		var index = (yy * global.boardXLen) + xx;
		var tile = string_copy(data, index + 1, 1);
		
		global.board_array[xx, yy] = tile;
	}
}