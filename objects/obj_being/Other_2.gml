/// @description Insert description here
// You can write your code in this editor

path = ds_list_create();
ds_list_add(path, [1700, 1000])
ds_list_add(path, [1600, 1000])
ds_list_add(path, [1550, 950])

show_debug_message("***** Initialized path")
show_debug_message(string(ds_list_size(path)))