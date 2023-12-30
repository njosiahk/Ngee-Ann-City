
	if global.turn != 1 {
		available = false;	
	}

	if position_meeting(x+1, y-1, obj_building) || position_meeting(x+1, y+obj_game.cell_size+1, obj_building) || position_meeting(x-1, y+1, obj_building) || position_meeting(x+obj_game.cell_size+1, y+1, obj_building) { //checks all sides
		available = true;
	}
	
	if obj_game.turnbuild == true {
		available = false;
	}
	
	if !instance_exists(obj_pause) {
#region
if available {
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
		image_index = 3;
	}

	if global.gold > 0{
		if chooseBuild { //if is chosen
			/*#region //test building
			if (keyboard_check_pressed(ord("1"))) { //press 1 to choose building 1
				var in = instance_create_layer(x, y, "Game_layer", obj_road); //creates building 1

				global.grid[array_get_index(global.grid,id)] = in

				deactivate = true; //destroy cell later
				obj_game.turnbuild = true;
			}
			else if (keyboard_check_pressed(ord("2"))) {
				var in = instance_create_layer(x, y, "Game_layer", obj_ind);
				global.grid[array_get_index(global.grid,id)] = in
				deactivate = true;
				obj_game.turnbuild = true;
			}
			else if (keyboard_check_pressed(ord("3"))) {
				var in = instance_create_layer(x, y, "Game_layer", obj_park);
				global.grid[array_get_index(global.grid,id)] = in
				deactivate = true;
				obj_game.turnbuild = true;
				}
	
			else if (keyboard_check_pressed(ord("4"))) {
				var in = instance_create_layer(x, y, "Game_layer", obj_comm);
				global.grid[array_get_index(global.grid,id)] = in
				deactivate = true;
				obj_game.turnbuild = true;
			}
			else if (keyboard_check_pressed(ord("5"))) {
				var in = instance_create_layer(x, y, "Game_layer", obj_res);
				global.grid[array_get_index(global.grid,id)] = in
				deactivate = true;
				obj_game.turnbuild = true;
			}
			#endregion*/
			if (global.chooseAkey) {
				var in = instance_create_layer(x, y, "Game_layer", obj_game.buildingA);
				global.grid[array_get_index(global.grid,id)] = in
				audio_play_sound(snd_build,1,false);
				deactivate = true;
				obj_game.turnbuild = true;
				obj_game.cells_built+=1;
			}
			else if (global.chooseBkey) {
				var in = instance_create_layer(x, y, "Game_layer", obj_game.buildingB);
				global.grid[array_get_index(global.grid,id)] = in
				audio_play_sound(snd_build,1,false);
				deactivate = true;
				obj_game.turnbuild = true;
				obj_game.cells_built+=1;
			}
			else {
			//print not inaff gold
			}
		}
	}
}

else {
	image_index = 0;	
}
#endregion

	}


















