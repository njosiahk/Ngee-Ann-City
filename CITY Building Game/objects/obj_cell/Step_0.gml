
if position_meeting(mouse_x, mouse_y, id){ //check if mouse is on tile
	image_index = 1; //highlight hovered
	if (mouse_check_button_pressed(mb_left)) { //select if clicked
		chooseBuild = true;
		selected = true; //highlight selected
	}
	if selected {
		image_index = 2;	
	}
}
else { //else mouse no longer on, disable bool
	chooseBuild = false;
	selected = false;
	image_index = 0;
}

if global.gold > 0{
if chooseBuild { //if is chosen
	if (keyboard_check_pressed(ord("1"))) { //press 1 to choose building 1
		var in = instance_create_layer(x, y, "Game_layer", obj_road); //creates building 1
		show_debug_message("space")
		show_debug_message(id)
		show_debug_message(in)
		show_debug_message(array_get_index(global.grid,id))//go down then go side
		global.grid[array_get_index(global.grid,id)] = in
		show_debug_message(global.grid)//working 
		deactivate = true; //destroy cell later
	}
	else if (keyboard_check_pressed(ord("2"))) {
		var in = instance_create_layer(x, y, "Game_layer", obj_ind);
		global.grid[array_get_index(global.grid,id)] = in
		deactivate = true;
	}
	else if (keyboard_check_pressed(ord("3"))) {
		var in = instance_create_layer(x, y, "Game_layer", obj_park);
		global.grid[array_get_index(global.grid,id)] = in
		deactivate = true;
	}
	else if (keyboard_check_pressed(ord("4"))) {
	var in = instance_create_layer(x, y, "Game_layer", obj_comm);
	global.grid[array_get_index(global.grid,id)] = in
	deactivate = true;
	}
	else if (keyboard_check_pressed(ord("5"))) {
	var in = instance_create_layer(x, y, "Game_layer", obj_res);
	global.grid[array_get_index(global.grid,id)] = in
	deactivate = true;
	}
}
}
else {
//print not inaff gold
}
























