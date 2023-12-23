//Calculate the starting position to center the grid lengthwise
var _start_x = (room_width - grid_width * cell_size) / 2;
var _start_y = (room_height - grid_height * cell_size) / 2;

//loop to create grid
while (setup)
{
for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		var _instance = instance_create_layer(_start_x + (i * cell_size), _start_y + (j * cell_size),"Game_layer", obj_cell);
		show_debug_message(_instance)
		array_push(global.grid,_instance)
		//more code for cell if needed
	}
}
setup = false
show_message("grid made") // this shows when the grid gets completed right
}




















