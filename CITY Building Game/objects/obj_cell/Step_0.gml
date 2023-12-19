
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
		instance_create_layer(x, y, "Game_layer", obj_road); //creates building 1
		deactivate = true; //destroy cell later
	}
	else if (keyboard_check_pressed(ord("2"))) {
		instance_create_layer(x, y, "Game_layer", obj_ind);
		deactivate = true;
	}
	else if (keyboard_check_pressed(ord("3"))) {
		instance_create_layer(x, y, "Game_layer", obj_park);
		deactivate = true;
	}
	else if (keyboard_check_pressed(ord("4"))) {
	instance_create_layer(x, y, "Game_layer", obj_comm);
	deactivate = true;
	}
}
}
else {
//print not inaff gold
}
























