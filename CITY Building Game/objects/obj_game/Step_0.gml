//Calculate the starting position to center the grid lengthwise
var _start_x = (room_width - grid_width * cell_size) / 2;
var _start_y = (room_height - grid_height * cell_size) / 2;

//loop to create grid

if (setup)&&!load
{
	for (var i = 0; i < grid_width; i++) {
		for (var j = 0; j < grid_height; j++) {
			var _instance = instance_create_layer(_start_x + (i * cell_size), _start_y + (j * cell_size),"Game_layer", obj_cell);
			//show_debug_message(_instance)
			array_push(global.grid,_instance)
			//more code for cell if needed
		}
	}
setup = false

}
else if (setup)
{
	var num = 0
	for (var i = 0; i < sqrt(array_length(global.data)); i++) 
	{
		for (var j = 0 ; j < sqrt(array_length(global.data)); j ++)
		{
			//show_debug_message(global.gold)
			var object = asset_get_index(global.data[num])
			num +=1
			var _instance = instance_create_layer(_start_x + (i * cell_size), _start_y + (j * cell_size),"Game_layer", object);
			//show_debug_message(_instance)
			if object != obj_cell
			{
				global.gold +=1 // to overconpensate buildcost when loading a saved game
			}
			array_push(global.grid,_instance)
			//more code for cell if needed
		}
	}
setup = false
load = false
}

//end game code
if cells_built >= total_cells || global.gold <= 0 { //end the game
	
	show_message("game ended")
	//go to final score tabulation or whatever
	//go back to main menu
}


















