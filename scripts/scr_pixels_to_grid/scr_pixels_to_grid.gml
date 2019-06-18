/// @Description Converts pixel coords into gameboard coords

var X = argument0
var Y = argument1

return [X div global.GRID_SIZE, Y div global.GRID_SIZE];